SELECT title, score
 FROM hacker_news
 ORDER BY score DESC
 LIMIT 5;

--Which users contribute the most
 SELECT user, SUM(score)
 FROM hacker_news
 GROUP BY 1
 HAVING SUM(score) > 200
 ORDER BY 2;

--Which users have posted rickrolls
SELECT user, COUNT(*)
FROM hacker_news
WHERE url LIKE '%watch?v=dQw4w9WgXcQ'
GROUP BY 1
ORDER BY 2 DESC;

--Which sites feed the news the most
SELECT CASE
  WHEN url LIKE '%github.com%' THEN 'GitHub'
  WHEN url LIKE '%medium.com%' THEN 'Medium'
  WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
  ELSE 'Other'
  END AS 'Source',
  COUNT(*)
FROM hacker_news
GROUP BY 1;

--Best time to post a story
SELECT strftime('%H', timestamp) AS 'Time of Day',
ROUND(AVG(score),1) AS 'Story Score',
COUNT(*) AS 'Number of Stories'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;
