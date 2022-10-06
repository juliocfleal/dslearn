INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown','alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp', 'https://149818895.v2.pressablecdn.com/wp-content/uploads/2020/02/Free-Online-Course.jpg', 'https://ctl.wiley.com/wp-content/uploads/2016/07/CE_1-1-300x221.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07.12345Z', TIMESTAMP WITH TIME ZONE '2022-07-13T20:50:07.12345Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2022-07-13T20:50:07.12345Z', TIMESTAMP WITH TIME ZONE '2023-07-13T20:50:07.12345Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilhe HTML', 'Trilha principal do curso', 1, 'https://ctl.wiley.com/wp-content/uploads/2016/07/CE_1-1-300x221.png', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire as suas duvidas', 2, 'https://ctl.wiley.com/wp-content/uploads/2016/07/CE_1-1-300x221.png', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma!',3, 'https://ctl.wiley.com/wp-content/uploads/2016/07/CE_1-1-300x221.png', 0, 1);