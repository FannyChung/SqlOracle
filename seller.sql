/*�����̼���Ϣ��*/
CREATE TABLE tb_seller(
sellerId varchar2(20)Primary key,/*���ID������*/
sellerName varchar2(20) NOT NULL Unique,/*������ƣ�Ψһ������*/
sellerEmail varchar2(20) NOT NULL Unique,/*���䣬Ψһ������*/
sellerPhone number(11) NOT NULL Unique,/*�绰��Ψһ������*/
sellerPwd varchar2(20) NOT NULL,/*����*/
sellerAdr varchar2(20) NOT NULL,/*��ַ*/
evaluateLevel number(1),/*��ҵ����۵ȼ�*/
storeFrontState number(1) default 0,/*0����û�е��棬1�����е���*/
storeFrontName varchar2(20) Unique,/*��������Ψһ*/
storeFrontInfo varchar2(100)/*������Ϣ*/
);
