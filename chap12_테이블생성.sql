
/*
- NUMBER(2) -> 정수를 2자리까지 저장할 수 있는 숫자형 타입.
- NUMBER(5, 2) -> 정수부, 실수부를 합친 총 자리수 5자리, 소수점 2자리
- NUMBER -> 괄호를 생략할 시 (38, 0)으로 자동 지정됩니다.
- VARCHAR2(byte) -> 괄호 안에 들어올 문자열의 최대 길이를 지정. (4000byte까지)
- CLOB -> 대용량 텍스트 데이터 타입 (최대 4Gbyte)
- BLOB -> 이진형 대용량 객체 (이미지, 파일 저장 시 사용)
- DATE -> BC 4712년 1월 1일 ~ AD 9999년 12월 31일까지 지정 가능
- 시, 분, 초 지원 가능.
*/

CREATE TABLE dept (
    dept_no NUMBER(2),
    dept_name VARCHAR2(14),
    loca VARCHAR2(15),
    dept_date DATE,
    dept_bonus NUMBER(10)
);

DESC dept;
SELECT * FROM dept;

-- NUMBER와 VARCHAR2의 타입, 길이를 확인
INSERT INTO dept
VALUES(30, '마케팅', '경기', sysdate, 3000000);

-- 컬럼 추가
ALTER TABLE dept
ADD dept_count NUMBER(3);

SELECT * FROM dept;

-- 컬럼명 수정
ALTER TABLE dept
RENAME COLUMN dept_count TO emp_count;

-- 컬럼 속성 변경
-- 만약 변경하고자 하는 컬럼에 데이터가 이미 존재한다면, 그에 맞는 타입으로
-- 변경해야 합니다. 맞지 않는 타입으로는 변경이 불가합니다.
ALTER TABLE dept
MODIFY dept_name NUMBER(4);

-- DDL(CREATE, ALTER, TRUNCATE, DROP)은 트랜잭션 대상이 아닙니다.
-- DML(INSERT, UPDATE, DELETE) 이후 DDL을 실행하면 COMMIT이 자동으로 들어가요.
ROLLBACK;

-- 컬럼 삭제
ALTER TABLE dept
DROP COLUMN dept_bonus;

-- 테이블 이름 변경
ALTER TABLE dept
RENAME TO dept2;

SELECT * FROM dept2;

-- 테이블 삭제 (구조는 남겨두고 내부 데이터만 모두 삭제)
TRUNCATE TABLE dept2;

-- 테이블 삭제
DROP TABLE dept2;









