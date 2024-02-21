/**Omaoluyiri Etuwewe Q4: Write a query that retrieves all data with the 
same name but different termination date: **/


USE [Simpsons]
GO

SELECT DISTINCT [Date]
      ,[Description]
      ,[Card_Member]
      ,[Account]
      ,[Amount]
      ,[Category]
  FROM [dbo].[Planet_Express]
  where Card_Member='MARGE SIMPSON' and Card_Member='HOMER SIMPSON'

GO
