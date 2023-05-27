-- finding Daily Returns 
Select date,BATSPRICE, (batsprice-Lag(batsprice)over (order by date))/Lag(batsprice)over (order by date) as BATSDailyReturns
From BATS
Select date,IMBPRICE, (IMBPrice-Lag(IMBPrice)over (order by date))/Lag(IMBPrice)over (order by date) as IMBDailyReturns
From  IMB
