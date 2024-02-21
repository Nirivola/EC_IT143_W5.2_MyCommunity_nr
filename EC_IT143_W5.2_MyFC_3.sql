/**NIRIVOLA Q3: Since few years, the salaries do not change then as club, For next year we are planning to increase the salary of the lowest player.
Could you provide this player who have the low salary?**/

SELECT MIN (mtd_salary) As Lowest_Salary
		,dbo.tblPlayerDim.pl_id
		,l_name
		,f_name
		
  FROM [dbo].[tblPlayerDim] 
  INNER JOIN dbo.tblPlayerFact ON 
	dbo.tblPlayerFact.pl_id=dbo.tblPlayerDim.pl_id
	Group by mtd_salary,dbo.tblPlayerDim.pl_id,l_name,f_name
	Order by mtd_salary

GO
