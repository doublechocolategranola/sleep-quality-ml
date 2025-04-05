CREATE OR REPLACE MODEL `sleep-efficiency-project.sleep_efficiency_data.sleep_quality_model`
OPTIONS(
  model_type = 'logistic_reg',
  input_label_cols = ['sleep_quality']
) AS
SELECT
  Age,
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
  sleep_quality
FROM `sleep-efficiency-project.sleep_efficiency_data.sleep_efficiency_cleaned`;

