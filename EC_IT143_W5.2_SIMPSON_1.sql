/**NIRIVOLA Q1: would you provide the descriptions which the most repeated for the Marge Card?

ANSWER A1:
**/

USE [Simpsons]
GO


SELECT	 Count([Category]) AS Repeted_Category
	,Category
  FROM [dbo].[Planet_Express]
  WHere Card_Member='MARGE SIMPSON'
  Group by Category
  Order by Repeted_Category Desc
GO
