SELECT 
  CASE
    WHEN COUNT(song_id) > 1 THEN song_id
  END
FROM history
GROUP BY song_id
