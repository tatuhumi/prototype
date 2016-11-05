DROP DATABASE IF EXISTS cafe;
CREATE DATABASE cafe;

use cafe;

create table user (
user_id int auto_increment key  comment 'ユーザーID',
name varchar(255) not null default 0 comment '名前',
password varchar(255) not null comment 'パスワード',
user_flg int default 0
);

insert into user(user_id,name,password,user_flg)values
(1,"itou","123",1),(2,"tatuhumi","123",1);


create table contact_us (
contact_id int auto_increment key  comment 'ユーザーID',
contact_name varchar(255) not null comment '名前',
contact_email varchar(255) not null comment 'メール',
contact_content varchar(255) not null comment '内容',
contact_value varchar(255) not null comment '件名',
contact_date datetime comment 'お問い合わせ日時',
contact_primarity int default 0
);

insert into contact_us(contact_id,contact_name,contact_email,contact_content,contact_value,contact_date,contact_primarity)values
(1,"a","a","a","a","2016-07-01 13:00:00",0),(2,"b","b","b","b","2016-07-01 13:00:00",0),(3,"c","c","c","c","2016-07-01 13:00:00",0),(4,"d","d","d","d","2016-07-01 13:00:00",0),(5,"e","e","e","e","2016-07-01 13:00:00",0),(6,"f","f","f","f","2016-07-01 13:00:00",0),(7,"g","g","g","g","2016-07-01 13:00:00",0);



create table upload_file (
upload_file_id int auto_increment key  comment 'アップロードファイルID',
file_name varchar(255) not null comment '画像',
file_day datetime comment 'ファイルアップロード日時',
file_comment varchar(255) not null comment 'コメント'
);

insert into upload_file(upload_file_id,file_name,file_day,file_comment)values
(1,"image/1.jpg","2016-07-01 13:00:00","a"),(2,"image/2.jpg","2016-07-01 13:00:00","a"),(3,"image/3.jpg","2016-07-01 13:00:00","a"),(4,"image/4.jpg","2016-07-01 13:00:00","a"),(5,"image/5.jpg","2016-07-01 13:00:00","a"),(6,"image/confirm.gif","2016-07-01 13:00:00","a");

create table article (
article_name varchar(255) not null comment '名前',
article_image varchar(255) not null comment '画像',
article_text varchar(255) not null comment 'テキスト'
);

