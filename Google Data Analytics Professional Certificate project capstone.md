Google Data Analytics Capstone Project /\* cspell:disable-file \*/ /\* webkit printing magic: print all background colors \*/ html { -webkit-print-color-adjust: exact; } \* { box-sizing: border-box; -webkit-print-color-adjust: exact; } html, body { margin: 0; padding: 0; } @media only screen { body { margin: 2em auto; max-width: 900px; color: rgb(55, 53, 47); } } body { line-height: 1.5; white-space: pre-wrap; } a, a.visited { color: inherit; text-decoration: underline; } .pdf-relative-link-path { font-size: 80%; color: #444; } h1, h2, h3 { letter-spacing: -0.01em; line-height: 1.2; font-weight: 600; margin-bottom: 0; } .page-title { font-size: 2.5rem; font-weight: 700; margin-top: 0; margin-bottom: 0.75em; } h1 { font-size: 1.875rem; margin-top: 1.875rem; } h2 { font-size: 1.5rem; margin-top: 1.5rem; } h3 { font-size: 1.25rem; margin-top: 1.25rem; } .source { border: 1px solid #ddd; border-radius: 3px; padding: 1.5em; word-break: break-all; } .callout { border-radius: 3px; padding: 1rem; } figure { margin: 1.25em 0; page-break-inside: avoid; } figcaption { opacity: 0.5; font-size: 85%; margin-top: 0.5em; } mark { background-color: transparent; } .indented { padding-left: 1.5em; } hr { background: transparent; display: block; width: 100%; height: 1px; visibility: visible; border: none; border-bottom: 1px solid rgba(55, 53, 47, 0.09); } img { max-width: 100%; } @media only print { img { max-height: 100vh; object-fit: contain; } } @page { margin: 1in; } .collection-content { font-size: 0.875rem; } .column-list { display: flex; justify-content: space-between; } .column { padding: 0 1em; } .column:first-child { padding-left: 0; } .column:last-child { padding-right: 0; } .table\_of\_contents-item { display: block; font-size: 0.875rem; line-height: 1.3; padding: 0.125rem; } .table\_of\_contents-indent-1 { margin-left: 1.5rem; } .table\_of\_contents-indent-2 { margin-left: 3rem; } .table\_of\_contents-indent-3 { margin-left: 4.5rem; } .table\_of\_contents-link { text-decoration: none; opacity: 0.7; border-bottom: 1px solid rgba(55, 53, 47, 0.18); } table, th, td { border: 1px solid rgba(55, 53, 47, 0.09); border-collapse: collapse; } table { border-left: none; border-right: none; } th, td { font-weight: normal; padding: 0.25em 0.5em; line-height: 1.5; min-height: 1.5em; text-align: left; } th { color: rgba(55, 53, 47, 0.6); } ol, ul { margin: 0; margin-block-start: 0.6em; margin-block-end: 0.6em; } li > ol:first-child, li > ul:first-child { margin-block-start: 0.6em; } ul > li { list-style: disc; } ul.to-do-list { padding-inline-start: 0; } ul.to-do-list > li { list-style: none; } .to-do-children-checked { text-decoration: line-through; opacity: 0.375; } ul.toggle > li { list-style: none; } ul { padding-inline-start: 1.7em; } ul > li { padding-left: 0.1em; } ol { padding-inline-start: 1.6em; } ol > li { padding-left: 0.2em; } .mono ol { padding-inline-start: 2em; } .mono ol > li { text-indent: -0.4em; } .toggle { padding-inline-start: 0em; list-style-type: none; } /\* Indent toggle children \*/ .toggle > li > details { padding-left: 1.7em; } .toggle > li > details > summary { margin-left: -1.1em; } .selected-value { display: inline-block; padding: 0 0.5em; background: rgba(206, 205, 202, 0.5); border-radius: 3px; margin-right: 0.5em; margin-top: 0.3em; margin-bottom: 0.3em; white-space: nowrap; } .collection-title { display: inline-block; margin-right: 1em; } .page-description { margin-bottom: 2em; } .simple-table { margin-top: 1em; font-size: 0.875rem; empty-cells: show; } .simple-table td { height: 29px; min-width: 120px; } .simple-table th { height: 29px; min-width: 120px; } .simple-table-header-color { background: rgb(247, 246, 243); color: black; } .simple-table-header { font-weight: 500; } time { opacity: 0.5; } .icon { display: inline-block; max-width: 1.2em; max-height: 1.2em; text-decoration: none; vertical-align: text-bottom; margin-right: 0.5em; } img.icon { border-radius: 3px; } .user-icon { width: 1.5em; height: 1.5em; border-radius: 100%; margin-right: 0.5rem; } .user-icon-inner { font-size: 0.8em; } .text-icon { border: 1px solid #000; text-align: center; } .page-cover-image { display: block; object-fit: cover; width: 100%; max-height: 30vh; } .page-header-icon { font-size: 3rem; margin-bottom: 1rem; } .page-header-icon-with-cover { margin-top: -0.72em; margin-left: 0.07em; } .page-header-icon img { border-radius: 3px; } .link-to-page { margin: 1em 0; padding: 0; border: none; font-weight: 500; } p > .user { opacity: 0.5; } td > .user, td > time { white-space: nowrap; } input\[type="checkbox"\] { transform: scale(1.5); margin-right: 0.6em; vertical-align: middle; } p { margin-top: 0.5em; margin-bottom: 0.5em; } .image { border: none; margin: 1.5em 0; padding: 0; border-radius: 0; text-align: center; } .code, code { background: rgba(135, 131, 120, 0.15); border-radius: 3px; padding: 0.2em 0.4em; border-radius: 3px; font-size: 85%; tab-size: 2; } code { color: #eb5757; } .code { padding: 1.5em 1em; } .code-wrap { white-space: pre-wrap; word-break: break-all; } .code > code { background: none; padding: 0; font-size: 100%; color: inherit; } blockquote { font-size: 1.25em; margin: 1em 0; padding-left: 1em; border-left: 3px solid rgb(55, 53, 47); } .bookmark { text-decoration: none; max-height: 8em; padding: 0; display: flex; width: 100%; align-items: stretch; } .bookmark-title { font-size: 0.85em; overflow: hidden; text-overflow: ellipsis; height: 1.75em; white-space: nowrap; } .bookmark-text { display: flex; flex-direction: column; } .bookmark-info { flex: 4 1 180px; padding: 12px 14px 14px; display: flex; flex-direction: column; justify-content: space-between; } .bookmark-image { width: 33%; flex: 1 1 180px; display: block; position: relative; object-fit: cover; border-radius: 1px; } .bookmark-description { color: rgba(55, 53, 47, 0.6); font-size: 0.75em; overflow: hidden; max-height: 4.5em; word-break: break-word; } .bookmark-href { font-size: 0.75em; margin-top: 0.25em; } .sans { font-family: ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol"; } .code { font-family: "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace; } .serif { font-family: Lyon-Text, Georgia, ui-serif, serif; } .mono { font-family: iawriter-mono, Nitti, Menlo, Courier, monospace; } .pdf .sans { font-family: Inter, ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol", 'Twemoji', 'Noto Color Emoji', 'Noto Sans CJK JP'; } .pdf:lang(zh-CN) .sans { font-family: Inter, ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol", 'Twemoji', 'Noto Color Emoji', 'Noto Sans CJK SC'; } .pdf:lang(zh-TW) .sans { font-family: Inter, ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol", 'Twemoji', 'Noto Color Emoji', 'Noto Sans CJK TC'; } .pdf:lang(ko-KR) .sans { font-family: Inter, ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol", 'Twemoji', 'Noto Color Emoji', 'Noto Sans CJK KR'; } .pdf .code { font-family: Source Code Pro, "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK JP'; } .pdf:lang(zh-CN) .code { font-family: Source Code Pro, "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK SC'; } .pdf:lang(zh-TW) .code { font-family: Source Code Pro, "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK TC'; } .pdf:lang(ko-KR) .code { font-family: Source Code Pro, "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK KR'; } .pdf .serif { font-family: PT Serif, Lyon-Text, Georgia, ui-serif, serif, 'Twemoji', 'Noto Color Emoji', 'Noto Serif CJK JP'; } .pdf:lang(zh-CN) .serif { font-family: PT Serif, Lyon-Text, Georgia, ui-serif, serif, 'Twemoji', 'Noto Color Emoji', 'Noto Serif CJK SC'; } .pdf:lang(zh-TW) .serif { font-family: PT Serif, Lyon-Text, Georgia, ui-serif, serif, 'Twemoji', 'Noto Color Emoji', 'Noto Serif CJK TC'; } .pdf:lang(ko-KR) .serif { font-family: PT Serif, Lyon-Text, Georgia, ui-serif, serif, 'Twemoji', 'Noto Color Emoji', 'Noto Serif CJK KR'; } .pdf .mono { font-family: PT Mono, iawriter-mono, Nitti, Menlo, Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK JP'; } .pdf:lang(zh-CN) .mono { font-family: PT Mono, iawriter-mono, Nitti, Menlo, Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK SC'; } .pdf:lang(zh-TW) .mono { font-family: PT Mono, iawriter-mono, Nitti, Menlo, Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK TC'; } .pdf:lang(ko-KR) .mono { font-family: PT Mono, iawriter-mono, Nitti, Menlo, Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK KR'; } .highlight-default { color: rgba(55, 53, 47, 1); } .highlight-gray { color: rgba(120, 119, 116, 1); fill: rgba(120, 119, 116, 1); } .highlight-brown { color: rgba(159, 107, 83, 1); fill: rgba(159, 107, 83, 1); } .highlight-orange { color: rgba(217, 115, 13, 1); fill: rgba(217, 115, 13, 1); } .highlight-yellow { color: rgba(203, 145, 47, 1); fill: rgba(203, 145, 47, 1); } .highlight-teal { color: rgba(68, 131, 97, 1); fill: rgba(68, 131, 97, 1); } .highlight-blue { color: rgba(51, 126, 169, 1); fill: rgba(51, 126, 169, 1); } .highlight-purple { color: rgba(144, 101, 176, 1); fill: rgba(144, 101, 176, 1); } .highlight-pink { color: rgba(193, 76, 138, 1); fill: rgba(193, 76, 138, 1); } .highlight-red { color: rgba(212, 76, 71, 1); fill: rgba(212, 76, 71, 1); } .highlight-gray\_background { background: rgba(241, 241, 239, 1); } .highlight-brown\_background { background: rgba(244, 238, 238, 1); } .highlight-orange\_background { background: rgba(251, 236, 221, 1); } .highlight-yellow\_background { background: rgba(251, 243, 219, 1); } .highlight-teal\_background { background: rgba(237, 243, 236, 1); } .highlight-blue\_background { background: rgba(231, 243, 248, 1); } .highlight-purple\_background { background: rgba(244, 240, 247, 0.8); } .highlight-pink\_background { background: rgba(249, 238, 243, 0.8); } .highlight-red\_background { background: rgba(253, 235, 236, 1); } .block-color-default { color: inherit; fill: inherit; } .block-color-gray { color: rgba(120, 119, 116, 1); fill: rgba(120, 119, 116, 1); } .block-color-brown { color: rgba(159, 107, 83, 1); fill: rgba(159, 107, 83, 1); } .block-color-orange { color: rgba(217, 115, 13, 1); fill: rgba(217, 115, 13, 1); } .block-color-yellow { color: rgba(203, 145, 47, 1); fill: rgba(203, 145, 47, 1); } .block-color-teal { color: rgba(68, 131, 97, 1); fill: rgba(68, 131, 97, 1); } .block-color-blue { color: rgba(51, 126, 169, 1); fill: rgba(51, 126, 169, 1); } .block-color-purple { color: rgba(144, 101, 176, 1); fill: rgba(144, 101, 176, 1); } .block-color-pink { color: rgba(193, 76, 138, 1); fill: rgba(193, 76, 138, 1); } .block-color-red { color: rgba(212, 76, 71, 1); fill: rgba(212, 76, 71, 1); } .block-color-gray\_background { background: rgba(241, 241, 239, 1); } .block-color-brown\_background { background: rgba(244, 238, 238, 1); } .block-color-orange\_background { background: rgba(251, 236, 221, 1); } .block-color-yellow\_background { background: rgba(251, 243, 219, 1); } .block-color-teal\_background { background: rgba(237, 243, 236, 1); } .block-color-blue\_background { background: rgba(231, 243, 248, 1); } .block-color-purple\_background { background: rgba(244, 240, 247, 0.8); } .block-color-pink\_background { background: rgba(249, 238, 243, 0.8); } .block-color-red\_background { background: rgba(253, 235, 236, 1); } .select-value-color-uiBlue { background-color: rgba(35, 131, 226, .07); } .select-value-color-pink { background-color: rgba(245, 224, 233, 1); } .select-value-color-purple { background-color: rgba(232, 222, 238, 1); } .select-value-color-green { background-color: rgba(219, 237, 219, 1); } .select-value-color-gray { background-color: rgba(227, 226, 224, 1); } .select-value-color-transparentGray { background-color: rgba(227, 226, 224, 0); } .select-value-color-translucentGray { background-color: rgba(255, 255, 255, 0.0375); } .select-value-color-orange { background-color: rgba(250, 222, 201, 1); } .select-value-color-brown { background-color: rgba(238, 224, 218, 1); } .select-value-color-red { background-color: rgba(255, 226, 221, 1); } .select-value-color-yellow { background-color: rgba(253, 236, 200, 1); } .select-value-color-blue { background-color: rgba(211, 229, 239, 1); } .select-value-color-pageGlass { background-color: undefined; } .select-value-color-washGlass { background-color: undefined; } .checkbox { display: inline-flex; vertical-align: text-bottom; width: 16; height: 16; background-size: 16px; margin-left: 2px; margin-right: 5px; } .checkbox-on { background-image: url("data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2216%22%20height%3D%2216%22%20viewBox%3D%220%200%2016%2016%22%20fill%3D%22none%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%0A%3Crect%20width%3D%2216%22%20height%3D%2216%22%20fill%3D%22%2358A9D7%22%2F%3E%0A%3Cpath%20d%3D%22M6.71429%2012.2852L14%204.9995L12.7143%203.71436L6.71429%209.71378L3.28571%206.2831L2%207.57092L6.71429%2012.2852Z%22%20fill%3D%22white%22%2F%3E%0A%3C%2Fsvg%3E"); } .checkbox-off { background-image: url("data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2216%22%20height%3D%2216%22%20viewBox%3D%220%200%2016%2016%22%20fill%3D%22none%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%0A%3Crect%20x%3D%220.75%22%20y%3D%220.75%22%20width%3D%2214.5%22%20height%3D%2214.5%22%20fill%3D%22white%22%20stroke%3D%22%2336352F%22%20stroke-width%3D%221.5%22%2F%3E%0A%3C%2Fsvg%3E"); }

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