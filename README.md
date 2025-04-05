# Sleep Quality Prediction with Logistic Regression

This project explores how physiological and lifestyle variables impact sleep quality using BigQuery ML and Looker Studio.

## Summary

I trained a logistic regression model to predict whether sleep was "good" or "poor" based on:

- Sleep duration and efficiency
- Deep, light, and REM sleep %
- Caffeine and alcohol consumption
- Smoking status and age

### Model Performance

- **Accuracy:** 91.8%
- **Precision:** 95.2%
- **Recall:** 79.3%
- **F1 Score:** 86.5%

---

## Tools

- **Google BigQuery ML** – for model training and evaluation
- **SQL** – for preprocessing and feature engineering
- **Google Looker Studio** – for dashboard creation
- **GitHub** – for version control and publishing

---

## Key Insights

- Deep and light sleep % were the most influential features.
- Lifestyle factors (like caffeine and alcohol) showed strong associations with sleep labels, but may not be directly causal.
- The model overestimated poor sleep in users with high alcohol or low caffeine intake.

---

## Files

- `queries/` – SQL scripts for cleaning, modeling, and predicting
- `dashboard/` – Screenshots and PDF export of the final dashboard
- `notes/summary.md` – Final writeup of feature interactions and model interpretation

---


