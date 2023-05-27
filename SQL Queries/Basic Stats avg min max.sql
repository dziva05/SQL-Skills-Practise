-- Finding the Average, Min and Max Share Price 
Select 
MAX(Batsprice) AS MaxPrice,MIN(Batsprice) as MinPrice,AVG(Batsprice) as AvgPrice 
FROM  BATS
Union all 
select 
MAX(imbprice) AS MaxPrice,MIN(imbprice) as MinPrice,AVG(imbprice) as AvgPrice 
FROM  imb 


 
