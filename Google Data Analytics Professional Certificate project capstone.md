![](https://images.unsplash.com/photo-1579547621309-5e57ab324182?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb)

Google Data Analytics Capstone Project
======================================

Business case
=============

Background
----------

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geo-tracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, the head of marketing believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, they also believe there is a solid opportunity to convert casual riders into members.

Key problem
-----------

Identify the key differences between casual bike users and annual members that can potentially fuel a marketing plan that aimed to convert casual user into members.

Stakeholder
-----------

**Cyclistic’s Marketing team****:** responsible for the upcoming marketing campaign and is affected directly by the result of this analysis.

**Cyclistic’s Executive team**: the sponsor of this project.

Data source
===========

Description
-----------

The datasets contains Cyclistic’s historical trip data of 2023

**Note:** The datasets have a different name because Cyclistic is a fictional company. For the purposes of this case study, the datasets are appropriate to answer the business questions. The data has been made available by Motivate International Inc. under this [](https://www.divvybikes.com/data-license-agreement)[license](https://www.divvybikes.com/data-license-agreement).

Storage and management
----------------------

A local Microsoft SQL server was set up in order to organize, store and perform the analysis on the dataset which came in the form of 12 CSV files. SQL Server Management Studio (SSMS) was used to import data into the server, while Azure Data Studio was used for data manipulation, cleaning and other analytical tasks.

Tools
-----

*   Microsoft SQL server: Data storage and management

*   SQL Server Management Studio: Importing data

*   Azure Data Studio: Data analysis

*   Tableau Public: Data visualization

Data cleaning and manipulating
==============================

[🔗Data cleaning document](Google%20Data%20Analytics%20Capstone%20Project%208cf774d6ed87430188586d531160d2ed/Data%20cleaning%20document%20099e45e63b514ba08e3cac0366fc6cfc.html)

Summary
-------

*   Aggregated data from 12 CSV files into a single table.

*   Dropped all entries that came from repair stations or warehouses.

*   Made a table that only contains the coordinates of every bike station based off average longitude and latitude.

*   Dropped all entries with backward ride time.

Analysis
========

[🔗Analytical queries document](Google%20Data%20Analytics%20Capstone%20Project%208cf774d6ed87430188586d531160d2ed/Analytical%20queries%20document%20397112b0d198405fb19fcb11a13d7d8b.html)

Summary
-------

Key findings of this analysis:

*   The number of bike rides was strongly correlated with Chicago’s seasons, especially summer and fall.

*   Most casual riders enjoyed the entertainment purposes of Cyclistic’s service and preferred weekend bike trip.

*   There was a clear preference for coastal bike stations among casual riders.

Time differences
----------------

### Monthly

The data strongly suggested a seasonal aspect in the number of bike rides. While there was a fluctuation among the subscribed demographic, it was much more prominent that casual riders favored those months of summer and fall. Provided that the number of rides from non-member customers doubled between March and April and kept growing afterward, which is highly correlated with the warm and less rainy season of Chicago, a marketing campaign tailored for this specific timeframe should prove its effectiveness easily.

[![](Google%20Data%20Analytics%20Capstone%20Project%208cf774d6ed87430188586d531160d2ed/Untitled.png)](Google%20Data%20Analytics%20Capstone%20Project%208cf774d6ed87430188586d531160d2ed/Untitled.png)

### Weekly and daily

A clear trend can be spotted from both charts provided that most subscribed riders use Cyclistic’s services for their daily mobility needs. The slight decrease in the number of rides toward the weekend and the peaks in the daily data apparently confirms this information. On the contrary, the increase in the number of casual rides toward the weekend and the end of a working day’s hour commends the possibility that most non-subscribers enjoyed bike riding as a form of entertainment.

[![](Google%20Data%20Analytics%20Capstone%20Project%208cf774d6ed87430188586d531160d2ed/Untitled%201.png)](Google%20Data%20Analytics%20Capstone%20Project%208cf774d6ed87430188586d531160d2ed/Untitled%201.png)

[![](Google%20Data%20Analytics%20Capstone%20Project%208cf774d6ed87430188586d531160d2ed/Untitled%202.png)](Google%20Data%20Analytics%20Capstone%20Project%208cf774d6ed87430188586d531160d2ed/Untitled%202.png)

This suggestion can also be backed up by the average bike ride’s length, which showed that casual riders tended to go on longer trips on Sunday. A weekend-based subscription service is highly recommend based off this particular insight.

[![](Google%20Data%20Analytics%20Capstone%20Project%208cf774d6ed87430188586d531160d2ed/Untitled%203.png)](Google%20Data%20Analytics%20Capstone%20Project%208cf774d6ed87430188586d531160d2ed/Untitled%203.png)

Station preference
------------------

### Popular station

Through data visualization, a new insight was made obvious. While members of Cyclistic’s service enjoyed the convenience of a widespread bike station system, most casual riders have a clear preference for coastal side stations. This further proved the entertainment purpose of occasional bike trips and strongly suggested the initiation of some marketing strategies toward this beachside-enjoying demographic.

[![](Google%20Data%20Analytics%20Capstone%20Project%208cf774d6ed87430188586d531160d2ed/Untitled%204.png)](Google%20Data%20Analytics%20Capstone%20Project%208cf774d6ed87430188586d531160d2ed/Untitled%204.png)

Recommendation
==============

New subscription service: Season pass and weekend pass
------------------------------------------------------

With the apparent preference for more enjoyable seasons like summer and fall, it is viable to launch a new type of subscription service that caters specifically for people who enjoy bike riding only in this timeframe. The same recommendation can be made for weekend riders.

New services may include:

*   **Seasonal pass**: A three-month subscription

*   **Weekend pass**: A two-day subscription

New direction for marketing
---------------------------

The newly founded insight from the analysis strongly suggests a new marketing direction which may fulfill the entertainment needs of casual riders. The marketing strategy may also target or based around coastal stations customer demographic.

Some recommended marketing themes:

*   Summer time: base around summer activities and the “sportiness” of the season.

*   Beachside: may focus on beachside activities and the enjoyment of coastal atmosphere.

New target demographic
----------------------

The previous targeted demographic was all about the general audience, which was highly effective in spreading the brand’s name. However, it is highly viable for **further investigation** **and analysis** to narrow down to a more specific demographic that may enjoy bike riding in the weekend and along the coastal side of Chicago.
