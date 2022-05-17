EXEC sp_configure 'show advanced options' , 1;
RECONFIGURE;

EXEC sp_configure 'clr enable' ,1;
RECONFIGURE;

	
EXEC sp_configure 'clr strict security', 0;
RECONFIGURE;

CREATE ASSEMBLY SQLCLRDemo
FROM 'C:\Users\tatiana.grigorieva\Documents\TestClrProcFromC#\TestClrProcedures.dll';
GO

CREATE FUNCTION f_GetCharacterReplacement(@str nvarchar(255)) RETURNS nvarchar(255)
    EXTERNAL NAME SQLCLRDemo.SqlExternalFunctions.CharacterReplacement;
                GO

SELECT dbo.f_GetCharacterReplacement('&#10078;Thats a quote&#10077;')