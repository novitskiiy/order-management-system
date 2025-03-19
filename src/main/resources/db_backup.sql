--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, email, name) VALUES (1, 'veremienko.bogdan@gmail.com', 'Bogdan Veremienko');
INSERT INTO public.users (id, email, name) VALUES (3, 'oleksandr.ivanenko@example.com', 'Олександр Іваненко');
INSERT INTO public.users (id, email, name) VALUES (4, 'maria.petrenko@example.com', 'Марія Петренко');
INSERT INTO public.users (id, email, name) VALUES (5, 'dmytro.shevchenko@example.com', 'Дмитро Шевченко');
INSERT INTO public.users (id, email, name) VALUES (6, 'anna.kovalchuk@example.com', 'Анна Ковальчук');
INSERT INTO public.users (id, email, name) VALUES (7, 'maksym.bondarenko@example.com', 'Максим Бондаренко');
INSERT INTO public.users (id, email, name) VALUES (9, 'volodymyr.tkachenko@example.com', 'Володимир Ткаченко');
INSERT INTO public.users (id, email, name) VALUES (10, 'nataliia.melnyk@example.com', 'Наталія Мельник');
INSERT INTO public.users (id, email, name) VALUES (2, 'kseniia.onufriychuk@example.com', 'Ксенія Онуфрійчук');


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders (id, user_id) VALUES (1, 1);
INSERT INTO public.orders (id, user_id) VALUES (2, 2);
INSERT INTO public.orders (id, user_id) VALUES (4, 2);
INSERT INTO public.orders (id, user_id) VALUES (5, 1);
INSERT INTO public.orders (id, user_id) VALUES (6, 1);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (id, name, price) VALUES (1, 'Ноутбук ASUS', 25000);
INSERT INTO public.products (id, name, price) VALUES (2, 'Смартфон Galaxy S24', 899.99);
INSERT INTO public.products (id, name, price) VALUES (3, 'Ноутбук MacBook Air M2', 1199.99);
INSERT INTO public.products (id, name, price) VALUES (5, 'Навушники Sony WH-1000XM5', 349.99);
INSERT INTO public.products (id, name, price) VALUES (6, 'Монітор LG UltraFine 4K', 699.99);
INSERT INTO public.products (id, name, price) VALUES (7, 'Механічна клавіатура Keychron K6', 99.99);
INSERT INTO public.products (id, name, price) VALUES (8, 'Графічний планшет Wacom Intuos Pro', 379.99);
INSERT INTO public.products (id, name, price) VALUES (9, 'Смарт-годинник Apple Watch Series 9', 429.99);
INSERT INTO public.products (id, name, price) VALUES (10, 'Портативна колонка JBL Charge 5', 159.99);
INSERT INTO public.products (id, name, price) VALUES (11, 'Ноутбук MacBook', 2349);
INSERT INTO public.products (id, name, price) VALUES (4, 'Ігрова консоль PlayStation 5', 601);


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_items (id, quantity, order_id, product_id) VALUES (1, 2, 4, 1);
INSERT INTO public.order_items (id, quantity, order_id, product_id) VALUES (2, 5, 4, 3);
INSERT INTO public.order_items (id, quantity, order_id, product_id) VALUES (3, 3, 5, 7);
INSERT INTO public.order_items (id, quantity, order_id, product_id) VALUES (4, 2, 5, 10);
INSERT INTO public.order_items (id, quantity, order_id, product_id) VALUES (5, 1, 6, 8);
INSERT INTO public.order_items (id, quantity, order_id, product_id) VALUES (6, 1, 6, 4);
INSERT INTO public.order_items (id, quantity, order_id, product_id) VALUES (7, 7, 6, 1);


--
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_id_seq', 7, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 6, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 11, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 10, true);


--
-- PostgreSQL database dump complete
--

