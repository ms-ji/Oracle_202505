-- ���� ���̺� ����, ��������
DROP TABLE NEW_TABLE 
	CASCADE CONSTRAINTS;

--���̺� ����
CREATE TABLE NEW_TABLE (
	NO NUMBER(3), /* ��ȣ */
	NAME VARCHAR2(10), /* �̸� */
	BIRTHDAY DATE /* ������� */
);
--���̺� �ּ�
COMMENT ON TABLE NEW_TABLE IS '�� ���̺�';
--�÷� ��
COMMENT ON COLUMN NEW_TABLE.NO IS '��ȣ';

COMMENT ON COLUMN NEW_TABLE.NAME IS '�̸�';

COMMENT ON COLUMN NEW_TABLE.BIRTHDAY IS '�������';