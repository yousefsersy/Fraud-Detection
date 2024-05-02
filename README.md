# Markdown Report


## Data Analysis


The CFO of your firm has requested a report to help analyze potential fraudulent transactions. Using your newly created database, generate queries that will discover the information needed to answer the following questions, then use your repository's ReadME file to create a markdown report you can share with the CFO:

Some fraudsters hack a credit card by making several small transactions (generally less than $2.00), which are typically ignored by cardholders.
How can you isolate (or group) the transactions of each cardholder?


Count the transactions that are less than $2.00 per cardholder.

Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.

**Answer:** **There seems to be a total of 350 transactions less than $2. There is a good chance that there is some fraud occuring considering the amount of small $2 dollar transactions. Fraudsters typically commit credit card fraud by making several small transactions. Since there is 350 
of these type of transactions, we can probably assume there is some fraud that is being committed.**

Take your investigation a step further by considering the time period in which potentially fraudulent transactions are made.
What are the top 100 highest transactions made between 7:00 am and 9:00 am?

Do you see any anomalous transactions that could be fraudulent?

Is there a higher number of fraudulent transactions made during this time frame versus the rest of the day?

If you answered yes to the previous question, explain why you think there might be fraudulent transactions during this time frame.

**Answer:** **Between 7am and 9am there are several transactions over $1000 and one at $748. It is a bit suspicious as the majority of the transactions during this time frame are less than $25.**

**I personally think there is a higher number of fraudulent transactions after 9am to attempt to try to hide the fraudulent transactions from the legitimate transactions. When analyzing transactions made at or after 9am, most larger purchases are made after 12pm with occasional larger purchases before 12pm.**

What are the top 5 merchants prone to being hacked using small transactions?

**Answer: The top 5 merchants prone to being hacked are:**


1) **Wood-Ramirez (bar)**
2) **Baker Inc (food truck)**
3) **Hood-Phillips (bar)**
4) **Walker, Deleon, and Wolf (restaurant)**
5) **Greene-Wood (bar)**


Part 2
Your CFO has also requested detailed trends data on specific card holders. Use the starter notebook to query your database and generate visualizations that supply the requested information as follows, then add your visualizations and observations to your markdown report:

The two most important customers of the firm may have been hacked. Verify if there are any fraudulent transactions in their history. For privacy reasons, you only know that their cardholder IDs are 2 and 18.
Using hvPlot, create a line plot representing the time series of transactions over the course of the year for each cardholder separately.

Next, to better compare their patterns, create a single line plot that contains both card holders' trend data.

What difference do you observe between the consumption patterns? Does the difference suggest a fraudulent transaction? Explain your rationale.

**Transactions associated with Cardholder ID 2 consistently remain under $20, indicating a consistent spending pattern. Whereas Cardholder ID 18 exhibits a combination of frequent small purchases and occasional large transactions, some nearing $2000. This fluctuation suggests potential fraudulent behavior associated with Cardholder ID 18, warranting further investigation and communication with the cardholder. The pattern of small transactions could be a sign of testing account activity before executing larger fraudulent transactions. In contrast, Cardholder ID 2 shows no irregularities during the that time period, making fraudulent activity unlikely.**

The CEO of the biggest customer of the firm suspects that someone has used her corporate credit card without authorization in the first quarter of 2018 to pay quite expensive restaurant bills. Again, for privacy reasons, you know only that the cardholder ID in question is 25.

Using hvPlot, create a box plot, representing the expenditure data from January 2018 to June 2018 for cardholder ID 25.

Are there any outliers for cardholder ID 25? How many outliers are there per month?

**Each month, except February, shows outliers. January, March, and May each have one outlier, whereas April and June show three outliers each.**

Do you notice any anomalies? Describe your observations and conclusions.

**A total of 9 outlier transactions occurred between January and June 2018, confirming the importance of validating each of these outliers with the cardholder. It is plausible that fraudulent activity occurred in both the 1st and 2nd quarters of 2018.**