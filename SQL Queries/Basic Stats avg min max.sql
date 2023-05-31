-- Finding the Average, Min and Max Share Price 
Select 
MAX(Batsprice) AS MaxPrice,MIN(Batsprice) as MinPrice,AVG(Batsprice) as AvgPrice 
FROM  BATS
Union all 
select 
MAX(imbprice) AS MaxPrice,MIN(imbprice) as MinPrice,AVG(imbprice) as AvgPrice 
FROM  imb 

-- finding Daily Returns 
Select date,BATSPRICE, (batsprice-Lag(batsprice)over (order by date))/Lag(batsprice)over (order by date) as BATSDailyReturns
From BATS
Select date,IMBPRICE, (IMBPrice-Lag(IMBPrice)over (order by date))/Lag(IMBPrice)over (order by date) as IMBDailyReturns
From  IMB

 
