--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Ubuntu 15.2-1.pgdg22.04+1)
-- Dumped by pg_dump version 15.2 (Ubuntu 15.2-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(155) NOT NULL,
    description character varying(155) NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id integer NOT NULL,
    name character varying(155) NOT NULL,
    address character varying(155) NOT NULL
);


ALTER TABLE public.client OWNER TO postgres;

--
-- Name: order_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_item (
    id integer NOT NULL,
    price double precision,
    amount integer NOT NULL,
    product_id integer NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE public.order_item OWNER TO postgres;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying(155) NOT NULL,
    description character varying(155),
    price double precision NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: purchase_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchase_order (
    id integer NOT NULL,
    date_ date NOT NULL,
    client_id integer NOT NULL
);


ALTER TABLE public.purchase_order OWNER TO postgres;

--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (id, name, description) FROM stdin;
1	Category1	Description1
2	Category2	Description2
3	Category3	Description3
4	Category4	Description4
5	Category5	Description5
6	Category6	Description6
7	Category7	Description7
8	Category8	Description8
9	Category9	Description9
10	Category10	Description10
11	Category11	Description11
12	Category12	Description12
13	Category13	Description13
14	Category14	Description14
15	Category15	Description15
16	Category16	Description16
17	Category17	Description17
18	Category18	Description18
19	Category19	Description19
20	Category20	Description20
21	Category21	Description21
22	Category22	Description22
23	Category23	Description23
24	Category24	Description24
25	Category25	Description25
26	Category26	Description26
27	Category27	Description27
28	Category28	Description28
29	Category29	Description29
30	Category30	Description30
31	Category31	Description31
32	Category32	Description32
33	Category33	Description33
34	Category34	Description34
35	Category35	Description35
36	Category36	Description36
37	Category37	Description37
38	Category38	Description38
39	Category39	Description39
40	Category40	Description40
41	Category41	Description41
42	Category42	Description42
43	Category43	Description43
44	Category44	Description44
45	Category45	Description45
46	Category46	Description46
47	Category47	Description47
48	Category48	Description48
49	Category49	Description49
50	Category50	Description50
\.


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (id, name, address) FROM stdin;
1	Client1	Address1
2	Client2	Address2
3	Client3	Address3
4	Client4	Address4
5	Client5	Address5
6	Client6	Address6
7	Client7	Address7
8	Client8	Address8
9	Client9	Address9
10	Client10	Address10
11	Client11	Address11
12	Client12	Address12
13	Client13	Address13
14	Client14	Address14
15	Client15	Address15
16	Client16	Address16
17	Client17	Address17
18	Client18	Address18
19	Client19	Address19
20	Client20	Address20
21	Client21	Address21
22	Client22	Address22
23	Client23	Address23
24	Client24	Address24
25	Client25	Address25
26	Client26	Address26
27	Client27	Address27
28	Client28	Address28
29	Client29	Address29
30	Client30	Address30
31	Client31	Address31
32	Client32	Address32
33	Client33	Address33
34	Client34	Address34
35	Client35	Address35
36	Client36	Address36
37	Client37	Address37
38	Client38	Address38
39	Client39	Address39
40	Client40	Address40
41	Client41	Address41
42	Client42	Address42
43	Client43	Address43
44	Client44	Address44
45	Client45	Address45
46	Client46	Address46
47	Client47	Address47
48	Client48	Address48
49	Client49	Address49
50	Client50	Address50
\.


--
-- Data for Name: order_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_item (id, price, amount, product_id, order_id) FROM stdin;
1	107	2	9	31
2	64.5	1	1	30
3	85.5	3	27	13
4	89	2	10	8
5	77	2	11	8
6	38.5	1	11	25
7	103.5	3	17	23
8	186	4	37	32
9	129	2	1	13
10	59.5	1	15	10
11	107	2	39	32
12	95	2	23	4
13	154	4	4	26
14	133.5	3	10	40
15	79	2	33	35
16	163.5	3	32	24
17	133	2	14	14
18	123	2	12	2
19	41.5	1	40	40
20	113	2	30	2
21	139.5	3	25	34
22	57	2	36	1
23	169.5	3	30	27
24	133	2	14	40
25	57	2	27	29
26	89	2	10	36
27	56.5	1	16	3
28	107	2	7	22
29	57	2	27	2
30	190	4	23	19
31	115.5	3	4	36
32	107	2	7	25
33	123	2	29	16
34	138	4	17	25
35	115.5	3	11	15
36	186	4	19	14
37	186	4	37	31
38	138	4	13	22
39	184.5	3	12	1
40	160.5	3	7	7
41	129	2	1	15
42	46.5	1	19	32
43	65	2	38	40
44	61.5	1	29	25
45	160.5	3	39	29
46	115.5	3	11	11
47	186	4	25	21
48	47.5	1	23	22
49	184.5	3	12	40
50	175.5	3	21	18
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, name, description, price, category_id) FROM stdin;
1	Product1	Description1	64.5	39
2	Product2	Description2	54.5	29
3	Product3	Description3	58.5	33
4	Product4	Description4	38.5	13
5	Product5	Description5	48.5	23
6	Product6	Description6	29.5	4
7	Product7	Description7	53.5	28
8	Product8	Description8	61.5	36
9	Product9	Description9	53.5	28
10	Product10	Description10	44.5	19
11	Product11	Description11	38.5	13
12	Product12	Description12	61.5	36
13	Product13	Description13	34.5	9
14	Product14	Description14	66.5	41
15	Product15	Description15	59.5	34
16	Product16	Description16	56.5	31
17	Product17	Description17	34.5	9
18	Product18	Description18	46.5	21
19	Product19	Description19	46.5	21
20	Product20	Description20	26.5	1
21	Product21	Description21	58.5	33
22	Product22	Description22	59.5	34
23	Product23	Description23	47.5	22
24	Product24	Description24	31.5	6
25	Product25	Description25	46.5	21
26	Product26	Description26	45.5	20
27	Product27	Description27	28.5	3
28	Product28	Description28	52.5	27
29	Product29	Description29	61.5	36
30	Product30	Description30	56.5	31
31	Product31	Description31	61.5	36
32	Product32	Description32	54.5	29
33	Product33	Description33	39.5	14
34	Product34	Description34	45.5	20
35	Product35	Description35	46.5	21
36	Product36	Description36	28.5	3
37	Product37	Description37	46.5	21
38	Product38	Description38	32.5	7
39	Product39	Description39	53.5	28
40	Product40	Description40	41.5	16
41	Product41	Description41	28.5	3
42	Product42	Description42	47.5	22
43	Product43	Description43	31.5	6
44	Product44	Description44	28.5	3
45	Product45	Description45	35.5	10
46	Product46	Description46	40.5	15
47	Product47	Description47	37.5	12
48	Product48	Description48	49.5	24
49	Product49	Description49	37.5	12
50	Product50	Description50	36.5	11
51	Product1	Description	33.3	10
52	Product1	Descrip	33.4	12
53	Product1	Descrip	33.4	12
54	Product2	Descript	33.5	18
\.


--
-- Data for Name: purchase_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.purchase_order (id, date_, client_id) FROM stdin;
1	2023-03-25	1
2	2023-03-03	11
3	2023-03-15	38
4	2023-03-19	30
5	2023-03-19	21
6	2023-03-22	9
7	2023-03-15	35
8	2023-03-16	29
9	2023-03-08	38
10	2023-03-11	5
11	2023-03-13	17
12	2023-03-28	11
13	2023-03-02	14
14	2023-03-12	21
15	2023-03-18	22
16	2023-03-28	31
17	2023-03-24	39
18	2023-03-02	34
19	2023-03-28	23
20	2023-03-18	15
21	2023-03-16	9
22	2023-03-01	29
23	2023-03-25	3
24	2023-03-30	36
25	2023-03-05	38
26	2023-03-21	14
27	2023-03-17	4
28	2023-03-09	31
29	2023-03-10	33
30	2023-03-02	38
31	2023-03-06	5
32	2023-03-20	7
33	2023-03-18	26
34	2023-03-26	29
35	2023-03-17	14
36	2023-03-14	24
37	2023-03-14	31
38	2023-03-14	12
39	2023-03-03	4
40	2023-03-01	24
41	2023-03-11	6
42	2023-03-19	37
43	2023-03-10	20
44	2023-03-16	22
45	2023-03-05	10
46	2023-03-30	19
47	2023-03-13	31
48	2023-03-01	29
49	2023-03-04	10
50	2023-03-03	27
\.


--
-- Name: category category_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pk PRIMARY KEY (id);


--
-- Name: client client_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pk PRIMARY KEY (id);


--
-- Name: order_item order_item_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_pk PRIMARY KEY (id);


--
-- Name: purchase_order order_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_order
    ADD CONSTRAINT order_pk PRIMARY KEY (id);


--
-- Name: product product_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pk PRIMARY KEY (id);


--
-- Name: purchase_order order_client_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_order
    ADD CONSTRAINT order_client_fk FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: order_item order_item_order_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_order_fk FOREIGN KEY (order_id) REFERENCES public.purchase_order(id);


--
-- Name: order_item order_item_product_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_item
    ADD CONSTRAINT order_item_product_fk FOREIGN KEY (product_id) REFERENCES public.product(id);


--
-- Name: product product_category_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_category_fk FOREIGN KEY (category_id) REFERENCES public.category(id);


--
-- PostgreSQL database dump complete
--

