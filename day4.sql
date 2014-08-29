SELECT TO_CHAR(sysdate,'DD-MON-RRRR') from dual;

SELECT TO_CHAR(sysdate,'DD-MON-YYYY') from dual;

SELECT TO_CHAR(sysdate,'DD-Mm-RR') from dual;

SELECT TO_DATE('2013/09/03','yyyy-mm-dd') from dual;

SELECT TO_DATE('10-11-93','dd-mm-rr') from dual;

SELECT TO_DATE('10-11-93','dd-mm-yy') from dual;

select LAST_DAY(sysdate) from dual;

select LAST_DAY(TO_DATE('2000-2-2','yyyy-mm-dd')) from dual;

select NEXT_DAY(sysdate,5) from dual;
select ADD_MONTHS(sysdate,2) from dual;

select sysdate-22/24 from dual;/*小时*/
select sysdate-22 from dual;/*天数*/

SELECT TRUNC(166.0252,-2) from dual;

SELECT round(to_DATE('2014-4-16','yyyy-mm-dd'),'month') from dual;

select ename,hiredate,MONTHS_BETWEEN(sysdate,hiredate) months from emp;

select TO_TIMESTAMP(sysdate) dt2 from dual;

select extract(day from dt1-dt2) day from 
	     (select to_timestamp('2011-2-2','yyyy-mm-dd')dt1,
       to_timestamp(sysdate)dt2
       from dual);
       
select round(to_date('16-5-94','dd-mm-rr'),'month') from dual;/*rr转成1994，四舍五入月份*/

select trunc(to_date('2014-5-16','yyyy-mm-dd'),'month') from dual;/*trunc截断，月份保持5*/
