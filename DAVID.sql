SELECT*FROM TABLE1

update table1 set column1=500 where id=65; --update any table--


SELECT  JOBID ,SUM(COLUMN1) TOTALSAL,RANK() OVER(ORDER BY JOBID) RK FROM TABLE1
GROUP BY JOBID;

select column1 , dense_rank() over(order by column1 desc nulls last) rank_is, count(*) over() from table1;

--sub query--
SELECT ID,JOBID,COLUMN1,ROWNUM RK 
FROM
(SELECT ID,JOBID,COLUMN1 FROM TABLE1 ORDER BY COLUMN1 DESC NULLS LAST )
WHERE ROWNUM<=5;


SELECT ID, SUM(COLUMN1)OVER() TOTALSAL ,AVG(COLUMN1) OVER() AVGSAL ,MAX(COLUMN1) OVER() MAXSAL,
MIN(COLUMN1) OVER()MINSAL ,COUNT(*) OVER() NOOFEMP FROM TABLE1


SELECT JOBID, SUM(COLUMN1) TOTALSAL ,AVG(COLUMN1)  AVGSAL ,MAX(COLUMN1)  MAXSAL, MIN(COLUMN1) MINSAL ,COUNT(*)  NOOFEMP FROM TABLE1
GROUP BY JOBID;


select name from table1 where name  like '%A'

                                                                -- NTH_VALUE--

select id , jobid ,COLUMN1,nth_value(Column1,3) IGNORE NULLS over(order by column1 desc rows between unbounded preceding and unbounded following)
THD_HIGHSAL  FROM TABLE1


SELect ID , JOBID, NAME,COLUMN1,nth_value(name,5) over(order by column1 desc rows between unbounded preceding and unbounded following)
unknown, count(*)over() noofemp from table1

select*from table1

select id , name , jobid , column1 ,nth_value(column1,3) ignore nulls over(order by column1 desc rows between unbounded preceding and unbounded following) thesal,count(*)over() noofemp
from table1


                                                                    --REGEX_LIKE--
                                                                    
                                                                    
  --SYNTAX : REGEXP_LIKE ( expression, pattern [, match_parameter ] );
  
  --PATTERN:
--Value	Description
--  ^	Matches the beginning of a string. If used with a match_parameter of 'm', it matches the start of a line anywhere within expression.
--  $	Matches the end of a string. If used with a match_parameter of 'm', it matches the end of a line anywhere within expression.
--  *	Matches zero or more occurrences.
--  +	Matches one or more occurrences.
--  ?	Matches zero or one occurrence.
--  .	Matches any character except NULL.
--  |	Used like an "OR" to specify more than one alternative.
--  [ ]	Used to specify a matching list where you are trying to match any one of the characters in the list.
--  [^ ]	Used to specify a nonmatching list where you are trying to match any character except for the ones in the list.
--  ( )	Used to group expressions as a subexpression.
--  {m}	Matches m times.
--  {m,}	Matches at least m times.
--  {m,n}	Matches at least m times, but no more than n times.
--  \n	n is a number between 1 and 9. Matches the nth subexpression found within ( ) before encountering \n.
--  [..]	Matches one collation element that can be more than one character.
--  [::]	Matches character classes.
--  [==]	Matches equivalence classes.
--  \d	Matches a digit character.
--  \D	Matches a nondigit character.
--  \w	Matches a word character.
--  \W	Matches a nonword character.
--  \s	Matches a whitespace character.
--  \S	matches a non-whitespace character.
--  \A	Matches the beginning of a string or matches at the end of a string before a newline character.
--  \Z	Matches at the end of a string.
--  *?	Matches the preceding pattern zero or more occurrences.
--  +?	Matches the preceding pattern one or more occurrences.
--  ??	Matches the preceding pattern zero or one occurrence.
--  {n}?	Matches the preceding pattern n times.
--  {n,}?	Matches the preceding pattern at least n times.
--  {n,m}?	Matches the preceding pattern at least n times, but not more than m times.
                                                                    
                                                                    
                                                                    
 --match_parameter:                                                                   
  --Value	Description
-- 'c'	Perform case-sensitive matching.
-- 'i'	Perform case-insensitive matching.
-- 'n'	Allows the period character (.) to match the newline character. By default, the period is a wildcard.
-- 'm'	expression is assumed to have multiple lines, where ^ is the start of a line and $ is the end of a line, 
--      regardless of the position of those characters in expression. By default, expression is assumed to be a single line.
-- 'x'	Whitespace characters are ignored. By default, whitespace characters are matched like any other character.                                                                  
                                                                
                                                                
select name from table1 where regexp_like (name ,'^b|B','i');

select name from table1 where regexp_like  (name,'(k|K)$','i')

select name from table1 where regexp_like(name,'^(b|B)','i')

select name from table1 where regexp_like (name,'^[aeiou]','i')

select name from table1 where regexp_like (name,'[aeiou]','i')

select name from table1 where regexp_like (name,'cazz|RIKK')

select 2 from dual where regexp_like('rikkhanra2000@gmail.com','[a-zA-Z0-9\._]+@[a-zA-Z]+\.[a-zA-Z]{3}')

select 1 from dual where regexp_like('ee1847_.2000gmail.com','[a-zA-Z0-9]+@[a-zA-Z]+\.[a-zA-Z]{3}')

select 1 from dual where regexp_like('23455 26875 23265' ,'[0-9]{5} [0-9]{5} [0-9]{5}')

select*from table1

select name , id , jobid, column1 ,dense_rank() over(order by column1 desc nulls last)rk  , count(*)over() noofemp from table1 order by column1 desc nulls last

select 0 from dual where regexp_like ('25689 2568 23685','[0-9]{5} [0-9]{4} [0-9]{5}')



                                                                     --REGEXP_COUNT--
                                                                     
                                                                     
  --SYNTAX:    REGEXP_COUNT (source_char, pattern , position , match_parameter)                                                                 
 
 SELECT REGEXP_COUNT('ORANGE','[AEIOU]',1) FROM DUAL    
 
 SELECT NAME, REGEXP_COUNT(NAME ,'[aeiou]',1,'i') FROM TABLE1 
 
 select regexp_count('I am debtanu cazz , cazz and cazzz','cazz',1,'i') from dual 
  
select regexp_count('I am debtanu cazz , cazz and cazzz',' ',1,'i') from dual -- OUTPUT 7 KARON 1 DAWAI first character tha k count kore SPACE COUNT HOCHHA

select regexp_count('I am debtanu cazz , cazz and cazzz',' ',6,'i') from dual -- OUTPUT 5 karon 6 dawai first 6ta character bad dia count hochha

SELECT REGEXP_COUNT('123123123123123', '(12)3', 3, 'i') REGEXP_COUNT FROM DUAL;

SELECT REGEXP_COUNT('123123123123', '123', 3, 'i') COUNT FROM DUAL;
 SELECT REGEXP_COUNT ('NOBODY HAS THE POWER TO TAKE TWO STEPS TOGATHER YOU CAN TAKE ONLY ONE STEP AT A TIME','[AEIOU]',1,'i') from dual
                                                                  
                                                                    --REGEXP_INSTR--
                                                                    
                                                                
--SYNTAX:  REGEXP_INSTR( string, pattern [, start_position [, nth_appearance [, return_option [, match_parameter [, sub_expression ] ] ] ] ] )                                                                

SELECT NAME, REGEXP_instr(NAME ,'[aeiou]',1,1,0,'i') FROM TABLE1   --query to find the position of vowel  first occurance of vowel--

select regexp_instr('I am debtanu cazz , cazz and cazzz',' ',1,2,0,'i') from dual --to find the position of second occurance of space --

select name from table1 where regexp_instr(name,'([AEIOU])\1',1,1,0,'i')>0 ; --\1 is a back referecence . ata 1 bar buffer kora jodui kono vowel khuja pai tahola tar value store korba --
                                                                            --2vowels pasapasi--

select name from table1 where regexp_instr(name,'[aeiou][aeiou]',1,1,0,'i') >0;

select name from table1 where regexp_instr(name,'[aeiou]+',1,1,0,'i') >0; --many vowels wala output--

select regexp_instr('Oracle is an Rdbms.','[^ ]+',1,3,0,'i') from dual    -- to find nonblank space word at 3rd occurance--



                                                                    --REGEXP_SUBSTR--


-- SYNTAX: REGEXP_SUBSTR( string, pattern [, start_position [, nth_appearance [, match_parameter [, sub_expression ] ] ] ] )

SELECT REGEXP_SUBSTR('500 Oracle Parkway, Redwood Shores, CA',',[^,]+,') "REGEXPR_SUBSTR" FROM DUAL;
--The following example examines the string, looking for the first substring bounded by commas. Oracle Database searches for a comma --
--followed by one or more occurrences of non-comma characters followed by a comma. Oracle returns the substring, including the leading and trailing commas.--

SELECT REGEXP_SUBSTR('http://www.oracle.com/products','http://([[:alnum:]]+\.?){3,4}/?') "REGEXP_SUBSTR" FROM DUAL;
--The following example examines the string, looking for http:// followed by a substring of one or more alphanumeric characters and optionally, a period (.).--
--Oracle searches for a minimum of three and a maximum of four occurrences of this substring between http:// and either a slash (/) or the end of the string.--


select regexp_substr('https://www.oracle.com','https://(([[:alpha:]]+\.?){3,4})',1,1,'i',1) RESULT from dual
--write a query to extract the domain name from URL--


select regexp_substr('https://www.oracle.com','([[:alpha:]]+)://(([[:alpha:]]+\.?){3,4})',1,1,'i',1) RESULT from dual
--write a query to extract the protocol from an URL--

select regexp_substr('Oracle is an RDBMS','Oracle',1,1,'i')from dual
--write a query to extract the word Oracle from the input string

select regexp_substr('user1@gmail.com','[a-zA-Z0-9\.\-_]+@([[:alpha:]]+\.[[:alpha:]]+)',1,1,'i',1) from dual
--write a query to extract the domain name from email id user1@gmail.com

select regexp_substr('91-080-26897865','\d{2}\-(]d{3})\-\d{8}',1,1,'i',1) from dual



                                                                    
                                                                    --REGEXP_REPLACE--
                                                                    
                                                                    
-- SYNTAX: REGEXP_REPLACE( string, pattern [, replacement_string [, start_position [, nth_appearance [, match_parameter ] ] ] ] )

SELECT 'Oracle          is       an             RDBMS' inputstring, regexp_replace('Oracle          is       an             RDBMS','[[:space:]]+',' ')from dual
--to replace rhe multiple number of space--

SELECT NAME, REGEXP_replace(NAME ,'[aeiou]','p',1,1,'i') FROM TABLE1 --ekhane 1 ,1 er mane holo aga first occurance a check kora sudhumatro 1st --
--vowel tar jaigai tai "P" bosba ;jodi 1,2 use kortam tahola 2nd position a vowel check kopra sai jaigai p replace hoyo--


SELECT NAME, REGEXP_replace(NAME ,'[aeiouAEIOU]','p') FROM TABLE1 
-- AIRAKOM HOLO SOB VOWEL ER JAIGAI p REPLACE HOBA ; --



--NOTE=     \d= any digit     \D= any nondigit character   \s= space character     \S= nonspace character--


select 'oracle is an Rdbms' Input_string , regexp_replace('oracle is an Rdbms' ,'(\S+) (\S+) (\S+)', '\3 \2 \1')FROM DUAL
--\S =NON SPACE CHAR JETA +  mana 1 er besi non space character  . NONSPCE CHARCTER K NICHHI R AKTA KORA SPACE O KHUJCHI;--
--1 BAR BUFFER HOBA TARPOR ABAR BUFFER HOBA TARPOR ABAR BUFFER HOBA = 3 bar buffer hoba, \3  \2 \1 - 3 te back reference buffer er jonno rakhachi --  


select 'DAVID' INPUT_STR, REGEXP_REPLACE('DAVID','(.)','\1 ') FROM DUAL -- (.) MANA ALL SINGLE CHARACTER , '\1 '= 1ST BAR 1ST CHARACTER GULOR--
                                                                        --AGA BUFFER HOBA TYARPOR SPACE ADD KORBA--
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        --PL/SQL--
                                                                        
--SYNTAX: 

--declare
        --declarative section
--begin
        --executable section
--exception 
        --exception section
--end;
--/


-- WRITE A PROGRAM TO ADD 2NUMBER--    
DECLARE
num1 number(10):=20; --:= assignment operator--
num2 number(10):=25;
begin
dbms_output.put_line('The sum of '||num1|| ' and ' ||num2|| ' is: '||(num1+num2));  -- || =concantenating opertaor--
end;
/
                                                                        


--WRITE A PROGRAM TO ADD 2NUMBER with user input at runtime--
DECLARE
num1 number(10):=&num1;                  --:= assignment operator     and      & use for substitution veriale ;   
                                         --ath the runtime and the time of passing value this program will run in plsql block--
num2 number(10):=&num2;
begin
dbms_output.put_line('The sum of '||num1|| ' and ' ||num2|| ' is: '||(num1+num2));  -- || =concantenating opertaor--
end;
/

-- Write a program to print whether the number is prime or not

  declare
  l_num number(5):=&num;
  l_isPrime boolean := true;
  begin
     for var in 2..l_num-1
     loop
       if mod(l_num,var) = 0 then
          l_isPrime:= false;
       end if;
     end loop;
   if l_isPrime =true then 
     dbms_output.put_line('The number '|| l_num ||' is a Prime number');
   else
     dbms_output.put_line('The number '|| l_num ||' is not a Prime number');
   end if;  
  end;
  /
 




--WRITE A PROGRAM TO ADD 2NUMBER, create a host variable to accept the two numbers --
--host variable = variable which is declared in host enviroment . When host variable used in SQL statement or PLSQL block it is called as BIND VARIABLE--
--WHENEVER WE REFEERING THIS VARIABLE IN SQL STATEMENT OR IN PLSQL BLOCK then syntax will be = prefix the variable name with ":" :--
variable l_num1 number(10);
variable l_num2 number(10);
exec:l_num1:=20;
exec:l_num2:=10;
begin
dbms_output.put_line('The result of ' ||:h_num1||' and '||:h_num2||' is : '||(:h_num1 +:h_num2));
end;
/




--Write a program to return the salary of an employee ( USING HOST VARIABLE )--
variable h_salary number
begin
select column1 into:
from table1 where id=&ID;
end;
/




--write a plsql block block to update the salary of an employee---
--aivaba korla change direct table a effect korba --
declare
l_empid number(10):=&empid;
begin
update table1
set column1=&NEWSAL
where id=l_empid;
end;
/


--WRITE A QUERY TO UPDATE SALARY 30rs FOR ALL--




--get output in dbms op--
declare 
l_empid number(10):=&empid;
l_newsal number(10):=0;
 begin
 update table1
 set column1 =&salchange
 where id=l_empid
 returning column1 into l_newsal;
 dbms_output.put_line('The salary for the emlpoyee id '||l_empid||'updated into newsalary: '||l_newsal);
 commit;
 end;
 /


--practice---
declare
l_empid number(10):=&empid;
l_newchange number(10):=0;
begin
update table1 set column1=&newpackageb where id=l_empid returning column1 into l_newchange;
dbms_output.put_line('The salary for empid: '||l_empid||' change into: '||l_newchange);
commit;
end;
/

--delete any data--
declare 
l_empid number(10):=&empid;
begin
delete from table1 where id=l_empid;
dbms_output.put_line('the data deleted successfully for the emp id: '||l_empid);
end;
/

--Practice--
declare
l_num1 number(10):=&N1;
l_num2 number(10):=&N2;
begin
dbms_output.put_line('The multiplication of two numbers '||l_num1||' and '||l_num2|| ' is: '||(l_num1*l_num2));
end;
/



declare
empid number(10):=&ID;
change_name varchar(10):=0;
change_sal number(10):=0;

begin
update table1 set name='&new_name' , column1=&new_sal where id= empid returning name,column1 into change_name,change_sal;

commit;
end;
/


            -- FROM HERE MD ISTIAQUE ANSARI CONTINUE..--


 
                     --Nested block--

Block with a block is called is nested block.
the block which contains another block is called as parent block.
the block is present inside the another block is visible to the child block but vise versa is not possible.

                     --Syntax--
   --parent block
     DECLARE
       declare variable;
     BEGIN
   --child block
     DECLARE
      declare variable;
     BEGIN
       statement_parent;
        statement_child;
     END;
     END;



-- parent block
   declare
       l_parent number(5):=10;
   begin
  --child block
   declare
       l_child number(5):= 10;
   begin
   dbms_output.put_line('Parent block variable value is' || l_parent);
   dbms_output.put_line('Child block variable value is' || l_child);
   end;
 end;


--NOTE: This website is very useful to understand nested block easily :               https://www.oracle-world.com/plsql-advanced/pl-sql-nested-blocks/
                     
                     
                     
                     -- Conditional Statement--

 help us to check some condtion and based on the conditon we execute different statement.
 
                     -- SYNTAX--

   if condition1 then 
   statement1
   else
   statement2
   end if;

                     -- Nested conditional Statement--

                       -- SYNTAX--

   if condition1 then
        if condition2 then 
           statement1
        else
           statement2
        end if;
      
       else
          statement3
       end if;
 
                    -- Multiple if conditional Statement--

                    -- SYNTAX--

   if condition1 then 
      statement1
   elsif
      statement2
   elsif
      statement3
   else
      statement4
   endif;


  -- plsql does not have % modulus operator.

  ques: Write a plsql program to check whether a given number is even or odd.

  declare
  l_num number(5):=100;
  begin
  if mod(l_num,2) = 0 then 
     dbms_output.put_line('The given number is even number');
  else
     dbms_output.put_line('The given number is not even number');
  end if;
  end;
  /


 -- Write a program to display the part of the day.
 00- 6am its early morning
 601 to 12pm morning
 12pm to 4pm afternoon.
 4pm to 8pm its evening.
 8pm to 23.59 it is night.

 declare 
 l_date timestamp:= to_timestamp('&date','dd-mon-yyyy hh24:mi:ss');
 begin
     if to_number(to_char(l_date,'hh24')) between 0 and 6 then
         dbms_output.put_line('Its early morning');
     elseif to_number(to_char(l_date,'hh24')) between 6 and 12 then
         dbms_output.put_line('Its morning');
     elseif to_number(to_char(l_date,'hh24')) between 13 and 15 then
         dbms_output.put_line('Its afternon');
     elseif to_number(to_char(l_date,'hh24')) between 16 and 19 then
         dbms_output.put_line('Its evening);
     elseif to_number(to_char(l_date,'hh24')) between 20 and 23 then
         dbms_output.put_line('Its night);
  end if;
end;
/


                -- switch--

ques: write a program to check the salary of employee is high , low, medium

 0 - 2500 its low
 2501 to 8000 its medium
 8001 its high.

                -- SYNTAX--

  case
    simple case
       case expr -- value
           when value1 then 
              ststm1
           when values2 then 
              statm2
           else
              statm3
           end case;


-- check number is even or odd using switch case

  declare
  l_num number(5):= 100;
  begin
  case mod(l_num,2)
  when 0 then
     dbms_output.put_line('The given number is even');
  else
     dbms_output.put_line('The given number is odd');
  end case;
end;
/


-- write a code to check whether a number is palindrome or not.

  declare
  l_num number(5):= 151;
  l_result number(5):= 0;
  l_rem number(5);
  l_temp number(5);
  begin
   l_temp:= l_num;
  while(l_temp > 0)
   loop
     l_rem:= mod(l_temp,10);  
     l_result:= (l_result*10)+ l_rem; 
     l_temp:= trunc(l_temp/10); 
   end loop; 
  if l_result = l_num then
   dbms_output.put_line('Yes palindrome number');
  else
   dbms_output.put_line('Not a palindrome number');
  end if;
  end;

 
   -- DRY CODE--

  /* 
  case 1
  num = 151
  temp = num
  result = 0

  while(temp > 0)  151 > 0
  rem = mod(num,10)
  rem = 1
  result = (result*10)+rem  0*10 + 1 = 1
  result = 1
  temp = temp/10; 15 to get quotient value

  case 2

  while(temp > 0)  15 > 0
  rem = mod(num,10) = 5  
  result = (result*10)+rem  1*10 + 5 = 15
  temp = temp/10; 1

  case : 3
  while(temp > 0)  1 > 0
  rem = mod(num,10) = 1  
  result = (result*10)+rem  15*10 + 1 = 151
  temp = temp/10; 0

 */


               -- search Case--
               -- SYNTAX--

  case
     when condition1 and condition2 then 
           statement1
     when condition3 and condition4 then 
           statement2
     else
           statement3
  end case


  -- Write a program which will display the grade of an student based on his marks.
  -- 91 to 100 excellent
  -- 81 to 90 very good
  -- 71 to 80 good
  -- 60-70 average
  -- <60 below average.

  declare
  l_marks number(5):=&marks;
  begin
    case
        when l_marks between 91 and 100 then 
          dbms_output.put_line('The grade is excellent');
        when l_marks between 81 and 90 then 
          dbms_output.put_line('The grade is very good);
        when l_marks between 71 and 80 then 
          dbms_output.put_line('The grade is good');
        when l_marks between 60 and 70 then 
          dbms_output.put_line('The grade is average');
        else
          dbms_output.put_line('The grade is below average);
    end case;
  end;
 /



                -- loop --

When we want to executes same task multiple times then we use loop construct.
-- Simple loop.

                -- SYNTAX-- LOOP WITH IF ELSE CONDTITION
  loop
   if condition then 
     exit;
   end if;
 end loop;

                -- SYNTAX--SIMPLE LOOP

 loop
  exit when condition ;
 end loop;

-- Write a program to print the number between 1 to 10

   declare
   l_num number(5):=1;
   begin
     loop
       l_num:= l_num + 1;
       if l_num > 10 then 
          exit;
       end if;
       dbms_output.put_line(l_num);
     end loop;
   end;
 /


-- write a program to print the table number of 3

 declare 
  l_num number(5):=0;
  begin
    dbms_output.put_line('Table of 3 is:');
    loop
      l_num:= l_num + 1;
        if l_num > 10 then 
          exit;
        end if;
      dbms_output.put_line('3 * '||l_num || ' = '|| 3*l_num);
    end loop;
  end;
 /


           -- While Loop--
           -- SYNTAX--

        while condition
           loop
             statement;
           end loop;

  declare
  l_num number(5):=1;
  begin
    dbms_output.put_line('Table of 3 is:');
  while(l_num < 11)
  loop
  dbms_output.put_line('3 * '||l_num || ' = '|| 3*l_num);
  l_num:= l_num+1;
  end loop;
 end;
 /
  


-- Write a program to calculate the factorial of a number

   -- using while loop--

 declare 
  l_num number(5):= &num;
  l_cnt number(5):= l_num;
  l_fact number(5):= 1;
  begin 
    while(l_cnt > 0)
     loop
     l_fact:= l_fact * l_cnt;
     l_cnt:= l_cnt -1;
    end loop;
  dbms_output.put_line('Factorial of '|| l_num || 'is ' || l_fact);
  end;
 /

     -- using simple for loop

  declare
  l_num number(5):= &num;
  l_fact number(5):= 1;
  begin
   dbms_output.put_line('Factorial of '|| l_num || 'is ');
    loop
        l_num:= l_num - 1;
        if l_fact = 0 then
           exit;
        end if;
      l_fact:= l_fact*l_num;
    end loop;
  dbms_output.put_line(l_fact);
 end;
/
 
              -- DRY CODE--

case1:  r = 1, fact = 1
    fact = 1*1 = 1

    r = 2, fact = 1
    fact = 1*2 = 2

    r = 3, fact = 2
    fact = 3*2 = 6

    r = 4, fact = 6
    fact = 6*4 = 24

    r = 5, fact = 24
    fact = 5*24 = 120


 -- Write a program to print whether the number is even or odd
 
 declare
 l_num number(5):=&num;
 begin
 if mod(l_num,2)=0 then
 dbms_output.put_line('Given number is even number');
 else
 dbms_output.put_line('Given number is odd number');
 end if;
 end;
 /


-- Write a program to print whether the number is prime or not
 

  declare
  l_num number(5):=&num;
  l_isPrime boolean := true;
  begin
     for var in 2..l_num-1
     loop
       if mod(l_num,var) = 0 then       
          l_isPrime:= false;
       end if;
     end loop;
   if l_isPrime =true then 
     dbms_output.put_line('The number '|| l_num ||' is a Prime number');
   else
     dbms_output.put_line('The number '|| l_num ||' is not a Prime number');
   end if;  
  end;
  /


                                   -- Nested for loop---

  -- Nested loop is loop within another loop.

                                   -- SYNTAX--

   <<OUTERLOOP>>
   FOR VAR1 IN LOWERBOUND..UPPERBOUND
     LOOP
       STATEMENTS
   <<INNERLOOP>>
   FOR VAR2 IN LOWERBOUND..UPPERBOUND
     LOOP
       STATEMENTS
     END LOOP;
    END LOOP;
  
  
  
   BEGIN
   <<OUTER LOOP>>
   FOR i in 1..10
      LOOP
        dbms_output.put_line('Outer for loop '|| i);
     <<INNER LOOP>>
     FOR j in 1..3
        LOOP
        dbms_output.put_line('Inner for loop '|| j);
        END LOOP;
      END LOOP;
   END;
  /
    
                                   -- Continue Statement--
 
  --whenever plsql comes acroos continue statement, it will not excecute any statement within the loop for the current iteration.
  -- It will just skip the current iteration and go to the current next iteration.
  
  BEGIN
   FOR i in 1..10
      LOOP
        dbms_output.put_line('Outer for loop '|| i);
     FOR j in 1..3
        LOOP
        CONTINUE WHEN MOD(j,2) = 0 then
           dbms_output.put_line(j);
        END LOOP;
      END LOOP;
   END;
  /


                                  -- LEBELS TO LOOP--


   -- Whenever we want to skip the current loop and wanna go another loop then we use lebels.


  BEGIN
   <<OUTERLOOP>>
   FOR i in 1..10
    LOOP
      dbms_output.put_line('Outer loop value '|| i);
      <<INNERLOOP>>
      FOR j in 1..3
        LOOP
         CONTINUE OUTERLOOP WHEN MOD(J,2) = 0;
           dbms_output.put_line(j);
        END LOOP;
     END LOOP;
   END;
  /




                                 -- GO TO STATEMENT--

-- Branching statement, it is mainly used to branch from one part of the program to another part
                  -- Restriction on GoTo statement--
-- 1. We cannot use the goto statement to transfer the control out of a subprogram  or into exception handling block.
-- 2. We cannot use the goto statement to transfer the control out from exceptional handling section to the executable block.

  
 DECLARE 
  l_num number(5):= &num;
  l_flag char(1):= NULL;
   BEGIN
    IF MOD(l_num,2) = 0 then
       l_flag:= 'E';
         GOTO evenlebel;
    ELSE
       l_flag:= 'O';
         GOTO oddlebel;
     END IF;
 
   <<evenlebel>>
   IF l_flag = 'E' THEN 
     dbms_output.put_line('The number is even');
     l_flag:= NULL;
   END IF;
    
   <<Oddlebel>>
   IF l_flag = 'E' THEN 
     dbms_output.put_line('The number is odd');
     l_flag:= NULL;
   END IF;
 END;
 /



                  -- UPTO HERE --



 
                                                                        --%TYPE--
                                                                          
DECLARE 
NEW_NAME VARCHAR(8);   --
BEGIN
SELECT NAME INTO NEW_NAME FROM TABLE1 WHERE ID=11;
DBMS_OUTPUT.PUT_LINE(NEW_NAME);
END;
/


ALTER TABLE TABLE1 MODIFY NAME CHAR(10); -- This command is just used for change the data type of column NAME of tbale1.


DECLARE 
NEW_NAME TABLE1.NAME%TYPE;
BEGIN
SELECT NAME INTO NEW_NAME FROM TABLE1 WHERE ID=11;
DBMS_OUTPUT.PUT_LINE(NEW_NAME);
END;
/

--SUGGESTION : WATCH THIS VIDEO CONTENT TO UNDERSTAND EASILY  :   https://youtu.be/Zt0vlmTqhP4 


                                                                       --CURSOR--
 
 
 --SYNTAX--  CURSOR > cursor-name > IS  > query
 declare
     --Declare the cursor
 begin
     --Cursor OPEN
     --Cursor FETCH
     --Cursor CLOSE
 end;
 /

--CURSOR atrributes--

-- %NOTFOUND  : It returns value in TRUE or FALSE. IT returns TRUE if no rows returned in FETCH.
-- %FOUND     : To determine if a row was retrived, use after FETCH. Returns TRUE if an DML STATEMENT (INSERT , UPDATE or DELETE) affected one or more rows 
               --or a SELECT INTO statements returned One or more rows. Otherwise it returns FALSE.
-- %ROWCOUNT  : To determine number of rows retrieved after FETCH.
-- %ISOPEN    : To determine if acursor is OPEN. It always returns FALSE for IMLICIT CURSOR . 
              --Because ,oracle cursors closes the SQL CURSORS automatically after excuting its associated SQL statement.

--NOTE: IMPLICIT CURSOR CANN'T BE TOUCHED BY DEVELOPER .BCZ, AT THE TIME OF EXECUTION SQL MAKE AUTOMATICALLY PROVIDE SOME NEEDED CURSOR.IT'S CALLED IMPLICT CURSOR.

--To create an EXPLICT CURSOR--

--Step1: Define the cursor  = Syntax : CURSOR cursor_name IS SELECT * FROM table_name
                                --OR : DECLARE cursor_name CURSOR FOR SELECT * FROM table_name
--Step2: OPEN the cursor    = Syntax : OPEN cursor_name
--Step3: FETCH the row one by one from the memory = Syntax : FETCH NEXT/FIRST/LAST/PRIOR/ABSOLUTE n/RELATIVE n FROM cursor_name
--Step4: CLOSE the cursor   = Syntax : CLOSE cursor_name

-- Note:
--Process Fetch Data from cursor:
--There are total 6 methods to access data from cursor. They are as follows :

     FIRST        is used to fetch only the first row from cursor table.
     LAST         is used to fetch only last row from cursor table.
     NEXT         is used to fetch data in forward direction from cursor table.
     PRIOR        is used to fetch data in backward direction from cursor table.
     ABSOLUTE     n is used to fetch the exact nth row from cursor table.
     RELATIVE     n is used to fetch the data in incremental way as well as decremental way.
   
   --Syntax : FETCH NEXT/FIRST/LAST/PRIOR/ABSOLUTE n/RELATIVE n FROM cursor_name
   
--EXAMPLE:

declare
NEW_ID NUMBER(10);
NEW_NAME VARCHAR(10);
NEW_COLUMN1 NUMBER(10);
cursor my_cursor is select id,name,column1 from table1;
begin
open my_cursor;
loop
fetch my_cursor into NEW_ID,NEW_NAME,NEW_COLUMN1;
EXIT WHEN MY_CURSOR%NOTFOUND;
DBMS_OUTPUT.PUT_LINE(NEW_ID ||' '||NEW_NAME||' '||NEW_COLUMN1);
end loop;
close my_cursor;
end;
/


declare 
c_id number(10);
c_column1 number(10);
cursor first_cursor is select id ,column1 from table1;
begin
open first_cursor;
loop
fetch first_cursor into c_id,c_column1;
exit when first_cursor%NOTFOUND;
dbms_output.put_line(c_id||' = '||c_column1);
end loop;
close first_cursor;
end;
/

declare
c_id number(10);
c_column1 number(10);
c_name varchar(10);
cursor n_cursor is select id , name , column1 from table1;
begin
open n_cursor;
loop
fetch first 2 row only from n_cursor into c_id,c_name,c_column1 ;
exit when n_cursor%NOTFOUND;
dbms_output.put_line(c_id||'   '||c_name||' '||c_column1);
end loop;
close n_cursor;
end;
/


DECLARE 
NEW_N VARCHAR(10);
NEW_I NUMBER(10);
CURSOR PRAC IS SELECT NAME, ID FROM TABLE1; 
BEGIN 
OPEN PRAC;
LOOP
FETCH PRAC INTO NEW_N,NEW_I ;
EXIT WHEN PRAC%NOTFOUND;
dbms_output.put_line(new_n||' '||new_I);
END LOOP;
CLOSE PRAC;
END;
/

select*from table1


                                                                        --EXCEPTION--


--SYNTAX: 
   --DECLARE  
      --<declarations section>  
   --BEGIN  
      --<executable command(s)>  
   --EXCEPTION  
      --<exception handling goes here >  
   --WHEN exception1 THEN   
      --exception1-handling-statements   
   --WHEN exception2  THEN   
      --exception2-handling-statements   
   --WHEN exception3 THEN   
      --exception3-handling-statements  
   ........  
   --WHEN others THEN  
      --exception3-handling-statements  
   --END;  

--EXAMPLE:
declare
C_id table1.id%type:=&type_id;
C_name table1.name%type;
Job_id table1.jobid%type;
begin
select name,jobid into C_name,Job_id from table1 where id=C_id;
DBMS_OUTPUT.PUT_LINE('name'|| C_name);
DBMS_OUTPUT.PUT_LINE('jobid'||Job_id);
EXCEPTION
WHEN no_data_found THEN  
      dbms_output.put_line('No such customer!');  
   WHEN others THEN  
      dbms_output.put_line('Error!'); 
end;
/


--Raising Exceptions: In the case of any internal database error,exceptions are raised by the database server automatically.
                     --But it can also be raised explicitly by programmer by using command RAISE.
--SYNTAX:
    --DECLARE  
    --exception_name EXCEPTION;  
    --BEGIN  
    --IF condition THEN  
    -- RAISE exception_name;  
    --END IF;  
    --EXCEPTION  
    --WHEN exception_name THEN  
    --statement;  
    --END;  


--***PRAGMA EXCEPTION_INIT: 
--SYNTAX: PRAGMA EXCEPTION_INIT (exception_name, exception_number);

--EAXMPLE : 

declare 
EX_AGE Exception;
AGE NUMBER(10):=&PUT_YOUR_AGE;
PRAGMA EXCEPTION_INIT(EX_AGE,-20008);
begin
IF AGE<18 THEN
RAISE_APPLICATION_ERROR(-20008,'YOU SHOULD BE 18 OR ABOVE AGE');
END IF;
DBMS_OUTPUT.PUT_LINE('YOUR AGE IS ELIGIBLE ');
EXCEPTION 
WHEN EX_AGE THEN
DBMS_OUTPUT.PUT_LINE(SQLERRM);  --The SQLERRM function returns the error message associated with an error code.
end;
/



DECLARE 
PHONE_NUMBER NUMBER:=&NUM;
D_EXCEP EXCEPTION;
PRAGMA EXCEPTION_INIT(D_EXCEP,-20182);
BEGIN
IF PHONE_NUMBER !=9073149947 THEN 
RAISE_APPLICATION_ERROR(-20182,'SORRY , INVALID NUMBER');
END IF;
DBMS_OUTPUT.PUT_LINE('THANKS FOR CONFIRMING YOUR NUMBER');
EXCEPTION 
WHEN D_EXCEP THEN
dbms_output.put_line(SQLERRM);
END;
/



--Following is a list of some important pre-defined exceptions:
--NO_DATA_FOUND is a pre-defined exception which is raised when a SELECT INTO statement returns no rows.

Exception	      Oracle Error	   SQL Code  	Description
ACCESS_INTO_NULL	06530	        -6530	It is raised when a NULL object is automatically assigned a value.
CASE_NOT_FOUND	    06592	        -6592	It is raised when none of the choices in the "WHEN" clauses of a CASE statement is selected, and there is no else clause.
COLLECTION_IS_NULL	06531	        -6531	It is raised when a program attempts to apply collection methods other than exists to an uninitialized nested table or varray, or the program attempts to assign values to the elements of an uninitialized nested table or varray.
DUP_VAL_ON_INDEX	00001	        -1	    It is raised when duplicate values are attempted to be stored in a column with unique index.
INVALID_CURSOR	    01001	        -1001	It is raised when attempts are made to make a cursor operation that is not allowed, such as closing an unopened cursor.
INVALID_NUMBER	    01722	        -1722	It is raised when the conversion of a character string into a number fails because the string does not represent a valid number.
LOGIN_DENIED	    01017	        -1017	It is raised when s program attempts to log on to the database with an invalid username or password.
NO_DATA_FOUND	    01403	        +100	It is raised when a select into statement returns no rows.
NOT_LOGGED_ON	    01012	        -1012	It is raised when a database call is issued without being connected to the database.
PROGRAM_ERROR	    06501	        -6501	It is raised when PL/SQL has an internal problem.
ROWTYPE_MISMATCH	06504	        -6504	It is raised when a cursor fetches value in a variable having incompatible data type.
SELF_IS_NULL	    30625	        -30625	It is raised when a member method is invoked, but the instance of the object type was not initialized.
STORAGE_ERROR	    06500	        -6500	It is raised when PL/SQL ran out of memory or memory was corrupted.
TOO_MANY_ROWS	    01422	        -1422	It is raised when a SELECT INTO statement returns more than one row.
VALUE_ERROR	        06502	        -6502	It is raised when an arithmetic, conversion, truncation, or size-constraint error occurs.
ZERO_DIVIDE	        01476	        1476	It is raised when an attempt is made to divide a number by zero.





                                                                        --TRIGGER--


--SYNTAX:

CREATE[or REPALCE] TRIGGER trigger_name 
BEFORE [or AFTER] INSERT or DELETE or UPDATE 
on table_name
[FOR EACH ROW] 
[FOLLOWS_ANOTHER_TRIGGER_NAME]
[ENABLE /DISABLE] 
[WHEN CONDITION]
declare
        --declarative section
begin
        --executable section
end;
/

--Example:

create trigger first_trig 
before insert or update or delete 
on table1 
for each row 
declare
SALARY_DEF table1.column1%type;
new_sal table1.column1%type;
old_sal table1.column1%type;
begin
SALARY_DEF:= :new.COLUMN1 - :old.COLUMN1;
dbms_output.put_line('NEW SAL = '||:new.COLUMN1);
dbms_output.put_line('OLD SAL = '||:old.COLUMN1);
dbms_output.put_line('def SAL = '||SALARY_DEF);
end;
/

drop trigger first_trig;-- to drop trigger

UPDATE TABLE1 SET COLUMN1=15555 WHERE ID=11;



--ANOTHER EXAMPLES: 
create table P_TABLE (NAME VARCHAR(20));
SELECT*FROM p_TABLE

--EXAMPLES OF INSERT , UPDATE , DELETE TRIGGER SEPARATELY AND LAST ONE IS MIXTURE OF ALL OF THESE

CREATE TRIGGER BI_TRIGGER
BEFORE INSERT ON P_TABLE 
FOR EACH ROW 
ENABLE
DECLARE
V_USER P_TABLE.NAME%TYPE;
BEGIN
SELECT USER INTO V_USER FROM DUAL;
DBMS_OUTPUT.PUT_LINE('INSERTED: '||V_USER);
END;
/

INSERT INTO P_TABLE VALUES('DAVID');


CREATE TRIGGER BU_TRIGGER 
BEFORE UPDATE ON P_TABLE
FOR EACH ROW
ENABLE
DECLARE 
V_USER P_TABLE.NAME%TYPE;
BEGIN 
SELECT USER INTO V_USER FROM DUAL ;
DBMS_OUTPUT.PUT_LINE('UPDATED: '||V_USER);
END;
/

UPDATE P_TABLE SET NAME='RIK' WHERE NAME='DAVID';

                                                                         
CREATE TRIGGER BD_TRIGGER 
BEFORE DELETE ON P_TABLE
FOR EACH ROW
ENABLE
DECLARE 
V_USER P_TABLE.NAME%TYPE;
BEGIN 
SELECT USER INTO V_USER FROM DUAL ;
DBMS_OUTPUT.PUT_LINE('DELETED: '||V_USER);
END;
/

DELETE FROM p_TABLE WHERE NAME ='RIK';

 
CREATE TRIGGER B_IUD_TRIG
BEFORE INSERT OR UPDATE OR DELETE 
ON p_TABLE
FOR EACH ROW
ENABLE
DECLARE
V_USER P_TABLE.NAME%TYPE;
BEGIN
SELECT USER INTO V_USER FROM DUAL;
IF INSERTING THEN 
    DBMS_OUTPUT.PUT_LINE(' INSERTING OCCUR: MR. '||V_USER);
ELSIF UPDATING THEN 
   DBMS_OUTPUT.PUT_LINE(' UPDATING OCCUR: MR. '||V_USER);
ELSIF DELETING THEN 
   DBMS_OUTPUT.PUT_LINE(' DELETING OCCUR: MR. '||V_USER);
END IF;
END;
/
 
INSERT INTO P_TABLE VALUES('DAVID');

UPDATE P_TABLE SET NAME='RIK' WHERE NAME='DAVID';

DELETE FROM p_TABLE WHERE NAME ='RIK';

 
 
                                                                     --SQL JOIN--
                                                                         
--EQUI JOIN :  EQUI JOIN is a simple SQL join. Uses the equal sign(=) as the comparison operator for the condition
--NON EQUI JOIN : NON EQUI JOIN uses comparison operator other than the equal sign. The operators uses like >, <, >=, <= with the condition.

--List of SQL JOINS: 
  --INNER JOIN
  --LEFT JOIN OR LEFT OUTER JOIN
  --RIGHT JOIN OR RIGHT OUTER JOIN
  --FULL OUTER JOIN
  --NATURAL JOIN
  --CROSS JOIN
  --SELF JOIN
  
--INNER JOIN :
--SYNTAX :  SELECT * FROM FIRST_TABLE F, SECOND_TABLE S WHERE F.FIRST_TABLE'S(NOTE: CHOOSE PRIMARY KEY COL) = S.SECOND_TABLE'S(CHOOSE COL RELATE WITH P-KEY)
         -- SELECT * FROM table_A INNER JOIN table_B ON table_A.A=table_B.A;


SELECT*FROM FIRST_TABLE       -- EXAMPLE TABLE
SELECT*FROM SECOND_TABLE      -- EXAMPLE TABLE

SELECT STAFF_ID,E_NAME,O_ID,O_AMOUNT,E_DATE,E_ADDRESS FROM FIRST_TABLE F,SECOND_TABLE S WHERE F.ID=S.STAFF_ID
select staff_id,e_name,payment_id,e_age,e_date,O_amount,E_salary from first_table f,second_table s where f.id=s.staff_id


--LEFT JOIN:
--SYNTAX: SELECT table1.column1, table2.column2...FROM table1 LEFTJOIN table2 ON table1.column_field (P-KEY)= table2.column_field(RELATABLE WITH 1ST TABLE P-KEY);  
select staff_id,e_name,E_age,O_amount from first_table left join second_table on first_table.id=second_table.staff_id


--RIGHT JOIN:
--SYNTAX:
SELECT STAFF_ID,E_NAME,E_AGE,o_AMOUNT FROM FIRST_TABLE RIGHT JOIN SECOND_TABLE ON FIRST_TABLE.ID=SECOND_TABLE.STAFF_ID


--FULL OUTER JOIN:
--SYNTAX: SELECT *  FROM table1 FULL OUTER JOIN table2  ON table1.column_name = table2.column_name;  
SELECT*FROM FIRST_TABLE  FULL OUTER JOIN SECOND_TABLE ON FIRST_TABLE.ID=SECOND_TABLE.STAFF_ID


--CROSS JOIN:
--SYNTAX: SELECT * FROM table_A CROSS JOIN table_B;   
SELECT STAFF_ID,E_NAME,E_SALARY FROM FIRST_TABLE CROSS JOIN SECOND_TABLE 



