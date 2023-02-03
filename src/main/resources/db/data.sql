insert into user_tb(username, password, email) values('ssar', '1234', 'ssar@nate.com');

insert into board_tb(title, content ,user_id, created_at ) values('제목1 제목1 제목1', '<p>내용1 내용1 내용1</p>', 1, now() );
insert into board_tb(title, content ,user_id, created_at ) values('제목2 제목2 제목2', '<p>내용2 내용2 내용2</p>', 1, now() );
insert into board_tb(title, content ,user_id, created_at ) values('제목3 제목3 제목3', '<p>내용3 내용3 내용3</p>', 2, now() );
insert into board_tb(title, content ,user_id, created_at ) values('제목4 제목4 제목4', '<p>내용4 내용4 내용4</p>', 2, now() );

commit; 