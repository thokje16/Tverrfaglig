--
-- PostgreSQL database cluster dump
--

-- Started on 2024-11-22 15:19:53

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1 (Debian 17.1-1.pgdg120+1)
-- Dumped by pg_dump version 17.0

-- Started on 2024-11-22 15:19:53

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

-- Completed on 2024-11-22 15:19:53

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1 (Debian 17.1-1.pgdg120+1)
-- Dumped by pg_dump version 17.0

-- Started on 2024-11-22 15:19:53

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
-- TOC entry 224 (class 1259 OID 16414)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16413)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 226 (class 1259 OID 16423)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16422)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 222 (class 1259 OID 16407)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16406)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 228 (class 1259 OID 16430)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16439)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16438)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 229
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 227 (class 1259 OID 16429)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 227
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 232 (class 1259 OID 16446)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16445)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 231
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 234 (class 1259 OID 16505)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16504)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 233
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 220 (class 1259 OID 16398)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16397)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 219
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 218 (class 1259 OID 16389)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16388)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 217
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 235 (class 1259 OID 16534)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16544)
-- Name: store_customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.store_customer (
    id bigint NOT NULL,
    name character varying(200),
    email character varying(200),
    user_id integer
);


ALTER TABLE public.store_customer OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16543)
-- Name: store_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.store_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.store_customer_id_seq OWNER TO postgres;

--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 236
-- Name: store_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.store_customer_id_seq OWNED BY public.store_customer.id;


--
-- TOC entry 239 (class 1259 OID 16553)
-- Name: store_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.store_order (
    id bigint NOT NULL,
    date_order timestamp with time zone NOT NULL,
    complete boolean,
    transaction_id character varying(200),
    customer_id bigint
);


ALTER TABLE public.store_order OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16552)
-- Name: store_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.store_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.store_order_id_seq OWNER TO postgres;

--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 238
-- Name: store_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.store_order_id_seq OWNED BY public.store_order.id;


--
-- TOC entry 245 (class 1259 OID 16576)
-- Name: store_orderitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.store_orderitem (
    id bigint NOT NULL,
    quantity integer,
    date_added timestamp with time zone NOT NULL,
    order_id bigint,
    product_id bigint
);


ALTER TABLE public.store_orderitem OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16575)
-- Name: store_orderitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.store_orderitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.store_orderitem_id_seq OWNER TO postgres;

--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 244
-- Name: store_orderitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.store_orderitem_id_seq OWNED BY public.store_orderitem.id;


--
-- TOC entry 241 (class 1259 OID 16560)
-- Name: store_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.store_product (
    id bigint NOT NULL,
    name character varying(200),
    price double precision,
    digital boolean,
    image character varying(100)
);


ALTER TABLE public.store_product OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16559)
-- Name: store_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.store_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.store_product_id_seq OWNER TO postgres;

--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 240
-- Name: store_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.store_product_id_seq OWNED BY public.store_product.id;


--
-- TOC entry 243 (class 1259 OID 16567)
-- Name: store_shippingaddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.store_shippingaddress (
    id bigint NOT NULL,
    address character varying(200),
    city character varying(200),
    state character varying(200),
    zipcode character varying(200),
    date_added timestamp with time zone NOT NULL,
    customer_id bigint,
    order_id bigint
);


ALTER TABLE public.store_shippingaddress OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16566)
-- Name: store_shippingaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.store_shippingaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.store_shippingaddress_id_seq OWNER TO postgres;

--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 242
-- Name: store_shippingaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.store_shippingaddress_id_seq OWNED BY public.store_shippingaddress.id;


--
-- TOC entry 3282 (class 2604 OID 16417)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3283 (class 2604 OID 16426)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3281 (class 2604 OID 16410)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3284 (class 2604 OID 16433)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3285 (class 2604 OID 16442)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3286 (class 2604 OID 16449)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3287 (class 2604 OID 16508)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3280 (class 2604 OID 16401)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3279 (class 2604 OID 16392)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3288 (class 2604 OID 16547)
-- Name: store_customer id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_customer ALTER COLUMN id SET DEFAULT nextval('public.store_customer_id_seq'::regclass);


--
-- TOC entry 3289 (class 2604 OID 16556)
-- Name: store_order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_order ALTER COLUMN id SET DEFAULT nextval('public.store_order_id_seq'::regclass);


--
-- TOC entry 3292 (class 2604 OID 16579)
-- Name: store_orderitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_orderitem ALTER COLUMN id SET DEFAULT nextval('public.store_orderitem_id_seq'::regclass);


--
-- TOC entry 3290 (class 2604 OID 16563)
-- Name: store_product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_product ALTER COLUMN id SET DEFAULT nextval('public.store_product_id_seq'::regclass);


--
-- TOC entry 3291 (class 2604 OID 16570)
-- Name: store_shippingaddress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_shippingaddress ALTER COLUMN id SET DEFAULT nextval('public.store_shippingaddress_id_seq'::regclass);


--
-- TOC entry 3525 (class 0 OID 16414)
-- Dependencies: 224
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3527 (class 0 OID 16423)
-- Dependencies: 226
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3523 (class 0 OID 16407)
-- Dependencies: 222
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add customer	7	add_customer
26	Can change customer	7	change_customer
27	Can delete customer	7	delete_customer
28	Can view customer	7	view_customer
29	Can add order	8	add_order
30	Can change order	8	change_order
31	Can delete order	8	delete_order
32	Can view order	8	view_order
33	Can add product	9	add_product
34	Can change product	9	change_product
35	Can delete product	9	delete_product
36	Can view product	9	view_product
37	Can add shipping address	10	add_shippingaddress
38	Can change shipping address	10	change_shippingaddress
39	Can delete shipping address	10	delete_shippingaddress
40	Can view shipping address	10	view_shippingaddress
41	Can add order item	11	add_orderitem
42	Can change order item	11	change_orderitem
43	Can delete order item	11	delete_orderitem
44	Can view order item	11	view_orderitem
\.


--
-- TOC entry 3529 (class 0 OID 16430)
-- Dependencies: 228
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$BbOsJMV8hwkyOZguEA3Ztc$2Ko9q859B2H21/pt2ys4o7nTfWzoL30oW/G+YWImzHs=	2021-05-01 21:55:04.89+00	t	Ruhul			ruhulaminparvez007@gmail.com	t	t	2021-05-01 21:54:14.141+00
2	pbkdf2_sha256$260000$vZOeyUvhqhbpzQw1V8u0HD$vaKrJbrtqrLZbmNuQy1hSFRSIxx+k4HzaJ63zCxsq3E=	2021-09-12 18:20:01.307+00	t	ruhulaminparvez			ruhulaminparvez007@gmail.com	t	t	2021-09-10 21:46:32.832+00
5	pbkdf2_sha256$260000$toFXjwwRYL1RxQK3APFqEK$YblFQ7L0NXHxUusM0t4vsZDRSQpNaX3kDIkwXVKKnug=	2024-11-21 14:19:39.165+00	t	admin	admin	admin	admin@admin	t	t	2024-11-21 13:37:11+00
\.


--
-- TOC entry 3531 (class 0 OID 16439)
-- Dependencies: 230
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3533 (class 0 OID 16446)
-- Dependencies: 232
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3535 (class 0 OID 16505)
-- Dependencies: 234
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-05-01 21:57:06.206+00	1	Headphones	1	[{"added": {}}]	9	1
2	2021-05-01 21:57:29.64+00	1	Headphones	2	[{"changed": {"fields": ["Digital"]}}]	9	1
3	2021-05-01 21:58:20.765+00	2	Mount of Olives Book	1	[{"added": {}}]	9	1
4	2021-05-01 21:58:48.955+00	3	Project Source Code	1	[{"added": {}}]	9	1
5	2021-05-01 21:59:12.968+00	4	Watch	1	[{"added": {}}]	9	1
6	2021-05-01 21:59:27.169+00	5	Shoes	1	[{"added": {}}]	9	1
7	2021-05-01 21:59:41.924+00	6	T-shirt	1	[{"added": {}}]	9	1
8	2021-05-04 17:01:57.969+00	6	T-shirt	2	[{"changed": {"fields": ["Image"]}}]	9	1
9	2021-05-04 17:02:12.972+00	5	Shoes	2	[{"changed": {"fields": ["Image"]}}]	9	1
10	2021-05-04 17:02:25.83+00	4	Watch	2	[{"changed": {"fields": ["Image"]}}]	9	1
11	2021-05-04 17:02:41.641+00	3	Project Source Code	2	[{"changed": {"fields": ["Image"]}}]	9	1
12	2021-05-04 17:02:56.901+00	2	Mount of Olives Book	2	[{"changed": {"fields": ["Image"]}}]	9	1
13	2021-05-04 17:03:12.226+00	1	Headphones	2	[{"changed": {"fields": ["Image"]}}]	9	1
14	2021-05-04 17:42:14.044+00	6	Buds	2	[{"changed": {"fields": ["Name", "Image"]}}]	9	1
15	2021-05-04 17:42:29.799+00	4	Watch	2	[{"changed": {"fields": ["Image"]}}]	9	1
16	2021-05-04 17:43:03.649+00	3	Bag	2	[{"changed": {"fields": ["Name", "Image"]}}]	9	1
17	2021-05-04 17:43:14.386+00	2	Mount of Olives Book	2	[{"changed": {"fields": ["Image"]}}]	9	1
18	2021-05-04 17:50:31.805+00	6	Plant	2	[{"changed": {"fields": ["Name", "Image"]}}]	9	1
19	2021-05-04 17:51:13.585+00	3	Camera	2	[{"changed": {"fields": ["Name", "Price", "Image"]}}]	9	1
20	2021-05-04 17:55:32.072+00	6	Plant	2	[{"changed": {"fields": ["Image"]}}]	9	1
21	2021-05-04 17:55:47.982+00	3	Camera	2	[{"changed": {"fields": ["Image"]}}]	9	1
22	2021-05-04 17:58:52.964+00	4	Watch	2	[{"changed": {"fields": ["Image"]}}]	9	1
23	2021-05-04 20:51:44.674+00	7	Air Buds	1	[{"added": {}}]	9	1
24	2021-05-04 20:52:31.821+00	8	Cap	1	[{"added": {}}]	9	1
25	2021-05-04 20:53:24.945+00	9	Sun Glass	1	[{"added": {}}]	9	1
26	2021-05-04 20:54:33.916+00	10	Face Wash	1	[{"added": {}}]	9	1
27	2021-05-04 20:55:16.684+00	11	Perfume	1	[{"added": {}}]	9	1
28	2021-05-04 20:56:16.341+00	12	Mobile	1	[{"added": {}}]	9	1
29	2021-05-04 20:57:03.977+00	13	Shirt	1	[{"added": {}}]	9	1
30	2021-05-04 20:57:24.179+00	14	T-shirt	1	[{"added": {}}]	9	1
31	2021-05-04 20:57:53.302+00	15	Travel Bag	1	[{"added": {}}]	9	1
32	2021-05-06 17:56:06.3+00	1	Ruhul Amin	1	[{"added": {}}]	7	1
33	2021-05-06 17:57:01.833+00	1	1	1	[{"added": {}}]	8	1
34	2021-05-06 17:58:08.442+00	1	OrderItem object (1)	1	[{"added": {}}]	11	1
35	2021-05-06 17:58:29.47+00	2	OrderItem object (2)	1	[{"added": {}}]	11	1
36	2021-05-06 19:33:24.237+00	10	Face Wash	2	[{"changed": {"fields": ["Image"]}}]	9	1
37	2021-05-06 19:35:49.812+00	11	Perfume	2	[{"changed": {"fields": ["Image"]}}]	9	1
38	2021-05-06 19:37:00.948+00	11	Perfume	2	[{"changed": {"fields": ["Image"]}}]	9	1
39	2021-05-06 19:37:41.379+00	11	Perfume	2	[{"changed": {"fields": ["Image"]}}]	9	1
40	2021-05-06 19:37:51.788+00	11	Perfume	2	[{"changed": {"fields": ["Image"]}}]	9	1
41	2021-05-06 19:38:54.181+00	11	Perfume	2	[{"changed": {"fields": ["Image"]}}]	9	1
42	2021-05-06 19:39:54.335+00	11	Perfume	2	[{"changed": {"fields": ["Image"]}}]	9	1
43	2021-05-06 19:40:36.819+00	11	Perfume	2	[{"changed": {"fields": ["Image"]}}]	9	1
44	2021-05-06 19:40:53.2+00	11	Perfume	2	[]	9	1
45	2021-05-06 19:41:28.144+00	11	Perfume	2	[{"changed": {"fields": ["Image"]}}]	9	1
46	2021-05-06 19:43:02.63+00	11	Perfume	2	[{"changed": {"fields": ["Image"]}}]	9	1
47	2021-05-06 19:43:24.097+00	11	Perfume	2	[{"changed": {"fields": ["Image"]}}]	9	1
48	2021-05-06 19:44:25.452+00	11	Perfume	2	[{"changed": {"fields": ["Image"]}}]	9	1
49	2021-05-06 19:44:59.199+00	11	Perfume	2	[{"changed": {"fields": ["Image"]}}]	9	1
50	2021-05-06 19:50:00.419+00	11	Speaker	2	[{"changed": {"fields": ["Name", "Price", "Image"]}}]	9	1
51	2021-05-06 19:51:44.61+00	4	Watch	2	[{"changed": {"fields": ["Image"]}}]	9	1
52	2021-09-10 21:48:31.154+00	1	OrderItem object (1)	3		11	2
53	2021-09-10 21:48:36.254+00	2	OrderItem object (2)	3		11	2
54	2021-09-10 21:48:45.589+00	1	1	3		8	2
55	2021-09-10 21:49:34.862+00	1	Ruhul Amin	3		7	2
56	2021-09-10 21:50:08.764+00	2	ruhulamin	1	[{"added": {}}]	7	2
57	2021-09-10 21:50:34.978+00	2	ruhulamin	3		7	2
58	2021-09-10 21:51:51.59+00	3	Ruhul Amin Parvez	1	[{"added": {}}]	7	2
59	2021-09-10 21:52:38.089+00	2	2	1	[{"added": {}}]	8	2
60	2021-09-10 21:52:42.774+00	3	OrderItem object (3)	1	[{"added": {}}]	11	2
61	2021-09-10 21:52:58.629+00	4	OrderItem object (4)	1	[{"added": {}}]	11	2
62	2021-09-11 10:36:27.375+00	2	Mount of Olives Book	2	[{"changed": {"fields": ["Digital"]}}]	9	2
63	2021-09-12 18:14:13.766+00	16	Sneakers	1	[{"added": {}}]	9	2
64	2021-09-12 18:14:36.906+00	17	Book	1	[{"added": {}}]	9	2
65	2021-09-12 18:15:01.784+00	18	Shirt	1	[{"added": {}}]	9	2
66	2021-09-12 18:16:16.226+00	18	Shirt	3		9	2
67	2021-09-12 18:16:27.105+00	17	Book	3		9	2
68	2021-09-12 18:16:36.019+00	16	Sneakers	3		9	2
69	2021-09-12 18:17:12.187+00	19	Sneakers	1	[{"added": {}}]	9	2
70	2021-09-12 18:17:43.912+00	20	Yellow Shirt	1	[{"added": {}}]	9	2
71	2021-09-12 18:18:02.307+00	21	Book	1	[{"added": {}}]	9	2
72	2021-09-12 18:20:37.731+00	22	Headsphones	1	[{"added": {}}]	9	2
73	2021-09-12 18:20:51.132+00	22	Headsphones	3		9	2
74	2021-09-12 18:26:54.679+00	21	Book	3		9	2
75	2021-09-12 18:26:54.794+00	20	Yellow Shirt	3		9	2
76	2021-09-12 18:26:54.907+00	19	Sneakers	3		9	2
77	2021-09-12 18:27:36.541+00	23	Sneakers	1	[{"added": {}}]	9	2
78	2021-09-12 18:27:53.721+00	24	Yellow Shirt	1	[{"added": {}}]	9	2
79	2021-09-12 18:28:14.387+00	25	Book	1	[{"added": {}}]	9	2
80	2024-11-21 14:18:29.997+00	24	Yellow Shirt	2	[{"changed": {"fields": ["Image"]}}]	9	5
81	2024-11-21 14:20:00.192+00	5	newUser	2	[{"changed": {"fields": ["User"]}}]	7	5
82	2024-11-22 11:52:56.806472+00	26	Blow up doll	1	[{"added": {}}]	9	5
\.


--
-- TOC entry 3521 (class 0 OID 16398)
-- Dependencies: 220
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	store	customer
8	store	order
9	store	product
10	store	shippingaddress
11	store	orderitem
\.


--
-- TOC entry 3519 (class 0 OID 16389)
-- Dependencies: 218
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2024-11-22 11:35:16.568515+00
2	auth	0001_initial	2024-11-22 11:35:16.612259+00
3	admin	0001_initial	2024-11-22 11:35:16.631008+00
4	admin	0002_logentry_remove_auto_add	2024-11-22 11:35:16.639264+00
5	admin	0003_logentry_add_action_flag_choices	2024-11-22 11:35:16.649363+00
6	contenttypes	0002_remove_content_type_name	2024-11-22 11:35:16.674139+00
7	auth	0002_alter_permission_name_max_length	2024-11-22 11:35:16.683289+00
8	auth	0003_alter_user_email_max_length	2024-11-22 11:35:16.692135+00
9	auth	0004_alter_user_username_opts	2024-11-22 11:35:16.700922+00
10	auth	0005_alter_user_last_login_null	2024-11-22 11:35:16.709671+00
11	auth	0006_require_contenttypes_0002	2024-11-22 11:35:16.714719+00
12	auth	0007_alter_validators_add_error_messages	2024-11-22 11:35:16.723718+00
13	auth	0008_alter_user_username_max_length	2024-11-22 11:35:16.734387+00
14	auth	0009_alter_user_last_name_max_length	2024-11-22 11:35:16.744367+00
15	auth	0010_alter_group_name_max_length	2024-11-22 11:35:16.755236+00
16	auth	0011_update_proxy_permissions	2024-11-22 11:35:16.764062+00
17	auth	0012_alter_user_first_name_max_length	2024-11-22 11:35:16.773062+00
18	sessions	0001_initial	2024-11-22 11:35:16.786605+00
19	store	0001_initial	2024-11-22 11:35:16.827651+00
20	store	0002_product_image	2024-11-22 11:35:16.835651+00
\.


--
-- TOC entry 3536 (class 0 OID 16534)
-- Dependencies: 235
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
1kiblatncpjanntl9v9huwcrsnoi5qjt	.eJxVjDkOwjAUBe_iGlmRt8SU9JzB-ptxANlSnFSIu0OkFNC-mXkvlWBbS9q6LGlmdVZenX43BHpI3QHfod6aplbXZUa9K_qgXV8by_NyuH8HBXr51tGLM-CIRzuQRfYuC9pAPhMHoCkE5y0ReDdwxNFmjGKzYZRgACZS7w8F9Dkk:1tE81z:QQbYqBIygcvhkeU5q5WYS7B0PHl_L3OzzxOSoj8ZSwo	2024-12-05 14:19:39.172+00
ougnj1vmhfzfv5vgwzjuyhtj3n39djjl	.eJxVjEEOwiAQAP_C2ZAutAgevfuGZmF3pWogKe3J-HdD0oNeZybzVjPuW573xuu8kLooo06_LGJ6cumCHljuVadatnWJuif6sE3fKvHrerR_g4wt920SQLEIYyBwwZsEjicn0Q7IMVimIbjxDB45sJDzYiZrABIZCYyoPl_uFzhl:1mP0m6:JwPCoMDUiKJypR_jYSiA6p0JUcC32yJ-jE95t5_6wZ4	2021-09-25 11:02:22.312+00
txkrzn4u97bgf4wqifikf600qomo31jr	.eJxVjDEOwjAMRe-SGUXgNLhhZO8ZIjt2SAGlUtNOiLtDpQ6w_vfef5lI61Li2nSOo5iLOZnD78aUHlo3IHeqt8mmqS7zyHZT7E6bHSbR53V3_w4KtfKtHQhSAD2T-tz7lDsOkpMTRgbCDCCdl4wSwLmsQD0eSRM6jwiS2Lw_Dis4_g:1lcxZp:2mUKHVc1sILArTDgqVvWirNblOF56I8zI16j9Y367Zk	2021-05-15 21:55:05.04+00
\.


--
-- TOC entry 3538 (class 0 OID 16544)
-- Dependencies: 237
-- Data for Name: store_customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store_customer (id, name, email, user_id) FROM stdin;
3	Ruhul Amin Parvez	ruhulaminparvez007@gmail.com	2
4	SABINA	varsityworks03@gmail.com	\N
5	newUser	new@gmail.com	5
\.


--
-- TOC entry 3540 (class 0 OID 16553)
-- Dependencies: 239
-- Data for Name: store_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store_order (id, date_order, complete, transaction_id, customer_id) FROM stdin;
2	2021-09-10 21:52:38.087+00	t	1631359677.328553	3
3	2021-09-11 11:27:59.521+00	t	1631359758.336635	3
4	2021-09-11 11:29:21.915+00	t	1631359775.958279	3
5	2021-09-11 11:29:37.47+00	t	1631360076.076647	3
6	2021-09-11 11:34:37.914+00	t	1631360093.823332	3
7	2021-09-11 11:34:55.503+00	t	1631385779.297626	3
8	2021-09-11 18:43:01.777+00	t	1631437861.2598	3
9	2021-09-12 09:11:03.127+00	t	1631469152.192069	3
10	2021-09-12 17:52:35.484+00	t	1631469305.647263	3
11	2021-09-12 17:55:08.173+00	t	1631469499.488966	3
12	2021-09-12 17:58:21.81+00	t	1631471384.985449	3
13	2021-09-12 17:59:41.394+00	t	1631469580.957803	4
14	2021-09-12 18:29:45.738+00	f	\N	3
15	2021-09-12 18:31:09.445+00	t	1631471469.085241	5
16	2024-11-21 14:20:04.498+00	f	\N	5
\.


--
-- TOC entry 3546 (class 0 OID 16576)
-- Dependencies: 245
-- Data for Name: store_orderitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store_orderitem (id, quantity, date_added, order_id, product_id) FROM stdin;
10	1	2021-09-11 11:24:53.102+00	2	1
11	1	2021-09-11 11:29:12.463+00	3	3
12	1	2021-09-11 11:29:24.848+00	4	2
13	1	2021-09-11 11:34:29.044+00	5	2
14	1	2021-09-11 11:34:42.677+00	6	6
15	1	2021-09-11 18:42:44.021+00	7	3
16	1	2021-09-12 09:10:45.701+00	8	2
17	1	2021-09-12 09:10:48.235+00	8	3
19	1	2021-09-12 09:27:16.999+00	9	1
20	1	2021-09-12 09:27:19.279+00	9	3
23	1	2021-09-12 17:54:17.934+00	10	14
24	1	2021-09-12 17:54:20.218+00	10	15
25	1	2021-09-12 17:54:23.221+00	10	13
27	2	2021-09-12 17:57:03.504+00	11	5
28	1	2021-09-12 17:57:08.87+00	11	6
29	2	2021-09-12 17:57:13.31+00	11	14
30	1	2021-09-12 17:57:15.444+00	11	13
31	3	2021-09-12 17:59:41.641+00	13	1
32	2	2021-09-12 17:59:41.889+00	13	14
33	1	2021-09-12 17:59:42.094+00	13	15
35	2	2021-09-12 18:28:31.637+00	12	24
37	2	2021-09-12 18:28:38.812+00	12	15
38	2	2021-09-12 18:28:41.065+00	12	13
39	2	2021-09-12 18:31:09.734+00	15	2
40	1	2021-09-12 18:31:09.92+00	15	3
41	1	2024-11-22 12:19:56.110621+00	16	2
42	1	2024-11-22 12:20:08.287658+00	16	3
\.


--
-- TOC entry 3542 (class 0 OID 16560)
-- Dependencies: 241
-- Data for Name: store_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store_product (id, name, price, digital, image) FROM stdin;
1	Headphones	179	f	headphones.jpg
2	Mount of Olives Book	14.99	t	book.jpg
3	Camera	599.99	t	camera.jpg
4	Watch	259	f	apple-watch.jpg
5	Shoes	150	f	shoes.jpg
6	Plant	99	f	plant.jpg
7	Air Buds	50.99	f	buds.jpg
8	Cap	25	f	cap.jpg
9	Sun Glass	20	f	sun-glass.jpg
10	Face Wash	15.99	f	facewash.jpg
11	Speaker	125	f	speaker.jpg
12	Mobile	100	f	mobile.jpg
13	Shirt	39.99	f	shirt.jpg
14	T-shirt	25.99	f	tshirt.jpg
15	Travel Bag	55.99	f	travel-bag.jpg
23	Sneakers	350	f	sneakers_Hb2Op4C.jpg
24	Yellow Shirt	150	f	Skjermbilde_2024-10-16_083943.png
25	Book	50	t	book-another_K1HOPeg.jpg
26	Blow up doll	420.69	f	blowupdoll.jpg
\.


--
-- TOC entry 3544 (class 0 OID 16567)
-- Dependencies: 243
-- Data for Name: store_shippingaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.store_shippingaddress (id, address, city, state, zipcode, date_added, customer_id, order_id) FROM stdin;
1	Dhaka	Dhaka	Dhaka	3310	2021-09-11 11:27:57.524+00	3	2
2	bahubal	sylhet	habiganj	3310	2021-09-11 11:34:53.922+00	3	6
3	Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet	Dhaka	Dhaka	3310	2021-09-12 17:52:32.398+00	3	9
4	Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet	Habiganj	Dhaka	3310	2021-09-12 17:55:05.814+00	3	10
5	Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet	Dhaka	Dhaka	3310	2021-09-12 17:58:19.795+00	3	11
6	Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet	Dhaka	Dhaka	3310	2021-09-12 17:59:42.625+00	4	13
7	Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet	Dhaka	Dhaka	3310	2021-09-12 18:29:45.154+00	3	12
\.


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 229
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 227
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 5, true);


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 231
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 233
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 82, true);


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 219
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 217
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 236
-- Name: store_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_customer_id_seq', 5, true);


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 238
-- Name: store_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_order_id_seq', 16, true);


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 244
-- Name: store_orderitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_orderitem_id_seq', 42, true);


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 240
-- Name: store_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_product_id_seq', 26, true);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 242
-- Name: store_shippingaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.store_shippingaddress_id_seq', 7, true);


--
-- TOC entry 3307 (class 2606 OID 16532)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3312 (class 2606 OID 16462)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3315 (class 2606 OID 16428)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3309 (class 2606 OID 16419)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3302 (class 2606 OID 16453)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3304 (class 2606 OID 16412)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3323 (class 2606 OID 16444)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3326 (class 2606 OID 16477)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3317 (class 2606 OID 16435)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3329 (class 2606 OID 16451)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3332 (class 2606 OID 16491)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3320 (class 2606 OID 16527)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3335 (class 2606 OID 16513)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3297 (class 2606 OID 16405)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3299 (class 2606 OID 16403)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3295 (class 2606 OID 16396)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3339 (class 2606 OID 16540)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3342 (class 2606 OID 16549)
-- Name: store_customer store_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_customer
    ADD CONSTRAINT store_customer_pkey PRIMARY KEY (id);


--
-- TOC entry 3344 (class 2606 OID 16551)
-- Name: store_customer store_customer_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_customer
    ADD CONSTRAINT store_customer_user_id_key UNIQUE (user_id);


--
-- TOC entry 3347 (class 2606 OID 16558)
-- Name: store_order store_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_order
    ADD CONSTRAINT store_order_pkey PRIMARY KEY (id);


--
-- TOC entry 3356 (class 2606 OID 16581)
-- Name: store_orderitem store_orderitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_orderitem
    ADD CONSTRAINT store_orderitem_pkey PRIMARY KEY (id);


--
-- TOC entry 3349 (class 2606 OID 16565)
-- Name: store_product store_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_product
    ADD CONSTRAINT store_product_pkey PRIMARY KEY (id);


--
-- TOC entry 3353 (class 2606 OID 16574)
-- Name: store_shippingaddress store_shippingaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_shippingaddress
    ADD CONSTRAINT store_shippingaddress_pkey PRIMARY KEY (id);


--
-- TOC entry 3305 (class 1259 OID 16533)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3310 (class 1259 OID 16473)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3313 (class 1259 OID 16474)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3300 (class 1259 OID 16459)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3321 (class 1259 OID 16489)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3324 (class 1259 OID 16488)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3327 (class 1259 OID 16503)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3330 (class 1259 OID 16502)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3318 (class 1259 OID 16528)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3333 (class 1259 OID 16524)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3336 (class 1259 OID 16525)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3337 (class 1259 OID 16542)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3340 (class 1259 OID 16541)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3345 (class 1259 OID 16592)
-- Name: store_order_customer_id_13d6d43e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX store_order_customer_id_13d6d43e ON public.store_order USING btree (customer_id);


--
-- TOC entry 3354 (class 1259 OID 16615)
-- Name: store_orderitem_order_id_acf8722d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX store_orderitem_order_id_acf8722d ON public.store_orderitem USING btree (order_id);


--
-- TOC entry 3357 (class 1259 OID 16616)
-- Name: store_orderitem_product_id_f2b098d4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX store_orderitem_product_id_f2b098d4 ON public.store_orderitem USING btree (product_id);


--
-- TOC entry 3350 (class 1259 OID 16603)
-- Name: store_shippingaddress_customer_id_66e362a6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX store_shippingaddress_customer_id_66e362a6 ON public.store_shippingaddress USING btree (customer_id);


--
-- TOC entry 3351 (class 1259 OID 16604)
-- Name: store_shippingaddress_order_id_e6decfbb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX store_shippingaddress_order_id_e6decfbb ON public.store_shippingaddress USING btree (order_id);


--
-- TOC entry 3359 (class 2606 OID 16468)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3360 (class 2606 OID 16463)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3358 (class 2606 OID 16454)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3361 (class 2606 OID 16483)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3362 (class 2606 OID 16478)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3363 (class 2606 OID 16497)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3364 (class 2606 OID 16492)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3365 (class 2606 OID 16514)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3366 (class 2606 OID 16519)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3367 (class 2606 OID 16582)
-- Name: store_customer store_customer_user_id_04276401_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_customer
    ADD CONSTRAINT store_customer_user_id_04276401_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3368 (class 2606 OID 16587)
-- Name: store_order store_order_customer_id_13d6d43e_fk_store_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_order
    ADD CONSTRAINT store_order_customer_id_13d6d43e_fk_store_customer_id FOREIGN KEY (customer_id) REFERENCES public.store_customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3371 (class 2606 OID 16605)
-- Name: store_orderitem store_orderitem_order_id_acf8722d_fk_store_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_orderitem
    ADD CONSTRAINT store_orderitem_order_id_acf8722d_fk_store_order_id FOREIGN KEY (order_id) REFERENCES public.store_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3372 (class 2606 OID 16610)
-- Name: store_orderitem store_orderitem_product_id_f2b098d4_fk_store_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_orderitem
    ADD CONSTRAINT store_orderitem_product_id_f2b098d4_fk_store_product_id FOREIGN KEY (product_id) REFERENCES public.store_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3369 (class 2606 OID 16593)
-- Name: store_shippingaddress store_shippingaddress_customer_id_66e362a6_fk_store_customer_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_shippingaddress
    ADD CONSTRAINT store_shippingaddress_customer_id_66e362a6_fk_store_customer_id FOREIGN KEY (customer_id) REFERENCES public.store_customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3370 (class 2606 OID 16598)
-- Name: store_shippingaddress store_shippingaddress_order_id_e6decfbb_fk_store_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.store_shippingaddress
    ADD CONSTRAINT store_shippingaddress_order_id_e6decfbb_fk_store_order_id FOREIGN KEY (order_id) REFERENCES public.store_order(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2024-11-22 15:19:53

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-11-22 15:19:53

--
-- PostgreSQL database cluster dump complete
--

