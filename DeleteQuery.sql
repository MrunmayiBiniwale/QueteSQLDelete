USE SuperMoney;

GO
BACKUP DATABASE SuperMoney
TO DISK = 'C:\Users\bprav\AppData\Local\AzureFunctionsTools\SuperMoney.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackups',
      NAME = 'Full Backup of SuperMoney';
GO


BEGIN TRANSACTION T
BEGIN TRY

DELETE FROM dbo.logs 
WHERE [user] = 'hack3r'

DELETE TOP(3) 
FROM logs 

END TRY
BEGIN CATCH 

ROLLBACK TRANSACTION T;

END CATCH

SELECT * FROM logs