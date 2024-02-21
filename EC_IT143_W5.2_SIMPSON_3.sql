/**NIRIVOLA Q3: Our church educates everyone to be a good intended so, the Simpsons Family would like to learn more about self reliance. Is it possible 
to provide the average amount spent for the restaurant for 1989 and 1990 for card member Marge?**/

SELECT  
	COnvert (date,'YYYY')
	,Category
       ,AVG ([Amount])
       ,Card_Member
  FROM [dbo].[Planet_Express]
  where (Category like '%Restaurant%'  and Card_Member='MARGE SIMPSON') and (Date='1989' and Date='1990')
   group BY Amount,Card_Member,Category,Date
GO
