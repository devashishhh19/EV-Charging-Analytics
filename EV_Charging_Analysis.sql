create database EV;
use EV;
SHOW DATABASES;
use EV;
SHOW TABLES;
-- Display first 10 rows
SELECT * FROM ev_charging_patterns LIMIT 10;

-- Check total records
SELECT COUNT(*) AS total_records FROM ev_charging_patterns;

-- EV CHARGING DEMAND & INFRASTRUCTURE ANALYSIS
-- Important business analysis queries

-- 1. Total charging sessions
SELECT COUNT(*) AS total_sessions FROM ev_charging_patterns;

-- 2. Total energy consumed
SELECT SUM(`Energy Consumed (kWh)`) AS total_energy_consumed FROM ev_charging_patterns;

-- 3. Average charging cost
SELECT AVG(`Charging Cost (USD)`) AS average_charging_cost FROM ev_charging_patterns;

-- 4. Number of sessions by charger type
SELECT `Charger Type`, COUNT(*) AS total_sessions
FROM ev_charging_patterns
GROUP BY `Charger Type`;

-- 5. Energy consumption by vehicle model
SELECT `Vehicle Model`, SUM(`Energy Consumed (kWh)`) AS total_energy
FROM ev_charging_patterns
GROUP BY `Vehicle Model`
ORDER BY total_energy DESC;

-- 6. Charging demand by time of day
SELECT `Time of Day`, COUNT(*) AS total_sessions
FROM ev_charging_patterns
GROUP BY `Time of Day`
ORDER BY total_sessions DESC;

-- 7. Charging sessions by day of week
SELECT `Day of Week`, COUNT(*) AS total_sessions
FROM ev_charging_patterns
GROUP BY `Day of Week`
ORDER BY total_sessions DESC;

-- 8.Average charging duration by charger type
SELECT `Charger Type`, AVG(`Charging Duration (hours)`) AS avg_duration
FROM ev_charging_patterns
GROUP BY `Charger Type`;

-- 9.Charging station locations with the most sessions
SELECT `Charging Station Location`,COUNT(*) AS total_sessions
FROM ev_charging_patterns
GROUP BY `Charging Station Location`
ORDER BY total_sessions DESC;

-- 10. Average battery percentage gained
SELECT `Charger Type`, AVG(`State of Charge (End %)` - `State of Charge (Start %)`) AS avg_battery_gain
FROM ev_charging_patterns
GROUP BY `Charger Type`;

-- 11. Charging behavior by user type
SELECT `User Type`, COUNT(*) AS total_sessions, AVG(`Energy Consumed (kWh)`) AS avg_energy,
AVG(`Charging Cost (USD)`) AS avg_cost
FROM ev_charging_patterns
GROUP BY `User Type`;

-- 12. Find sessions with energy consumption above average
SELECT * FROM ev_charging_patterns WHERE `Energy Consumed (kWh)` > (SELECT AVG(`Energy Consumed (kWh)`)
FROM ev_charging_patterns);

DESCRIBE ev_charging_patterns;
