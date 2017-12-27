USE CondorTest;
SELECT COUNT(*) AS 'Non-active Providers'
FROM user_role AS role
WHERE in_status=0 AND (role.cd_role_type='PROVIDER')