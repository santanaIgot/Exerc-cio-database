CREATE TABLE ALUNO (
    RM CHAR(9), NOME VARCHAR(50),
    CONSTRAINT ALUNO_PK PRIMARY KEY(RM)
)

INSERT INTO ALUNO VALUES('95003', 'IGOR');
INSERT INTO ALUNO VALUES('222333444','Beatriz');
INSERT INTO ALUNO VALUES ('333444555', 'Cláudio');

---------Exercicio 01---------------
set SERVEROUTPUT ON;
DECLARE 
    V_RM CHAR(9) := '222333444';
    V_NOME VARCHAR2(50) ;
BEGIN
    --Este é um comando que recupera o nome do aluno na tabela--
    SELECT NOME INTO V_NOME FROM ALUNO WHERE RM = V_RM;
    DBMS_OUTPUT.PUT_LINE ('O nome do aluno é: ' || V_NOME);
END;


------Exercicio 02----------
set SERVEROUTPUT ON;
DECLARE 
    V_RM CHAR(9) := '553209';
    V_NOME VARCHAR(50):= 'Lucas';
    
BEGIN 
    INSERT INTO ALUNO (RM,NOME) VALUES(V_RM, V_NOME);
    DBMS_OUTPUT.PUT_LINE('Registro inserido com sucesso.');
END;



-----------exercicio 03------------
set SERVEROUTPUT ON;
DECLARE
    V_RM CHAR(9) := '95003';
    V_NOME VARCHAR(50) := 'Igor Ferreira';
BEGIN 
     UPDATE ALUNO SET NOME = V_NOME WHERE RM = V_RM;  
END;


SELECT * FROM ALUNO;













