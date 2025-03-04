
  CREATE OR REPLACE FORCE VIEW "WORLDCUP"."VW_WORLDCUP_KO_SEMIFINAL" ("MATCH_NO", "MATCH_WINNER_1", "TEAM_1", "MATCH_WINNER_2", "TEAM_2") AS 
  SELECT '61' AS MATCH_NO, '57 WINNER' AS MATCH_WINNER_1, 
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
FROM WORLDCUP_MATCHES WHERE MATCH_NO = 57) AS TEAM_1,
'58 WINNER' AS MATCH_WINNER_2,
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
FROM WORLDCUP_MATCHES WHERE MATCH_NO = 58) AS TEAM_2
FROM DUAL

UNION

SELECT '62' AS MATCH_NO, '59 WINNER' AS MATCH_WINNER_1, 
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
FROM WORLDCUP_MATCHES WHERE MATCH_NO = 59) AS TEAM_1,
'60 WINNER' AS MATCH_WINNER_2,
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
FROM WORLDCUP_MATCHES WHERE MATCH_NO = 60) AS TEAM_2
FROM DUAL

ORDER BY MATCH_NO;
