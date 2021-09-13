SELECT students.name, students.start_date, cohorts.name as cohort_name,
  cohorts.start_date as cohort_start_date
FROM students join cohorts on cohorts.id = cohort_id
WHERE students.start_date <> cohorts.start_date