--
-- Display all users
--

-- Order by last name
SELECT first_name,last_name,email,registration_date,lesson_id FROM entity_users_vh2436779 ORDER BY last_name ASC 

-- Order by registration date
SELECT first_name,last_name,email,registration_date,lesson_id FROM entity_users_vh2436779 ORDER BY registration_date DESC

-- Filter by letter on last name, duplicate for each letter
-- add on ORDER BY if want to order by last name or registration date
SELECT first_name,last_name,email,registration_date,lesson_id FROM entity_users_vh2436779 WHERE last_name LIKE 'A%'  

--
-- Display all scheduled lessons
-- 

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity_lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE scheduled = 1 ORDER BY difficulty ASC

-- User must choose specifics or can view ALL
-- Choose day, level, duration
-- Only display cost in cart

--
-- Display all lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity_lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name ORDER BY difficulty ASC

--
-- Display all available lessons
-- 

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity_lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE scheduled = 0 ORDER BY difficulty ASC

-- VVVV ALL AVAILABLE VVVV --
-- VOCAL-VOCAL-VOCAL-VOCAL --
--
-- Display all vocal lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity.lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE type_name = 'Vocal' AND scheduled = 0 ORDER BY difficulty ASC

--
-- Display all 30 min beginner vocal lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity.lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE type_name = 'Vocal' AND duration = 30 AND difficulty_name = 'Beginner' AND scheduled = 0 

--
-- Display all 30 min intermediate vocal lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity.lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE type_name = 'Vocal' AND duration = 30 AND difficulty_name = 'Intermediate' AND scheduled = 0

--
-- Display all 30 min advanced vocal lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity.lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE type_name = 'Vocal' AND duration = 30 AND difficulty_name = 'Advanced' AND scheduled = 0

--
-- Display all 60 min beginner vocal lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity.lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE type_name = 'Vocal' AND duration = 60 AND difficulty_name = 'Beginner' AND scheduled = 0

--
-- Display all 60 min intermediate vocal lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity.lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE type_name = 'Vocal' AND duration = 60 AND difficulty_name = 'Intermediate' AND scheduled = 0

--
-- Display all 60 min advanced vocal lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity.lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE type_name = 'Vocal' AND duration = 60 AND difficulty_name = 'Advanced' AND scheduled = 0

-- GUITAR-GUITAR-GUITAR-GUITAR --
--
-- Display all guitar lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity.lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE type_name = 'Guitar' AND scheduled = 0 ORDER BY difficulty ASC

--
-- Display all 30 min beginner guitar lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity.lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE type_name = 'Guitar' AND duration = 30 AND difficulty_name = 'Beginner' AND scheduled = 0

--
-- Display all 30 min intermediate guitar lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity.lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE type_name = 'Guitar' AND duration = 30 AND difficulty_name = 'Intermediate' AND scheduled = 0

--
-- Display all 30 min advanced guitar lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity.lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE type_name = 'Guitar' AND duration = 30 AND difficulty_name = 'Advanced' AND scheduled = 0

--
-- Display all 60 min beginner guitar lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity.lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE type_name = 'Guitar' AND duration = 60 AND difficulty_name = 'Beginner' AND scheduled = 0

--
-- Display all 60 min intermediate guitar lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity.lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE type_name = 'Guitar' AND duration = 60 AND difficulty_name = 'Intermediate' AND scheduled = 0

--
-- Display all 60 min advanced guitar lessons
--

SELECT type_name,duration,day_name,start_time,difficulty_name  FROM entity_lessons_vh2436779 INNER JOIN enum_lessontype_vh2436779 ON entity_lessons_vh2436779.lesson_type = enum_lessontype_vh2436779.type_id INNER JOIN enum_lessonday_vh2436779 ON entity_lessons_vh2436779.lesson_day = enum_lessonday_vh2436779.day_name INNER JOIN enum_lessontime_vh2436779 ON entity.lessons_vh2436779.lesson_time = enum_lessontime_vh2436779.starttime INNER JOIN enum_difficulty_vh2436779 ON entity_lessons_vh2436779.difficulty = enum_difficulty_vh2436779.difficulty_name WHERE type_name = 'Guitar' AND duration = 60 AND difficulty_name = 'Advanced' AND scheduled = 0