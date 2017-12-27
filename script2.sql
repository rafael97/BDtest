USE CondorTest;

SELECT role.cd_role_type as 'User Type', COUNT(role.id_user) AS 'Total Active',COUNT(address.id_address) AS 'Active Licensees With Address Info'
FROM user_role AS role
 	LEFT JOIN user_address AS address ON address.id_user=role.id_user
WHERE in_status=1 AND (role.cd_role_type='LICENSEE' OR role.cd_role_type='LIMITED')
GROUP BY cd_role_type