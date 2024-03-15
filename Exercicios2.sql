-----------------Exercicio 01----------------------
set SERVEROUTPUT ON;
DECLARE
    TIPO_CLIENTE VARCHAR(40) := '0';
BEGIN 
    FOR X IN (SELECT DEALSIZE, ORDERNUMBER FROM DADO_DE_VENDAS WHERE ORDERNUMBER
        IN (10402, 10134, 10168)) loop
    IF x.DEALSIZE = 'Medium' THEN 
        DBMS_OUTPUT.PUT_LINE(x.ORDERNUMBER || ' Empresa de Médio Porte');
    ELSIF x.DEALSIZE = 'Small' THEN 
        DBMS_OUTPUT.PUT_LINE('Empresa de Pequeno Porte');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Empresa de Grande Porte');
    END IF;
    end loop;
end;



--------------Exercicio 02 ------------------------
set SERVEROUTPUT ON;
DECLARE
    SEXO CHAR := 'f';
BEGIN
    IF SEXO = 'M' OR SEXO = 'm' THEN  
        DBMS_OUTPUT.PUT_LINE('O sexo é '|| SEXO);
    ELSIF SEXO = 'F' OR SEXO = 'f' THEN 
        DBMS_OUTPUT.PUT_LINE('O sexo é '|| SEXO);
    ELSE 
         DBMS_OUTPUT.PUT_LINE('OUTROS');
    END IF;
END;



---------------Exercicio 03----------------------
set SERVEROUTPUT ON;
DECLARE
    V_CARRO NUMBER(10,2):= 5000* 0.8;
    V_PRESTACAO V_CARRO %TYPE;
    V_NUMERO NUMBER(2) := 6;
    
BEGIN 
    IF V_NUMERO = 6 THEN 
        V_PRESTACAO := (V_CARRO *1.1)/6;
        DBMS_OUTPUT.PUT_LINE('VALOR DA PRESTACAO EM 6X:' || V_PRESTACAO);
    ELSIF V_NUMERO = 12 THEN 
        V_PRESTACAO := (V_CARRO * 1.15)/12;
        DBMS_OUTPUT.PUT_LINE('VALOR DA PRESTACAO EM 12X:' || V_PRESTACAO);
    ELSIF V_NUMERO = 18 THEN 
        V_PRESTACAO := (V_CARRO * 1.2)/18;
        DBMS_OUTPUT.PUT_LINE('VALOR DA PRESTACAO EM 18X:' || V_PRESTACAO);
    ELSE 
        DBMS_OUTPUT.PUT_LINE('FORA DE CONTRATO');
    END IF;
END;
        













    