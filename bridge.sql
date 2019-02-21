--1. How many academies have Standard 7 pupils as of July 1, 2014?
select count(distinct [Academy Name])  from BridgeAcademies -- 480
where [Snapshot Date] = '2014-07-01'
and REPLACE([Grade Name],' ','') = 'STD7'
and Status = '+'


select *  from BridgeAcademies -- 480
where [Snapshot Date] < '2014-07-01'
and REPLACE([Grade Name],' ','') = 'STD7'
and Status = '-'


--3. How many of the Standard 7 pupils joined in February 1, 2014?
select count(distinct [Pupil ID])  from BridgeAcademies -- 3987
where [Snapshot Date] = '2014-02-01'
and REPLACE([Grade Name],' ','') = 'STD7'
and Status = '+'

--4. How many unique Standard 7 pupil IDs do we have in Quarter 1 of 2014?
select count(distinct [Pupil ID])  from BridgeAcademies -- 14181
where DATEPART(QUARTER,[Snapshot Date]) = 1
and REPLACE([Grade Name],' ','') = 'STD7'

--5. What percentage of Standard 7 enrollees share an exact name with another Standard 7 enrollee at the same academy? What is the count?
select distinct b1.[First Name],b2.[First Name]
from BridgeAcademies  b1
inner join BridgeAcademies b2
on b1.[Academy Name] = b2.[Academy Name]
and b1.[First Name] = b2.[First Name]
where REPLACE(b1.[Grade Name],' ','') = 'STD7'
and REPLACE(b2.[Grade Name],' ','') = 'STD7'

-- How many of the Standard 7 enrollees present as of February 1, 2014 are no longer present as of July 1 2014 ?
if object_id('tempdb..#FebData') is not null
select distinct [Pupil ID]
into #FebData
from BridgeAcademies 
where [Snapshot Date] = '2014-02-01'
and REPLACE([Grade Name],' ','') = 'STD7'
and Status = '+'

select distinct [Pupil ID]
into #JulyData
from BridgeAcademies 
where [Snapshot Date] <= '2014-07-01'
and REPLACE([Grade Name],' ','') = 'STD7'

select *
from #JulyData j
left outer join #FebData f
on j.[Pupil ID] = f.[Pupil ID]
where f.[Pupil ID] is null