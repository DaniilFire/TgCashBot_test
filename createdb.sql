create table budget(
    codename varchar(255) primary key,
    daily_limit integer
);

create table category(
    codename varchar(255) primary key,
    name varchar(255),
    is_base_expense boolean,
    aliases text
);

create table expense(
    id integer primary key,
    amount integer,
    created date,
    category_codename integer,
    raw_text text,
    FOREIGN KEY(category_codename) REFERENCES category(codename)
);

insert into category (codename, name, is_base_expense, aliases)
values
    ("products", "продукты", true, "еда"),
    ("coffee", "кофе", true, ""),
    ("dinner", "обед", true, "столовая, ланч, бизнес-ланч, бизнес ланч"),
    ("cafe", "кафе", true, "ресторан, рест, мак, макдональдс, макдак, kfc, кфс, теремок, пиццерия, токио, пекарня"),
    ("transport", "общ. транспорт", false, "метро, маршрутка, автобус"),
    ("taxi", "такси", false, "убер, ситимобил"),
    ("phone", "телефон", false, "йота, сотовая связь"),
    ("books", "книги", false, "аудиокнига, книга"),
    ("internet", "интернет", false, "инет, inet"),
    ("subscriptions", "подписки", false, "подписка"),
    ("other", "прочее", true, ""),
    ("flat", "квартира", true, "хата"),
    ("trip", "приключение", false, "поездка, поезд, самолет, яхта, паром"),
    ("courses", "курсы", false, "курс, skillbox, скиллбокс");

insert into budget(codename, daily_limit) values ('base', 1500);
