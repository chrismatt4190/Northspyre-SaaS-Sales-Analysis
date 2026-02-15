
<h1 align="center">SaaS Sales Operations Analysis</h1>
<table align="center">
  <tr>
    <td width="1440">
      <h2 align="center">Client Background</h2>
      <body>
      <p>
        <strong>Northspyre</strong> is a cloud-based real estate development management and intelligence platform designed to help development teams and real estate professionals manage complex projects with greater clarity, control, and efficiency. It unifies project data, workflows, and analytics in a single system so teams can automate routine tasks, access real-time financial and performance insights, and make proactive, data-driven decisions across the entire development lifecycle—from acquisition and planning to construction and stabilization.

<br>
        </p>
<br>
         <p>
Northspyre shared over a dataset the represents their end-to-end B2B sales pipeline at the individual deal level, capturing how potential customers enter the funnel, how sales teams engage them, and how those engagements ultimately convert into closed-won or closed-lost outcomes. Each row corresponds to a single sales opportunity and includes information about lead source and type, assigned sales representatives and business development leads, sales activities and outreach intensity, demo execution, deal value, timing from creation to close, and contextual attributes such as buyer role, seniority, motivations, territory, and existing software. <br>
            </p>
<br>
         </p>
Reporting to Northspyre’s Head of Sales and Head of Partnerships, an in-depth analysis was conducted using Northspyre’s deal-level sales pipeline data to evaluate commercial performance across lead sources, sales execution, and revenue outcomes. This comprehensive review provides actionable insights that Sales and Partnerships leaders can use to refine go-to-market strategy, improve pipeline efficiency, and strengthen revenue predictability. The key insights and recommendations presented in this discussion focus on three core areas: (**** finish section ****)
 </p>
## Northstar Metrics

<table align="center" width="100%">
  <tr>
    <td width="460" valign="top">
      <ol>
        <li>
          <strong>Deal Volume & Revenue Performance</strong>
          <ul>
            <li>Monthly Deal Volume Trends</li>
            <li>Monthly Revenue Trends</li>
             <li>Revenue Contribution by Deal Owner</li>
          </ul>
        </li>
        <li>
          <strong> Funnel Conversion & Deal Velocity</strong>
          <ul>
            <li>Closed-Won Conversion Rate Over Time</li>
            <li>Time to Close (Sales Cycle Length)</li>
            <li>Win Rate by Lead Type</li>
          </ul>
        </li>
        <li>
          <strong>Lead Mix & Source Effectiveness</strong>
          <ul>
            <li>Lead Type Market Share</li>
            <li>Revenue by Lead Source</li>
            <li>Sales Effort by Lead Source</li>
          </ul>
        </li>
      </ol>
    </td>
    <td width="460" valign="top">
      <ol start="4">
        <li>
          <strong>(REMOVE SECTION) Monthly Qualified Lead Conversion Rate</strong>
          <ul>
            <li>Percentage of qualified leads converting to Closed-Won in a given month.</li>
            <li>Early warning indicator of funnel friction or quality decline.</li>
          </ul>
        </li>
      </ol>
    </td>
  </tr>
</table>

</table>
<h1 align="center">Executive Summary</h1>
<table align="center">
  <tr>
    <div width="1440">
      <h2 align="center">DEAL REVENUE AND VOLUME ANALYSIS (January 2021 - October 2022)</h2>
<div align="center">
  <img
    width="1000"
    height="800"
    alt="Screenshot 2026-01-15 at 4 53 12 PM"
    src="https://github.com/user-attachments/assets/b2c507a8-583b-469e-9a21-3f6a7bfff192" />
<div align="center">
  <img
    width="1000"
    height="800"
    alt="Screenshot 2026-01-15 at 4 53 12 PM"
    src="https://github.com/user-attachments/assets/2a2db874-c56e-4098-a1d7-0fa516fe68c1" />


</div>
     <!-- LEFT COLUMN -->
    <td width="460" valign="top">
      <ol>
        <li>
          <strong>Deal Volume Growth and Peak Activity</strong>
          <ul>
            <li>
              Deal volume experienced two sustained growth periods from April – June 2021 and April – August 2022, each with consistent month-over-month increases</strong>.
            </li>
            <li>
              <strong>August 2022</strong> marked the peak deal volume in the analysis window, signaling the strongest period of pipeline expansion.
            </li>
            <li>
              Overall deal creation remained stable with no sustained declines, indicating resilience in top-of-funnel activity.
            </li>
          </ul>
        </li>
      <li>
          <strong>Revenue Growth and Volatility</strong>
          <ul>
            <li>
              Revenue showed one clear period of sustained growth from <strong>March–July 2021</strong>, reflecting improved deal conversion and/or larger deal sizes.</strong>
            </li>
            <li>
            	A prolonged revenue decline occurred from <strong> October 2021–January 2022</strong>, indicating sensitivity to deal timing and close dynamics.
            </li>
            <li>
            	Revenue trends were more volatile than deal volume, suggesting deal quality and execution drive revenue more than pipeline scale alone.
            </li>
          </ul>
        </li>
      </ol>
    </td>
     <!-- RIGHT COLUMN -->
    <td width="460" valign="top">
      <ol start="3">
        <li>
          <strong>Revenue Contribution By Deal Owner</strong>
          <ul>
            <li>
              Peak revenue was largely attributable to contributions from Former AEs / Current Leadership, Former AEs / Current Managers, and Directors currently operating as AEs, highlighting the outsized impact of senior, sales-experienced owners on high-value deal closures.
            </li>
            <li>
             A sustained revenue decline from October 2021–January 2022 aligns with a sharp reduction in closed-won deals from Former AEs / Current Managers.
            </li>
              <li>
             Overall, revenue trends appear concentrated among a small group of experienced deal owners, reinforcing the importance of role clarity, capacity planning, and knowledge transfer to reduce reliance on a limited subset of high-impact contributors.
            </li>
          </ul>
        </li>
        <li>
          <strong>Key Takeaways & Recommendations</strong>
          <ul>
          </ul>
        </li>
      </ol>
    </td>
      </table>
<h2 align="center">Dataset Structure and ERD (Entity relationship diagram)</h2>
<body align="center"> The database structure as seen below consists of One Table of Sales data with a total row count of 5,596 records.</body>
<div align="center">
  <img width="250" src="https://github.com/user-attachments/assets/60ba85ad-64be-4eb1-8e97-938fde3cec9f" />
</div>
<h1 align="center">Insights Deep-Dive</h1>
<table align="center">
  <tr>
    <h1 align="center">Funnel Conversion & Deal Velocity</h1>
    <td width="1000">
      <img width="500" src="https://github.com/user-attachments/assets/a1bfd70f-bf64-4a6a-b5c4-c1f65ccc51f5" />
    </td>
    <td width="1000" height="200">
      <img width="500" height="468" src="https://github.com/user-attachments/assets/c7ce575a-2111-4f2f-83f2-4c2b53e71462" />
    </td>
  </tr>
</table>
<table>
  <tr>
    <td>
      <ol>
        <li>
          <strong>Primary lead drivers (2021–2022)</strong>
          <ul>
               <li>Across the analysis period, conversion performance is concentrated among three lead types:</li>
            <li><strong> Former prospect reengagement leads </strong> (~58% conversion rate)</li>
            <li><strong> Inbound marketing email leads </strong> (~16% conversion rate)</li>
            <li><strong> 	Inbound referral leads </strong> (~12% conversion rate)</li>
          </ul>
        </li>
        <li>
          <strong>Lead Source Mix Shift: Sales vs. Marketing Driven</strong>
          <ul>
            <li>
             	<strong>Marketing-driven leads have steadily increased their share of top-of-funnel marketshare</strong>, indicating growing effectiveness of organic and inbound marketing efforts.
            </li>
            <li><strong>In Janauary 2021</strong> marketing-driven sources accounted for <strong> ~10% of total leads </strong>, reflecting a sales-heavy acquisition model.</li>
            <li> <strong>By November 2022</strong>, marketing-driven leads grew to <strong>~28% of total lead generation</strong>, signaling a meaningful shift toward inbound-led growth.</li>
          </ul>
          </ul>
        </li>
      </ol>
    </td>
  </tr>
</table>
<table align="center">
 <tr>
    <td width="500">
      <img width="500" src="https://github.com/user-attachments/assets/81d0d846-fc32-4611-bfa6-595af79e5209" />
</table>
<table>
  <tr>
    <td>
      <ol>
        <li>
          <strong>Most qualified leads convert quickly</strong>
          <ul>
            <li>
              Across the 2025–2026 cycle, approximately <strong>60% of qualified leads</strong>
              converted to Closed-Won within <strong>10 days</strong>, indicating a strong
              early-stage conversion window.
            </li>
          </ul>
        </li>
        <li>
          <strong>Delayed conversions face diminishing likelihood</strong>
          <ul>
            <li>
              Leads that do not convert within the first 10 days are significantly less
              likely to close and are more likely to convert after <strong>30+ days</strong>,
              reflecting extended decision cycles or lower initial intent.
            </li>
          </ul>
        </li>
        <li>
          <strong>Events drive the fastest conversions by source</strong>
          <ul>
            <li>
              Among lead sourcing channels, <strong>MLT-hosted events and community-partner
              events</strong> demonstrate the highest conversion efficiency, with approximately
              <strong>66% of leads converting to Closed-Won within 10 days</strong>.
            </li>
          </ul>
        </li>
        <li>
          <strong>Regional conversion patterns are consistent</strong>
          <ul>
            <li>
              Conversion timing is relatively consistent across regions, with all regions
              showing a majority of Closed-Won deals occurring within the first 10 days.
              This suggests conversion speed is driven more by <strong>lead quality and source</strong>
              than by geography.
            </li>
          </ul>
        </li>
      </ol>
    </td>
  </tr>
</table>
<h2 align="center">Recommendations</h2>

<table align="center" width="100%">
  <tr>
    <td valign="top">
      <ol>
        <li>
          <strong>Double Down on High-Intent Acquisition Channels</strong>
          <ul>
            <li>
              Prioritize MLT-hosted and community-partner events, which consistently
              generate the fastest and highest-converting leads.
            </li>
            <li>
              Increase event cadence during historically high-performing periods,
              particularly late summer and early fall.
            </li>
          </ul>
        </li>
        <li>
          <strong>Optimize for Speed-to-Conversion</strong>
          <ul>
            <li>
              Implement a 10-day follow-up SLA for all qualified leads, with priority
              routing for event- and referral-sourced leads.
            </li>
            <li>
              Use automated alerts to flag leads approaching the 10-day conversion window.
            </li>
          </ul>
        </li>
        <li>
          <strong>Diagnose and Address the 2026 Decline</strong>
          <ul>
            <li>
              Review acquisition and follow-up changes from September through January
              to identify drivers of the cycle-over-cycle decline.
            </li>
            <li>
              Compare execution strategies from the high-performing 2025 cycle to
              isolate what changed.
            </li>
          </ul>
        </li>
        <li>
          <strong>Implement a Fall–Winter Conversion Acceleration Plan</strong>
          <ul>
            <li>
              Deploy a targeted conversion playbook from September through January,
              when qualified lead conversion historically declines.
            </li>
            <li>
              Increase early-stage outreach intensity and refresh messaging to reflect
              end-of-year urgency and value clarity.
            </li>
            <li>
              Monitor conversion performance weekly during this period to enable
              rapid intervention.
            </li>
          </ul>
        </li>
        <li>
          <strong>Align Planning to Seasonal Performance</strong>
          <ul>
            <li>
              Use historical seasonality to guide marketing spend, event scheduling,
              and staffing capacity.
            </li>
            <li>
              Treat peak months as intentional growth windows rather than reactive surges.
            </li>
          </ul>
        </li>
      </ol>
    </td>
  </tr>
</table>
    
