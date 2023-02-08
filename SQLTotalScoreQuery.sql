SELECT student_name, sum(score) as TotalScore
FROM hw_progress
left join homeworks
on hw_num=idhomeworks
where status = 1
group by student_name
order by TotalScore desc
limit 3