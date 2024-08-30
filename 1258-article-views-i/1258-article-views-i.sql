# Write your MySQL query statement below

SELECT DISTINCT v1.author_id AS id
FROM Views v1
JOIN Views v2
ON v1.author_id = v2.viewer_id
AND v1.article_id = v2.article_id
ORDER BY v1.author_id ASC;
