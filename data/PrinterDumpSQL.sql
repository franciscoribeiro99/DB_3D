--
-- PostgreSQL database dump
--

-- Dumped from database version 11.18 (Ubuntu 11.18-1.pgdg20.04+1)
-- Dumped by pg_dump version 11.18 (Ubuntu 11.18-1.pgdg20.04+1)

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

--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: city; Type: TABLE; Schema: public; Owner: wzyapcqy
--

CREATE TABLE public.city (
    cityid integer NOT NULL,
    city character varying(255) NOT NULL,
    zip integer NOT NULL
);


ALTER TABLE public.city OWNER TO wzyapcqy;

--
-- Name: city_cityid_seq; Type: SEQUENCE; Schema: public; Owner: wzyapcqy
--

CREATE SEQUENCE public.city_cityid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_cityid_seq OWNER TO wzyapcqy;

--
-- Name: city_cityid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wzyapcqy
--

ALTER SEQUENCE public.city_cityid_seq OWNED BY public.city.cityid;


--
-- Name: customer; Type: TABLE; Schema: public; Owner: wzyapcqy
--

CREATE TABLE public.customer (
    customerid integer NOT NULL,
    fname character varying NOT NULL,
    lname character varying NOT NULL,
    email character varying NOT NULL,
    address character varying NOT NULL,
    cityid integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.customer OWNER TO wzyapcqy;

--
-- Name: customer_customerid_seq; Type: SEQUENCE; Schema: public; Owner: wzyapcqy
--

ALTER TABLE public.customer ALTER COLUMN customerid ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.customer_customerid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: material; Type: TABLE; Schema: public; Owner: wzyapcqy
--

CREATE TABLE public.material (
    materialid integer NOT NULL,
    name character varying,
    price integer,
    color character varying,
    stock integer,
    materialtype character varying
);


ALTER TABLE public.material OWNER TO wzyapcqy;

--
-- Name: material_materialid_seq; Type: SEQUENCE; Schema: public; Owner: wzyapcqy
--

ALTER TABLE public.material ALTER COLUMN materialid ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.material_materialid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: orderitem; Type: TABLE; Schema: public; Owner: wzyapcqy
--

CREATE TABLE public.orderitem (
    orderid integer,
    productid integer,
    materialid integer,
    printerid integer,
    quantity integer
);


ALTER TABLE public.orderitem OWNER TO wzyapcqy;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: wzyapcqy
--

CREATE TABLE public.orders (
    orderid integer NOT NULL,
    orderdate timestamp without time zone,
    datecompleted timestamp without time zone,
    customerid integer,
    finalprice integer,
    statusid integer NOT NULL
);


ALTER TABLE public.orders OWNER TO wzyapcqy;

--
-- Name: orders_orderid_seq; Type: SEQUENCE; Schema: public; Owner: wzyapcqy
--

ALTER TABLE public.orders ALTER COLUMN orderid ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.orders_orderid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: printer; Type: TABLE; Schema: public; Owner: wzyapcqy
--

CREATE TABLE public.printer (
    printerid integer NOT NULL,
    printtype integer NOT NULL,
    name character varying(255) NOT NULL,
    printx integer NOT NULL,
    printy integer NOT NULL,
    printz integer NOT NULL,
    stock integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.printer OWNER TO wzyapcqy;

--
-- Name: printer_printerid_seq; Type: SEQUENCE; Schema: public; Owner: wzyapcqy
--

CREATE SEQUENCE public.printer_printerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.printer_printerid_seq OWNER TO wzyapcqy;

--
-- Name: printer_printerid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wzyapcqy
--

ALTER SEQUENCE public.printer_printerid_seq OWNED BY public.printer.printerid;


--
-- Name: printermaterialcompatibility; Type: TABLE; Schema: public; Owner: wzyapcqy
--

CREATE TABLE public.printermaterialcompatibility (
    printerid integer,
    materialid integer
);


ALTER TABLE public.printermaterialcompatibility OWNER TO wzyapcqy;

--
-- Name: printtype; Type: TABLE; Schema: public; Owner: wzyapcqy
--

CREATE TABLE public.printtype (
    printtypeid integer NOT NULL,
    printtype character varying(255) NOT NULL
);


ALTER TABLE public.printtype OWNER TO wzyapcqy;

--
-- Name: printtype_printtypeid_seq; Type: SEQUENCE; Schema: public; Owner: wzyapcqy
--

CREATE SEQUENCE public.printtype_printtypeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.printtype_printtypeid_seq OWNER TO wzyapcqy;

--
-- Name: printtype_printtypeid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wzyapcqy
--

ALTER SEQUENCE public.printtype_printtypeid_seq OWNED BY public.printtype.printtypeid;


--
-- Name: product; Type: TABLE; Schema: public; Owner: wzyapcqy
--

CREATE TABLE public.product (
    productid integer NOT NULL,
    name character varying,
    sizex integer,
    sizey integer,
    sizez integer
);


ALTER TABLE public.product OWNER TO wzyapcqy;

--
-- Name: product_productid_seq; Type: SEQUENCE; Schema: public; Owner: wzyapcqy
--

ALTER TABLE public.product ALTER COLUMN productid ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.product_productid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: status; Type: TABLE; Schema: public; Owner: wzyapcqy
--

CREATE TABLE public.status (
    statusid integer NOT NULL,
    status character varying(255) NOT NULL
);


ALTER TABLE public.status OWNER TO wzyapcqy;

--
-- Name: status_statusid_seq; Type: SEQUENCE; Schema: public; Owner: wzyapcqy
--

CREATE SEQUENCE public.status_statusid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.status_statusid_seq OWNER TO wzyapcqy;

--
-- Name: status_statusid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: wzyapcqy
--

ALTER SEQUENCE public.status_statusid_seq OWNED BY public.status.statusid;


--
-- Name: city cityid; Type: DEFAULT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.city ALTER COLUMN cityid SET DEFAULT nextval('public.city_cityid_seq'::regclass);


--
-- Name: printer printerid; Type: DEFAULT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.printer ALTER COLUMN printerid SET DEFAULT nextval('public.printer_printerid_seq'::regclass);


--
-- Name: printtype printtypeid; Type: DEFAULT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.printtype ALTER COLUMN printtypeid SET DEFAULT nextval('public.printtype_printtypeid_seq'::regclass);


--
-- Name: status statusid; Type: DEFAULT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.status ALTER COLUMN statusid SET DEFAULT nextval('public.status_statusid_seq'::regclass);


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: wzyapcqy
--

COPY public.city (cityid, city, zip) FROM stdin;
0	Sierre	3960
1	Collombey	1868
2	Monthey	1870
3	Val d'Illiez	1873
4	Morgins	1875
5	Saint-Maurice (Valais)	1890
6	Miex	1896
7	Bouveret	1897
8	Saint-Gingolph (Valais)	1898
9	Mauvoisin	1948
10	Sion (Valais)	1950
11	Martigny	1920
12	Martigny-Croix	1921
13	Finhaut	1925
14	Verbier	1936
15	Champex-Lac	1938
16	Praz-de-Fort	1943
17	La Fouly	1944
18	Liddes	1945
19	Bourg-Saint-Pierre	1946
20	Zermatt	3920
21	Saint-Nicolas (Valais)	3924
22	Täsch	3929
23	Viège	3930
24	Evolène	1983
25	Arolla	1986
26	Chalais (Valais)	3966
27	Montana (Valais)	3962
28	Mollens (Valais)	3974
29	Haute Nendaz	1997
30	Mund (Valais)	3900
31	Bitsch (Valais)	3903
32	Saas-Almagell	3905
33	Zwischbergen	3907
34	Termen	3910
35	Belalp	3914
36	Blatten	3919
37	Goppisberg	3983
38	Fiesch	3984
39	Obergesteln	3988
40	Biel (Valais)	3989
41	Bettmeralp	3992
42	Ausserbinn	3995
43	Binn	3996
44	Oberwald	3999
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: wzyapcqy
--

COPY public.customer (customerid, fname, lname, email, address, cityid) FROM stdin;
34	Steven	Black	anna67@example.org	Route Du Siuuu	14
11	Leslie	Williams	angela39@example.net	Route Du Siuuu	20
15	Christine	Barber	curtis30@example.net	Route Du Siuuu	39
17	Michael	Smith	kellerdylan@example.org	Route Du Siuuu	12
12	Lynn	Anderson	paulhernandez@example.com	Route Du Siuuu	42
13	Natalie	Brown	clarenceprice@example.org	Route Du Siuuu	30
14	Nicole	Hansen	burnsrobert@example.com	Route Du Siuuu	35
21	Brenda	Juarez	collinsangela@example.org	Route Du Siuuu	8
19	Joshua	Powell	raysabrina@example.net	Route Du Siuuu	10
18	Tyler	Owens	marycruz@example.org	Route Du Siuuu	11
16	Blake	Jordan	gracenelson@example.com	Route Du Siuuu	30
23	Jonathan	Christian	medinamegan@example.com	Route Du Siuuu	12
27	Jason	Collins	leahbrown@example.com	Route Du Siuuu	42
29	Michael	Manning	cowanrodney@example.com	Route Du Siuuu	24
5	Donna	Lopez	pwilliams@example.org	Route Du Siuuu	34
31	Logan	Harper	fletcherkaylee@example.com	Route Du Siuuu	43
33	Michael	Brown	icrawford@example.org	Route Du Siuuu	28
25	Lisa	Ward	buckleyjoseph@example.com	Route Du Siuuu	30
24	Adam	Shelton	lisa28@example.com	Route Du Siuuu	3
22	Valerie	Torres	heatherdecker@example.com	Route Du Siuuu	42
40	Jenna	Green	xjohnson@example.com	Route Du Siuuu	19
41	Raymond	Watkins	wilcoxdebra@example.org	Route Du Siuuu	5
42	Russell	Copeland	mhamilton@example.com	Route Du Siuuu	28
43	Diane	Sellers	abbottmegan@example.com	Route Du Siuuu	25
44	Donald	Martinez	sheila82@example.org	Route Du Siuuu	39
45	Alan	Huynh	robinsonkiara@example.net	Route Du Siuuu	31
46	Brandon	Wilson	teresa20@example.com	Route Du Siuuu	20
47	Mary	Barrett	rochacaitlyn@example.com	Route Du Siuuu	27
48	Craig	Sloan	tracey78@example.org	Route Du Siuuu	35
49	Cynthia	Reyes	ztaylor@example.com	Route Du Siuuu	20
50	Jeffrey	Jackson	stephencochran@example.com	Route Du Siuuu	8
51	Kathleen	Holland	brandon69@example.com	Route Du Siuuu	29
52	Benjamin	Washington	aliciamartinez@example.org	Route Du Siuuu	42
53	Frederick	Hernandez	gtaylor@example.net	Route Du Siuuu	42
56	Marie	Stone	nwright@example.org	Route Du Siuuu	33
57	Miguel	Lopez	gmerritt@example.net	Route Du Siuuu	33
58	Sylvia	Parker	joelhawkins@example.org	Route Du Siuuu	22
59	Eric	Brady	brownjared@example.net	Route Du Siuuu	38
60	Rebecca	Ortega	dawnboyer@example.org	Route Du Siuuu	2
62	Kyle	Davis	hernandezrobert@example.org	Route Du Siuuu	44
64	Kristen	Rowe	kristin34@example.org	Route Du Siuuu	34
65	Dan	Miller	swaters@example.com	Route Du Siuuu	25
66	Jasmine	West	jacquelineelliott@example.org	Route Du Siuuu	20
67	Michael	Hernandez	allennicholas@example.com	Route Du Siuuu	10
69	Gary	Douglas	jacksontimothy@example.com	Route Du Siuuu	30
70	Jacqueline	Lewis	susan05@example.net	Route Du Siuuu	10
72	Justin	Chambers	burtonderek@example.net	Route Du Siuuu	40
74	Brandon	Perez	jacobrichardson@example.net	Route Du Siuuu	28
76	Mark	Day	cassierobinson@example.com	Route Du Siuuu	28
6	Nathaniel	Mueller	jeanette53@example.net	Route Du Siuuu	44
4	David	Smith	ngutierrez@example.net	Route Du Siuuu	10
1	John	Weiss	browncarrie@example.net	Route Du Siuuu	14
2	Jacob	Zamora	andrew14@example.org	Route Du Siuuu	7
3	Lisa	Dixon	flopez@example.net	Route Du Siuuu	13
8	Jeffery	Travis	fchan@example.org	Route Du Siuuu	41
7	Patrick	Hernandez	gonzalezcorey@example.com	Route Du Siuuu	25
9	Jacob	Jackson	ashley47@example.org	Route Du Siuuu	5
10	Matthew	Hunt	christine84@example.com	Route Du Siuuu	6
89	Janice	Morgan	salazarallison@example.com	Route Du Siuuu	20
86	Judy	Wilson	mfrye@example.com	Route Du Siuuu	29
78	Johnathan	Stewart	evelyn44@example.com	Route Du Siuuu	22
75	Jennifer	White	zdavidson@example.org	Route Du Siuuu	17
63	Charles	Scott	christinareyes@example.org	Route Du Siuuu	39
61	Troy	Yang	rachel40@example.org	Route Du Siuuu	14
68	Amy	Anderson	heather42@example.org	Route Du Siuuu	27
71	Rodney	Gillespie	jclark@example.com	Route Du Siuuu	24
73	Lisa	Horne	april52@example.net	Route Du Siuuu	26
81	Amy	Alvarez	campbellmaria@example.com	Route Du Siuuu	28
97	Angela	Collins	umclaughlin@example.org	Route Du Siuuu	44
93	Thomas	Gonzalez	amysmith@example.com	Route Du Siuuu	35
95	Jake	Jones	pateljustin@example.com	Route Du Siuuu	37
99	Nicole	Miller	tashasmith@example.net	Route Du Siuuu	42
90	Michael	Miller	kristina25@example.com	Route Du Siuuu	22
83	Patricia	Foster	wallsamanda@example.org	Route Du Siuuu	34
80	Jason	Schmitt	ahoward@example.org	Route Du Siuuu	24
77	David	Powell	mezadaniel@example.org	Route Du Siuuu	18
54	Julie	Doyle	jilltrujillo@example.com	Route Du Siuuu	42
55	Amber	Barrera	mccoyjames@example.net	Route Du Siuuu	1
20	Sabrina	Anderson	lindaparker@example.net	Route Du Siuuu	12
28	Monique	Hernandez	bsandoval@example.com	Route Du Siuuu	30
26	Nicole	Smith	amber15@example.net	Route Du Siuuu	38
30	Vanessa	Valdez	tylerleon@example.com	Route Du Siuuu	13
32	Candice	Mullen	rachel64@example.net	Route Du Siuuu	38
35	Paula	Hardy	collinspaula@example.com	Route Du Siuuu	7
36	William	Gray	jonestaylor@example.net	Route Du Siuuu	33
38	Michael	Miller	edwin43@example.net	Route Du Siuuu	36
37	Justin	Richardson	mark19@example.com	Route Du Siuuu	20
39	Ronald	Baldwin	alan53@example.org	Route Du Siuuu	3
79	Derrick	Adams	michael69@example.org	Route Du Siuuu	13
82	Sarah	Anderson	yingram@example.net	Route Du Siuuu	40
84	Christian	Jackson	victoriarichardson@example.com	Route Du Siuuu	22
85	Ricky	Wells	stephenmorales@example.org	Route Du Siuuu	30
87	John	Sullivan	williejames@example.org	Route Du Siuuu	12
88	Donna	Hall	sarah62@example.net	Route Du Siuuu	28
91	Matthew	Ward	brian53@example.com	Route Du Siuuu	42
92	James	Burton	william05@example.net	Route Du Siuuu	37
94	Christopher	Norris	robertsemily@example.net	Route Du Siuuu	15
96	Karen	Peters	myerscatherine@example.org	Route Du Siuuu	7
98	Paula	Hogan	gramos@example.org	Route Du Siuuu	6
100	Dominic	Conley	kimberlynichols@example.org	Route Du Siuuu	35
124	Jaqueline	Broyaère	blbllb	Impasse du Talent 11	4
\.


--
-- Data for Name: material; Type: TABLE DATA; Schema: public; Owner: wzyapcqy
--

COPY public.material (materialid, name, price, color, stock, materialtype) FROM stdin;
1	Micro Center Inland PLA	100	Red	20	FDM
3	Polymaker PLA	120	Green	10	FDM
5	Prusament PLA	110	Black	25	FDM
7	Micro Center Inland ABS	140	Orange	18	FDM
6	Bisofice Wasserwaschbares	130	White	30	Resine
4	Siraya Tech Sculpt 3D	200	Yellow	5	Resine
2	Creality Filament PLA	150	Blue	15	Resine
8	Purefil Filament	90	Purple	22	Resine
\.


--
-- Data for Name: orderitem; Type: TABLE DATA; Schema: public; Owner: wzyapcqy
--

COPY public.orderitem (orderid, productid, materialid, printerid, quantity) FROM stdin;
71	6	1	16	7
67	6	4	2	9
62	1	4	10	7
52	2	1	8	1
8	3	2	16	5
24	5	5	16	7
21	4	5	9	10
80	6	3	14	6
29	3	5	4	8
62	2	1	7	7
77	1	1	12	7
87	5	2	3	5
100	2	3	17	5
51	3	5	5	7
92	5	5	11	10
13	2	1	5	1
52	5	4	20	8
84	3	2	16	2
91	3	1	6	1
70	5	3	11	4
2	2	4	8	5
40	5	3	5	6
78	3	5	7	9
100	1	4	19	9
81	4	5	3	8
34	4	4	18	6
89	4	3	15	4
70	1	2	18	6
33	3	5	19	5
88	5	4	2	4
77	5	5	8	7
42	4	2	4	2
36	3	1	9	5
93	2	1	12	5
68	6	2	5	6
78	2	4	3	8
97	5	5	7	2
9	3	1	20	7
69	5	3	1	7
87	2	1	7	8
27	6	4	8	3
57	2	4	8	5
13	4	3	18	5
94	2	1	20	5
70	4	4	1	10
7	3	3	11	4
3	3	5	7	5
98	3	4	12	8
29	5	1	3	2
67	5	5	17	8
8	3	2	13	7
7	1	2	8	5
71	5	3	6	8
62	4	2	4	8
5	2	3	6	1
86	3	2	8	10
69	2	1	9	3
20	5	5	19	5
79	3	4	19	7
32	4	3	16	2
27	4	1	6	8
68	2	1	20	6
20	2	1	8	9
13	2	3	7	5
17	3	3	5	9
86	2	1	3	8
39	2	3	19	7
3	2	1	7	6
2	4	4	15	6
48	2	2	19	6
28	3	5	1	1
61	4	3	6	10
81	3	5	1	5
28	1	5	14	2
28	5	5	19	6
97	1	1	10	8
29	4	2	10	4
88	3	5	16	6
78	3	5	3	4
31	3	4	9	8
39	2	1	14	5
25	5	5	2	9
43	3	3	6	9
54	6	2	6	10
64	3	3	20	4
38	4	3	20	9
42	3	2	1	10
91	5	5	20	5
29	3	3	14	9
3	5	5	11	3
52	2	5	7	4
12	6	2	4	5
3	6	4	17	8
68	4	3	5	6
71	2	5	16	5
55	3	5	5	3
74	5	4	16	7
30	3	5	18	2
100	4	5	19	4
98	3	3	19	1
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: wzyapcqy
--

COPY public.orders (orderid, orderdate, datecompleted, customerid, finalprice, statusid) FROM stdin;
1	2023-01-04 23:00:00	2023-01-05 23:00:00	45	150	3
2	2023-01-09 23:00:00	2023-01-11 23:00:00	12	200	2
3	2023-02-02 23:00:00	\N	78	120	1
4	2023-02-14 23:00:00	2023-02-17 23:00:00	34	180	3
5	2023-03-01 23:00:00	2023-03-04 23:00:00	92	250	3
6	2023-03-09 23:00:00	\N	18	160	1
7	2023-03-31 22:00:00	2023-04-02 22:00:00	55	300	3
8	2023-04-11 22:00:00	\N	88	180	2
9	2023-05-04 22:00:00	2023-05-07 22:00:00	7	200	3
10	2023-05-19 22:00:00	\N	65	220	1
11	2023-06-01 22:00:00	2023-06-04 22:00:00	21	150	3
12	2023-06-14 22:00:00	\N	96	200	2
13	2023-06-30 22:00:00	2023-07-02 22:00:00	43	180	3
14	2023-07-09 22:00:00	\N	76	250	2
15	2023-08-04 22:00:00	2023-08-07 22:00:00	32	300	3
16	2023-08-17 22:00:00	\N	54	220	1
17	2023-09-01 22:00:00	2023-09-04 22:00:00	89	200	3
18	2023-09-19 22:00:00	\N	23	150	2
19	2023-10-04 22:00:00	2023-10-07 22:00:00	67	180	3
20	2023-10-14 22:00:00	\N	12	250	2
21	2023-10-31 23:00:00	2023-11-02 23:00:00	45	200	3
22	2023-11-09 23:00:00	\N	78	220	1
23	2023-12-04 23:00:00	2023-12-07 23:00:00	34	300	3
24	2023-12-17 23:00:00	\N	92	180	2
25	2024-01-01 23:00:00	2024-01-04 23:00:00	18	200	3
26	2024-01-19 23:00:00	\N	55	250	2
27	2024-02-04 23:00:00	2024-02-07 23:00:00	88	180	3
28	2024-02-14 23:00:00	\N	7	200	2
29	2024-02-29 23:00:00	2024-03-02 23:00:00	21	150	3
30	2024-03-09 23:00:00	\N	96	220	1
31	2024-04-04 22:00:00	2024-04-07 22:00:00	43	250	3
32	2024-04-17 22:00:00	\N	76	180	2
33	2024-05-01 22:00:00	2024-05-04 22:00:00	32	200	3
34	2024-05-19 22:00:00	\N	54	220	1
35	2024-06-04 22:00:00	2024-06-07 22:00:00	89	180	3
36	2024-06-14 22:00:00	\N	23	250	2
37	2024-06-30 22:00:00	2024-07-02 22:00:00	67	200	3
38	2024-07-09 22:00:00	\N	12	150	2
39	2024-08-04 22:00:00	2024-08-07 22:00:00	45	300	3
40	2024-08-17 22:00:00	\N	78	220	1
41	2024-09-01 22:00:00	2024-09-04 22:00:00	34	200	3
42	2024-09-19 22:00:00	\N	92	180	2
43	2024-10-04 22:00:00	2024-10-07 22:00:00	18	250	3
44	2024-10-14 22:00:00	\N	55	200	2
45	2024-10-31 23:00:00	2024-11-02 23:00:00	88	180	3
46	2024-11-09 23:00:00	\N	7	220	1
47	2024-12-04 23:00:00	2024-12-07 23:00:00	21	300	3
48	2024-12-17 23:00:00	\N	96	180	2
49	2025-01-01 23:00:00	2025-01-04 23:00:00	43	200	3
50	2025-01-19 23:00:00	\N	76	250	2
51	2025-02-04 23:00:00	2025-02-07 23:00:00	32	180	3
52	2025-02-14 23:00:00	\N	54	220	1
53	2025-02-28 23:00:00	2025-03-02 23:00:00	89	300	3
54	2025-03-09 23:00:00	\N	23	200	2
55	2025-04-04 22:00:00	2025-04-07 22:00:00	67	250	3
56	2025-04-17 22:00:00	\N	12	180	2
57	2025-05-01 22:00:00	2025-05-04 22:00:00	45	200	3
58	2025-05-19 22:00:00	\N	78	220	1
59	2025-06-04 22:00:00	2025-06-07 22:00:00	34	180	3
60	2025-06-14 22:00:00	\N	92	250	2
61	2025-06-30 22:00:00	2025-07-02 22:00:00	18	200	3
62	2025-07-09 22:00:00	\N	55	150	2
63	2025-08-04 22:00:00	2025-08-07 22:00:00	88	300	3
64	2025-08-17 22:00:00	\N	7	220	1
65	2025-09-01 22:00:00	2025-09-04 22:00:00	21	250	3
66	2025-09-19 22:00:00	\N	96	180	2
67	2025-10-04 22:00:00	2025-10-07 22:00:00	43	200	3
68	2025-10-14 22:00:00	\N	76	220	1
69	2025-10-31 23:00:00	2025-11-02 23:00:00	32	180	3
70	2025-11-09 23:00:00	\N	54	150	2
71	2025-12-04 23:00:00	2025-12-07 23:00:00	89	300	3
72	2025-12-17 23:00:00	\N	23	220	1
73	2026-01-01 23:00:00	2026-01-04 23:00:00	67	200	3
74	2026-01-19 23:00:00	\N	12	250	2
75	2026-02-04 23:00:00	2026-02-07 23:00:00	45	180	3
76	2026-02-14 23:00:00	\N	78	220	1
77	2026-02-28 23:00:00	2026-03-02 23:00:00	34	300	3
78	2026-03-09 23:00:00	\N	92	200	2
79	2026-04-04 22:00:00	2026-04-07 22:00:00	18	250	3
80	2026-04-17 22:00:00	\N	55	180	2
81	2026-05-01 22:00:00	2026-05-04 22:00:00	88	200	3
82	2026-05-19 22:00:00	\N	7	150	2
83	2026-06-04 22:00:00	2026-06-07 22:00:00	21	300	3
84	2026-06-14 22:00:00	\N	96	220	1
85	2026-06-30 22:00:00	2026-07-02 22:00:00	43	200	3
86	2026-07-09 22:00:00	\N	76	250	2
87	2026-08-04 22:00:00	2026-08-07 22:00:00	32	180	3
88	2026-08-17 22:00:00	\N	54	220	1
89	2026-09-01 22:00:00	2026-09-04 22:00:00	89	300	3
90	2026-09-19 22:00:00	\N	23	200	2
91	2026-10-04 22:00:00	2026-10-07 22:00:00	67	250	3
92	2026-10-14 22:00:00	\N	12	180	2
93	2026-10-31 23:00:00	2026-11-02 23:00:00	45	200	3
94	2026-11-09 23:00:00	\N	78	220	1
95	2026-12-04 23:00:00	2026-12-07 23:00:00	34	180	3
96	2026-12-17 23:00:00	\N	92	250	2
97	2027-01-01 23:00:00	2027-01-04 23:00:00	18	200	3
98	2027-01-19 23:00:00	\N	55	150	2
99	2027-02-04 23:00:00	2027-02-07 23:00:00	88	180	3
100	2027-02-14 23:00:00	\N	7	220	1
\.


--
-- Data for Name: printer; Type: TABLE DATA; Schema: public; Owner: wzyapcqy
--

COPY public.printer (printerid, printtype, name, printx, printy, printz, stock) FROM stdin;
11	1	Bambu Lab P1S	42	40	24	100
12	1	Creality K1	49	33	25	4
13	1	Sovol SV06	31	23	28	85
14	1	Elegoo Neptune 3 Pro	42	30	37	69
15	1	Bambu Lab X1 Carbon	32	38	29	78
16	1	Flashforge Creator Pro 2	33	35	21	8
7	1	Original Prusa Mini+	48	30	44	45
3	1	Qidi Tech X-Plus 3	45	20	21	43
9	1	Mingda Magician Pro	46	28	34	50
10	1	Bambu Lab A1 Mini	28	22	48	47
20	2	Anycubic Photon M3	35	29	23	89
2	2	Anycubic Photon Mono M5s	20	33	31	66
4	2	Anycubic Photon Mono 2	34	32	35	65
5	2	Phrozen Sonic Mighty 8K	26	46	37	34
6	2	Elegoo Jupiter	25	28	25	34
8	2	 Anycubic Photon M3 Premium	47	41	20	17
17	2	Anycubic Photon M3	50	20	20	86
19	2	Anycubic Photon Mono M5s	24	32	25	81
18	2	 Anycubic Photon M3 Premium	36	20	26	87
1	2	Elegoo Jupiter	32	24	25	36
\.


--
-- Data for Name: printermaterialcompatibility; Type: TABLE DATA; Schema: public; Owner: wzyapcqy
--

COPY public.printermaterialcompatibility (printerid, materialid) FROM stdin;
1	1
1	2
1	3
1	4
1	5
2	1
2	2
2	3
2	4
2	5
3	1
3	2
3	3
3	4
3	5
4	1
4	2
4	3
4	4
4	5
5	1
5	2
5	3
5	4
5	5
6	1
6	2
6	3
6	4
6	5
7	1
7	2
7	3
7	4
7	5
8	1
8	2
8	3
8	4
8	5
9	1
9	2
9	3
9	4
9	5
10	1
10	2
10	3
10	4
10	5
11	1
11	2
11	3
11	4
11	5
12	1
12	2
12	3
12	4
12	5
13	1
13	2
13	3
13	4
13	5
14	1
14	2
14	3
14	4
14	5
15	1
15	2
15	3
15	4
15	5
16	1
16	2
16	3
16	4
16	5
17	1
17	2
17	3
17	4
17	5
18	1
18	2
18	3
18	4
18	5
19	1
19	2
19	3
19	4
19	5
20	1
20	2
20	3
20	4
20	5
\.


--
-- Data for Name: printtype; Type: TABLE DATA; Schema: public; Owner: wzyapcqy
--

COPY public.printtype (printtypeid, printtype) FROM stdin;
1	FDM
2	Resine
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: wzyapcqy
--

COPY public.product (productid, name, sizex, sizey, sizez) FROM stdin;
1	Tour eiffel	10	13	6
2	HES SO Logo	21	26	13
3	Arc en ciel	27	9	5
4	grande dixence	23	6	28
5	Cervin	17	20	16
6	CR7	10	25	12
\.


--
-- Data for Name: status; Type: TABLE DATA; Schema: public; Owner: wzyapcqy
--

COPY public.status (statusid, status) FROM stdin;
1	Pending
2	Processing
3	Completed
\.


--
-- Name: city_cityid_seq; Type: SEQUENCE SET; Schema: public; Owner: wzyapcqy
--

SELECT pg_catalog.setval('public.city_cityid_seq', 44, true);


--
-- Name: customer_customerid_seq; Type: SEQUENCE SET; Schema: public; Owner: wzyapcqy
--

SELECT pg_catalog.setval('public.customer_customerid_seq', 124, true);


--
-- Name: material_materialid_seq; Type: SEQUENCE SET; Schema: public; Owner: wzyapcqy
--

SELECT pg_catalog.setval('public.material_materialid_seq', 8, true);


--
-- Name: orders_orderid_seq; Type: SEQUENCE SET; Schema: public; Owner: wzyapcqy
--

SELECT pg_catalog.setval('public.orders_orderid_seq', 1, true);


--
-- Name: printer_printerid_seq; Type: SEQUENCE SET; Schema: public; Owner: wzyapcqy
--

SELECT pg_catalog.setval('public.printer_printerid_seq', 1, false);


--
-- Name: printtype_printtypeid_seq; Type: SEQUENCE SET; Schema: public; Owner: wzyapcqy
--

SELECT pg_catalog.setval('public.printtype_printtypeid_seq', 2, true);


--
-- Name: product_productid_seq; Type: SEQUENCE SET; Schema: public; Owner: wzyapcqy
--

SELECT pg_catalog.setval('public.product_productid_seq', 1, false);


--
-- Name: status_statusid_seq; Type: SEQUENCE SET; Schema: public; Owner: wzyapcqy
--

SELECT pg_catalog.setval('public.status_statusid_seq', 1, false);


--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (cityid);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customerid);


--
-- Name: material material_pkey; Type: CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (materialid);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);


--
-- Name: printer printer_pkey; Type: CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.printer
    ADD CONSTRAINT printer_pkey PRIMARY KEY (printerid);


--
-- Name: printtype printtype_pkey; Type: CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.printtype
    ADD CONSTRAINT printtype_pkey PRIMARY KEY (printtypeid);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (productid);


--
-- Name: status status_pkey; Type: CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (statusid);


--
-- Name: email_Unique; Type: INDEX; Schema: public; Owner: wzyapcqy
--

CREATE UNIQUE INDEX "email_Unique" ON public.customer USING btree (email);


--
-- Name: customer customer_city_fk; Type: FK CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_city_fk FOREIGN KEY (cityid) REFERENCES public.city(cityid) ON DELETE CASCADE;


--
-- Name: orderitem orderitem_materialid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.orderitem
    ADD CONSTRAINT orderitem_materialid_fkey FOREIGN KEY (materialid) REFERENCES public.material(materialid);


--
-- Name: orderitem orderitem_orderid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.orderitem
    ADD CONSTRAINT orderitem_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid);


--
-- Name: orderitem orderitem_printer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.orderitem
    ADD CONSTRAINT orderitem_printer_fkey FOREIGN KEY (printerid) REFERENCES public.printer(printerid);


--
-- Name: orderitem orderitem_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.orderitem
    ADD CONSTRAINT orderitem_productid_fkey FOREIGN KEY (productid) REFERENCES public.product(productid);


--
-- Name: orders orders_customerid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customer(customerid);


--
-- Name: orders orders_status_fk; Type: FK CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_status_fk FOREIGN KEY (statusid) REFERENCES public.status(statusid) ON DELETE CASCADE;


--
-- Name: printer printer_type; Type: FK CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.printer
    ADD CONSTRAINT printer_type FOREIGN KEY (printtype) REFERENCES public.printtype(printtypeid) ON DELETE CASCADE;


--
-- Name: printermaterialcompatibility printermaterialcompatibility_materialid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.printermaterialcompatibility
    ADD CONSTRAINT printermaterialcompatibility_materialid_fkey FOREIGN KEY (materialid) REFERENCES public.material(materialid);


--
-- Name: printermaterialcompatibility printermaterialcompatibility_printer; Type: FK CONSTRAINT; Schema: public; Owner: wzyapcqy
--

ALTER TABLE ONLY public.printermaterialcompatibility
    ADD CONSTRAINT printermaterialcompatibility_printer FOREIGN KEY (printerid) REFERENCES public.printer(printerid) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

