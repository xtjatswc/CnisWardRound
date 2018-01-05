select * from  (
SELECT distinct
0 rowno,
	f.DepartmentName,
	g.PatientName,
	CASE b.NutrientAdviceType
WHEN 1 THEN
	'膳食医嘱'
WHEN 2 THEN
	'肠内医嘱'
WHEN 3 THEN
	'肠外医嘱'
END adviceType,
 a.NutrientAdviceSummary_DBKey,
 CASE c.AdviceType
WHEN 1 THEN
	'长期'
ELSE
	'临时'
END AdviceType1,
 CASE b.NutrientAdviceType
WHEN 3 THEN
	i.MedicineName
ELSE
	d.RecipeAndProductName
END RecipeAndProductName,
 date_format(a.AdviceDate,'%Y-%m-%d') AdviceDate,
	CASE b.NutrientAdviceType
WHEN 2 THEN  b.TakeOrder end TakeOrder,
 b.AdviceAmount,
 b.CurrentPrice,
 b.specification,
b.NutrientAdviceType,
 round(
	b.AdviceAmount * b.CurrentPrice * CASE
	WHEN b.NutrientAdviceType = 2 THEN
		b.Specification / 100
	ELSE
		1
	END,
	2
) TotalMoney,
 h.UserName, j.username Clinicist,b.UpdateTime ChargeDate
FROM
	nutrientadvicesummary c
LEFT JOIN nutrientadvice a ON c.NutrientAdviceSummary_DBKey = a.NutrientAdviceSummary_DBKey
LEFT JOIN nutrientadvicedetail b ON a.NutrientAdvice_DBKey = b.NutrientAdvice_DBKey
LEFT JOIN recipeandproduct d ON b.RecipeAndProduct_DBKey = d.RecipeAndProduct_DBKey
LEFT JOIN patienthospitalizebasicinfo e ON e.PatientHospitalize_DBKey = c.PatientHospitalize_DBKey
LEFT JOIN patientbasicinfo g ON g.patient_dbkey = e.patient_dbkey
LEFT JOIN department f ON f.Department_DBKey = e.Department_DBKey
LEFT JOIN USER h ON h.User_DBKey = c.CreateBy
LEFT JOIN USER j ON j.User_DBKey = e.Clinicist_DBKey
LEFT JOIN medicine i ON i.Medicine_DBKey = b.Medicine_DBKey
WHERE
	b.RefundStatus = 0
AND b.UpdateTime >= '2014/12/10 0:00:00' AND b.UpdateTime <= '2014/12/10 0:00:00'
AND c.ChargeStatus = 1
) tb  order by DepartmentName, PatientName, adviceType, NutrientAdviceSummary_DBKey, AdviceType1,RecipeAndProductName, AdviceDate,TakeOrder





//查询退费
select a.NutrientAdviceSummaryNo, b.NutrientAdvice_DBKey ,
 c.AdviceAmount * c.Specification * c.CurrentPrice / 100 total
from nutrientadvicesummary a
left join nutrientadvice b on a.NutrientAdviceSummary_DBKey = b.NutrientAdviceSummary_DBKey
left join nutrientadvicedetail c on b.NutrientAdvice_DBKey = c.NutrientAdvice_DBKey
 where a.NutrientAdviceSummaryNo in (1422) and c.RefundStatus = 1