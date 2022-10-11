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

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Neste capitulo vamos comecar', 1, 'https://ctl.wiley.com/wp-content/uploads/2016/07/CE_1-1-300x221.png', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Neste capitulo vamos continuar', 2, 'https://ctl.wiley.com/wp-content/uploads/2016/07/CE_1-1-300x221.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Neste capitulo vamos finalizar', 3, 'https://ctl.wiley.com/wp-content/uploads/2016/07/CE_1-1-300x221.png', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1,1, TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07.12345Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2,1, TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07.12345Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capitulo 1', 1, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('Material de Apoio : abc','https://www.youtube.com/watch?v=nW0k-BSrbbk&t=3325s', 1);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capitulo 1', 2, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('','https://www.youtube.com/watch?v=nW0k-BSrbbk&t=3325s', 2);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capitulo 1', 3, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('','https://www.youtube.com/watch?v=nW0k-BSrbbk&t=3325s', 3);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Terefa do capitulo 1', 4, 1);
INSERT INTO tb_task (id , description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Fazer um trabalho legal!', 5, 4, 1.0,TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07.12345Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);
