--------------------------------1
SELECT [nDIEmp]
      ,[nombEmp]
      ,[sexEmp]
      ,[fecNac]
      ,[fecIncorporacion]
      ,[salEmp]
      ,[comis]
      ,[codSuc]
      ,[jefeDI]
      ,[cargo]
      ,[nroDepto]
  FROM [dbo].[Empleado]
 -------------------------------2
SELECT [codDepto]
      ,[nombreDpto]
      ,[ciudad]
      ,[director]
  FROM [dbo].[Departamento]
-------------------------------3
SELECT [nDIEmp]
      ,[nombEmp]
      ,[sexEmp]
      ,[fecNac]
      ,[fecIncorporacion]
      ,[salEmp]
      ,[comis]
      ,[codSuc]
      ,[jefeDI]
      ,[cargo]
      ,[nroDepto]
  FROM [dbo].[Empleado]
  WHERE cargo='Secretaria'
  -----------------------------4
  SELECT 
      [nombEmp]
      ,[salEmp]
FROM [dbo].[Empleado]
------------------------------5
SELECT [nDIEmp]
      ,[nombEmp]
      ,[sexEmp]
      ,[fecNac]
      ,[fecIncorporacion]
      ,[salEmp]
      ,[comis]
      ,[codSuc]
      ,[jefeDI]
      ,[cargo]
      ,[nroDepto]
  FROM [dbo].[Empleado]
  WHERE cargo='Vendedor' ORDER BY [nombEmp]
---------------------------------------------6
SELECT 
      [nombreDpto]
FROM [dbo].Departamento
-----------------------------------7
SELECT 
      [nombreDpto]
FROM [dbo].Departamento ORDER BY [nombreDpto]
-----------------------------------------------8
SELECT 
      [nombreDpto]
FROM [dbo].Departamento ORDER BY ciudad
-------------------------------------------9
SELECT 
      [nombreDpto]
FROM [dbo].Departamento ORDER BY ciudad DESC
------------------------------------------------10
SELECT 
      [nombEmp]
      ,cargo
  FROM [dbo].[Empleado] ORDER BY salEmp
   --------------------------------------------11
   SELECT 
      [nombEmp]
      ,cargo
  FROM [dbo].[Empleado] ORDER BY cargo,salEmp
  -----------------------------------------------12
   SELECT 
      [nombEmp]
      ,cargo
  FROM [dbo].[Empleado] ORDER BY cargo DESC
  --------------------------------------------------13
  SELECT 
      [salEmp]
      ,[comis]
  FROM [dbo].[Empleado]
  WHERE nroDepto=2000
  -------------------------------------------------14
    SELECT 
      [salEmp]
      ,[comis]
  FROM [dbo].[Empleado]
  WHERE nroDepto=2000 ORDER BY comis
  -----------------------------------------------15
 SELECT 
      [comis]
 FROM [dbo].[Empleado]
 --------------------------------------------16
 SELECT DISTINCT
      [comis]
 FROM [dbo].[Empleado] 
 ---------------------------------------17
 SELECT DISTINCT
 salEmp
 FROM Empleado
 --------------------------------------------18
SELECT
      [nombEmp]
      ,[salEmp]
      ,comis+500 AS comisiones
	  ,totalPagar=[salEmp]+comis+500
  FROM [dbo].[Empleado]
  WHERE nroDepto=3000 ORDER BY [nombEmp]
  ---------------------------------------------19
  SELECT [nDIEmp]
      ,[nombEmp]
      ,[sexEmp]
      ,[fecNac]
      ,[fecIncorporacion]
      ,[salEmp]
      ,[comis]
      ,[codSuc]
      ,[jefeDI]
      ,[cargo]
      ,[nroDepto]
  FROM [dbo].[Empleado]
  WHERE comis>salEmp
  -----------------------------------------------20
  SELECT [nDIEmp]
      ,[nombEmp]
      ,[sexEmp]
      ,[fecNac]
      ,[fecIncorporacion]
      ,[salEmp]
      ,[comis]
      ,[codSuc]
      ,[jefeDI]
      ,[cargo]
      ,[nroDepto]
  FROM [dbo].[Empleado]
  WHERE comis<(salEmp*.30)
  -------------------------------------------------21
      SELECT 
       nombEmp='Nombre: '+nombEmp
      ,[cargo]='Cargo: '+cargo
      
  FROM [dbo].[Empleado]
  ---------------------------------------------------22
  SELECT [nDIEmp]
      ,[nombEmp]
      ,[sexEmp]
      ,[fecNac]
      ,[fecIncorporacion]
      ,[salEmp]
      ,[comis]
      ,[codSuc]
      ,[jefeDI]
      ,[cargo]
      ,[nroDepto]
  FROM [dbo].[Empleado]
  WHERE codSuc>19.709.802
  -----------------------------------------------------23
    SELECT [nDIEmp]
      ,[nombEmp]
      ,[sexEmp]
      ,[fecNac]
      ,[fecIncorporacion]
      ,[salEmp]
      ,[comis]
      ,[codSuc]
      ,[jefeDI]
      ,[cargo]
      ,[nroDepto]
  FROM [dbo].[Empleado]
  WHERE salEmp<(comis*.40)
  ----------------------------------------------------------24
      SELECT [nDIEmp]
      ,[nombEmp]
      ,[sexEmp]
      ,[fecNac]
      ,[fecIncorporacion]
      ,[salEmp]
      ,[comis]
      ,[codSuc]
      ,[jefeDI]
      ,[cargo]
      ,[nroDepto]
  FROM [dbo].[Empleado]
  WHERE nombEmp like 'j%' AND 
  nombEmp like '%z'
  ------------------------------------------------------25
 SELECT 
      [nombEmp]
      ,[cargo]
  FROM [dbo].[Empleado]
  ORDER BY nombEmp,cargo DESC
  ------------------------------------------------------26
 SELECT salEmp
 ,comis
 ,(salEmp+comis) as SalarioTotal
 ,nombEmp
 ,codSuc
 FROM [dbo].[Empleado]
 WHERE comis>1000 ORDER BY codSuc
 -----------------------------------------------------27
  SELECT salEmp
 ,comis
 ,(salEmp+comis) as SalarioTotal
 ,nombEmp
 ,codSuc
 FROM [dbo].[Empleado]
 WHERE comis=0 ORDER BY codSuc


 ------------------------------------------------28
Select nombEmp
FROM Empleado
Where jefeDI='31.840.269' AND salEmp>1000

 -------------------------------------------------29
 SELECT [nDIEmp]
      ,[nombEmp]
      ,[sexEmp]
      ,[fecNac]
      ,[fecIncorporacion]
      ,[salEmp]
      ,[comis]
      ,[codSuc]
      ,[jefeDI]
      ,[cargo]
      ,[nroDepto]
  FROM [dbo].[Empleado]
  WHERE nombEmp not like '%Na%' 
  ---------------------------------------------30
  SELECT [codDepto]
      ,[nombreDpto]
      ,[ciudad]
      ,[director]
  FROM [dbo].[Departamento]
  WHERE nombreDpto!='Ventas' AND nombreDpto!='Investigacion'  AND nombreDpto!='Mantenimiento'




