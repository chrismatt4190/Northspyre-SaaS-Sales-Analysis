
<h1 align="center">SaaS Sales Operations Analysis</h1>
<table align="center" width="100%">
  <tr>
    <td width="100%">
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
Reporting to Northspyre’s Head of Sales and Head of Partnerships, an in-depth analysis was conducted using Northspyre’s deal-level sales pipeline data to evaluate commercial performance across lead sources, sales execution, and revenue outcomes. This comprehensive review provides actionable insights that Sales and Partnerships leaders can use to refine go-to-market strategy, improve pipeline efficiency, and strengthen revenue predictability. The key insights and recommendations presented in this discussion can be found below.
 </p>
Northstar Metrics

<table align="center" width="100%">
  <tr>
    <td valign="top">
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
        </li>
      </ol>
    </td>
    <td valign="top">
      <ol start="3">
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
  </tr>
</table>

</table>
<h1 align="center">Executive Summary</h1>
<table align="center">
  <tr>
    <div width="1440">
      <h2 align="center">Deal Volume & Revenue Performance (January 2021 - October 2022)</h2>
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
      <img width="500"src="https://github.com/user-attachments/assets/7ec4ddd1-d9fe-4ac8-888f-ae265a753dda" />
    </td>
    <td width="1000">
      <img width="500"src="https://github.com/user-attachments/assets/754a4fbc-f84b-4660-9a4e-6a7d371a8f89" />
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
      <img width="500" src="https://github.com/user-attachments/assets/16511552-60aa-4376-94ca-66e3a7ace84f" />
</table>
<table>
  <tr>
    <td>
      <ol>
        <li>
          <strong>Deal Conversion Speed by Lead Type</strong>
          <ul>
            <li>
              Deal conversion timelines vary widely, with time-to-close ranging from same-day (0 days) to 419 days, underscoring significant differences in lead readiness and sales effort required.
            </li>
            <li>
              <strong>Outbound leads arranged via email</strong> convert the fastest overall, with the highest share of deals closing within 30 days or less, making this the most time-efficient outbound channel.
            </li>
            <li>
              <strong>Outbound leads arranged via phone</strong> represent the second-fastest conversion path, reinforcing the effectiveness of direct, sales-led outreach.
            </li>
            <li>
              <strong>Former prospect reengagement leads</strong> combine high conversion speed and high win rates, with a majority of deals closing within 30 days, indicating strong buyer intent from previously engaged prospects.
            </li>
             <li>
              Among inbound channels, marketing-driven sources such as blog/website traffic and Google Ads show faster close timelines than organic search and social, suggesting stronger intent signals earlier in the funnel.
            </li>
            <li>
              Slower conversion patterns across other lead types indicate longer nurture cycles, requiring sustained marketing and sales coordination.
            </li>
          </ul>
      </ol>
    </td>
  </tr>
</table>
<table align="center">
  <tr>
    <h1 align="center">Lead Mix & Source Effectiveness</h1>
    <td width="1000">
      <img width="500" src="https://github.com/user-attachments/assets/c058f5b0-430a-4bf0-914c-dfaea3dffb96" />
    </td>
    <td width="1000" height="200">
      <img width="500" src="https://github.com/user-attachments/assets/1a8d2b6e-7f58-40da-8db7-5a59dd84b1f2" />
    </td>
  </tr>
</table>
<table align="center">
  <tr>
    <td>
      <ol>
        <li>
          <strong>Lead Mix By Revenue</strong>
          <ul>
               <li>Sales-driven outbound channels account for the majority of closed-won revenue, with <strong>Outbound – Arranged via Email </strong> driving the largest share (~38% of total revenue), followed by <strong> Outbound – Arranged via Phone (~28%)</strong>.</li>
            <li><strong> Marketing-driven inbound referrals </strong> contribute a meaningful share of revenue (~14%), outperforming several higher-effort channels and signaling strong deal quality from partner- and referral-based acquisition.</li>
            <li><strong>Former prospect reengagement leads </strong> generate a smaller share of total revenue (~8%), despite high conversion rates elsewhere in the funnel—suggesting these deals close quickly but at lower average deal sizes.</li>
          </ul>
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
          <strong>Double Down on High-Revenue, Sales-Led Outbound While Reducing Concentration Risk</strong>
          <ul>
            <li>
              Outbound email and phone outreach drive the majority of closed-won revenue (~65% combined) and convert faster than most inbound channels.
            </li>
            <li>
              Formalize these motions into SLA or playboods (emial sequencing, call cadencess, etc.) to preserve performance as volume scales.
            </li>
            <li>
              Reduce dependency on a small subset of high-performing deal owners by stanadardizing best practices from Former AEs / Current Managers and Leadership.
            </li>
          </ul>
        </li>
        <li>
          <strong>Sacle Referral and Partner Channels to Improve Revenue Efficiency</strong>
          <ul>
            <li>
              Inbound referrals generate ~14% of revenue with fewer touchpoints than many marketing-led channels, indicating strong deal quality.
            </li>
            <li>
              Align Partnerships more closely with Sleas by prioritizing referral leads for faster routing and higher-touch follow-up.
            </li>
          </ul>
        </li>
        <li>
          <strong>Expand Former Prospect Reengagement as a Fast-Close Pipeline Lever</strong>
          <ul>
            <li>
              Former prospect reengagement leads show the highest conversion rate (~58%) and fast close timelines, but contribute a smaller share of revenue.
            </li>
            <li>
              Build a systematic reengagement motion by tirggering reactiviation campaigns based on deal age, prior engagement, or product milestones.
            </li>
          </ul>
        </li>
        <li>
          <strong>Use Deal Velocity as a Forecasting Signal</strong>
          <ul>
            <li>
              Time-to-close ranges widely (0-419 days), but fast-closing deals cluster by lead type and source.
            </li>
            <li>
              Prioritize deals likely to close within 30 days for near-term forecasts.
            </li>
            <li>
              Treat long-cycle inbound deals as longer-horizon pipeline with different success metrics.
            </li>
            <li>
              This improves forecast accuracy while helping reps focus effort where it matters most.
            </li>
          </ul>
        </li>
          </ul>
        </li>
      </ol>
    </td>
  </tr>
</table>
    
