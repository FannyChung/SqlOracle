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

CREATE TABLE tb_cart(
UserId varchar2(20) NOT NULL,
ItemId varchar2(20) NOT NULL,
Counts number(10) NOT NULL,
Price number(10) NOT NULL,
Constraint Cart_pk Primary Key (UserId,ItemId)/*�ٹ���foreign key*/
);

/*ALTER TABLE tb_cart ADD CONSTRAINT UserId Foreign key()*/

/*���������ﳵ���ȼ����ǰ��û�У�����У���*/
INSERT INTO tb_cart values(

/*����һ����Ʒ*/
UPDATE tb_cart set Price =(count+1)/count*Price,Counts=Counts+1;
/*����һ����Ʒ*/
Update tb_cart set Prcie=(count-1)/count*Price,Counts=Counts-1;

Insert into tb_cart values(