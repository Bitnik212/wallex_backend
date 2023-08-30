PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2023-08-29 19:54:10.666600');
INSERT INTO django_migrations VALUES(2,'contenttypes','0002_remove_content_type_name','2023-08-29 19:54:10.677380');
INSERT INTO django_migrations VALUES(3,'auth','0001_initial','2023-08-29 19:54:10.695917');
INSERT INTO django_migrations VALUES(4,'auth','0002_alter_permission_name_max_length','2023-08-29 19:54:10.707448');
INSERT INTO django_migrations VALUES(5,'auth','0003_alter_user_email_max_length','2023-08-29 19:54:10.715607');
INSERT INTO django_migrations VALUES(6,'auth','0004_alter_user_username_opts','2023-08-29 19:54:10.723130');
INSERT INTO django_migrations VALUES(7,'auth','0005_alter_user_last_login_null','2023-08-29 19:54:10.731433');
INSERT INTO django_migrations VALUES(8,'auth','0006_require_contenttypes_0002','2023-08-29 19:54:10.736153');
INSERT INTO django_migrations VALUES(9,'auth','0007_alter_validators_add_error_messages','2023-08-29 19:54:10.743978');
INSERT INTO django_migrations VALUES(10,'auth','0008_alter_user_username_max_length','2023-08-29 19:54:10.752053');
INSERT INTO django_migrations VALUES(11,'auth','0009_alter_user_last_name_max_length','2023-08-29 19:54:10.762297');
INSERT INTO django_migrations VALUES(12,'auth','0010_alter_group_name_max_length','2023-08-29 19:54:10.771893');
INSERT INTO django_migrations VALUES(13,'auth','0011_update_proxy_permissions','2023-08-29 19:54:10.779295');
INSERT INTO django_migrations VALUES(14,'auth','0012_alter_user_first_name_max_length','2023-08-29 19:54:10.791888');
INSERT INTO django_migrations VALUES(15,'bank','0001_initial','2023-08-29 19:54:10.823187');
INSERT INTO django_migrations VALUES(16,'admin','0001_initial','2023-08-29 19:54:10.840316');
INSERT INTO django_migrations VALUES(17,'admin','0002_logentry_remove_auto_add','2023-08-29 19:54:10.852808');
INSERT INTO django_migrations VALUES(18,'admin','0003_logentry_add_action_flag_choices','2023-08-29 19:54:10.863142');
INSERT INTO django_migrations VALUES(19,'bank','0002_alter_bankaccountcardmodel_expired_at','2023-08-29 19:54:10.879844');
INSERT INTO django_migrations VALUES(20,'bank','0003_alter_bankaccountcardmodel_expired_at_and_more','2023-08-29 19:54:10.903560');
INSERT INTO django_migrations VALUES(21,'bank','0004_alter_bankaccountcardmodel_expired_at_and_more','2023-08-29 19:54:10.927549');
INSERT INTO django_migrations VALUES(22,'sessions','0001_initial','2023-08-29 19:54:10.941051');
INSERT INTO django_migrations VALUES(23,'bank','0005_alter_bankaccounttopupmodel_options_and_more','2023-08-29 19:54:16.675192');
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'bank','usermodel');
INSERT INTO django_content_type VALUES(2,'bank','currencymodel');
INSERT INTO django_content_type VALUES(3,'bank','paymentprocessingmodel');
INSERT INTO django_content_type VALUES(4,'bank','currencyexchangemodel');
INSERT INTO django_content_type VALUES(5,'bank','bankaccountmodel');
INSERT INTO django_content_type VALUES(6,'bank','bankaccountcardmodel');
INSERT INTO django_content_type VALUES(7,'bank','currencyexchangehistorymodel');
INSERT INTO django_content_type VALUES(8,'bank','bankaccounttopupmodel');
INSERT INTO django_content_type VALUES(9,'admin','logentry');
INSERT INTO django_content_type VALUES(10,'auth','permission');
INSERT INTO django_content_type VALUES(11,'auth','group');
INSERT INTO django_content_type VALUES(12,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(13,'sessions','session');
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_usermodel','Can add user');
INSERT INTO auth_permission VALUES(2,1,'change_usermodel','Can change user');
INSERT INTO auth_permission VALUES(3,1,'delete_usermodel','Can delete user');
INSERT INTO auth_permission VALUES(4,1,'view_usermodel','Can view user');
INSERT INTO auth_permission VALUES(5,2,'add_currencymodel','Can add currency model');
INSERT INTO auth_permission VALUES(6,2,'change_currencymodel','Can change currency model');
INSERT INTO auth_permission VALUES(7,2,'delete_currencymodel','Can delete currency model');
INSERT INTO auth_permission VALUES(8,2,'view_currencymodel','Can view currency model');
INSERT INTO auth_permission VALUES(9,3,'add_paymentprocessingmodel','Can add Платежная система');
INSERT INTO auth_permission VALUES(10,3,'change_paymentprocessingmodel','Can change Платежная система');
INSERT INTO auth_permission VALUES(11,3,'delete_paymentprocessingmodel','Can delete Платежная система');
INSERT INTO auth_permission VALUES(12,3,'view_paymentprocessingmodel','Can view Платежная система');
INSERT INTO auth_permission VALUES(13,4,'add_currencyexchangemodel','Can add Обмен валюты');
INSERT INTO auth_permission VALUES(14,4,'change_currencyexchangemodel','Can change Обмен валюты');
INSERT INTO auth_permission VALUES(15,4,'delete_currencyexchangemodel','Can delete Обмен валюты');
INSERT INTO auth_permission VALUES(16,4,'view_currencyexchangemodel','Can view Обмен валюты');
INSERT INTO auth_permission VALUES(17,5,'add_bankaccountmodel','Can add Счет пользователя');
INSERT INTO auth_permission VALUES(18,5,'change_bankaccountmodel','Can change Счет пользователя');
INSERT INTO auth_permission VALUES(19,5,'delete_bankaccountmodel','Can delete Счет пользователя');
INSERT INTO auth_permission VALUES(20,5,'view_bankaccountmodel','Can view Счет пользователя');
INSERT INTO auth_permission VALUES(21,6,'add_bankaccountcardmodel','Can add Карта счета пользователя');
INSERT INTO auth_permission VALUES(22,6,'change_bankaccountcardmodel','Can change Карта счета пользователя');
INSERT INTO auth_permission VALUES(23,6,'delete_bankaccountcardmodel','Can delete Карта счета пользователя');
INSERT INTO auth_permission VALUES(24,6,'view_bankaccountcardmodel','Can view Карта счета пользователя');
INSERT INTO auth_permission VALUES(25,7,'add_currencyexchangehistorymodel','Can add История обмена валюты');
INSERT INTO auth_permission VALUES(26,7,'change_currencyexchangehistorymodel','Can change История обмена валюты');
INSERT INTO auth_permission VALUES(27,7,'delete_currencyexchangehistorymodel','Can delete История обмена валюты');
INSERT INTO auth_permission VALUES(28,7,'view_currencyexchangehistorymodel','Can view История обмена валюты');
INSERT INTO auth_permission VALUES(29,8,'add_bankaccounttopupmodel','Can add Пополнение счета');
INSERT INTO auth_permission VALUES(30,8,'change_bankaccounttopupmodel','Can change Пополнение счета');
INSERT INTO auth_permission VALUES(31,8,'delete_bankaccounttopupmodel','Can delete Пополнение счета');
INSERT INTO auth_permission VALUES(32,8,'view_bankaccounttopupmodel','Can view Пополнение счета');
INSERT INTO auth_permission VALUES(33,9,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(34,9,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(35,9,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(36,9,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(37,10,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(38,10,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(39,10,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(40,10,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(41,11,'add_group','Can add group');
INSERT INTO auth_permission VALUES(42,11,'change_group','Can change group');
INSERT INTO auth_permission VALUES(43,11,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(44,11,'view_group','Can view group');
INSERT INTO auth_permission VALUES(45,12,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(46,12,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(47,12,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(48,12,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(49,13,'add_session','Can add session');
INSERT INTO auth_permission VALUES(50,13,'change_session','Can change session');
INSERT INTO auth_permission VALUES(51,13,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(52,13,'view_session','Can view session');
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS "bank_usermodel" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "first_name" varchar(150) NOT NULL, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL);
INSERT INTO bank_usermodel VALUES(1,'pbkdf2_sha256$600000$nI6E60PdQXCaIDBMMlugHA$PXHEVxwYYpsMQ5EOp3qYyVtoOv1m5Db+HBHzA7WXSUA=','2023-08-29 19:55:08.813587',1,'bit','','','bit@bitt.moe',1,1,'2023-08-29 19:54:40.694135');
INSERT INTO bank_usermodel VALUES(2,'pbkdf2_sha256$600000$nI6E60PdQXCaIDBMMlugHA$PXHEVxwYYpsMQ5EOp3qYyVtoOv1m5Db+HBHzA7WXSUA=',NULL,0,'nnv','Николай','Никоноров','nnv@bitt.moe',0,1,'2023-08-29 19:57:31');
INSERT INTO bank_usermodel VALUES(3,'pbkdf2_sha256$600000$sJ2vchQa3SpNAqjnkNIs0r$XLDpDOf2dTgkG0nnpHp2dWScdhhkxcOE+Kf4tZoW5pQ=',NULL,0,'user','string','string','user@example.com',0,1,'2023-08-29 20:12:10.573742');
CREATE TABLE IF NOT EXISTS "bank_usermodel_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "usermodel_id" bigint NOT NULL REFERENCES "bank_usermodel" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "bank_usermodel_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "usermodel_id" bigint NOT NULL REFERENCES "bank_usermodel" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "bank_currencymodel" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" text NOT NULL UNIQUE, "symbol" varchar(1) NOT NULL UNIQUE);
INSERT INTO bank_currencymodel VALUES(1,'Российский Рубль','₽');
INSERT INTO bank_currencymodel VALUES(2,'Индийская рупия','₹');
INSERT INTO bank_currencymodel VALUES(3,'Израильский Шекель','₪');
CREATE TABLE IF NOT EXISTS "bank_paymentprocessingmodel" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" text NOT NULL UNIQUE, "code" text NOT NULL UNIQUE);
INSERT INTO bank_paymentprocessingmodel VALUES(1,'МИР','MIR');
CREATE TABLE IF NOT EXISTS "bank_currencyexchangemodel" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "difference" real NOT NULL, "exchange_type" varchar(3) NOT NULL, "from_currency_id" bigint NULL REFERENCES "bank_currencymodel" ("id") DEFERRABLE INITIALLY DEFERRED, "to_currency_id" bigint NULL REFERENCES "bank_currencymodel" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO bank_currencyexchangemodel VALUES(1,0.8706000000000000405,'BUY',1,2);
INSERT INTO bank_currencyexchangemodel VALUES(2,0.040000000000000000832,'BUY',1,3);
CREATE TABLE IF NOT EXISTS "bank_bankaccountmodel" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" text NULL, "amount" real NOT NULL, "currency_id" bigint NULL REFERENCES "bank_currencymodel" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" bigint NULL REFERENCES "bank_usermodel" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO bank_bankaccountmodel VALUES(1,'Рублевый',1895.5280000000007021,1,2);
INSERT INTO bank_bankaccountmodel VALUES(2,'Русский',0.0,1,1);
INSERT INTO bank_bankaccountmodel VALUES(3,'',90.942000000000007275,2,2);
INSERT INTO bank_bankaccountmodel VALUES(4,'',0.0,3,1);
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" bigint NOT NULL REFERENCES "bank_usermodel" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO django_admin_log VALUES(1,'1','₽ Рубль',1,'[{"added": {}}]',2,1,'2023-08-29 19:55:38.961758');
INSERT INTO django_admin_log VALUES(2,'2','₹ Индийская рупия',1,'[{"added": {}}]',2,1,'2023-08-29 19:56:28.060868');
INSERT INTO django_admin_log VALUES(3,'1','₽ Российский Рубль',2,'[{"changed": {"fields": ["\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u0432\u0430\u043b\u044e\u0442\u044b"]}}]',2,1,'2023-08-29 19:56:39.654374');
INSERT INTO django_admin_log VALUES(4,'3','₪ Израильский Шекель',1,'[{"added": {}}]',2,1,'2023-08-29 19:57:20.094410');
INSERT INTO django_admin_log VALUES(5,'2','nnv',1,'[{"added": {}}]',1,1,'2023-08-29 19:57:58.159386');
INSERT INTO django_admin_log VALUES(6,'1','Счет №1. ₽ Российский Рубль',1,'[{"added": {}}]',5,1,'2023-08-29 19:59:08.718572');
INSERT INTO django_admin_log VALUES(7,'2','Счет №2. ₽ Российский Рубль',1,'[{"added": {}}]',5,1,'2023-08-29 19:59:21.313450');
INSERT INTO django_admin_log VALUES(8,'3','Счет №3. ₹ Индийская рупия',1,'[{"added": {}}]',5,1,'2023-08-29 19:59:28.478585');
INSERT INTO django_admin_log VALUES(9,'4','Счет №4. ₪ Израильский Шекель',1,'[{"added": {}}]',5,1,'2023-08-29 19:59:35.922903');
INSERT INTO django_admin_log VALUES(10,'1','МИР',1,'[{"added": {}}]',3,1,'2023-08-29 19:59:57.692088');
INSERT INTO django_admin_log VALUES(11,'1','BUY 0.8706. ₽ Российский Рубль -> ₹ Индийская рупия',1,'[{"added": {}}]',4,1,'2023-08-29 20:01:17.810927');
INSERT INTO django_admin_log VALUES(12,'2','BUY 0.04. ₽ Российский Рубль -> ₪ Израильский Шекель',1,'[{"added": {}}]',4,1,'2023-08-29 20:01:44.417300');
INSERT INTO django_admin_log VALUES(13,'1','Карта № 5302717569699780',1,'[{"added": {}}]',6,1,'2023-08-29 20:01:59.157495');
INSERT INTO django_admin_log VALUES(14,'2','Карта № 5302623424891588',1,'[{"added": {}}]',6,1,'2023-08-29 20:02:08.014903');
INSERT INTO django_admin_log VALUES(15,'3','Карта № 5302460293936218',1,'[{"added": {}}]',6,1,'2023-08-29 20:02:14.246794');
CREATE TABLE IF NOT EXISTS "bank_currencyexchangehistorymodel" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "amount" real NOT NULL, "currency_exchange_id" bigint NULL REFERENCES "bank_currencyexchangemodel" ("id") DEFERRABLE INITIALLY DEFERRED, "from_account_id" bigint NULL REFERENCES "bank_bankaccountmodel" ("id") DEFERRABLE INITIALLY DEFERRED, "to_account_id" bigint NULL REFERENCES "bank_bankaccountmodel" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO bank_currencyexchangehistorymodel VALUES(1,8.7059999999999995168,1,1,3);
INSERT INTO bank_currencyexchangehistorymodel VALUES(2,8.7059999999999995168,1,1,3);
INSERT INTO bank_currencyexchangehistorymodel VALUES(3,8.7059999999999995168,1,1,3);
INSERT INTO bank_currencyexchangehistorymodel VALUES(4,8.7059999999999995168,1,1,3);
INSERT INTO bank_currencyexchangehistorymodel VALUES(5,8.7059999999999995168,1,1,3);
INSERT INTO bank_currencyexchangehistorymodel VALUES(6,8.7059999999999995168,1,1,3);
INSERT INTO bank_currencyexchangehistorymodel VALUES(7,8.7059999999999995168,1,1,3);
INSERT INTO bank_currencyexchangehistorymodel VALUES(8,8.7059999999999995168,1,1,3);
INSERT INTO bank_currencyexchangehistorymodel VALUES(9,8.7059999999999995168,1,1,3);
INSERT INTO bank_currencyexchangehistorymodel VALUES(10,8.7059999999999995168,1,1,3);
INSERT INTO bank_currencyexchangehistorymodel VALUES(11,8.7059999999999995168,1,1,3);
INSERT INTO bank_currencyexchangehistorymodel VALUES(12,8.7059999999999995168,1,1,3);
CREATE TABLE IF NOT EXISTS "bank_bankaccounttopupmodel" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "amount" real NOT NULL, "account_id" bigint NULL REFERENCES "bank_bankaccountmodel" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO bank_bankaccounttopupmodel VALUES(1,1000.0,1);
INSERT INTO bank_bankaccounttopupmodel VALUES(2,1000.0,1);
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session VALUES('a8tw249cmuxh8vbq0pn2jjs1geg9uk5w','.eJxVjE0OwiAYBe_C2hAoBcGl-56B8P0gVQNJaVfGu2uTLnT7Zua9REzbWuLWeYkziYvQ4vS7QcIH1x3QPdVbk9jquswgd0UetMupET-vh_t3UFIv31qZFNyZSYFFQ9l5yAYNDMja5wzgg8-jsSMDkreOdUIHCoitH4KGIN4fC3g4_A:1qb4ns:UZB-gB2D-0zC1qK34PmCk1QZULHg_9R733ceExFgpfo','2023-09-12 19:55:08.818765');
CREATE TABLE IF NOT EXISTS "bank_bankaccountcardmodel" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "number" bigint NOT NULL, "secure_code" integer NOT NULL, "account_id" bigint NULL REFERENCES "bank_bankaccountmodel" ("id") DEFERRABLE INITIALLY DEFERRED, "payment_processor_id" bigint NULL REFERENCES "bank_paymentprocessingmodel" ("id") DEFERRABLE INITIALLY DEFERRED, "expired_at" date NOT NULL);
INSERT INTO bank_bankaccountcardmodel VALUES(1,5302717569699780,283,1,1,'2027-08-29');
INSERT INTO bank_bankaccountcardmodel VALUES(2,5302623424891588,697,3,1,'2027-08-29');
INSERT INTO bank_bankaccountcardmodel VALUES(3,5302460293936218,364,4,1,'2027-08-29');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',23);
INSERT INTO sqlite_sequence VALUES('django_content_type',13);
INSERT INTO sqlite_sequence VALUES('auth_permission',52);
INSERT INTO sqlite_sequence VALUES('auth_group',0);
INSERT INTO sqlite_sequence VALUES('django_admin_log',15);
INSERT INTO sqlite_sequence VALUES('bank_bankaccountcardmodel',3);
INSERT INTO sqlite_sequence VALUES('bank_usermodel',3);
INSERT INTO sqlite_sequence VALUES('bank_currencymodel',3);
INSERT INTO sqlite_sequence VALUES('bank_bankaccountmodel',4);
INSERT INTO sqlite_sequence VALUES('bank_paymentprocessingmodel',1);
INSERT INTO sqlite_sequence VALUES('bank_currencyexchangemodel',2);
INSERT INTO sqlite_sequence VALUES('bank_bankaccounttopupmodel',2);
INSERT INTO sqlite_sequence VALUES('bank_currencyexchangehistorymodel',12);
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE UNIQUE INDEX "bank_usermodel_groups_usermodel_id_group_id_7b56f3c8_uniq" ON "bank_usermodel_groups" ("usermodel_id", "group_id");
CREATE INDEX "bank_usermodel_groups_usermodel_id_48283793" ON "bank_usermodel_groups" ("usermodel_id");
CREATE INDEX "bank_usermodel_groups_group_id_c63b644c" ON "bank_usermodel_groups" ("group_id");
CREATE UNIQUE INDEX "bank_usermodel_user_permissions_usermodel_id_permission_id_6c9f805a_uniq" ON "bank_usermodel_user_permissions" ("usermodel_id", "permission_id");
CREATE INDEX "bank_usermodel_user_permissions_usermodel_id_cd2f2c82" ON "bank_usermodel_user_permissions" ("usermodel_id");
CREATE INDEX "bank_usermodel_user_permissions_permission_id_d6a5818e" ON "bank_usermodel_user_permissions" ("permission_id");
CREATE INDEX "bank_currencyexchangemodel_from_currency_id_162bf004" ON "bank_currencyexchangemodel" ("from_currency_id");
CREATE INDEX "bank_currencyexchangemodel_to_currency_id_ccf166e6" ON "bank_currencyexchangemodel" ("to_currency_id");
CREATE INDEX "bank_bankaccountmodel_currency_id_bc5547a2" ON "bank_bankaccountmodel" ("currency_id");
CREATE INDEX "bank_bankaccountmodel_user_id_6d72069c" ON "bank_bankaccountmodel" ("user_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE INDEX "bank_currencyexchangehistorymodel_currency_exchange_id_83c5308f" ON "bank_currencyexchangehistorymodel" ("currency_exchange_id");
CREATE INDEX "bank_currencyexchangehistorymodel_from_account_id_09c52f87" ON "bank_currencyexchangehistorymodel" ("from_account_id");
CREATE INDEX "bank_currencyexchangehistorymodel_to_account_id_63850949" ON "bank_currencyexchangehistorymodel" ("to_account_id");
CREATE INDEX "bank_bankaccounttopupmodel_account_id_fbbff9b7" ON "bank_bankaccounttopupmodel" ("account_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
CREATE INDEX "bank_bankaccountcardmodel_account_id_40dc2bc1" ON "bank_bankaccountcardmodel" ("account_id");
CREATE INDEX "bank_bankaccountcardmodel_payment_processor_id_ce17a21a" ON "bank_bankaccountcardmodel" ("payment_processor_id");
COMMIT;