![Bridge International Academies Logo](Banner%20Logo%20280x60.png)

# Data Engineer Technical Test

## Objective

To cleanse data in Excel format and to extract, transform and load (ETL) it into a SQL Server database. Finally, to answer questions about the data.

## Build a Schema

Using the data in the [Excel spreadsheet](Data.xlsx), to build a schema that will make it possible to slice and dice the attached data. Create hierarchies in your schema (where possible) to aid with reporting and drilling through the data. Use any SQL technology in the Microsoft stack to perform the ETL and explain your reasoning.

## Cleanse Data

The data has numerous issues in it that will need to be dealt with. Decide on a strategy for cleansing the data and explain your reasoning.

## Answer Questions

Use the schema you built to answer the following questions by writing T-SQL:

1. How many academies have Standard 7 pupils as of July 1, 2014?
2. Out of the Standard 7 pupils enrolled as of July 1, 2014, what percentage has a `+` vs `-` status?
3. How many of the Standard 7 pupils joined in February 1, 2014?
4. How many unique Standard 7 pupil IDs do we have in Quarter 1 of 2014?
5. What percentage of Standard 7 enrollees share an exact name with another Standard 7 enrollee at the same academy? What is the count?
6. With the information provided and your findings above, what would be your top three recommendations to Bridge to help ensure that pupil ID's can be trusted as the unique identifier to each and every pupil?
<!-- How many of the Standard 7 enrollees present as of February 1, 2014 are no longer present as of July 1 2014 ? -->
<!-- How many unique Standard 7 pupil IDs do we have? -->
<!-- What percentage of Standard 7 enrollees have had their name updated at least once between January and July 2014? What is the count? -->

## Additional Requirements

- Write a short ReadMe about the steps you took and the reasoning behind those decisions. Also talk about any assumptions you made and how you could improve the process or next steps you could have taken if you had more time.
- Write production quality code.
- Send us all of your T-SQL scripts and any other files in a zip file.

If you have any problems please feel free to contact us.
