CREATE OR REPLACE TABLE `sleep-efficiency-project.sleep_efficiency_data.sleep_efficiency_cleaned` AS
SELECT
  ID,
  Age,
  CASE
    WHEN LOWER(Gender) = 'male' THEN 1
    ELSE 0
  END AS gender_binary,

  EXTRACT(HOUR FROM TIMESTAMP(Bedtime)) + EXTRACT(MINUTE FROM TIMESTAMP(Bedtime)) / 60 as bedtime_decimal,
  EXTRACT(HOUR FROM TIMESTAMP(`Wakeup time`)) + EXTRACT(MINUTE FROM TIMESTAMP(`Wakeup time`)) / 60 as wakeuptime_decimal,
  `Sleep duration` AS sleep_duration,
  `Sleep efficiency` AS sleep_efficiency,
  `REM sleep percentage` AS REM_percentage,
  `Deep sleep percentage` AS deep_sleep_percentage,
  `Light sleep percentage` AS light_sleep_percentage,
  CASE
    WHEN Awakenings IS NULL THEN 0
    ELSE Awakenings
  END AS Awakenings_binary,
  CASE
    WHEN `Caffeine consumption` IS NULL THEN 0
    ELSE `Caffeine consumption`
  END AS Caffeine_mg,
  CASE
    WHEN `Alcohol consumption` IS NULL THEN 0
    ELSE `Alcohol consumption`
  END AS alcohol_units,
  CASE
    WHEN `Smoking status` = FALSE THEN 0
    ELSE 1
  END AS smoking_binary,
  CASE
    WHEN `Sleep efficiency` < 0.75 THEN 'poor'
    ELSE 'good'
  END AS sleep_quality
  FROM
`sleep-efficiency-project.sleep_efficiency_data.sleep_efficiency`