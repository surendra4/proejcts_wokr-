CREATE DATABASE LIBRARY_DEMO;

USE LIBRARY_DEMO;

CREATE TABLE readers
   (
       reader_id varchar(6),
       fname varchar(30),
       mname varchar(30),
       lnaem varchar(30),
       city varchar(20),
       mobileno varchar(20),
       occupation varchar(20),
       dob date,
       constraint reader_pk primary key(reader_id)
       );
       select * from readers;
       
	insert into readers values('001','Rakesh','kumar','singh','Jodhpur','654332334','govt job',25/06/95);
	insert into readers values('002','mahesh','kumar','singh','Pune','65236111','prvt job',15/05/95);
	insert into readers values('003','mohit','raj','panday','mumbai','76453424','worker',22/01/90);
	insert into readers values('004','suresh','kumar','rai','kota','894333134','lowyer',20/06/99);
	insert into readers values('005','jitendra','raj','siyag','chaanai','9776655343','doctor',22/02/99);
	insert into readers values('006','mithiesh','kumar','singh','Jodhpur','6564332334','govt job',25/11/2000);
	insert into readers values('007','aman','kumar','soni','nagpur','98862334','govt job',04/04/2002);
	insert into readers values('008','akshay','kumar','singh','Delhi','7786432544','govt job',05/08/89);
	insert into readers values('009','akilesh','kumar','singh','Indor','6564332334','prvt job',23/09/90);
	insert into readers values('010','akash','kumar','singh','Pune','6564332334','manager',29/12/2002);
                     
select * from readers;


create table book
(
bid varchar(3),
bname varchar(40),
bdomain varchar(30),
constraint book_bid_pk primary key(bid)
);
insert into book values('001','The Name of the Wind','DAW Books');
insert into book values('002','It','Viking');
insert into book values('003','The Green Mile', 'Signet Books');
insert into book values('004','Dune', 'Chilton Books');
insert into book values('005','The Hobbit', 'George Allen & Unwin');
insert into book values('006','Eragon', 'Alfred A. Knopf');
insert into book values('007','A Wise Mans Fear', 'DAW Books');


select * from book;

create table active_readers
(
account_id VARCHAR(6),
reader_id VARCHAR(6),
bid VARCHAR(6),
atype VARCHAR(10),
astatuS VARCHAR(10),
constraint activereader_account_pk primary key(account_id),
constraint active_readerid_fk foreign key(reader_id) references readers(reader_id),
constraint account_bid_fk foreign key(bid) references book(bid)
);

insert into active_readers values('001','001','001','Premium','Active');
insert into active_readers values('002','004','003','Regular','Active');
insert into active_readers values('003','005','006','Regular','Active');
insert into active_readers values('004','007','001','Premium','Active');
insert into active_readers values('005','002','002','Regular','Active');
insert into active_readers values('006','004','005','Regular','Suspended');
insert into active_readers values('007','005','003','Premium','Active');
insert into active_readers values('008','004','007','Regular','Active');
insert into active_readers values('009','008','004','Premium','suspended');
insert into active_readers values('010','04','006','Regular','Active');
insert into active_readers values('011','03','005','Premium','Active');

select * from active_readers;

select * from active_readers where astatus = 'Active';
select * from active_readers where astatus = 'Suspended';
select count(account_id) from active_readers where atype = 'Premium';