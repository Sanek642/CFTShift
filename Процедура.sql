--7.	В результате сбоя в базе данных разъехалась информация между остатками и операциями по счетам. Напишите нормализацию (процедуру выравнивающую данные), которая найдет такие счета и восстановит остатки по счету.
USE cft;
GO

CREATE PROCEDURE Normal AS
BEGIN
--Собираем реальные значения и помещаем их в табличную переменную
	DECLARE @TrueSaldo TABLE (ACCId INT,  RealSaldo DECIMAL(10,2))

--В запросе выбираем счета, сальдо по операциям, и сальдо которое хриниться на счете. В таблицу помещаем счета, у которых сальдо различны.
	INSERT INTO @TrueSaldo
	SELECT RECORDS.ACC_REF, SUM(CASE 
								WHEN RECORDS.DT=1 THEN -RECORDS.SUM
								ELSE RECORDS.SUM 
						END)  as 'Сальдо' FROM RECORDS INNER JOIN ACCOUNTS ON RECORDS.ACC_REF=ACCOUNTS.ID
	GROUP BY RECORDS.ACC_REF
	HAVING SUM(CASE 
								WHEN RECORDS.DT=1 THEN -RECORDS.SUM
								ELSE RECORDS.SUM 
						END)!= CAST(avg(ACCOUNTS.SALDO) as decimal(10,2))
--ОБновляем значения
	UPDATE ACCOUNTS
	SET SALDO = RealSaldo
	FROM @TrueSaldo
	WHERE ACCId=ACCOUNTS.ID

END;