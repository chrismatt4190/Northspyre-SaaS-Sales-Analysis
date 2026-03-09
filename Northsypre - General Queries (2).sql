
SELECT
  *
FROM `analyticsaccelerator-481421.Northspyre.sales_data`;

-- Channel source attribution and aggregation

WITH adjustedTable AS (
  SELECT *,
    EXTRACT(MONTH FROM create_date) AS create_date_month,
    EXTRACT(DAY FROM create_date) AS create_date_day,
    EXTRACT(YEAR FROM create_date) AS create_date_year,
    EXTRACT(MONTH FROM close_date) AS close_date_month,
    EXTRACT(DAY FROM close_date) AS close_date_day,
    EXTRACT(YEAR FROM close_date) AS close_date_year,
    CASE
      WHEN type_of_lead IN("Inbound - Organic Social (Marketing Driven)","Inbound - Referral (Marketing Driven)","Inbound - Organic Search (Marketing Driven)","Inbound - Blog/website (Marketing Driven)","	Inbound - In the News (Marketing Driven)") THEN "Organic"
      WHEN type_of_lead IN("Inbound - LinkedIn/Facebook Ad (Marketing Driven)","Inbound - Google Ad (Marketing Driven)") THEN "Paid"
      WHEN type_of_lead IN("Outbound - Arranged via LinkedIn (Sales Driven)","Outbound - Arranged via Email (Sales Driven)","Outbound - Arranged via Phone Call (Sales Driven)","Inbound - Former Prospect Reengagement (Sales Driven)") THEN "Sales-led"
      WHEN type_of_lead IN("nbound - Event (Marketing Driven)") THEN "Partner Event" ELSE "Other" END AS channel
  FROM `analyticsaccelerator-481421.Northspyre.sales_data`
)

SELECT
  channel,
  create_date,
  deal_stage,
  COUNT(deal_id) AS deal_count
FROM adjustedTable
GROUP BY channel,create_date,deal_stage;


-- Organic Marketing Leads Breakout by year,quarter

WITH adjustedTable AS (
  SELECT *,
    EXTRACT(MONTH FROM create_date) AS create_date_month,
    EXTRACT(DAY FROM create_date) AS create_date_day,
    EXTRACT(YEAR FROM create_date) AS create_date_year,
    EXTRACT(QUARTER FROM create_date) AS create_date_quarter,
    EXTRACT(MONTH FROM close_date) AS close_date_month,
    EXTRACT(DAY FROM close_date) AS close_date_day,
    EXTRACT(YEAR FROM close_date) AS close_date_year,
    EXTRACT(QUARTER FROM close_date) AS close_date_quarter,
    CASE
      WHEN type_of_lead IN("Inbound - Organic Social (Marketing Driven)","Inbound - Referral (Marketing Driven)","Inbound - Organic Search (Marketing Driven)","Inbound - Blog/website (Marketing Driven)","	Inbound - In the News (Marketing Driven)") THEN "Organic"
      WHEN type_of_lead IN("Inbound - LinkedIn/Facebook Ad (Marketing Driven)","Inbound - Google Ad (Marketing Driven)") THEN "Paid"
      WHEN type_of_lead IN("Outbound - Arranged via LinkedIn (Sales Driven)","Outbound - Arranged via Email (Sales Driven)","Outbound - Arranged via Phone Call (Sales Driven)","Inbound - Former Prospect Reengagement (Sales Driven)") THEN "Sales-led"
      WHEN type_of_lead IN("nbound - Event (Marketing Driven)") THEN "Partner Event" ELSE "Other" END AS channel
  FROM `analyticsaccelerator-481421.Northspyre.sales_data`
)

SELECT
  a.create_date_year,
  a.create_date_quarter,
  a.type_of_lead,
  COUNT(a.deal_id) AS volume,
 ROUND(COUNT(a.deal_id) * 100.0 / SUM(COUNT(a.deal_id)) OVER (
    PARTITION BY a.create_date_year, a.create_date_quarter
  ),2) AS quarterly_prct
FROM adjustedTable a
WHERE a.channel = 'Organic'
GROUP BY
  a.create_date_year,
  a.create_date_quarter,
  a.type_of_lead
ORDER BY
  a.create_date_year ASC,
  a.create_date_quarter ASC,
  a.type_of_lead ASC;



-- ==============================================================
-- CHANNEL SOURCE ATTRIBUTION + TIME ENRICHMENT
-- Business Goal:
-- Standardize lead sources into broader marketing/sales channels and create time-based features for aggregation and trend analysis.
-- ==============================================================

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