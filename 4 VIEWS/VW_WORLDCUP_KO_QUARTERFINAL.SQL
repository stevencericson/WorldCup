
  CREATE OR REPLACE FORCE VIEW "WORLDCUP"."VW_WORLDCUP_KO_QUARTERFINAL" ("MATCH_NO", "MATCH_WINNER_1", "TEAM_1", "MATCH_WINNER_2", "TEAM_2") AS 
  SELECT '57' AS MATCH_NO, '49 WINNER' AS MATCH_WINNER_1, 
(SELECT 
CASE
    WHEN TEAM_1_SCORE > TEAM_2_SCORE
        THEN TEAM_1 
    WHEN TEAM_1_SCORE < TEAM_2_SCORE
        THEN TEAM_2
    WHEN TEAM_1_SCORE = TEAM_2_SCORE
        THEN PK_WINNER
    ELSE NULL    
    END
FROM WORLDCUP_MATCHES WHERE MATCH_NO = 49) AS TEAM_1,
'50 WINNER' AS MATCH_WINNER_2,
(SELECT
CASE
    WHEN TEAM_1_SCORE > TEAM_2_SCORE
        THEN TEAM_1 
    WHEN TEAM_1_SCORE < TEAM_2_SCORE
        THEN TEAM_2
    WHEN TEAM_1_SCORE = TEAM_2_SCORE
        THEN PK_WINNER
    ELSE NULL    
    END 
FROM WORLDCUP_MATCHES WHERE MATCH_NO = 50) AS TEAM_2
FROM DUAL

UNION

SELECT '58' AS MATCH_NO, '53 WINNER' AS MATCH_WINNER_1, 
(SELECT 
CASE
    WHEN TEAM_1_SCORE > TEAM_2_SCORE
        THEN TEAM_1 
    WHEN TEAM_1_SCORE < TEAM_2_SCORE
        THEN TEAM_2
    WHEN TEAM_1_SCORE = TEAM_2_SCORE
        THEN PK_WINNER
    ELSE NULL    
    END
FROM WORLDCUP_MATCHES WHERE MATCH_NO = 53) AS TEAM_1,
'54 WINNER' AS MATCH_WINNER_2,
(SELECT
CASE
    WHEN TEAM_1_SCORE > TEAM_2_SCORE
        THEN TEAM_1 
    WHEN TEAM_1_SCORE < TEAM_2_SCORE
        THEN TEAM_2
    WHEN TEAM_1_SCORE = TEAM_2_SCORE
        THEN PK_WINNER
    ELSE NULL    
    END 
FROM WORLDCUP_MATCHES WHERE MATCH_NO = 54) AS TEAM_2
FROM DUAL

UNION

SELECT '60' AS MATCH_NO, '55 WINNER' AS MATCH_WINNER_1, 
(SELECT 
CASE
    WHEN TEAM_1_SCORE > TEAM_2_SCORE
        THEN TEAM_1 
    WHEN TEAM_1_SCORE < TEAM_2_SCORE
        THEN TEAM_2
    WHEN TEAM_1_SCORE = TEAM_2_SCORE
        THEN PK_WINNER
    ELSE NULL    
    END
FROM WORLDCUP_MATCHES WHERE MATCH_NO = 55) AS TEAM_1,
'56 WINNER' AS MATCH_WINNER_2,
(SELECT
CASE
    WHEN TEAM_1_SCORE > TEAM_2_SCORE
        THEN TEAM_1 
    WHEN TEAM_1_SCORE < TEAM_2_SCORE
        THEN TEAM_2
    WHEN TEAM_1_SCORE = TEAM_2_SCORE
        THEN PK_WINNER
    ELSE NULL    
    END 
FROM WORLDCUP_MATCHES WHERE MATCH_NO = 56) AS TEAM_2
FROM DUAL

UNION

SELECT '59' AS MATCH_NO, '51 WINNER' AS MATCH_WINNER_1, 
(SELECT 
CASE
    WHEN TEAM_1_SCORE > TEAM_2_SCORE
        THEN TEAM_1 
    WHEN TEAM_1_SCORE < TEAM_2_SCORE
        THEN TEAM_2
    WHEN TEAM_1_SCORE = TEAM_2_SCORE
        THEN PK_WINNER
    ELSE NULL    
    END
FROM WORLDCUP_MATCHES WHERE MATCH_NO = 51) AS TEAM_1,
'52 WINNER' AS MATCH_WINNER_2,
(SELECT
CASE
    WHEN TEAM_1_SCORE > TEAM_2_SCORE
        THEN TEAM_1 
    WHEN TEAM_1_SCORE < TEAM_2_SCORE
        THEN TEAM_2
    WHEN TEAM_1_SCORE = TEAM_2_SCORE
        THEN PK_WINNER
    ELSE NULL    
    END 
FROM WORLDCUP_MATCHES WHERE MATCH_NO = 52) AS TEAM_2
FROM DUAL

ORDER BY MATCH_NO;
