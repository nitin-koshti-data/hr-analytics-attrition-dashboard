SELECT * FROM hr_attrition;

-- View All Employees Who left 
SELECT employee_number,department,job_role,monthly_income
FROM hr_attrition
WHERE attrition='Yes';

-- Count total employees and total who left
SELECT COUNT(*) AS total_employees,
		SUM(attrition_flag) AS total_left
FROM hr_attrition;

-- List top 10 highrst paid employees
SELECT employee_number,department,job_role,monthly_income
FROM hr_attrition
ORDER BY monthly_income DESC LIMIT 10;

-- Attrition Rate by Department
SELECT department,COUNT(*) AS total_employees,
		SUM(attrition_flag) AS total_left,
		ROUND(AVG(attrition_flag)*100,2) AS attrition_rate
FROM hr_attrition
GROUP BY department ORDER BY attrition_rate DESC;

-- Avg monthly income by their job role 
SELECT job_role,
		ROUND(AVG(monthly_income),0) AS avg_income,
		COUNT(*) AS Total_employees
FROM hr_attrition
GROUP BY job_role ORDER BY avg_income DESC;

--Department with attrition rate 20% above
SELECT department,
		ROUND(AVG(attrition_flag)*100,2) AS attrition_rate
FROM hr_attrition
GROUP BY department HAVING AVG(attrition_flag) > 0.20;

-- Attrition by gender and marital status
SELECT gender,marital_status,
		COUNT(*) AS total_employees,
		ROUND(AVG(attrition_flag)*100,2) AS attrition_rate
FROM hr_attrition
GROUP BY gender,marital_status ORDER BY attrition_rate DESC;

-- Custome risk segmentation using case
SELECT employee_number,job_role,
		CASE
			WHEN years_since_last_promotion >=5 AND over_time='Yes' THEN 'High Risk'
			WHEN years_since_last_promotion >=5 THEN 'Medium Risk'
			ELSE 'Low Risk'
		END AS attrition_rosk_level
FROM hr_attrition;

--Rank Employee by tenure within each department
SELECT employee_number,department,years_at_company,
		RANK() OVER(PARTITION BY department ORDER BY years_at_company DESC) AS Rank
FROM hr_attrition;

-- Running total of employees who left order by employee number
SELECT employee_number,attrition_flag,
		SUM(attrition_flag) OVER(ORDER BY employee_number) AS cumulative_attrition
FROM hr_attrition;

--department level summary with income and attrition combine
WITH dept_summary AS (
	SELECT department,
			COUNT(*) AS total_employees,
			ROUND(AVG(monthly_income),0) AS avg_income,
			ROUND(AVG(attrition_flag)*100,2) AS attrition_rate
	FROM hr_attrition
	GROUP BY department
)
SELECT * FROM dept_summary
ORDER BY attrition_rate DESC;

-- Combine multiple risk factor in one query
WITH risk_flag AS(
	SELECT department,
			CASE WHEN over_time='Yes' THEN 1 ELSE 0 END AS overtime_risk,
			CASE WHEN years_since_last_promotion >=5 THEN 1 ELSE 0 END AS promotion_risk,
			CASE WHEN job_satisfaction='Low' THEN 1 ELSE 0 END AS job_satisfaction_risk,
			attrition_flag
	FROM hr_attrition
)
SELECT department,
	   ROUND(AVG(overtime_risk+promotion_risk+job_satisfaction_risk),2) AS avg_risk_score,
	   ROUND(AVG(attrition_flag)*100,2) AS attrition_rate
FROM risk_flag
GROUP BY department
ORDER BY avg_risk_score DESC;

--Retention Risk Watchlist
WITH risk_flag AS(
	SELECT employee_number,department,job_role,monthly_income,
			CASE WHEN over_time='Yes' THEN 1 ELSE 0 END AS overtime_risk,
			CASE WHEN years_since_last_promotion >=5 THEN 1 ELSE 0 END AS promotion_risk,
			CASE WHEN job_satisfaction='Low' THEN 1 ELSE 0 END AS job_satisfaction_risk
	FROM hr_attrition
	WHERE attrition_flag='0' --only current employee
)
SELECT employee_number,department,job_role,monthly_income,
	   (overtime_risk+promotion_risk+job_satisfaction_risk) AS avg_risk_score
FROM risk_flag
WHERE (overtime_risk+promotion_risk+job_satisfaction_risk)>=2
ORDER BY avg_risk_score DESC;

-- Summary
SELECT COUNT(*) AS total_employee,
		SUM(attrition_flag) AS total_left_employee,
		ROUND(AVG(attrition_flag)*100,2) AS attrition_rate,
		ROUND(AVG(monthly_income),0) AS avg_income,
		ROUND(AVG(years_at_company),1) AS avg_tenure_years
FROM hr_attrition;