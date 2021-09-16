const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const c_name = process.argv[2];
pool.query(`
SELECT DISTINCT teachers.name, cohorts.name, count(assistance_requests.*) as total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY teachers.name, cohorts.name
HAVING cohorts.name like $1
ORDER BY total_assistances DESC
`, [`%${c_name}%`])
.then(res => {
  console.log(res.rows);
})
.catch(err => console.error('query error', err.stack));