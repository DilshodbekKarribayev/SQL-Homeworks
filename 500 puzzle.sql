-- 1 

--select *,isnull(lag(CurrentQuota) over(order by (select null)),0) LagCurrentQuota from database1 
							------------------------------------
--;with cte as (
--select BusinessEntityID,SalesYear,CurrentQuota,row_number() over (order by (select null)) rn  from database1 
--) select *,isnull((SELECT TOP 1 CurrentQuota FROM CTE c2 WHERE c1.rn > c2.rn),0)  Lag from cte c1
							------------------------------------
--;WITH CTE AS
--(
--    SELECT BusinessEntityID,SalesYear,CurrentQuota,ROW_NUMBER() OVER (ORDER BY (select null)) rnk  
--    FROM database1
--)
--SELECT    BusinessEntityID,SalesYear,CurrentQuota
--          ,ISNULL(lag(CurrentQuota) OVER (ORDER BY rnk),0) lagCurrentQuota     
--FROM CTE c1
							------------------------------------


--2
--select *,isnull(lead(CurrentQuota) over (order by (select null)),0) NextCurrentQuota from database1
							------------------------------------
-- ;with cte as (
--select BusinessEntityID,SalesYear,CurrentQuota,row_number() over (order by (select null)) rn  from database1 
--) select BusinessEntityID,SalesYear,CurrentQuota,
--			isnull((SELECT TOP 1 CurrentQuota FROM CTE c2 WHERE c1.rn < c2.rn),0)  NextCurrentQuota from cte c1

--;WITH CTE AS
--(
--    SELECT BusinessEntityID,SalesYear,CurrentQuota,ROW_NUMBER() OVER (ORDER BY (select null)) rnk  
--    FROM database1
--)
--SELECT    BusinessEntityID,SalesYear,CurrentQuota
--          ,ISNULL(lead(CurrentQuota) OVER (ORDER BY rnk),0) lagCurrentQuota     
--FROM CTE c1

--3
							-------------------------------------
--with  cte as (
--select *,month(birthdate) mm ,day(birthdate) dd from database2
--) select empid,empname,birthdate from cte  where mm=5 and dd between 7 and 15
							-------------------------------------
--select * from database2
--where month(birthdate) = 5 and day(birthdate) between 7 and 15
							-------------------------------------
--with  cte as (
--select *,datename(MONTH,birthdate) mm ,day(birthdate) dd from database2
--) select * from cte where mm = 'May' and dd between 7 and 15


--4
							-------------------------------------
--with cte as (
--select *,count(mname) over (partition by mname order by (select null))as mnamecount from Movie where Roles = 'Actor' and (AName = 'Amitabh 'or AName = 'Vinod')
--) select * from cte  where mnamecount >1


