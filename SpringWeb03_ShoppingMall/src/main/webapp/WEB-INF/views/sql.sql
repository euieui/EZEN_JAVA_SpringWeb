select * from new_pro_view;
select * from best_pro_view;
select * from member2;
select * from orders;

select distinct oseq, result from order_view where id='scott' order by result, oseq desc

select distinct oseq from (select oseq, result from order_view where id='scott' order by result, oseq desc) order by oseq desc

select oseq, id from order_view order by result;
select * from qna2;


create table qna2(
	qseq number(5) primary key,
	subject varchar2(300), 
	content varchar2(1000), 
	reply varchar2(1000), 
	id varchar2(20),
	rep char(1) default '1', 
	indate date default sysdate 
);

insert into qna2(qseq,subject,content,id)
values(qna_seq.nextval,'배송이 많이 지연되고 있습니다','언제 받을 수 있을까요?','scott');
insert into qna2(qseq,subject,content,id)
values(qna_seq.nextval,'불량품 교환 문의','교환 또는 환불 등의 안내가 필요합니다. 유선안내부탁드려요','scott');


select * from order_view