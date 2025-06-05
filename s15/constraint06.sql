--emp2 : 부모
--new_emp2 : 자식

--ALTER TABLE emp2
--ADD CONSTRAINT uq_ep_emp2_name UNIQUE(name);

ALTER TABLE ed_emp2
ADD CONSTRAINT fk_emp2_to_ed_emp2 FOREIGN KEY(name)
REFERENCES emp2(name);