CREATE FUNCTION SomarClientesCadastrados(dataPesquisa DATE) RETURNS INT
BEGIN
    DECLARE totalClientes INT;
    SELECT COUNT(*) INTO totalClientes
    FROM clientes
    WHERE DATE(data_cadastro) = dataPesquisa;
    RETURN totalClientes;
END;
SELECT SomarClientesCadastrados('2023-12-15');
