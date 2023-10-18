select WTAResult.yr, WTAResult.winnerName,count() as numberofmatcheswon
from WTAResult
where WTAresult.winnerCountry =='AUS'
group by WTAResult.yr
order by numberofmatcheswon desc;
