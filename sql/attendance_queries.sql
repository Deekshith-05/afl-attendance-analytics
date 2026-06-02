
-- AFL Matchday Attendance & Fan Engagement Analytics
-- SQL analysis queries using cleaned AFL Tables datasets

-- 1. Average attendance trend by season
SELECT
    season,
    home_away_attendance,
    home_away_games,
    home_away_average,
    overall_attendance,
    overall_games,
    overall_average
FROM season_attendance
WHERE included_in_main_analysis = TRUE
ORDER BY season;


-- 2. Highest and lowest average attendance seasons
SELECT
    season,
    home_away_average,
    overall_average
FROM season_attendance
WHERE included_in_main_analysis = TRUE
ORDER BY home_away_average DESC;


-- 3. Average attendance by home club
SELECT
    home_team,
    COUNT(*) AS matches_played,
    ROUND(AVG(attendance), 0) AS avg_attendance,
    MIN(attendance) AS lowest_attendance,
    MAX(attendance) AS highest_attendance
FROM match_attendance
WHERE included_in_main_analysis = TRUE
GROUP BY home_team
ORDER BY avg_attendance DESC;


-- 4. Average attendance by venue
SELECT
    venue,
    COUNT(*) AS matches_hosted,
    ROUND(AVG(attendance), 0) AS avg_attendance,
    MIN(attendance) AS lowest_attendance,
    MAX(attendance) AS highest_attendance
FROM match_attendance
WHERE included_in_main_analysis = TRUE
GROUP BY venue
ORDER BY avg_attendance DESC;


-- 5. Average attendance by round
SELECT
    round,
    COUNT(*) AS matches_played,
    ROUND(AVG(attendance), 0) AS avg_attendance,
    MIN(attendance) AS lowest_attendance,
    MAX(attendance) AS highest_attendance
FROM match_attendance
WHERE included_in_main_analysis = TRUE
GROUP BY round
ORDER BY round;


-- 6. Highest-attended Home & Away matches
SELECT
    season,
    round,
    match_date,
    home_team,
    away_team,
    venue,
    attendance,
    winner,
    margin
FROM match_attendance
WHERE included_in_main_analysis = TRUE
ORDER BY attendance DESC
LIMIT 20;


-- 7. Highest-attended finals matches
SELECT
    season,
    final_stage,
    match_date,
    home_team,
    away_team,
    venue,
    attendance,
    winner,
    margin
FROM match_attendance
WHERE match_type = 'Finals'
ORDER BY attendance DESC
LIMIT 15;


-- 8. Average attendance by match day
SELECT
    match_day,
    COUNT(*) AS matches_played,
    ROUND(AVG(attendance), 0) AS avg_attendance,
    MIN(attendance) AS lowest_attendance,
    MAX(attendance) AS highest_attendance
FROM match_attendance
WHERE included_in_main_analysis = TRUE
GROUP BY match_day
ORDER BY avg_attendance DESC;


-- 9. Average attendance by home club and venue
SELECT
    home_team,
    venue,
    COUNT(*) AS matches_played,
    ROUND(AVG(attendance), 0) AS avg_attendance,
    MIN(attendance) AS lowest_attendance,
    MAX(attendance) AS highest_attendance
FROM match_attendance
WHERE included_in_main_analysis = TRUE
GROUP BY home_team, venue
HAVING COUNT(*) >= 5
ORDER BY avg_attendance DESC;
