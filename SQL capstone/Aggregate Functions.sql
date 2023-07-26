-- Aggregate Functions --

-- COUNT
select COUNT(*)
from MeX_3106

-- SUM
select SUM(Final_Grade) AS Total_Grade
from MeX_3104

-- AVERAGE
select AVG(Individual_Recitation_1)
from MeX_3105

-- MAX
select MAX(Final_Grade) AS "MAX Grade"
from MeX_3103

-- MIN
select MIN(Final_Grade) AS "MIN Grade"
from MeX_3106

-- GROUP BY
select MAX(Final_Grade) AS "Final Grade"
from MeX_3105
GROUP BY Final_Grade

-- HAVING
select MAX(Final_Grade) AS "Final Grade"
from MeX_3105
GROUP BY Final_Grade
HAVING Year_Level = 'Fourth Year'

-- ORDER BY
-- ASC
select SR_Code,Final_Grade
from MeX_3105
ORDER BY Final_Grade

-- DESC
select SR_Code,Final_Grade
from MeX_3105
ORDER BY Final_Grade DESC

select * from MeX_3105