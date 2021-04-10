--Создание таблицы user
create table user(
    id serial primary key,
    user_nickname varchar(35),
    user_email varchar(55),
    user_pass varchar(45), --Varchar для хешированного пароля https://blog.codinghorror.com/youre-probably-storing-passwords-incorrectly/
    user_role varchar(25),
    user_photo varchar(255),
    user_rating integer,
    intra_token varchar(255), --Не ясно в чем хранить
    google_token integer --Не ясно в чем хранить
);

--Создание таблицы session 
create table session_table(
    id serial primary key,
    user_session_id integer,
    user_key varchar(255),
    user_time_accepting TIMESTAMP --Не факт, что правильно указан формат времени
    foreign key (user_session_id) references user(id)
);

--Создание таблицы guild
create table guild(
    id serial primary key,
    guild_name varchar(35),
    guild_anagram varchar(5),
    guild_rating integer,
    guild_avatar varchar(255),
    guild_description text
);

--Создание таблицы guild_members
create table guild_members(
    guild_id integer, --Возможно стоит добавить id primary key и делать его reference на user(id)
    guild_member_id integer,
    guild_member_role varchar(25),
    foreign key (guild_id) references user(id),
    foreign key (guild_id) references guild(id)
);

--Создание таблицы games
create table games(
    id serial primary key,
    user_id_creator integer,
    user_id_player integer,
    points_creator integer,
    points_player integer,
    delta_rating_creator integer,
    delta_rating_player integer
);