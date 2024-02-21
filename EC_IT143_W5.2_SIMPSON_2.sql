/**NIRIVOLA Q2: What kind of category is the most spending for member name Marge?**/


SELECT		Distinct Category AS Each_cat
		,sum(Amount) AS Total_amount
		
  FROM [dbo].[Planet_Express]
  WHere Card_Member='MARGE SIMPSON'
  Group by Category
  Order by Total_amount DESC
GO
