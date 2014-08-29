/*创建商家信息表*/
CREATE TABLE tb_seller(
sellerId varchar2(20)Primary key,/*店家ID，必填*/
sellerName varchar2(20) NOT NULL Unique,/*店家名称，唯一，必填*/
sellerEmail varchar2(20) NOT NULL Unique,/*邮箱，唯一，必填*/
sellerPhone number(11) NOT NULL Unique,/*电话，唯一，必填*/
sellerPwd varchar2(20) NOT NULL,/*密码*/
sellerAdr varchar2(20) NOT NULL,/*地址*/
evaluateLevel number(1),/*店家的评价等级*/
storeFrontState number(1) default 0,/*0代表没有店面，1代表有店面*/
storeFrontName varchar2(20) Unique,/*店面名称唯一*/
storeFrontInfo varchar2(100)/*店面信息*/
);

CREATE TABLE tb_cart(
UserId varchar2(20) NOT NULL,
ItemId varchar2(20) NOT NULL,
Counts number(10) NOT NULL,
Price number(10) NOT NULL,
Constraint Cart_pk Primary Key (UserId,ItemId)/*再关联foreign key*/
);

/*ALTER TABLE tb_cart ADD CONSTRAINT UserId Foreign key()*/

/*新增进购物车，先检查以前有没有，如果有，则*/
INSERT INTO tb_cart values(

/*增加一个物品*/
UPDATE tb_cart set Price =(count+1)/count*Price,Counts=Counts+1;
/*减少一个物品*/
Update tb_cart set Prcie=(count-1)/count*Price,Counts=Counts-1;

Insert into tb_cart values(
