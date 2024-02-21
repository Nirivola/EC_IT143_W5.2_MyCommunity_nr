/**Alexander Midnight Q4: We are looking into a complaint of unfair salaries by anonymous sources.
We want to make sure our soccer players have at least 50000 or more in a salary. 
Can you please list all soccer players with a salary of less than 50000?

RESPONS A4:

**/


USE [MyFC]
GO

SELECT  mtd_salary AS UnfairSalary
		,l_name
		,f_name
		,dbo.tblPlayerDim.pl_id
		
  FROM [dbo].[tblPlayerDim] 
  INNER JOIN dbo.tblPlayerFact ON 
	dbo.tblPlayerFact.pl_id=dbo.tblPlayerDim.pl_id
	Where mtd_salary<50000
	order by mtd_salary desc

GO
