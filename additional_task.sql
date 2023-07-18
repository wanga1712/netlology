--Создание таблицы сотрудник - начальник
CREATE TABLE Employee (
  employee_id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  department VARCHAR(255),
  boss_id INTEGER,
  FOREIGN KEY (boss_id) REFERENCES Employee(employee_id)
);
