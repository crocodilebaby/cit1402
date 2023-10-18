SELECT *
FROM AFLResult
WHERE (HomeTeam = 'West Coast' AND HomeScore > AwayScore)
   OR (AwayTeam = 'West Coast' AND AwayScore > HomeScore)
   OR (HomeTeam = 'West Coast' AND HomeScore = AwayScore)
    OR (awayTeam = 'West Coast' AND HomeScore = AwayScore);