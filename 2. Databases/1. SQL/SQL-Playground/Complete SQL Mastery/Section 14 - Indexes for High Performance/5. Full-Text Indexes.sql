/*
	they are mainly used to build fast, flexible search engines in our applications.
*/
Use sql_blog;
Select * from posts;

-- Assumig that a user is trying to search for 'react redux' on our blog.

-- Solution 1: not results
SELECT 
* 
from posts 
where 
	body Like '%react redux%' 
    OR title Like '%react redux%';
 -- ISSUE 1: no indexes on this table, so these posts grows large the query will get slower and slower.
 -- ISSUE 2: it will return results that contains these words in sequence like 'react redux' and not either 'react' or 'redux'
    
-- Solution 2: using Full-text indexes
/*
	They don't store just the prefix, instead they store 
		- any stub words like 'in' 'on' 'the' ...
*/

CREATE FULLTEXT INDEX idx_title_body ON posts (title, body);

SELECT *
FROM posts
WHERE MATCH(title,body) AGAINST('react redux');


/*
One of the beautiful things about FULLTEXT Index that they include a relevance score, so based on a number of factors 
the SQL engine calculates a relevancy score for each row that contains the search phrase.

The relevancy score is float point number between 0 and 1
	- 0 means no relevance.
    - 1 means highly relevant. 
    
By default, they are sorted in a Descending order.

*/

SELECT *,MATCH(title,body) AGAINST('react redux') as relevancy_score
FROM posts
WHERE MATCH(title,body) AGAINST('react redux');


/*
FULL-Text Indexes Search has two modes
	- Natural Language mode for plain-text
	- Boolean Mode for excluding or including certain words
*/

-- excluding words with Full-Text Search Boolean mode
SELECT *,MATCH(title,body) AGAINST('react -redux') as relevancy_score
FROM posts
WHERE MATCH(title,body) AGAINST('react -redux' IN BOOLEAN MODE);

-- excluding words with Full-Text Search Boolean mode
-- Including words with Full-Text Search Boolean mode
SELECT *,MATCH(title,body) AGAINST('react -redux +form') as relevancy_score
FROM posts
WHERE MATCH(title,body) AGAINST('react -redux +form' IN BOOLEAN MODE);


-- search for exact word within results
SELECT *,MATCH(title,body) AGAINST('react +"handling a form"') as relevancy_score
FROM posts
WHERE MATCH(title,body) AGAINST('react +"handling a form"' IN BOOLEAN MODE);
