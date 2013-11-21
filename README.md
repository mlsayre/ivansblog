Ivan's TURRIBLE Blog
====================

http://turrible.herokuapp.com/

A blog with a large, 20,000 item database needed to be optimized for speed and deployed on Heroku. Here is the process I used to take the rendering time of the posts index from almost 4 minutes to about 140ms.

Baseline render time: 3.8 minutes

1. Add index to comments table for post_id: down to 3.5 minutes
2. Add index to replies table for comment_id: down to 30.79s
3. Switch to Postgres dev and test DB: up to 34.27s (huh? - about the same as sqlite, actually)
4. Take comments out of posts index (add a link to them): 332ms
5. Limit the front page to show 15 posts instead of 100: 448ms (non-cached) or 140.75ms (cached)

(all localhost timings)
