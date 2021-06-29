# Crypto Crustaceans ETL Project

For our ETL project, we've decided to examine the immediate impact a central banking system has on the securities market, specifically the United States' central bank, the Federal Reserve, and its impact on the S&P 500 index.

The Fed Board of Governors keep a log of all their press releases since 2006 on their official website (https://www.federalreserve.gov/newsevents/pressreleases.htm) and categorizes them by types: Monetary Policy, Orders on Banking Application, Enforecement Actions, Banking and Consumer Regulatory Policy, and Other Announcements. We are scraping announcement dates, titles of press releases, types, and contents in order to plot them against the changes in the S&P 500 index.

The S&P 500 serves as a good proxy for the securities index as it tracks the largest 500 companies on the U.S. stock exchanges. The source of data we are scraping this from is Yahoo Finance, as new data constantly updates and historical data is readily available to manipulate and analyze.
