/**NIRIVOLA  Q2: We are planning to range our football club the international and professional, Is it possible to have the full name of player having
the higher salaries?**/

SELECT TOP (1) mtd_salary AS Top_Salary
		,l_name
		,f_name
		,dbo.tblPlayerDim.pl_id
		
  FROM [dbo].[tblPlayerDim] 
  INNER JOIN dbo.tblPlayerFact ON 
	dbo.tblPlayerFact.pl_id=dbo.tblPlayerDim.pl_id
	order by mtd_salary desc

GO
