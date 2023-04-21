## Cyclist Bike Data Analysis
Google capstone project for the professional data analytic certification

## Introduction
In this case study, my role is as a junior data analyst in a fictional bike-share company called Cyclistic. 
In this role, I will try to solve the business problem using the 6 data analytics steps learned throughout the course: Act, Prepare, Process, Analyze, Share, Act.

## Scenario
You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director
of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore,
your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights,
your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives
must approve your recommendations, so they must be backed up with compelling data insights and professional data
visualizations.

## About the company
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that
are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and
returned to any other station in the system anytime.
Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments.
One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes,
and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers
who purchase annual memberships are Cyclistic members.

## BUSINESS TASK: Three questions will guide the future marketing program:

* How do annual members and casual riders use Cyclistic bikes differently?
* Why would casual riders buy Cyclistic annual memberships?
* How can Cyclistic use digital media to influence casual riders to become members?

## IS THE DATA ROCCC?

Reliable - YES, data is accurate, complete, and unbiased
Original - YES, we can locate the original, public data source
Comprehensive - YES, information is complete and extensive
Current - YES, data is updated monthly
Cited - YES
So the data is reliable, original, comprehensive, current, and cited from the company.


## PROCESS

The dataset was acquired from https://divvytripdata.s3.amazonaws.com/index.html. Motivate International Inc made the data available under this https://www.divvybikes.com/data-license-agreement. The chosen sample size over 5 million rows and 13 columns.

I decided to use R programming language to clean the data and make it usable, statistical programming language that was taught in the Google Data Analytics program. I imported the 12 months of CSV files into R and named them corresponding to the appropriate months (Jan-2022, Feb-2022, etc.) by creating a dedicated row for easy track of data in future. Due to the size of the dataset, regular spreadsheet packages (Microsoft Excel or Google Sheets) would fail as they are limited to fewer number of rows and also, due to the limitation of BigQuery sandbox (the SQL Package taught in the program), I would have to create multiple tables. Therefore, to analyse this data efficiently, R was chosen

## DASHBOARD
The interactive dashboard to this project can be found here
https://public.tableau.com/app/profile/emrobowasan.owhofasa/viz/CyclisticBike-Share_16820879629750/Dashboard1?publish=yes

## Key Findings
Now that the project is complete, how can we answer the business questions, and recommend next steps for our stakeholders.

We can come back to our questions from Phase 1:

How do annual members and casual riders use Cyclistic bikes differently?
Why would casual riders buy Cyclistic annual memberships?
How can Cyclistic use digital media to influence casual riders to become members?

With the analyses we completed, we can deduce that;

* On weekend (Saturdays/Sundays), casual riders use Cyclistic more than annual members.
* There is significant usage of Cyclistic services in the summer by both casual and annual members.
* Casual riders take longer rides than annual members on a monthly basis/average maybe due to recreation and annual member use this for commute?
* Both casual riders and members prefer classic bikes .
* A significant amount of casual members likes docked bikes and they use this mostly on saturdays.
* On Average, Thursday has the longest rides and Casual riders go have their peak rides January season.

## ACT
### RECOMMENDATIONS:

* Since we want to try to turn casual riders into member riders, the focus of the marketing campaign should be during January/February peak Season, and also provide weekend (Saturday/Sundays) membership freebies (like discounts, addons etc.) to further attract causual riders into opting for membership pass.

* The marketing team should also consider focusing their campaign to riders during the weekends, as casual riders are most likely using Cyclistic for recreational services while annual members use it for their daily commute.

* Consideration or a survey should be placed on Casual riders who prefer docked bikes as only a significant amount of casual riders use this, to further more understand how to convert them to members and serve them better.

