CREATE TABLE zoo (
  name TEXT NOT NULL,
  eat TEXT NOT NULL,
  weight INT NOT NULL,
  height INT,
  age INT
);

-- 1) 
INSERT INTO zoo (age, height, weight, name, eat) 
VALUES 
(5, 180, 210, 'gorilla', 'omnivore');
-- 밸류와 해당하는 컬럼을 연결

-- 2)
ALTER TABLE zoo ADD COLUMN rowid INTEGER NOT NULL DEFAULT 0;

INSERT INTO zoo (rowid, name, eat, weight, age) VALUES
(10,'dolphin', 'carnivore', 210, 3),
(10, 'alligator', 'carnivore', 250, 50);
-- 내부적으로 있는 rowid는 고유값을 가져서 변경 불가. 별칭의 rowid 컬럼을
-- 테이블에 새로 만들고 값을 입력


-- 3)
INSERT INTO zoo (name, eat, age) VALUES
('dolphin', 'carnivore', 3);

-- 새로운 'dolphin'을 넣고 싶은 것이라면 
-- 조건이 없는 컬럼은 밸류를 ''으로 넣어도 되지만 NOT NULL인 
-- weight는 무언가 값이 필요
INSERT INTO zoo (name, eat, weight, height, age) 
VALUES
('dolphin', 'carnivore', 210, '', 3);

-- 기존 'dolphin'을 바꾸고 싶은 것이라면 
UPDATE zoo
SET name='dolphin2'
age=2
WHERE rowid=2;
-- 와 같은 형식 사용
