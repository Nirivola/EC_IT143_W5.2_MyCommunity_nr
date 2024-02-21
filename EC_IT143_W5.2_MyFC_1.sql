/**NIRIVOLA Q1: In Football soccer, the player can play with his National team and also with his club, I would like to know if one player is dedicated
to playing for just one teams or assigned for several teams?
R1:**/

USE [MyFC]
GO

SELECT 
      dbo.[tblPlayerDim].pl_id,
      COUNT (tblTeamDim.t_id)AS Number_Of_Team_Assigned
  FROM [dbo].[tblPlayerDim]
  INNER JOIN dbo.[tblTeamDim] ON [tblTeamDim].t_id= [tblPlayerDim].t_id
  Group by dbo.[tblPlayerDim].pl_id
  GO
