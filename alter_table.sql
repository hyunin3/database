ALTER TABLE contacts RENAME TO new_contacts
-- 테이블명 변경

ALTER TABLE new_contacts RENAME COLUMN name TO last_name
-- 컬럼명 변경

ALTER TABLE new_contacts ADD COLUMN address TEXT NOT NULL DEFAULT'no address';
-- 새 컬럼 추가

ALTER TABLE new_contacts DROP COLUMN address;
-- 컬럼 삭제 

DROP TABLE table_name;
-- 데이터 베이스에서 테이블 제거 
