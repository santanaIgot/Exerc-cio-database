----------------Exercicio 01------------------
set SERVEROUTPUT ON;
DECLARE 
    NUMERO INT := 5;
BEGIN 
    IF MOD(NUMERO, 2)= 0 THEN
        DBMS_OUTPUT.PUT_LINE('O NUMERO' ||NUMERO||'É PAR');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O número ' || numero || ' é ímpar.');
    END IF;
    
END;


----------------Exercicio 02 ----------------
set SERVEROUTPUT ON;
DECLARE 
    NUMERO INT := -10;
BEGIN
    IF NUMERO > 0 THEN 
        DBMS_OUTPUT.PUT_LINE('O número ' || numero || ' é POSITIVO.');
    ELSIF NUMERO < 0 THEN 
        DBMS_OUTPUT.PUT_LINE('O número ' || numero || ' é NEGATIVO.');
    ELSE 
        DBMS_OUTPUT.PUT_LINE('O número é zero.');
    END IF;
    
END;


----------------Exercicio 03---------------
set SERVEROUTPUT ON;
DECLARE 
    NOTA INT:= 85;
    CONCEITO VARCHAR(1);
BEGIN 
    IF NOTA > 90 THEN
        CONCEITO := 'A';
    ELSIF NOTA >= 80 THEN 
        CONCEITO := 'B';
    ELSIF NOTA >= 70 THEN 
        CONCEITO := 'C';
    ELSIF CONCEITO >= '60' THEN 
        CONCEITO := 'D';
    ELSE 
        CONCEITO := 'F';
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('A nota ' || nota || ' é classificada como conceito ' || conceito);
END;
          
    





