

-- QUESTION: What does month-over-month deal volume look like?
-- BUSINESS GOAL:
-- Understand seasonality and pipeline inflow trends to help 


WITH adjustedTable AS (
  -- Add derived time features (quarter) for potential seasonal analysis
  SELECT *,
    EXTRACT(QUARTER FROM create_date) AS create_date_quarter,
    EXTRACT(QUARTER FROM close_date) AS close_date_quarter
  FROM `Northspyre.sales_data` a
),

seasonal_volume AS (
  -- Aggregate total number of deals created per month
  -- This measures pipeline generation (top-of-funnel growth)
  SELECT 
    create_date_year,
    create_date_quarter,
    create_date_month,
    COUNT(deal_id) AS deal_volume
  FROM adjustedTable
  GROUP BY create_date_year, create_date_quarter, create_date_month
)

-- Final output: Monthly deal volume trend
SELECT *
FROM seasonal_volume
ORDER BY create_date_year, create_date_month;



-- QUESTION: Which month-year had the highest deal volume?
-- BUSINESS GOAL:


WITH timeline_trends AS (
  -- Count deals created per month
  SELECT
    create_date_year,
    create_date_month,
    COUNT(deal_id) AS deal_volume_month_count
  FROM `Northspyre.sales_data`
  GROUP BY create_date_year, create_date_month
)

-- Return the single highest volume month
SELECT *
FROM timeline_trends
ORDER BY deal_volume_month_count DESC
LIMIT 1;



-- QUESTION: Which month-year had the lowest deal volume?
-- BUSINESS GOAL:
-- Identify slow periods to optimize outreach or rebalance sales capacity.


WITH timeline_trends AS (
  SELECT
    create_date_year,
    create_date_month,
    COUNT(deal_id) AS deal_volume_month_count
  FROM `Northspyre.sales_data`
  GROUP BY create_date_year, create_date_month
)

SELECT *
FROM timeline_trends
WHERE create_date_year <> 2022 
  AND create_date_month <> 11
ORDER BY deal_volume_month_count ASC
LIMIT 1;


-- QUESTION: What does month-over-month closed revenue look like?
-- BUSINESS GOAL:
-- Measure revenue performance and identify seasonality in actual booked revenue (not just pipeline).


WITH adjustedTable AS (
  -- Filter to Closed-Won deals (real revenue only)
  SELECT *,
    EXTRACT(QUARTER FROM close_date) AS close_date_quarter
  FROM `Northspyre.sales_data`
  WHERE deal_stage = 'Closed-Won'
),

seasonal_revenue AS (
  -- Aggregate total revenue per month
  SELECT 
    close_date_year,
    close_date_month,
    SUM(amount_cleaned) AS revenue
  FROM adjustedTable
  GROUP BY close_date_year, close_date_month
)

-- Final revenue trend output
SELECT *
FROM seasonal_revenue
ORDER BY close_date_year ASC, close_date_month ASC;

-- QUESTION: What does month-over-month revenue look like by Deal Owner?
-- BUSINESS GOAL:
-- Identify top-performing reps, revenue concentration risk, and performance consistency over time.


WITH revenueAgg AS (
  -- Aggregate closed-won revenue per rep per month
  SELECT
    deal_owner,
    close_date_year,
    close_date_month,
    SUM(amount_cleaned) AS monthly_revenue
  FROM `Northspyre.sales_data`
  WHERE deal_stage = 'Closed-Won'
  GROUP BY deal_owner, close_date_year, close_date_month
)

-- Final output: Revenue trend by rep
SELECT *
FROM revenueAgg
ORDER BY deal_owner, close_date_year, close_date_month;

-- CHANNEL SOURCE ATTRIBUTION + TIME ENRICHMENT
-- Business Goal:
-- Standardize lead sources into broader marketing/sales channels and create time-based features for aggregation and trend analysis.

WITH adjustedTable AS (

  SELECT *,
    
   
    -- Derive time features from create_date for time-series analysis
    -- Enables month/day/year aggregation of pipeline generation.
   
    EXTRACT(MONTH FROM create_date) AS create_date_month,
    EXTRACT(DAY   FROM create_date) AS create_date_day,
    EXTRACT(YEAR  FROM create_date) AS create_date_year,

   
    -- Derive time features from close_date for revenue reporting
    -- Useful for analyzing closing patterns and seasonality.
   
    EXTRACT(MONTH FROM close_date) AS close_date_month,
    EXTRACT(DAY   FROM close_date) AS close_date_day,
    EXTRACT(YEAR  FROM close_date) AS close_date_year,

    CASE
      -- Organic Marketing Sources
      WHEN type_of_lead IN (
        "Inbound - Organic Social (Marketing Driven)",
        "Inbound - Referral (Marketing Driven)",
        "Inbound - Organic Search (Marketing Driven)",
        "Inbound - Blog/website (Marketing Driven)",
        "Inbound - In the News (Marketing Driven)"
      ) THEN "Organic"

      -- Paid Advertising Sources
      WHEN type_of_lead IN (
        "Inbound - LinkedIn/Facebook Ad (Marketing Driven)",
        "Inbound - Google Ad (Marketing Driven)"
      ) THEN "Paid"

      -- Sales-Led or Direct Outreach Sources
      WHEN type_of_lead IN (
        "Outbound - Arranged via LinkedIn (Sales Driven)",
        "Outbound - Arranged via Email (Sales Driven)",
        "Outbound - Arranged via Phone Call (Sales Driven)",
        "Inbound - Former Prospect Reengagement (Sales Driven)"
      ) THEN "Sales-led"

      -- Partner / Event Sourced
      WHEN type_of_lead IN (
        "Inbound - Event (Marketing Driven)"
      ) THEN "Partner Event"

      -- Catch-all for unmapped or miscellaneous sources
      ELSE "Other"
    END AS channel

  FROM `analyticsaccelerator-481421.Northspyre.sales_data`
)


SELECT
  channel,            -- Standardized acquisition channel
  create_date,        -- Date deal entered pipeline
  deal_stage,         -- Current stage in sales funnel
  COUNT(deal_id) AS deal_count  -- Volume of deals
FROM adjustedTable
GROUP BY 
  channel,
  create_date,
  deal_stage;

