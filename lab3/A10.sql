select ATPResult.winnerName,count(ATPResult.winnerName) as numberofmatches , round(avg(ATPResult.minutes),2) as averagelength
from ATPResult
group by ATPResult.winnerName
having numberofmatches>=10
order by averagelength asc;