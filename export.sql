PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2023-08-15 22:46:09.576234');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2023-08-15 22:46:09.609183');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2023-08-15 22:46:09.633626');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2023-08-15 22:46:09.655353');
INSERT INTO django_migrations VALUES(5,'admin','0003_logentry_add_action_flag_choices','2023-08-15 22:46:09.671674');
INSERT INTO django_migrations VALUES(6,'contenttypes','0002_remove_content_type_name','2023-08-15 22:46:09.707843');
INSERT INTO django_migrations VALUES(7,'auth','0002_alter_permission_name_max_length','2023-08-15 22:46:09.735363');
INSERT INTO django_migrations VALUES(8,'auth','0003_alter_user_email_max_length','2023-08-15 22:46:09.771760');
INSERT INTO django_migrations VALUES(9,'auth','0004_alter_user_username_opts','2023-08-15 22:46:09.790876');
INSERT INTO django_migrations VALUES(10,'auth','0005_alter_user_last_login_null','2023-08-15 22:46:09.813929');
INSERT INTO django_migrations VALUES(11,'auth','0006_require_contenttypes_0002','2023-08-15 22:46:09.819346');
INSERT INTO django_migrations VALUES(12,'auth','0007_alter_validators_add_error_messages','2023-08-15 22:46:09.834609');
INSERT INTO django_migrations VALUES(13,'auth','0008_alter_user_username_max_length','2023-08-15 22:46:09.863615');
INSERT INTO django_migrations VALUES(14,'auth','0009_alter_user_last_name_max_length','2023-08-15 22:46:09.887667');
INSERT INTO django_migrations VALUES(15,'auth','0010_alter_group_name_max_length','2023-08-15 22:46:09.907634');
INSERT INTO django_migrations VALUES(16,'auth','0011_update_proxy_permissions','2023-08-15 22:46:09.924131');
INSERT INTO django_migrations VALUES(17,'auth','0012_alter_user_first_name_max_length','2023-08-15 22:46:09.947520');
INSERT INTO django_migrations VALUES(18,'sessions','0001_initial','2023-08-15 22:46:09.961587');
INSERT INTO django_migrations VALUES(19,'events','0001_initial','2023-08-17 15:16:25.976880');
INSERT INTO django_migrations VALUES(20,'events','0002_blogpost_description_alter_blogpost_locale_and_more','2023-08-17 16:41:27.435575');
INSERT INTO django_migrations VALUES(21,'events','0003_blogpost_speaker_alter_blogpost_category_and_more','2023-08-28 14:09:25.510030');
INSERT INTO django_migrations VALUES(22,'events','0004_alter_blogpost_category','2023-08-28 14:15:39.487764');
INSERT INTO django_migrations VALUES(23,'events','0005_event_speaker_delete_blogpost_event_speaker_id','2023-08-28 16:56:28.920069');
INSERT INTO django_migrations VALUES(24,'events','0006_alter_event_title','2023-08-28 17:18:50.991278');
INSERT INTO django_migrations VALUES(25,'events','0007_event_file_alter_event_description','2023-09-05 02:02:17.539955');
INSERT INTO django_migrations VALUES(26,'events','0008_alter_speaker_description_alter_speaker_photo','2023-09-05 14:10:48.876873');
INSERT INTO django_migrations VALUES(27,'events','0009_alter_event_file','2023-09-05 14:17:30.176624');
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO django_admin_log VALUES(1,'1','PO - 2023-08-21 - test',1,'[{"added": {}}]',7,1,'2023-08-21 19:07:01.617997');
INSERT INTO django_admin_log VALUES(2,'1','DS - 2023-08-30 - Onde mora a incerteza fuzzy?',2,'[{"changed": {"fields": ["Category", "Date", "Locale", "Title", "Speaker", "Description"]}}]',7,1,'2023-08-28 14:23:24.039008');
INSERT INTO django_admin_log VALUES(3,'2','PO - 2023-09-06 - Em Breve',1,'[{"added": {}}]',7,1,'2023-08-28 14:26:35.474028');
INSERT INTO django_admin_log VALUES(4,'2','PO - 2023-09-20 - Em Breve',2,'[{"changed": {"fields": ["Date"]}}]',7,1,'2023-08-28 14:26:48.610878');
INSERT INTO django_admin_log VALUES(5,'2','PO - 2023-10-04 - Em Breve',2,'[{"changed": {"fields": ["Date"]}}]',7,1,'2023-08-28 14:27:03.975139');
INSERT INTO django_admin_log VALUES(6,'2','PO - 2023-10-18 - Em Breve',2,'[{"changed": {"fields": ["Date"]}}]',7,1,'2023-08-28 14:27:14.050004');
INSERT INTO django_admin_log VALUES(7,'2','PO - 2023-11-01 - Em Breve',2,'[{"changed": {"fields": ["Date"]}}]',7,1,'2023-08-28 14:27:22.062464');
INSERT INTO django_admin_log VALUES(8,'2','PO - 2023-11-22 - Em Breve',2,'[{"changed": {"fields": ["Date"]}}]',7,1,'2023-08-28 14:27:30.714311');
INSERT INTO django_admin_log VALUES(9,'2','PO - 2023-11-29 - Em Breve',2,'[{"changed": {"fields": ["Date", "Description"]}}]',7,1,'2023-08-28 14:27:48.431151');
INSERT INTO django_admin_log VALUES(10,'2','PO - 2023-09-06 - Em Breve',2,'[{"changed": {"fields": ["Date"]}}]',7,1,'2023-08-28 14:28:42.531917');
INSERT INTO django_admin_log VALUES(11,'3','PO - 2023-09-20 - Em Breve',1,'[{"added": {}}]',7,1,'2023-08-28 14:29:18.206004');
INSERT INTO django_admin_log VALUES(12,'4','PO - 2023-10-04 - Em Breve',1,'[{"added": {}}]',7,1,'2023-08-28 14:29:56.055883');
INSERT INTO django_admin_log VALUES(13,'5','IA - 2023-10-18 - Em Breve',1,'[{"added": {}}]',7,1,'2023-08-28 14:30:29.255101');
INSERT INTO django_admin_log VALUES(14,'6','MCDA - 2023-11-01 - Em Breve',1,'[{"added": {}}]',7,1,'2023-08-28 14:30:54.236993');
INSERT INTO django_admin_log VALUES(15,'7','MCDA - 2023-11-22 - Em Breve',1,'[{"added": {}}]',7,1,'2023-08-28 14:31:19.034551');
INSERT INTO django_admin_log VALUES(16,'8','DS - 2023-11-29 - Em Breve',1,'[{"added": {}}]',7,1,'2023-08-28 14:31:46.100127');
INSERT INTO django_admin_log VALUES(17,'1','Nilmara Biscaia',1,'[{"added": {}}]',9,1,'2023-08-28 17:02:05.614959');
INSERT INTO django_admin_log VALUES(18,'1','DS - 2023-08-30 - Onde mora a incerteza fussy?',1,'[{"added": {}}]',8,1,'2023-08-28 17:19:44.343138');
INSERT INTO django_admin_log VALUES(19,'2','PO - 2023-09-20 - Em Breve',1,'[{"added": {}}]',8,1,'2023-08-28 18:49:21.835353');
INSERT INTO django_admin_log VALUES(20,'3','IA - 2023-10-04 - Em Breve',1,'[{"added": {}}]',8,1,'2023-08-28 18:50:02.595438');
INSERT INTO django_admin_log VALUES(21,'2','Em Breve',1,'[{"added": {}}]',9,1,'2023-08-28 18:52:00.723405');
INSERT INTO django_admin_log VALUES(22,'2','PO - 2023-09-20 - Em Breve',2,'[{"changed": {"fields": ["Speaker id"]}}]',8,1,'2023-08-28 18:52:15.858924');
INSERT INTO django_admin_log VALUES(23,'3','IA - 2023-10-04 - Em Breve',2,'[{"changed": {"fields": ["Speaker id"]}}]',8,1,'2023-08-28 18:52:25.856127');
INSERT INTO django_admin_log VALUES(24,'4','MODE - 2023-10-18 - Em Breve',1,'[{"added": {}}]',8,1,'2023-08-28 18:52:59.664933');
INSERT INTO django_admin_log VALUES(25,'4','MODE - 2023-10-18 - Em Breve',2,'[]',8,1,'2023-08-28 18:53:04.272242');
INSERT INTO django_admin_log VALUES(26,'5','MCDA - 2023-11-01 - Em Breve',1,'[{"added": {}}]',8,1,'2023-08-28 18:53:36.453224');
INSERT INTO django_admin_log VALUES(27,'6','SIMU - 2023-11-22 - Em Breve',1,'[{"added": {}}]',8,1,'2023-08-28 18:54:04.885591');
INSERT INTO django_admin_log VALUES(28,'7','PO - 2023-11-29 - Em Breve',1,'[{"added": {}}]',8,1,'2023-08-28 18:54:38.823342');
INSERT INTO django_admin_log VALUES(29,'1','DS - 2023-08-30 - Onde mora a incerteza fussy?',2,'[{"changed": {"fields": ["Hour"]}}]',8,1,'2023-08-28 20:46:00.768920');
INSERT INTO django_admin_log VALUES(30,'3','Alejandra Quezada',1,'[{"added": {}}]',9,1,'2023-08-28 20:47:00.185406');
INSERT INTO django_admin_log VALUES(31,'8','DS - 2023-09-06 - Em Breve',1,'[{"added": {}}]',8,1,'2023-08-28 20:47:36.666030');
INSERT INTO django_admin_log VALUES(32,'1','DS - 2023-08-30 - Onde mora a incerteza fuzzy?',2,'[{"changed": {"fields": ["Title", "Description"]}}]',8,1,'2023-08-28 20:49:11.399537');
INSERT INTO django_admin_log VALUES(33,'1','MODE - 2023-08-30 - Onde mora a incerteza fuzzy?',2,'[{"changed": {"fields": ["Category"]}}]',8,1,'2023-08-28 20:49:40.545864');
INSERT INTO django_admin_log VALUES(34,'4','Yerlis Valdelamar Gonzalez',1,'[{"added": {}}]',9,1,'2023-09-05 14:11:40.369483');
INSERT INTO django_admin_log VALUES(35,'5','Gláucia Jardim Pissinelli',1,'[{"added": {}}]',9,1,'2023-09-05 14:13:55.125877');
INSERT INTO django_admin_log VALUES(36,'6','Yuri Alexandre Meyer',1,'[{"added": {}}]',9,1,'2023-09-05 14:15:42.440875');
INSERT INTO django_admin_log VALUES(37,'7','Carlos Quiroga',1,'[{"added": {}}]',9,1,'2023-09-05 14:16:10.696415');
INSERT INTO django_admin_log VALUES(38,'8','DS - 2023-09-06 - Bilinear and Linear-Quadratic Matrix Factorization Methods for Hyperspectral Unmixing',2,'[{"changed": {"fields": ["Title"]}}]',8,1,'2023-09-05 14:17:36.671882');
INSERT INTO django_admin_log VALUES(39,'2','PO - 2023-09-20 - Abordagem multiobjetivo para o problema de localização e alocação de mamógrafos',2,'[{"changed": {"fields": ["Title", "Speaker id", "Description"]}}]',8,1,'2023-09-05 14:18:37.003023');
INSERT INTO django_admin_log VALUES(40,'3','IA - 2023-10-04 - Uma Abordagem Geométrica para Separação Cega de Fontes em um Modelo de Mistura baseado na Integral d',2,'[{"changed": {"fields": ["Title", "Speaker id", "Description"]}}]',8,1,'2023-09-05 14:19:12.190520');
INSERT INTO django_admin_log VALUES(41,'3','IA - 2023-10-04 - Em Breve',2,'[{"changed": {"fields": ["Title", "Speaker id", "Description"]}}]',8,1,'2023-09-05 14:20:21.694235');
INSERT INTO django_admin_log VALUES(42,'4','MODE - 2023-10-18 - Uma Abordagem Geométrica para Separação Cega de Fontes em um Modelo de Mistura baseado na Integral d',2,'[{"changed": {"fields": ["Title", "Speaker id", "Description"]}}]',8,1,'2023-09-05 14:20:49.231035');
INSERT INTO django_admin_log VALUES(43,'5','MCDA - 2023-11-01 - Econofísica Aplicada',2,'[{"changed": {"fields": ["Title", "Speaker id", "Description"]}}]',8,1,'2023-09-05 14:21:15.085126');
INSERT INTO django_admin_log VALUES(44,'6','SIMU - 2023-11-22 - Em Breve',2,'[{"changed": {"fields": ["Speaker id"]}}]',8,1,'2023-09-05 14:21:38.679234');
INSERT INTO django_admin_log VALUES(45,'4','Yerlis Valdelamar Gonzalez',2,'[{"changed": {"fields": ["Photo"]}}]',9,1,'2023-09-20 14:46:21.026440');
INSERT INTO django_admin_log VALUES(46,'8','Vinicius e Saulo',1,'[{"added": {}}]',9,1,'2023-10-02 18:24:31.624355');
INSERT INTO django_admin_log VALUES(47,'3','IA - 2023-10-04 - Estudo Sobre:Retro Branching and Bound',2,'[{"changed": {"fields": ["Title", "Speaker id", "Description"]}}]',8,1,'2023-10-02 18:25:55.601296');
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'admin','logentry');
INSERT INTO django_content_type VALUES(2,'auth','permission');
INSERT INTO django_content_type VALUES(3,'auth','group');
INSERT INTO django_content_type VALUES(4,'auth','user');
INSERT INTO django_content_type VALUES(5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(6,'sessions','session');
INSERT INTO django_content_type VALUES(7,'events','blogpost');
INSERT INTO django_content_type VALUES(8,'events','event');
INSERT INTO django_content_type VALUES(9,'events','speaker');
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,1,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(5,2,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(6,2,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(7,2,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(8,2,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(9,3,'add_group','Can add group');
INSERT INTO auth_permission VALUES(10,3,'change_group','Can change group');
INSERT INTO auth_permission VALUES(11,3,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(12,3,'view_group','Can view group');
INSERT INTO auth_permission VALUES(13,4,'add_user','Can add user');
INSERT INTO auth_permission VALUES(14,4,'change_user','Can change user');
INSERT INTO auth_permission VALUES(15,4,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(16,4,'view_user','Can view user');
INSERT INTO auth_permission VALUES(17,5,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(18,5,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(19,5,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(20,5,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(21,6,'add_session','Can add session');
INSERT INTO auth_permission VALUES(22,6,'change_session','Can change session');
INSERT INTO auth_permission VALUES(23,6,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(24,6,'view_session','Can view session');
INSERT INTO auth_permission VALUES(25,7,'add_blogpost','Can add blog post');
INSERT INTO auth_permission VALUES(26,7,'change_blogpost','Can change blog post');
INSERT INTO auth_permission VALUES(27,7,'delete_blogpost','Can delete blog post');
INSERT INTO auth_permission VALUES(28,7,'view_blogpost','Can view blog post');
INSERT INTO auth_permission VALUES(29,8,'add_event','Can add event');
INSERT INTO auth_permission VALUES(30,8,'change_event','Can change event');
INSERT INTO auth_permission VALUES(31,8,'delete_event','Can delete event');
INSERT INTO auth_permission VALUES(32,8,'view_event','Can view event');
INSERT INTO auth_permission VALUES(33,9,'add_speaker','Can add speaker');
INSERT INTO auth_permission VALUES(34,9,'change_speaker','Can change speaker');
INSERT INTO auth_permission VALUES(35,9,'delete_speaker','Can delete speaker');
INSERT INTO auth_permission VALUES(36,9,'view_speaker','Can view speaker');
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$600000$FWJvMMfCM1KUCte4yAn4Fu$UyAa4T0M9kZUyMb6XnsparzaZxn7K3Q2bQE6w6x7Jfg=','2023-10-02 18:19:32.224347',1,'LAD2','','vinicostagandolfi@gmail.com',1,1,'2023-08-17 15:18:59.112854','');
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session VALUES('hp8jwe74x6wsigijhwh1y7ngama62j9w','.eJxVjEEOwiAQRe_C2hAGBltcuu8ZCDOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8HMVFgDj9bhT4keoO4j3UW5Pc6rrMJHdFHrTLqcX0vB7u30EJvXzrYBiQYBjROm0dQhxAY7aYMoOmBMokY5RCcJYUI4NDYp2dGs-gyIn3B7SlNpc:1qWemT:iCzWMXF9zXcJkWYSqQ8ls3xYpHFIkdtDnF2gzLrlaec','2023-08-31 15:19:25.302707');
INSERT INTO django_session VALUES('0g0ews2eeky6bxd4htz7hv11fvufez1u','.eJxVjEEOwiAQRe_C2hAGBltcuu8ZCDOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8HMVFgDj9bhT4keoO4j3UW5Pc6rrMJHdFHrTLqcX0vB7u30EJvXzrYBiQYBjROm0dQhxAY7aYMoOmBMokY5RCcJYUI4NDYp2dGs-gyIn3B7SlNpc:1qYAEL:EOUXFkqgymBYAUB7GeDm_w0E0leGJjS2mDkFfzK59q4','2023-09-04 19:06:25.831528');
INSERT INTO django_session VALUES('1ozxym3mw8jf4w3gaqyeniy0nsxyqk2v','.eJxVjEEOwiAQRe_C2hAGBltcuu8ZCDOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8HMVFgDj9bhT4keoO4j3UW5Pc6rrMJHdFHrTLqcX0vB7u30EJvXzrYBiQYBjROm0dQhxAY7aYMoOmBMokY5RCcJYUI4NDYp2dGs-gyIn3B7SlNpc:1qad0R:j6cbOhpaGETriDo4TqCeMraGWVQu1AB62sPiUwYoa5A','2023-09-11 14:14:15.099302');
INSERT INTO django_session VALUES('als6xcy6gxu7k8jmi00hu01b42hzxrm8','.eJxVjEEOwiAQRe_C2hAGBltcuu8ZCDOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8HMVFgDj9bhT4keoO4j3UW5Pc6rrMJHdFHrTLqcX0vB7u30EJvXzrYBiQYBjROm0dQhxAY7aYMoOmBMokY5RCcJYUI4NDYp2dGs-gyIn3B7SlNpc:1qad2R:Ys5yFWkXo7KoctbOk3vs6zi0TtTZiWh9QxhJWASC9ho','2023-09-11 14:16:19.116684');
INSERT INTO django_session VALUES('jfj3hi4mca43ydc79a54gmbt2tc5elob','.eJxVjEEOwiAQRe_C2hAGBltcuu8ZCDOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8HMVFgDj9bhT4keoO4j3UW5Pc6rrMJHdFHrTLqcX0vB7u30EJvXzrYBiQYBjROm0dQhxAY7aYMoOmBMokY5RCcJYUI4NDYp2dGs-gyIn3B7SlNpc:1qad5r:MUxjy0-ZAY8zi7g1iIUeIKHIeqMO7QaZvn0rB5p4J4E','2023-09-11 14:19:51.293393');
INSERT INTO django_session VALUES('6s140lhs11onws63jju5k78ui9lstnsq','.eJxVjEEOwiAQRe_C2hAGBltcuu8ZCDOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8HMVFgDj9bhT4keoO4j3UW5Pc6rrMJHdFHrTLqcX0vB7u30EJvXzrYBiQYBjROm0dQhxAY7aYMoOmBMokY5RCcJYUI4NDYp2dGs-gyIn3B7SlNpc:1qaenr:9UKVlH53Aqm7CBK5SZKbWIs9438Pq27SRTrKg0fGPX8','2023-09-11 16:09:23.080844');
INSERT INTO django_session VALUES('y3u9r64rdcb5kr2p6tn1mgmmdok9hxyf','.eJxVjEEOwiAQRe_C2hAGBltcuu8ZCDOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8HMVFgDj9bhT4keoO4j3UW5Pc6rrMJHdFHrTLqcX0vB7u30EJvXzrYBiQYBjROm0dQhxAY7aYMoOmBMokY5RCcJYUI4NDYp2dGs-gyIn3B7SlNpc:1qahHX:q_LbvTbFqXcla-cgm-LSx-11qyl1kJU4rrrc5Fxq1EU','2023-09-11 18:48:11.015936');
INSERT INTO django_session VALUES('ixs9mvzefqxaj6mssh6lahpyq8ee9dxg','.eJxVjEEOwiAQRe_C2hAGBltcuu8ZCDOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8HMVFgDj9bhT4keoO4j3UW5Pc6rrMJHdFHrTLqcX0vB7u30EJvXzrYBiQYBjROm0dQhxAY7aYMoOmBMokY5RCcJYUI4NDYp2dGs-gyIn3B7SlNpc:1qaj9W:c6kaq0UD5u9czw7BYDsT_ulI7rKV7chDkUewEWz--i4','2023-09-11 20:48:02.491127');
INSERT INTO django_session VALUES('oqzciq89mmnjo0qxhplu7wmgjermob7b','.eJxVjEEOwiAQRe_C2hAGBltcuu8ZCDOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8HMVFgDj9bhT4keoO4j3UW5Pc6rrMJHdFHrTLqcX0vB7u30EJvXzrYBiQYBjROm0dQhxAY7aYMoOmBMokY5RCcJYUI4NDYp2dGs-gyIn3B7SlNpc:1qboPz:1mgysKOF1bkAZoDASVA2_jlbfnSAUsC6UdlkIZseR5o','2023-09-14 20:37:31.135755');
INSERT INTO django_session VALUES('4jephwa4retqg37bvfimqc7e7nshaw5z','.eJxVjEEOwiAQRe_C2hAGBltcuu8ZCDOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8HMVFgDj9bhT4keoO4j3UW5Pc6rrMJHdFHrTLqcX0vB7u30EJvXzrYBiQYBjROm0dQhxAY7aYMoOmBMokY5RCcJYUI4NDYp2dGs-gyIn3B7SlNpc:1qdWlr:ujakY2gq8rZFfeonLqBzPRPq6a5XPkiGh5CJ6NAgjkk','2023-09-19 14:11:11.887143');
INSERT INTO django_session VALUES('ibzpohrg92kfpv012rq3r1pk0hw1fay0','.eJxVjEEOwiAQRe_C2hAGBltcuu8ZCDOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8HMVFgDj9bhT4keoO4j3UW5Pc6rrMJHdFHrTLqcX0vB7u30EJvXzrYBiQYBjROm0dQhxAY7aYMoOmBMokY5RCcJYUI4NDYp2dGs-gyIn3B7SlNpc:1qiyRR:6zzzGBjTTnu71MgihXP4Nup3dWTH8UJ6hosCmbLZEGk','2023-10-04 14:44:37.086609');
INSERT INTO django_session VALUES('e2m4g0pz09udyh1xe5dwrujrixi4n9hx','.eJxVjEEOwiAQRe_C2hAGBltcuu8ZCDOAVA0kpV0Z765NutDtf-_9l_BhW4vfelr8HMVFgDj9bhT4keoO4j3UW5Pc6rrMJHdFHrTLqcX0vB7u30EJvXzrYBiQYBjROm0dQhxAY7aYMoOmBMokY5RCcJYUI4NDYp2dGs-gyIn3B7SlNpc:1qnNW0:ARYiQFfKvg5HD08AqkkJoq_COHl0PQj6ee-jXs5eLrc','2023-10-16 18:19:32.228113');
CREATE TABLE IF NOT EXISTS "events_event" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "category" varchar(5) NOT NULL, "date" date NOT NULL, "hour" time NOT NULL, "locale" varchar(100) NOT NULL, "title" varchar(100) NOT NULL, "speaker_id_id" bigint NULL REFERENCES "events_speaker" ("id") DEFERRABLE INITIALLY DEFERRED, "file" varchar(100) NULL, "description" text NOT NULL);
INSERT INTO events_event VALUES(1,'MODE','2023-08-30','13:00:00','UL65','Onde mora a incerteza fuzzy?',1,NULL,'Nesse seminário serão discutidas incertezas subjetivas, imprecisas e por insuficiência de informação. Aplicações das incertezas tipo fuzzy serão expostas e discutidas.');
INSERT INTO events_event VALUES(2,'PO','2023-09-20','13:00:00','UL65','Abordagem multiobjetivo para o problema de localização e alocação de mamógrafos',4,'','A detecção precoce do câncer de mama é fator determinante no tratamento e sobrevida das pacientes. Neste contexto, a disponibilidade e localização adequada dos equipamentos de mamografia é crucial.');
INSERT INTO events_event VALUES(3,'IA','2023-10-04','13:00:00','UL65','Estudo Sobre:Retro Branching and Bound',8,'','Utilizações de métodos de aprendizado por reforço para diminuir o número de iterações do B&B.');
INSERT INTO events_event VALUES(4,'MODE','2023-10-18','13:00:00','UL65','Uma Abordagem Geométrica para Separação Cega de Fontes em um Modelo de Mistura baseado na Integral d',5,'','A separação cega de fontes (BSS – blind source separation) tem como finalidade a extração de sinais a partir de misturas observadas de tais sinais. Neste seminário apresentaremos uma abordagem geométrica para o problema de separação cega de fontes em um modelo de mistura baseado na integral de Choquet, focando no problema de identificação do processo de mistura.');
INSERT INTO events_event VALUES(5,'MCDA','2023-11-01','13:00:00','UL65','Econofísica Aplicada',6,'','Nesta conversa buscaremos entender os fundamentos físicos e estatísticos que norteiam o comportamento de ativos financeiros. Embora os estudiosos possam traçar a trajetória do mercado minuto a minuto, é muito difícil a observação de quem compra, quem vende e como a demanda e a oferta afetam os movimentos de preços. Existem muitas teoria sobre como o comportamento de diferentes investidores faz com que os preços se movam, mas não há nenhuma evidência empírica que apoie a ligação crítica entre as decisões dos investidores e a dinâmica dos preços. O movimento browniano é então utilizado como um modelo que possibilita a busca pela compreensão desse cenário.');
INSERT INTO events_event VALUES(6,'SIMU','2023-11-22','13:00:00','UL65','Em Breve',7,'','Em Breve');
INSERT INTO events_event VALUES(7,'PO','2023-11-29','13:00:00','UL65','Em Breve',2,NULL,'Ultimo encontro de 2023');
INSERT INTO events_event VALUES(8,'DS','2023-09-06','13:00:00','UL65','Bilinear and Linear-Quadratic Matrix Factorization Methods for Hyperspectral Unmixing',3,'','Em Breve');
CREATE TABLE IF NOT EXISTS "events_speaker" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(100) NOT NULL, "photo" varchar(100) NULL, "description" text NULL);
INSERT INTO events_speaker VALUES(1,'Nilmara Biscaia','265809818_422937112665967_765988549444746680_n.jpg','Pós graduanda em engenharia de produção');
INSERT INTO events_speaker VALUES(2,'Em Breve','1144760.png','Em Breve');
INSERT INTO events_speaker VALUES(3,'Alejandra Quezada','366753564_3105522012924796_345560305445757065_n.jpg','...');
INSERT INTO events_speaker VALUES(4,'Yerlis Valdelamar Gonzalez','e8397d4c-5934-43a6-8b16-e1ed088fa53b.jpeg','');
INSERT INTO events_speaker VALUES(5,'Gláucia Jardim Pissinelli','','');
INSERT INTO events_speaker VALUES(6,'Yuri Alexandre Meyer','','');
INSERT INTO events_speaker VALUES(7,'Carlos Quiroga','','');
INSERT INTO events_speaker VALUES(8,'Vinicius e Saulo','22_jsdjkaknskjnkajsdlkkjal.png','Estudantes do LAD2');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',27);
INSERT INTO sqlite_sequence VALUES('django_admin_log',47);
INSERT INTO sqlite_sequence VALUES('django_content_type',9);
INSERT INTO sqlite_sequence VALUES('auth_permission',36);
INSERT INTO sqlite_sequence VALUES('auth_group',0);
INSERT INTO sqlite_sequence VALUES('auth_user',1);
INSERT INTO sqlite_sequence VALUES('events_event',8);
INSERT INTO sqlite_sequence VALUES('events_speaker',8);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
CREATE INDEX "events_event_speaker_id_id_1a22d628" ON "events_event" ("speaker_id_id");
COMMIT;
