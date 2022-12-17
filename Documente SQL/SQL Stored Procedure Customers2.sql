USE [New Database]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[SelectALLCustomers]
		@City = N'London'

SELECT	'Return Value' = @return_value

GO
