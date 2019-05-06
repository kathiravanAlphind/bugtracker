-- ---
-- users records
--
---
INSERT INTO `users` (`uname`, `pass`, `fname`, `lname`, `qa`, `dev`) VALUES ('SenthilKumar', 'senthil', 'SenthilKumar', 'p', 1, 0),
('Chandru', 'chandru', 'Chandrasekar', 'c', 1, 0);

-- ---
-- projects records
--
---
INSERT INTO `projects` (`pname`, `tl_id`) VALUES
('ELL', 1), 
('LARK',1), 
('DA',2),
('Retail',2),
('KPI', 2);

-- ---
-- tickets_seq records
--
INSERT INTO `ticket_seq` (project_id, ticket_num) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);
