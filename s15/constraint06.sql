--emp2 : �θ�
--new_emp2 : �ڽ�

--ALTER TABLE emp2
--ADD CONSTRAINT uq_ep_emp2_name UNIQUE(name);

ALTER TABLE ed_emp2
ADD CONSTRAINT fk_emp2_to_ed_emp2 FOREIGN KEY(name)
REFERENCES emp2(name);