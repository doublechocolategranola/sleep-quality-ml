CREATE OR REPLACE TABLE `sleep-efficiency-project.sleep_efficiency_data.sleep_predictions` AS
SELECT
  ID,
  age,
  gender_binary,
  bedtime_decimal,
  wakeuptime_decimal,
  sleep_duration,
  REM_percentage,
  deep_sleep_percentage,
  light_sleep_percentage,
  Awakenings_binary,
  Caffeine_mg,
  alcohol_units,
  smoking_binary,
  sleep_quality,
  predicted_sleep_quality,
  predicted_sleep_quality_probs
FROM
  ML.PREDICT(MODEL `sleep-efficiency-project.sleep_efficiency_data.sleep_quality_model`,
    (SELECT * FROM `sleep-efficiency-project.sleep_efficiency_data.sleep_efficiency_cleaned`)
  )
