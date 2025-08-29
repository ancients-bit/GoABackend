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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.active_admin_comments (
    id bigint NOT NULL,
    namespace character varying,
    body text,
    resource_type character varying,
    resource_id integer,
    author_type character varying,
    author_id integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.active_admin_comments_id_seq OWNED BY public.active_admin_comments.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.admin_users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    reset_code_digest character varying,
    reset_code_sent_at timestamp(6) without time zone
);


--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: blog_posts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.blog_posts (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    author character varying,
    blog_picture character varying,
    blog_topic character varying,
    content text,
    category character varying
);


--
-- Name: blog_posts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.blog_posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: blog_posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.blog_posts_id_seq OWNED BY public.blog_posts.id;


--
-- Name: bookings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bookings (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    name character varying,
    email character varying,
    phone_number character varying,
    organisation character varying,
    number_of_persons integer,
    inquiry text,
    date_of_booking date,
    status integer,
    alternate_date date,
    service character varying
);


--
-- Name: bookings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.bookings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bookings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.bookings_id_seq OWNED BY public.bookings.id;


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contacts (
    id bigint NOT NULL,
    full_name character varying NOT NULL,
    email character varying NOT NULL,
    phone_number character varying,
    organization character varying,
    subject character varying,
    message text NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: subscribers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.subscribers (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    email character varying
);


--
-- Name: subscribers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.subscribers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: subscribers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.subscribers_id_seq OWNED BY public.subscribers.id;


--
-- Name: testimonials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.testimonials (
    id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    name character varying,
    email character varying,
    rating integer,
    organisation character varying,
    category character varying,
    experience_type character varying,
    story text,
    status character varying
);


--
-- Name: testimonials_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.testimonials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: testimonials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.testimonials_id_seq OWNED BY public.testimonials.id;


--
-- Name: active_admin_comments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.active_admin_comments ALTER COLUMN id SET DEFAULT nextval('public.active_admin_comments_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: blog_posts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blog_posts ALTER COLUMN id SET DEFAULT nextval('public.blog_posts_id_seq'::regclass);


--
-- Name: bookings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bookings ALTER COLUMN id SET DEFAULT nextval('public.bookings_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- Name: subscribers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscribers ALTER COLUMN id SET DEFAULT nextval('public.subscribers_id_seq'::regclass);


--
-- Name: testimonials id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.testimonials ALTER COLUMN id SET DEFAULT nextval('public.testimonials_id_seq'::regclass);


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.active_admin_comments (id, namespace, body, resource_type, resource_id, author_type, author_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, reset_code_digest, reset_code_sent_at) FROM stdin;
2	info@gardenofancients.com	$2a$12$F5pHHu.Eb3cwU6uYPhI9MOv0XhlmNJZ4oa3q7eIrMfWYlUV/.qTqq	\N	\N	\N	2025-07-22 10:48:04.036025	2025-08-27 23:04:48.5497	\N	\N
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2025-07-11 22:11:47.325873	2025-07-11 22:11:47.325876
schema_sha1	7be021d63e7d8b30869dd7a5010904a2601d57a4	2025-07-11 22:11:47.332346	2025-07-11 22:11:47.332347
\.


--
-- Data for Name: blog_posts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.blog_posts (id, created_at, updated_at, author, blog_picture, blog_topic, content, category) FROM stdin;
4	2025-07-17 15:31:26.034151	2025-07-17 15:31:26.034151	Mary	https://res.cloudinary.com/deyrr0gsk/image/upload/v1752766281/ncmvo3ckfuzw6lcd0kdg.png	5 Indigenous Plants Every Kenyan Should Know	Discover the remarkable properties and traditional uses of native plants that have sustained communities for generations.	Plant Knowledge
5	2025-07-17 15:32:11.934006	2025-07-17 15:32:11.934006	James	https://res.cloudinary.com/deyrr0gsk/image/upload/v1752766328/zfwqnh1baxnukcvjvlhj.png	School Visit Highlights: Academy's Garden Adventure	Follow 45 excited students as they explore sustainable farming techniques and discover the magic of hands-on learning.	School Visits
6	2025-07-17 15:32:51.98109	2025-07-17 15:32:51.98109	Joshuu	https://res.cloudinary.com/deyrr0gsk/image/upload/v1752766366/bykyankgb9p15vj89yqv.png	Sustainable Farming: Water Conservation Techniques That Work	Learn practical methods to reduce water usage while maintaining healthy crops, perfect for Kenya's climate challenges.	Farming Tips
8	2025-07-17 15:34:17.162086	2025-07-17 15:34:17.162086	Joshuu	https://res.cloudinary.com/deyrr0gsk/image/upload/v1752766452/pasdnplk9ir3wchys3n8.png	Composting 101: Turn Kitchen Waste into Garden Gold	A beginner's guide to creating nutrient-rich compost that will transform your garden's health and productivity.	Farming Tips
7	2025-07-17 15:33:36.276105	2025-07-19 16:18:49.820602	sdfghjhgfd	https://res.cloudinary.com/deyrr0gsk/image/upload/v1752766412/xrndwkbabpfshyhgzxp7.jpg	Behind the Scenes: Planning the Perfect Garden Weeding	Right ways of cultivating a beautiful garden and tips and tricks for a successful garden weeding.	School Visits
\.


--
-- Data for Name: bookings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.bookings (id, created_at, updated_at, name, email, phone_number, organisation, number_of_persons, inquiry, date_of_booking, status, alternate_date, service) FROM stdin;
17	2025-07-16 03:19:48.526297	2025-07-16 18:12:02.918367	Joshua Kyengo	jkyengo900@gmail.com	0794790325	JUJA	1		2025-07-09	1	\N	\N
19	2025-07-20 05:53:21.15767	2025-07-20 05:53:21.15767	vivy	vie@gmail.com	0794790325		1		2025-07-20	0	\N	\N
20	2025-07-20 05:59:34.476368	2025-07-20 05:59:34.476368	Joshua Kyengo	jkye@gmail.com	0794790325		18		2025-07-20	0	\N	\N
21	2025-07-20 06:05:59.632393	2025-07-20 06:05:59.632393	Joshua Kyengo	jkyengo900@gmail.com	0794790325		5		2025-07-17	0	\N	\N
22	2025-07-20 06:23:39.116077	2025-07-20 06:23:39.116077	Joshua Kyengo	jkyengo900@gmail.com	0794790325		1		2025-07-31	0	\N	\N
23	2025-07-20 06:27:29.821605	2025-07-20 06:27:29.821605	Joshua Kyengo	jkyengo900@gmail.com	0794790325		2		2025-07-08	0	\N	\N
24	2025-07-20 06:35:52.990167	2025-07-20 06:35:52.990167	Joshu	jkyen@gmail.com	0794790325		5		2025-07-10	0	\N	Events & Special Occasions
27	2025-07-21 13:46:26.509791	2025-07-21 13:59:14.066792	wess	wess@gmail	0794790325		1		2025-07-21	1	\N	Picnic / Team Building Only
18	2025-07-17 08:28:15.30293	2025-07-21 13:59:21.822553	WERTYU	WQWERT@GMAIL	123456789	DFGHJK	1		2025-07-17	0	\N	\N
16	2025-07-16 03:04:44.527961	2025-07-21 13:59:42.667924	MAG	jkyengo900@gmail.com	0794790325		1	SADFFDDRD	2025-07-16	2	\N	\N
15	2025-07-16 03:04:06.188379	2025-07-21 13:59:43.682585	Pope	jkyengo900@gmail.com	0794790325	JUJA	1	QWERTYUIKJHGFDS	2025-07-16	1	2025-07-16	\N
26	2025-07-21 13:14:08.18789	2025-07-22 11:38:34.354951	Joshua Kyengo	jkyengo900@gmail.com	0794790325		3		2025-07-17	1	\N	Double Room Sharing B&B
25	2025-07-21 13:13:02.99675	2025-08-11 09:27:59.182509	vie	jkyengo900@gmail.com	0794790325		2		2025-07-21	1	\N	Picnic / Team Building Only
28	2025-08-11 10:03:27.097219	2025-08-11 10:03:56.058335	Joshua Kyengo	vivz@gmail.com	0794790325	JUJA	5	qwertyuioplkjhgfds	2025-08-11	1	\N	Photography/Video shooting
29	2025-08-27 21:06:20.000939	2025-08-27 21:06:20.000939	Colette Neema	coletteneemaaa@gmail.com	0742811747	juj	5		2025-08-28	0	\N	\N
30	2025-08-27 21:10:21.785001	2025-08-27 21:10:21.785001	junene	coletteneemaaa@gmail.com	0742811747	JKUAT	5	aasdfghjkl;oiuytrew	2025-08-12	0	2025-08-28	\N
31	2025-08-27 21:27:47.319445	2025-08-27 21:27:47.319445	davie	coletteneemaaa@gmail.com	0742811747	JUJA	2	cvghhhfvvy	2025-08-28	0	2025-08-28	Double Room Sharing B&B
32	2025-08-29 15:18:49.699055	2025-08-29 15:18:49.699055	Colette Neema	colettenaa@gmail.com	0742811747	sdf	2	sd	2025-08-29	0	\N	Conferencing (room hire only)
13	2025-07-15 16:03:21.99255	2025-07-16 01:32:59.821758	Joshuuuuu	jkyengo900@gmail.com	0794790325	JKUAT	16	asdfghjkl;	2025-07-08	1	2025-07-08	\N
12	2025-07-15 15:49:33.516794	2025-07-16 01:43:21.726155	Joshua Kyengo	jkyengo900@gmail.com	0794790325	JKUAT	1	ASDFGHJKQWERTYUIO	2025-07-15	2	2025-07-18	\N
11	2025-07-14 13:24:33.095593	2025-07-16 01:56:19.448606	robb	robb@gmail.com	0794790325		1		2025-07-10	1	\N	\N
10	2025-07-14 12:44:32.593686	2025-07-16 01:56:21.093727	Joshua Kyengo	jkyengo@gmail.com	0794790325		1		2025-07-02	2	\N	\N
9	2025-07-14 12:42:36.387919	2025-07-16 01:56:23.727354	Joshua Kyengo	jkyengo900@gmail.com	0794790325	JKUAT	16	xcvbnm,.kjhytrew	2025-07-09	1	2025-07-11	\N
8	2025-07-14 12:36:39.554662	2025-07-16 01:56:28.863979	Joshua Kyengo	jkyengo900@gmail.com	0794790325	\N	51	\N	2025-07-03	1	2025-07-04	\N
7	2025-07-14 12:36:03.051938	2025-07-16 01:56:30.385383	JOSHUA 	jkyengo900@gmail.com	0794790325	\N	51	\N	2025-07-09	2	2025-07-24	\N
6	2025-07-14 12:25:41.876343	2025-07-16 01:57:36.848862	Joshua Kyengo	jkyengo900@gmail.com	0794790325	\N	31	\N	2025-07-09	1	\N	\N
14	2025-07-16 02:00:23.343594	2025-07-16 02:00:36.355026	JOSHU	jkyengo900@gmail.com	0794790325	JKUAT	1	ZXCVBNM,KJHGFDSWERTYUIO	2025-07-16	1	2025-07-26	\N
5	2025-07-14 12:18:44.822482	2025-07-16 02:00:39.700513	Joshua Kyengo	jkyengo900@gmail.com	0794790325	\N	51	\N	2025-07-14	2	\N	\N
4	2025-07-14 12:15:05.244556	2025-07-16 02:00:41.560828	Joshua Kyengo	jkyengo900@gmail.com	0794790325	\N	100	\N	2025-07-24	2	\N	\N
3	2025-07-14 12:00:22.234468	2025-07-16 02:00:42.810223	Joshua Kyengo	jkyengo900@gmail.com	0794790325	\N	16	\N	2025-07-15	1	\N	\N
2	2025-07-14 11:59:01.87111	2025-07-16 02:00:43.935339	Joshua Kyengo	jkyengo900@gmail.com	0794790325	\N	1	\N	2025-07-30	2	\N	\N
1	2025-07-14 11:56:56.301952	2025-07-16 02:00:45.17377	Joshua Kyengo	jkyengo900@gmail.com	0794790325	\N	1	\N	2025-07-02	2	\N	\N
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.contacts (id, full_name, email, phone_number, organization, subject, message, created_at, updated_at) FROM stdin;
1	Joshua Kyengo	jkyengo900@gmail.com	0794790325	qwertyui	meetings-picnics	qwertyuio	2025-07-21 14:53:25.334136	2025-07-21 14:53:25.334136
2	Joshua Kyengo	jkyengo900@gmail.com	0794790325	asdfghj	photography	zxcvbnm,.	2025-07-22 09:26:18.042814	2025-07-22 09:26:18.042814
3	vie	vie@gmail.com	0794790325	Jkuat	conferencing	QWertyuiop	2025-07-22 09:49:56.865295	2025-07-22 09:49:56.865295
4	Colette Neema	coletteneemaaa@gmail.com	0742811747	\N	accommodation	gwai	2025-08-27 21:49:51.888508	2025-08-27 21:49:51.888508
5	Colette Neema	coletteneaa@gmail.com	0742811747	\N	accommodation	sfdg	2025-08-29 15:19:28.703903	2025-08-29 15:19:28.703903
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.schema_migrations (version) FROM stdin;
20250711203051
20250711203047
20250711203040
20250712100303
20250712100308
20250712100313
20250712100318
20250712102145
20250712103151
20250712103534
20250712103820
20250713014645
20250713014712
20250714123314
\.


--
-- Data for Name: subscribers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.subscribers (id, created_at, updated_at, email) FROM stdin;
1	2025-07-17 20:19:58.524385	2025-07-17 20:19:58.524385	jkyengo900@gmail.com
2	2025-07-17 20:33:49.19395	2025-07-17 20:33:49.19395	jkyengo@gmail.com
3	2025-07-19 16:19:39.653114	2025-07-19 16:19:39.653114	jkyen@gmail.com
4	2025-07-21 14:09:48.2493	2025-07-21 14:09:48.2493	jkyengo9@gmail.com
5	2025-08-11 09:54:35.723576	2025-08-11 09:54:35.723576	jkyeng@gmail.com
6	2025-08-27 18:47:53.980554	2025-08-27 18:47:53.980554	coletteneemaaa@gmail.com
7	2025-08-27 19:28:32.076331	2025-08-27 19:28:32.076331	vie@gmail.com
8	2025-08-27 20:50:39.65701	2025-08-27 20:50:39.65701	colettaaa@gmail.com
9	2025-08-29 15:13:52.500668	2025-08-29 15:13:52.500668	colett@gmail.com
\.


--
-- Data for Name: testimonials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.testimonials (id, created_at, updated_at, name, email, rating, organisation, category, experience_type, story, status) FROM stdin;
\.


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.active_admin_comments_id_seq', 1, false);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);


--
-- Name: blog_posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.blog_posts_id_seq', 10, true);


--
-- Name: bookings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.bookings_id_seq', 32, true);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.contacts_id_seq', 5, true);


--
-- Name: subscribers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.subscribers_id_seq', 9, true);


--
-- Name: testimonials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.testimonials_id_seq', 1, false);


--
-- Name: active_admin_comments active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: blog_posts blog_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.blog_posts
    ADD CONSTRAINT blog_posts_pkey PRIMARY KEY (id);


--
-- Name: bookings bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_pkey PRIMARY KEY (id);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: subscribers subscribers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscribers
    ADD CONSTRAINT subscribers_pkey PRIMARY KEY (id);


--
-- Name: testimonials testimonials_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.testimonials
    ADD CONSTRAINT testimonials_pkey PRIMARY KEY (id);


--
-- Name: index_active_admin_comments_on_author; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_active_admin_comments_on_author ON public.active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_active_admin_comments_on_namespace ON public.active_admin_comments USING btree (namespace);


--
-- Name: index_active_admin_comments_on_resource; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_active_admin_comments_on_resource ON public.active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_admin_users_on_email ON public.admin_users USING btree (email);


--
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON public.admin_users USING btree (reset_password_token);


--
-- PostgreSQL database dump complete
--

