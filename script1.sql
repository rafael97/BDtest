USE CondorTest;

SELECT role.cd_role_type AS 'User Type', COUNT(*) AS 'Total Active',COUNT(profile.nm_middle) AS 'No Middle Name'
FROM user_role AS role 
	INNER JOIN user_profile AS profile ON profile.id_user=role.id_user 
WHERE in_status=1
GROUP BY cd_role_type