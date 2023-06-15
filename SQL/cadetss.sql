--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.25
-- Dumped by pg_dump version 9.5.25

-- Started on 2022-05-02 08:10:06

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2199 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 193 (class 1259 OID 24738)
-- Name: cadetcrses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cadetcrses (
    id bigint NOT NULL,
    courses_id bigint NOT NULL,
    cadets_id bigint NOT NULL,
    sections_id bigint NOT NULL,
    term character varying(1) NOT NULL,
    acadyr character varying(4) NOT NULL
);


ALTER TABLE public.cadetcrses OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 24736)
-- Name: cadetcrses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cadetcrses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cadetcrses_id_seq OWNER TO postgres;

--
-- TOC entry 2200 (class 0 OID 0)
-- Dependencies: 192
-- Name: cadetcrses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cadetcrses_id_seq OWNED BY public.cadetcrses.id;


--
-- TOC entry 187 (class 1259 OID 24711)
-- Name: cadets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cadets (
    id bigint NOT NULL,
    afpsn character(5) NOT NULL,
    servid character(30),
    majid character(1),
    yrgr character(4) NOT NULL,
    oyrgr character(4) NOT NULL,
    lname character(16) NOT NULL,
    fname character(25) NOT NULL,
    aname character(4),
    mname character(16),
    initls character(8),
    gender character(1) NOT NULL,
    bdate timestamp(0) without time zone,
    bplace character(30),
    papa character(30),
    padead bytea,
    mama character(30),
    madead bytea,
    guardian character(30),
    addr1 character(60),
    addr2 character(40),
    zipcode character(4),
    region character(4),
    highsch character(30),
    height double precision,
    eescore double precision,
    math numeric(18,0),
    engl numeric(18,0),
    spma numeric(18,0),
    coy character(1),
    battalion character(1),
    battalion2 character(1),
    cstat character(1),
    remarks character(30),
    pix character(191),
    dategrad character(20),
    degree character(20),
    graduate character(1),
    password character(10),
    coybat character(10)
);


ALTER TABLE public.cadets OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 24709)
-- Name: cadets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cadets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cadets_id_seq OWNER TO postgres;

--
-- TOC entry 2201 (class 0 OID 0)
-- Dependencies: 186
-- Name: cadets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cadets_id_seq OWNED BY public.cadets.id;


--
-- TOC entry 191 (class 1259 OID 24730)
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    id bigint NOT NULL,
    departments_id bigint NOT NULL,
    ccode character varying(10) NOT NULL,
    cname character varying(10) NOT NULL,
    description character varying(50) NOT NULL,
    units character varying(2) NOT NULL
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 24728)
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_id_seq OWNER TO postgres;

--
-- TOC entry 2202 (class 0 OID 0)
-- Dependencies: 190
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- TOC entry 189 (class 1259 OID 24722)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    id bigint NOT NULL,
    deptcode character varying(3) NOT NULL,
    dept_desc character varying(50) NOT NULL,
    dept_intls character varying(15) NOT NULL,
    dept_letter character varying(1)
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 24720)
-- Name: departments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departments_id_seq OWNER TO postgres;

--
-- TOC entry 2203 (class 0 OID 0)
-- Dependencies: 188
-- Name: departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departments_id_seq OWNED BY public.departments.id;


--
-- TOC entry 182 (class 1259 OID 24686)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(191) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 24684)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 2204 (class 0 OID 0)
-- Dependencies: 181
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 185 (class 1259 OID 24705)
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(191) NOT NULL,
    token character varying(191) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 49277)
-- Name: sectionlists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sectionlists (
    id bigint NOT NULL,
    courses_id bigint NOT NULL,
    sec character varying(2) NOT NULL,
    cname character varying(10) NOT NULL,
    description character varying(50) NOT NULL
);


ALTER TABLE public.sectionlists OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 49275)
-- Name: sectionlists_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sectionlists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sectionlists_id_seq OWNER TO postgres;

--
-- TOC entry 2205 (class 0 OID 0)
-- Dependencies: 196
-- Name: sectionlists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sectionlists_id_seq OWNED BY public.sectionlists.id;


--
-- TOC entry 195 (class 1259 OID 24746)
-- Name: sections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sections (
    id bigint NOT NULL,
    secrank character varying(10),
    sec character varying(2),
    afpsn character(5),
    servid character(30),
    yrgr character(4),
    coy character(1),
    term character varying(1),
    acadyr character varying(4),
    majid character(1),
    cadets_id bigint
);


ALTER TABLE public.sections OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 24744)
-- Name: sections_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sections_id_seq OWNER TO postgres;

--
-- TOC entry 2206 (class 0 OID 0)
-- Dependencies: 194
-- Name: sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sections_id_seq OWNED BY public.sections.id;


--
-- TOC entry 184 (class 1259 OID 24694)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(191) NOT NULL,
    phone character varying(191) NOT NULL,
    usertype character varying(191),
    email character varying(191) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(191) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 24692)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 2207 (class 0 OID 0)
-- Dependencies: 183
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2034 (class 2604 OID 24741)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cadetcrses ALTER COLUMN id SET DEFAULT nextval('public.cadetcrses_id_seq'::regclass);


--
-- TOC entry 2031 (class 2604 OID 24714)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cadets ALTER COLUMN id SET DEFAULT nextval('public.cadets_id_seq'::regclass);


--
-- TOC entry 2033 (class 2604 OID 24733)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- TOC entry 2032 (class 2604 OID 24725)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments ALTER COLUMN id SET DEFAULT nextval('public.departments_id_seq'::regclass);


--
-- TOC entry 2029 (class 2604 OID 24689)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 2036 (class 2604 OID 49280)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sectionlists ALTER COLUMN id SET DEFAULT nextval('public.sectionlists_id_seq'::regclass);


--
-- TOC entry 2035 (class 2604 OID 24749)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sections ALTER COLUMN id SET DEFAULT nextval('public.sections_id_seq'::regclass);


--
-- TOC entry 2030 (class 2604 OID 24697)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 2186 (class 0 OID 24738)
-- Dependencies: 193
-- Data for Name: cadetcrses; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2208 (class 0 OID 0)
-- Dependencies: 192
-- Name: cadetcrses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cadetcrses_id_seq', 1, false);


--
-- TOC entry 2180 (class 0 OID 24711)
-- Dependencies: 187
-- Data for Name: cadets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cadets VALUES (25, 'FCWSJ', 'R                             ', 'B', '2021', '2021', 'Zuckerberg      ', 'Mark                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (26, 'FFPKZ', 'R                             ', 'N', '2021', '2021', 'Jobs            ', 'Steve                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (28, 'GCHMP', 'R                             ', 'M', '2021', '2021', 'Doe             ', 'John                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (29, 'GRXS3', 'R                             ', 'E', '2021', '2021', 'Hunt            ', 'Ethan                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (32, 'JJ25J', 'R                             ', 'B', '2021', '2021', 'Johnson         ', 'Carl                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (33, 'KP44N', 'R                             ', 'N', '2021', '2021', 'Townley         ', 'Michael                  ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (34, 'KW85G', 'R                             ', 'P', '2021', '2021', 'Clinton         ', 'Franklin                 ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (36, 'LYQZA', 'R                             ', 'E', '2021', '2021', 'Philips         ', 'Trevor                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (37, 'MJGKL', 'R                             ', 'A', '2021', '2021', 'Vans            ', 'Vic                      ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (39, 'NMWE7', 'R                             ', 'B', '2021', '2021', 'Weston          ', 'Devin                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (38, 'NL5U7', 'R                             ', 'I', '2021', '2021', 'Cipriani        ', 'Tony                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (40, 'NSUP2', 'R                             ', 'N', '2021', '2021', 'Haynes          ', 'Steven                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (44, 'TS62E', 'R                             ', 'A', '2021', '2021', 'Granger         ', 'Hermoine                 ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (41, 'PJ59F', 'R                             ', 'P', '2021', '2021', 'Crest           ', 'Lester                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (45, 'UJQPN', 'R                             ', 'I', '2021', '2021', 'Wesley          ', 'Ronald                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (43, 'TGD4T', 'R                             ', 'E', '2021', '2021', 'Potter          ', 'Harry                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (46, 'WXDKX', 'R                             ', 'B', '2021', '2021', 'Botigan         ', 'James                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (48, 'XSVEG', 'R                             ', 'P', '2021', '2021', 'Apoderado       ', 'Jericho                  ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (47, 'XKF9R', 'R                             ', 'N', '2021', '2021', 'De Guzman       ', 'Lemuel                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (49, 'XUJZD', 'R                             ', 'M', '2021', '2021', 'Panopio         ', 'Russel                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (51, '292F6', 'V                             ', 'A', '2021', '2021', 'Cena            ', 'John                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (7, '4AJL3', 'R                             ', 'M', '2021', '2002', 'Luna            ', 'Juan                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (50, 'YAX6T', 'R                             ', 'E', '2021', '2021', 'Cubangbang      ', 'Angelo                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (56, 'XS7CW', 'V                             ', 'M', '2021', '2021', 'Ackerman        ', 'Mikasa                   ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (52, 'E825B', 'V                             ', 'I', '2021', '2021', 'Caluza          ', 'Russel                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (57, 'JUSZ6', 'V                             ', 'E', '2021', '2021', 'Yeager          ', 'Eren                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (60, 'TGYLF', 'V                             ', 'B', '2021', '2021', 'Kirstein        ', 'Jean                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (59, 'NWBEL', 'V                             ', 'I', '2021', '2021', 'Arlert          ', 'Armin                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (63, 'UU6FJ', 'V                             ', 'M', '2021', '2021', 'Leonhart        ', 'Annie                    ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (64, '83T4H', 'V                             ', 'E', '2021', '2021', 'Smith           ', 'Erwin                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (67, 'EFDPT', 'V                             ', 'B', '2021', '2021', 'Zoe             ', 'Hanji                    ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (66, '7EZ5N', 'V                             ', 'I', '2021', '2021', 'Springer        ', 'Connie                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (68, '96W9C', 'V                             ', 'N', '2021', '2021', 'Grice           ', 'Colt                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (70, '7ECLE', 'V                             ', 'M', '2021', '2021', 'Freudenberg     ', 'Marlo                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (71, 'M69D6', 'V                             ', 'E', '2021', '2021', 'Bozad           ', 'Oruo                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (74, 'DDS5G', 'V                             ', 'B', '2021', '2021', 'Gin             ', 'Eld                      ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (73, 'WVALF', 'V                             ', 'I', '2021', '2021', 'Braun           ', 'Gabi                     ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (6, '48MHA', 'R                             ', 'P', '2021', '2022', 'Silang          ', 'Gabriela                 ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (77, 'J77ZR', 'V                             ', 'M', '2021', '2021', 'Ness            ', 'Dieter                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (78, 'WRCA7', 'V                             ', 'E', '2021', '2021', 'Cis             ', 'Luke                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (83, 'DAHY4', 'F                             ', 'P', '2021', '2021', 'Ackerman        ', 'Kenny                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (80, 'A5WGY', 'V                             ', 'I', '2021', '2021', 'Dreyse          ', 'Hitch                    ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (84, 'RLT9F', 'F                             ', 'M', '2021', '2021', 'Pyxis           ', 'Dot                      ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (87, '6NEDF', 'F                             ', 'I', '2021', '2021', 'Brzenska        ', 'Rico                     ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (86, '998KC', 'F                             ', 'A', '2021', '2021', 'Woermann        ', 'Kitz                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (89, '7ZF4Z', 'F                             ', 'N', '2021', '2021', 'Jarnach         ', 'Mitabi                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (90, 'GC788', 'F                             ', 'P', '2021', '2021', 'Sadies          ', 'Keith                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (92, '7KE6U', 'F                             ', 'E', '2021', '2021', 'Bodt            ', 'Marco                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (95, 'X4LZ5', 'F                             ', 'B', '2021', '2021', 'Zaremski        ', 'Milieus                  ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (93, 'P8DZA', 'F                             ', 'A', '2021', '2021', 'Kefka           ', 'Franz                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (96, 'K7M9F', 'F                             ', 'N', '2021', '2021', 'Tierce          ', 'Nack                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (98, 'MC8UP', 'F                             ', 'M', '2021', '2021', 'Finger          ', 'Pieck                    ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (99, 'AFJWW', 'F                             ', 'E', '2021', '2021', 'Galliard        ', 'Porco                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (27, 'FPSM4', 'R                             ', 'P', '2021', '2021', 'Bezos           ', 'Jeff                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (75, 'PPAED', 'V                             ', 'N', '2021', '2021', 'Schultz         ', 'Gunther                  ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (1, '292F5', 'R                             ', 'E', '2021', '2022', 'Dela Cruz       ', 'Juan                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (19, 'C8MWJ', 'R                             ', 'N', '2021', '2016', 'Parker          ', 'Peter                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (20, 'E2NAH', 'R                             ', 'P', '2021', '2016', 'Quill           ', 'Peter                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (11, '5TVSZ', 'R                             ', 'B', '2021', '2016', 'Stark           ', 'Tony                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (12, '64QW9', 'R                             ', 'N', '2021', '2016', 'Rogers          ', 'Steve                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (35, 'YVY6R', 'R                             ', 'M', '2021', '2021', 'De Castillo     ', 'Archiel                  ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (13, '65YQ5', 'R                             ', 'P', '2021', '2016', 'Romanoff        ', 'Natasha                  ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (42, 'QY72G', 'R                             ', 'M', '2021', '2021', 'De Santa        ', 'Jimmy                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (53, 'E934Y', 'V                             ', 'B', '2021', '2021', 'Makil           ', 'Roderick                 ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (21, 'E825A', 'R                             ', 'M', '2021', '2016', 'Lang            ', 'Scott                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (14, '7EP6N', 'R                             ', 'M', '2021', '2016', 'Odinson         ', 'Thor                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (62, '2LNQU', 'V                             ', 'P', '2021', '2021', 'Reiss           ', 'Historia                 ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (23, 'F6HRN', 'R                             ', 'A', '2021', '2016', 'Pim             ', 'Hank                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (65, '6UTTS', 'V                             ', 'A', '2021', '2021', 'Braun           ', 'Reiner                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (69, 'VJ9EF', 'V                             ', 'P', '2021', '2021', 'Braus           ', 'Sasha                    ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (54, 'TJQ3C', 'V                             ', 'N', '2021', '2021', 'Dela Cruz       ', 'Aurelio                  ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (72, 'SKFWC', 'V                             ', 'A', '2021', '2021', 'Rall            ', 'Petra                    ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (76, 'CLY4K', 'V                             ', 'P', '2021', '2021', 'Walbrunn        ', 'Darius                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (22, 'EEE5D', 'R                             ', 'E', '2021', '2016', 'Strange         ', 'Steven                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (79, 'QH9E2', 'V                             ', 'A', '2021', '2021', 'Dawk            ', 'Nile                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (81, '8KFB4', 'F                             ', 'B', '2021', '2021', 'Feulner         ', 'Boris                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (82, '2JFFU', 'F                             ', 'N', '2021', '2021', 'Aiblinger       ', 'Dennis                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (55, 'YWD39', 'V                             ', 'P', '2021', '2021', 'Uchiha          ', 'Sasuke                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (85, 'JTMEE', 'F                             ', 'E', '2021', '2021', 'Rheinberger     ', 'Anka                     ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (16, '888WE', 'R                             ', 'A', '2021', '2016', 'Fury            ', 'Nick                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (17, '8PXAJ', 'R                             ', 'I', '2021', '2016', 'Barton          ', 'Clint                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (18, 'AXKQ4', 'R                             ', 'B', '2021', '2016', 'Maximoff        ', 'Wanda                    ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (8, '4LURR', 'R                             ', 'E', '2021', '2001', 'Del Pilar       ', 'Marcelo                  ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (15, '7FXG6', 'R                             ', 'E', '2021', '2016', 'Banner          ', 'Bruce                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (24, 'F7H2L', 'R                             ', 'I', '2021', '2021', 'Gates           ', 'Bill                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (30, 'HAN8Y', 'R                             ', 'A', '2021', '2021', 'Musk            ', 'Elon                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (58, 'R66XU', 'V                             ', 'A', '2021', '2021', 'Ackerman        ', 'Levi                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (61, 'G3LNQ', 'V                             ', 'N', '2021', '2021', 'Hoover          ', 'Bertholdt                ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (88, 'RQGRP', 'F                             ', 'B', '2021', '2021', 'Dietrich        ', 'Ian                      ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (91, '2EU6F', 'F                             ', 'M', '2021', '2021', 'Diament         ', 'Hanna                    ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (94, 'FAYPS', 'F                             ', 'I', '2021', '2021', 'Carolina        ', 'Mina                     ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (97, '9HD32', 'F                             ', 'P', '2021', '2021', 'Wagner          ', 'Thomas                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (100, '79RUC', 'F                             ', 'A', '2021', '2021', 'Grice           ', 'Falco                    ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (31, 'HDFV5', 'R                             ', 'I', '2021', '2021', 'Sweet           ', 'Julie                    ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (2, '2HKNV', 'R                             ', 'A', '2021', '2022', 'Apolinario      ', 'Mabini                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (3, '2PXD7', 'R                             ', 'I', '2021', '2022', 'Bonifacio       ', 'Andres                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (4, '2WUJ2', 'R                             ', 'B', '2021', '2022', 'Rizal           ', 'Jose                     ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (5, '3RVMX', 'R                             ', 'N', '2021', '2022', 'Aguinaldo       ', 'Emilio                   ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (9, '4RBLJ', 'R                             ', 'A', '2021', '2022', 'Aquino          ', 'Melchora                 ', NULL, NULL, NULL, 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.cadets VALUES (10, '5J3BN', 'R                             ', 'I', '2021', '2022', 'Ibarra          ', 'Crisostomo               ', NULL, NULL, NULL, 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- TOC entry 2209 (class 0 OID 0)
-- Dependencies: 186
-- Name: cadets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cadets_id_seq', 101, false);


--
-- TOC entry 2184 (class 0 OID 24730)
-- Dependencies: 191
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.courses VALUES (2, 12, 'F10', 'FIL 1', 'KOMUNIKASYON SA AKADEMIKONG FILIPINO', '3');
INSERT INTO public.courses VALUES (3, 13, 'H10', 'HIST 1', 'PHILIPPINE HISTORY', '3');
INSERT INTO public.courses VALUES (4, 1, 'I10', 'IT 111', 'INFORMATION TECHNOLOGY FUNDAMENTALS I', '2');
INSERT INTO public.courses VALUES (5, 1, 'I20', 'IT 111L', 'INFORMATION TECHNOLOGY FUNDAMENTALS I', '1');
INSERT INTO public.courses VALUES (6, 14, 'T10', 'THEO 1', 'I BELIEVE', '3');
INSERT INTO public.courses VALUES (7, 10, 'C10', 'CHEM 1A', 'GENERAL AND INORGANIC CHEMISTRY 1', '3');
INSERT INTO public.courses VALUES (8, 10, 'C20', 'CHEM 1AL', 'GENERAL AND INORGANIC CHEMISTRY 1', '1');
INSERT INTO public.courses VALUES (9, 12, 'E20', 'ENGL 2', 'COMMUNICATION ARTS II', '3');
INSERT INTO public.courses VALUES (10, 12, 'F20', 'FIL 2', 'PAGBASA AT PAGSULAT TUNGO SA PANANALIKSIK', '3');
INSERT INTO public.courses VALUES (72, 5, 'I63', 'ITF 003', 'VIDEO PRODUCTION AND EDITING', '3');
INSERT INTO public.courses VALUES (14, 1, 'I30', 'IT 112', 'PROGRAMMING FUNDAMENTALS I', '2');
INSERT INTO public.courses VALUES (15, 1, 'I40', 'IT 112L', 'PROGRAMMING FUNDAMENTALS I', '1');
INSERT INTO public.courses VALUES (71, 1, 'I62', 'ITF 003', 'TECHNOLOGY CERTIFICATION REVIEW', '3');
INSERT INTO public.courses VALUES (12, 1, 'I60', 'IT 121L', 'INFORMATION TECHNOLOGY FUNDAMENTALS II', '1');
INSERT INTO public.courses VALUES (13, 1, 'I70', 'IT 122', 'PROGRAMMING FUNDAMENTALS II', '2');
INSERT INTO public.courses VALUES (11, 1, 'I50', 'IT 121', 'INFORMATION TECHNOLOGY FUNDAMENTALS II', '2');
INSERT INTO public.courses VALUES (16, 1, 'I80', 'IT 122L', 'PROGRAMMING FUNDAMENTALS II', '1');
INSERT INTO public.courses VALUES (17, 2, 'M10', 'MATH 1A', 'ALGEBRA', '3');
INSERT INTO public.courses VALUES (18, 2, 'M20', 'MATH 2A', 'PLANE AND SPHERICAL TRIGONOMETRY', '3');
INSERT INTO public.courses VALUES (19, 2, 'M30', 'MATH 3A', 'ANALYTIC GEOMETRY', '4');
INSERT INTO public.courses VALUES (20, 12, 'P10', 'PE 1', 'PHYSICAL FITNESS', '2');
INSERT INTO public.courses VALUES (21, 12, 'P20', 'PE 2', 'RHYTHMIC ACTIVITIES', '2');
INSERT INTO public.courses VALUES (22, 13, 'L10', 'PHILOS 1', 'LOGIC', '3');
INSERT INTO public.courses VALUES (23, 14, 'T20', 'THEO 2', 'BELIEVING UNTO DISCIPLESHIP', '3');
INSERT INTO public.courses VALUES (25, 5, 'I91', 'IT 131L', 'COMPUTER ARCHITECTURE', '1');
INSERT INTO public.courses VALUES (24, 5, 'I90', 'IT 131', 'COMPUTER ARCHITECTURE', '2');
INSERT INTO public.courses VALUES (26, 5, 'I92', 'IT 132', 'INFORMATION SYSTEM FUNDAMENTALS', '3');
INSERT INTO public.courses VALUES (27, 1, 'E30', 'ENGL 4A', 'EFFECTIVE COMMUNICATION WITH PHONETICS', '3');
INSERT INTO public.courses VALUES (29, 1, 'I93', 'IT 211', 'DATA STRUCTURES WITH ALGORITHM DEVELOPMENT', '2');
INSERT INTO public.courses VALUES (30, 1, 'I94', 'IT 211L', 'DATA STRUCTURES WITH ALGORITHM DEVELOPMENT', '1');
INSERT INTO public.courses VALUES (31, 2, 'M40', 'MATH 4', 'MATHEMATICAL ANALYSIS FOR BUSINESS', '3');
INSERT INTO public.courses VALUES (32, 12, 'P30', 'PE 3', 'INDIVIDUAL/DUAL SPORTS/GAMES', '2');
INSERT INTO public.courses VALUES (33, 13, 'L20', 'PHILOS 2', 'ETHICS', '3');
INSERT INTO public.courses VALUES (34, 13, 'S10', 'SOCIO 1', 'SOCIETY AND CULTURE WITH FAMILY PLANNING', '3');
INSERT INTO public.courses VALUES (35, 14, 'T30', 'THEO 3', 'DISCIPLESHIP IN COMMUNITY', '3');
INSERT INTO public.courses VALUES (36, 3, 'A10', 'ECON 1', 'BASIC ECONOMICS WITH TAXATION AND AGRARIAN REFORM', '3');
INSERT INTO public.courses VALUES (37, 12, 'E40', 'ENGL 7', 'TECHNICAL WRITING', '3');
INSERT INTO public.courses VALUES (38, 1, 'I95', 'IT 222', 'OPERATING SYSTEMS', '2');
INSERT INTO public.courses VALUES (39, 1, 'I96', 'IT 222L', 'OPERATING SYSTEMS', '1');
INSERT INTO public.courses VALUES (40, 12, 'P40', 'PE 4', 'TEAM SPORTS/GAMES', '2');
INSERT INTO public.courses VALUES (41, 6, 'C30', 'PHYS 1A', 'PHYSICS 1', '3');
INSERT INTO public.courses VALUES (42, 6, 'C40', 'PHYS 1AL', 'PHYSICS 1', '1');
INSERT INTO public.courses VALUES (43, 13, 'L30', 'PSYCHO 1', 'GENERAL PHYCHOLOGY WITH DRUG PREVENTION', '3');
INSERT INTO public.courses VALUES (44, 14, 'T40', 'THEO 4', 'LIVING LIKE JESUS', '3');
INSERT INTO public.courses VALUES (46, 4, 'N10', 'CWTS 1', 'FOUNDATIONS OF SERVICE', '3');
INSERT INTO public.courses VALUES (47, 4, 'N20', 'CWTS 2', 'SOCIAL AWARENESS AND EMPOWERMENT FOR SERVICE', '3');
INSERT INTO public.courses VALUES (48, 5, 'I97', 'IT 311', 'SOFTWARE MODELING AND ANALYSIS', '3');
INSERT INTO public.courses VALUES (49, 1, 'I98', 'IT 312', 'PROGRAMMING APPLICATIONS', '2');
INSERT INTO public.courses VALUES (50, 1, '199', 'IT 312L', 'PROGRAMMING APPLICATIONS', '1');
INSERT INTO public.courses VALUES (51, 1, 'I81', 'IT 315', 'DATABASE MANAGEMENT SYSTEMS', '2');
INSERT INTO public.courses VALUES (52, 1, 'I82', 'IT 315L', 'DATABASE MANAGEMENT SYSTEMS', '1');
INSERT INTO public.courses VALUES (53, 5, 'I83', 'IT 317', 'FINANCIAL SYSTEMS', '3');
INSERT INTO public.courses VALUES (54, 5, 'I84', 'IT 316', 'HUMAN COMPUTER INTERACTION', '3');
INSERT INTO public.courses VALUES (55, 5, 'I85', 'IT 321', 'INFORMATION MANAGEMENT CONCEPTS AND FUNDAMENTALS', '3');
INSERT INTO public.courses VALUES (73, 5, 'I64', 'IT 016', 'TECHNOLOGY CERTIFICATION REVIEW', '3');
INSERT INTO public.courses VALUES (56, 5, 'I86', 'IT 413', 'INFORMATION ASSURANCE AND SECURITY', '3');
INSERT INTO public.courses VALUES (57, 5, 'I87', 'IT 414', 'TECHNOLOGY PRESENTATION AND COMMUNICATION', '3');
INSERT INTO public.courses VALUES (58, 1, 'I88', 'IT 322', 'NETWORKS TECHNOLOGY MAINTENANCE', '2');
INSERT INTO public.courses VALUES (59, 1, '189', 'IT 322L', 'NETWORKS TECHNOLOGY MAINTENANCE', '1');
INSERT INTO public.courses VALUES (60, 1, 'I71', 'IT 323', 'INTEGRATIVE PROGRAMMING AND TECHNOLOGIES', '2');
INSERT INTO public.courses VALUES (61, 1, 'I72', 'IT 323L', 'INTEGRATIVE PROGRAMMING AND TECHNOLOGIES', '1');
INSERT INTO public.courses VALUES (62, 1, 'I73', 'IT 324', 'WEB SYSTEMS AND TECHNOLOGIES', '2');
INSERT INTO public.courses VALUES (63, 1, 'I74', 'IT 324L', 'WEB SYSTEMS AND TECHNOLOGIES', '1');
INSERT INTO public.courses VALUES (64, 5, 'I75', 'IT 314', 'SYSTEM INTEGRATION AND ARCHITECTURE', '3');
INSERT INTO public.courses VALUES (65, 1, 'I76', 'IT 325N', 'SOFTWARE ENGINEERING FUNDAMENTALS', '3');
INSERT INTO public.courses VALUES (67, 2, 'M50', 'MATH 7AN', 'FUNDAMENTALS OF PROBABILITY AND STATISTICS', '3');
INSERT INTO public.courses VALUES (66, 1, 'I77', 'IT 422', 'SOCIAL AND PROFESSIONAL ISSUES', '3');
INSERT INTO public.courses VALUES (68, 1, 'I78', 'IT 003', 'NEURAL NETWORKS', '3');
INSERT INTO public.courses VALUES (69, 5, 'I79', 'IT 004', 'KNOWLEDGE BASE AND EXPERT SYSTEMS', '3');
INSERT INTO public.courses VALUES (70, 5, 'I61', 'IT 015', 'PROGRAMMING CERTIFICATION REVIEW', '3');
INSERT INTO public.courses VALUES (74, 5, 'I65', 'IT 019', 'DIGITAL ARTS', '3');
INSERT INTO public.courses VALUES (75, 1, 'I66', 'ITF 003', 'VIDEO PRODUCTION AND EDITING', '3');
INSERT INTO public.courses VALUES (76, 1, 'I67', 'IT 423', 'INFORMATION SYSTEMS PLANNING', '3');
INSERT INTO public.courses VALUES (77, 8, 'O10', 'POLIT 1N', 'POLITICS & GOVERNANCE W/ PHILIPPINE CONSTITUTION', '3');
INSERT INTO public.courses VALUES (78, 5, 'I68', 'IT 005', 'ADVANCED DATABASE MANAGEMENT SYSTEMS', '3');
INSERT INTO public.courses VALUES (79, 5, 'I69', 'IT 009', 'DATA MINING', '2');
INSERT INTO public.courses VALUES (80, 5, 'I51', 'IT 011', 'GRAPHICS TECHNOLOGY AND ANIMATION', '2');
INSERT INTO public.courses VALUES (81, 5, 'I52', 'IT 014', 'INFORMATION TECHNOLOGY CERTIFICATION REVIEW', '3');
INSERT INTO public.courses VALUES (82, 3, 'A20', 'IT 415', 'E-COMMERCE', '2');
INSERT INTO public.courses VALUES (84, 13, 'L40', 'ITF 002', 'PERSONALITY DEVELOPMENT', '3');
INSERT INTO public.courses VALUES (1, 2, 'E10', 'ENGL 2', 'COMMUNICATION ARTS I', '3');
INSERT INTO public.courses VALUES (45, 5, 'I89', 'IT 221', 'DISCRETE MATHEMATICS', '3');
INSERT INTO public.courses VALUES (90, 10, 'H11', 'HIST 222', 'HISTORY 222', '2');
INSERT INTO public.courses VALUES (91, 1, 'H12', 'ITF 003', 'INFORMATION TECHNOLOGY FUNDAMENTALS I', '2');
INSERT INTO public.courses VALUES (83, 13, 'L31', 'ITF 001', 'FOREIGN LANGUAGE', '3');
INSERT INTO public.courses VALUES (28, 13, 'H20', 'HIST 2', 'LIFE AND WORKS OF DR JOSE RIZAL', '3');


--
-- TOC entry 2210 (class 0 OID 0)
-- Dependencies: 190
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_id_seq', 92, true);


--
-- TOC entry 2182 (class 0 OID 24722)
-- Dependencies: 189
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.departments VALUES (1, '1', 'DEPT OF COMPUTING', 'DC', 'I');
INSERT INTO public.departments VALUES (2, '2', 'DEPT OF MATHEMATICS', 'DMATH', 'M');
INSERT INTO public.departments VALUES (3, '3', 'DEPT OF ACCOUNTACY', 'DA', 'A');
INSERT INTO public.departments VALUES (5, '5', 'DEPT OF INFORMATION STUDIES', 'DIS', 'S');
INSERT INTO public.departments VALUES (6, '6', 'DEPT OF ENGINEERING', 'DE', 'E');
INSERT INTO public.departments VALUES (7, '7', 'DEPT OF ARCHITECTURE', 'DARCH', 'R');
INSERT INTO public.departments VALUES (8, '8', 'DEPT OF LAW', 'DL', 'L');
INSERT INTO public.departments VALUES (9, '10', 'DEPT OF MEDICINE', 'DMED', 'D');
INSERT INTO public.departments VALUES (10, '9', 'DEPT OF NATURAL SCIENCE', 'DNS', 'C');
INSERT INTO public.departments VALUES (11, '11', 'DEPT OF NURSING', 'DN', 'N');
INSERT INTO public.departments VALUES (12, '12', 'DEPT OF TEACHER EDUCATION', 'DTE', 'H');
INSERT INTO public.departments VALUES (13, '13', 'DEPT OF LIBERAL ARTS', 'DLA', 'B');
INSERT INTO public.departments VALUES (14, '14', 'DEPT OF THEOLOGY', 'DT', 'T');
INSERT INTO public.departments VALUES (4, '4', 'DEPT OF MANAGEMENT', 'DM', 'F');


--
-- TOC entry 2211 (class 0 OID 0)
-- Dependencies: 188
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departments_id_seq', 14, true);


--
-- TOC entry 2175 (class 0 OID 24686)
-- Dependencies: 182
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.migrations VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO public.migrations VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO public.migrations VALUES (3, '2021_09_23_074129_create_cadets_table', 1);
INSERT INTO public.migrations VALUES (4, '2021_10_15_000844_create_departments_table', 1);
INSERT INTO public.migrations VALUES (5, '2021_10_15_001255_create_courses_table', 1);
INSERT INTO public.migrations VALUES (6, '2021_10_15_001659_create_cadetcrses_table', 1);
INSERT INTO public.migrations VALUES (7, '2021_10_22_012127_create_sections_table', 1);
INSERT INTO public.migrations VALUES (8, '2021_10_22_013742_add_sec_to_sections', 2);
INSERT INTO public.migrations VALUES (9, '2021_11_04_001348_add_afpsn_and_servid_and_yrgr_and_coy_and_term_and_acadyr_to_sections', 2);
INSERT INTO public.migrations VALUES (10, '2022_02_18_062107_add_majid_to_sections_table', 3);
INSERT INTO public.migrations VALUES (11, '2022_03_14_021745_add_cadets_id_to_sections_table', 4);
INSERT INTO public.migrations VALUES (12, '2022_03_21_012438_create_sectionlists_table', 5);
INSERT INTO public.migrations VALUES (13, '2022_04_08_002609_add_dept_letter_to_departments_table', 6);


--
-- TOC entry 2212 (class 0 OID 0)
-- Dependencies: 181
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 13, true);


--
-- TOC entry 2178 (class 0 OID 24705)
-- Dependencies: 185
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2190 (class 0 OID 49277)
-- Dependencies: 197
-- Data for Name: sectionlists; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sectionlists VALUES (1, 6, 'G', 'THEO 1', 'I BELIEVE');
INSERT INTO public.sectionlists VALUES (2, 3, 'D', 'HIST 1', 'PHILIPPINE HISTORY');
INSERT INTO public.sectionlists VALUES (3, 1, 'D', 'ENGL 1', 'COMMUNICATION ARTS I');
INSERT INTO public.sectionlists VALUES (4, 12, 'A', 'IT 121L', 'INFORMATION TECHNOLOGY FUNDAMENTALS II');
INSERT INTO public.sectionlists VALUES (5, 7, 'A', 'CHEM 1A', 'GENERAL AND INORGANIC CHEMISTRY 1');
INSERT INTO public.sectionlists VALUES (7, 71, 'B', 'ITF 003', 'TECHNOLOGY CERTIFICATION REVIEW');
INSERT INTO public.sectionlists VALUES (8, 75, 'B', 'ITF 003', 'VIDEO PRODUCTION AND EDITING');
INSERT INTO public.sectionlists VALUES (9, 72, 'F', 'ITF 003', 'VIDEO PRODUCTION AND EDITING');
INSERT INTO public.sectionlists VALUES (10, 71, 'F', 'ITF 003', 'TECHNOLOGY CERTIFICATION REVIEW');
INSERT INTO public.sectionlists VALUES (12, 6, 'H', 'THEO 1', 'I BELIEVE');
INSERT INTO public.sectionlists VALUES (13, 3, 'H', 'HIST 1', 'PHILIPPINE HISTORY');
INSERT INTO public.sectionlists VALUES (14, 2, 'I', 'FIL 1', 'KOMUNIKASYON SA AKADEMIKONG FILIPINO');
INSERT INTO public.sectionlists VALUES (15, 4, 'F', 'IT 111', 'INFORMATION TECHNOLOGY FUNDAMENTALS I');
INSERT INTO public.sectionlists VALUES (16, 13, 'H', 'IT 122', 'PROGRAMMING FUNDAMENTALS II');
INSERT INTO public.sectionlists VALUES (18, 4, 'E', 'IT 111', 'INFORMATION TECHNOLOGY FUNDAMENTALS I');
INSERT INTO public.sectionlists VALUES (19, 12, 'L', 'IT 121L', 'INFORMATION TECHNOLOGY FUNDAMENTALS II');
INSERT INTO public.sectionlists VALUES (20, 15, 'M', 'IT 112L', 'PROGRAMMING FUNDAMENTALS I');


--
-- TOC entry 2213 (class 0 OID 0)
-- Dependencies: 196
-- Name: sectionlists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sectionlists_id_seq', 20, true);


--
-- TOC entry 2188 (class 0 OID 24746)
-- Dependencies: 195
-- Data for Name: sections; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sections VALUES (29, NULL, 'C', 'UU6FJ', 'V                             ', '2021', NULL, '1', '2021', 'M', 63);
INSERT INTO public.sections VALUES (30, NULL, 'C', '83T4H', 'V                             ', '2021', NULL, '1', '2021', 'E', 64);
INSERT INTO public.sections VALUES (31, NULL, 'C', 'EFDPT', 'V                             ', '2021', NULL, '1', '2021', 'B', 67);
INSERT INTO public.sections VALUES (32, NULL, 'C', '7EZ5N', 'V                             ', '2021', NULL, '1', '2021', 'I', 66);
INSERT INTO public.sections VALUES (33, NULL, 'C', '96W9C', 'V                             ', '2021', NULL, '1', '2021', 'N', 68);
INSERT INTO public.sections VALUES (34, NULL, 'C', '7ECLE', 'V                             ', '2021', NULL, '1', '2021', 'M', 70);
INSERT INTO public.sections VALUES (35, NULL, 'C', 'M69D6', 'V                             ', '2021', NULL, '1', '2021', 'E', 71);
INSERT INTO public.sections VALUES (36, NULL, 'C', 'DDS5G', 'V                             ', '2021', NULL, '1', '2021', 'B', 74);
INSERT INTO public.sections VALUES (37, NULL, 'C', 'WVALF', 'V                             ', '2021', NULL, '1', '2021', 'I', 73);
INSERT INTO public.sections VALUES (38, NULL, 'C', '48MHA', 'R                             ', '2021', NULL, '1', '2021', 'P', 6);
INSERT INTO public.sections VALUES (39, NULL, 'C', 'J77ZR', 'V                             ', '2021', NULL, '1', '2021', 'M', 77);
INSERT INTO public.sections VALUES (40, NULL, 'C', 'WRCA7', 'V                             ', '2021', NULL, '1', '2021', 'E', 78);
INSERT INTO public.sections VALUES (41, NULL, 'C', 'DAHY4', 'F                             ', '2021', NULL, '1', '2021', 'P', 83);
INSERT INTO public.sections VALUES (43, NULL, 'D', 'RLT9F', 'F                             ', '2021', NULL, '1', '2021', 'M', 84);
INSERT INTO public.sections VALUES (44, NULL, 'D', '6NEDF', 'F                             ', '2021', NULL, '1', '2021', 'I', 87);
INSERT INTO public.sections VALUES (45, NULL, 'D', '998KC', 'F                             ', '2021', NULL, '1', '2021', 'A', 86);
INSERT INTO public.sections VALUES (46, NULL, 'D', '7ZF4Z', 'F                             ', '2021', NULL, '1', '2021', 'N', 89);
INSERT INTO public.sections VALUES (47, NULL, 'D', 'GC788', 'F                             ', '2021', NULL, '1', '2021', 'P', 90);
INSERT INTO public.sections VALUES (48, NULL, 'D', '7KE6U', 'F                             ', '2021', NULL, '1', '2021', 'E', 92);
INSERT INTO public.sections VALUES (49, NULL, 'D', 'X4LZ5', 'F                             ', '2021', NULL, '1', '2021', 'B', 95);
INSERT INTO public.sections VALUES (50, NULL, 'D', 'P8DZA', 'F                             ', '2021', NULL, '1', '2021', 'A', 93);
INSERT INTO public.sections VALUES (51, NULL, 'D', 'K7M9F', 'F                             ', '2021', NULL, '1', '2021', 'N', 96);
INSERT INTO public.sections VALUES (52, NULL, 'D', 'MC8UP', 'F                             ', '2021', NULL, '1', '2021', 'M', 98);
INSERT INTO public.sections VALUES (53, NULL, 'D', 'AFJWW', 'F                             ', '2021', NULL, '1', '2021', 'E', 99);
INSERT INTO public.sections VALUES (54, NULL, 'D', 'FPSM4', 'R                             ', '2021', NULL, '1', '2021', 'P', 27);
INSERT INTO public.sections VALUES (55, NULL, 'D', 'PPAED', 'V                             ', '2021', NULL, '1', '2021', 'N', 75);
INSERT INTO public.sections VALUES (56, NULL, 'D', '292F5', 'R                             ', '2021', NULL, '1', '2021', 'E', 1);
INSERT INTO public.sections VALUES (57, NULL, 'E', 'C8MWJ', 'R                             ', '2021', NULL, '1', '2021', 'N', 19);
INSERT INTO public.sections VALUES (58, NULL, 'E', 'E2NAH', 'R                             ', '2021', NULL, '1', '2021', 'P', 20);
INSERT INTO public.sections VALUES (59, NULL, 'E', '5TVSZ', 'R                             ', '2021', NULL, '1', '2021', 'B', 11);
INSERT INTO public.sections VALUES (60, NULL, 'E', '64QW9', 'R                             ', '2021', NULL, '1', '2021', 'N', 12);
INSERT INTO public.sections VALUES (61, NULL, 'E', 'YVY6R', 'R                             ', '2021', NULL, '1', '2021', 'M', 35);
INSERT INTO public.sections VALUES (62, NULL, 'E', '65YQ5', 'R                             ', '2021', NULL, '1', '2021', 'P', 13);
INSERT INTO public.sections VALUES (63, NULL, 'E', 'QY72G', 'R                             ', '2021', NULL, '1', '2021', 'M', 42);
INSERT INTO public.sections VALUES (64, NULL, 'E', 'E934Y', 'V                             ', '2021', NULL, '1', '2021', 'B', 53);
INSERT INTO public.sections VALUES (65, NULL, 'E', 'E825A', 'R                             ', '2021', NULL, '1', '2021', 'M', 21);
INSERT INTO public.sections VALUES (66, NULL, 'E', '7EP6N', 'R                             ', '2021', NULL, '1', '2021', 'M', 14);
INSERT INTO public.sections VALUES (67, NULL, 'E', '2LNQU', 'V                             ', '2021', NULL, '1', '2021', 'P', 62);
INSERT INTO public.sections VALUES (68, NULL, 'E', 'F6HRN', 'R                             ', '2021', NULL, '1', '2021', 'A', 23);
INSERT INTO public.sections VALUES (69, NULL, 'E', '6UTTS', 'V                             ', '2021', NULL, '1', '2021', 'A', 65);
INSERT INTO public.sections VALUES (71, NULL, 'F', 'TJQ3C', 'V                             ', '2021', NULL, '1', '2021', 'N', 54);
INSERT INTO public.sections VALUES (72, NULL, 'F', 'SKFWC', 'V                             ', '2021', NULL, '1', '2021', 'A', 72);
INSERT INTO public.sections VALUES (73, NULL, 'F', 'CLY4K', 'V                             ', '2021', NULL, '1', '2021', 'P', 76);
INSERT INTO public.sections VALUES (74, NULL, 'F', 'EEE5D', 'R                             ', '2021', NULL, '1', '2021', 'E', 22);
INSERT INTO public.sections VALUES (75, NULL, 'F', 'QH9E2', 'V                             ', '2021', NULL, '1', '2021', 'A', 79);
INSERT INTO public.sections VALUES (15, NULL, 'B', 'UJQPN', 'R                             ', '2021', NULL, '1', '2021', 'I', 45);
INSERT INTO public.sections VALUES (16, NULL, 'B', 'TGD4T', 'R                             ', '2021', NULL, '1', '2021', 'E', 43);
INSERT INTO public.sections VALUES (17, NULL, 'B', 'WXDKX', 'R                             ', '2021', NULL, '1', '2021', 'B', 46);
INSERT INTO public.sections VALUES (18, NULL, 'B', 'XSVEG', 'R                             ', '2021', NULL, '1', '2021', 'P', 48);
INSERT INTO public.sections VALUES (19, NULL, 'B', 'XKF9R', 'R                             ', '2021', NULL, '1', '2021', 'N', 47);
INSERT INTO public.sections VALUES (20, NULL, 'B', 'XUJZD', 'R                             ', '2021', NULL, '1', '2021', 'M', 49);
INSERT INTO public.sections VALUES (21, NULL, 'B', '292F6', 'V                             ', '2021', NULL, '1', '2021', 'A', 51);
INSERT INTO public.sections VALUES (22, NULL, 'B', '4AJL3', 'R                             ', '2021', NULL, '1', '2021', 'M', 7);
INSERT INTO public.sections VALUES (23, NULL, 'B', 'YAX6T', 'R                             ', '2021', NULL, '1', '2021', 'E', 50);
INSERT INTO public.sections VALUES (1, NULL, 'A', 'FCWSJ', 'R                             ', '2021', NULL, '1', '2021', 'B', 25);
INSERT INTO public.sections VALUES (2, NULL, 'A', 'FFPKZ', 'R                             ', '2021', NULL, '1', '2021', 'N', 26);
INSERT INTO public.sections VALUES (3, NULL, 'A', 'GCHMP', 'R                             ', '2021', NULL, '1', '2021', 'M', 28);
INSERT INTO public.sections VALUES (4, NULL, 'A', 'GRXS3', 'R                             ', '2021', NULL, '1', '2021', 'E', 29);
INSERT INTO public.sections VALUES (5, NULL, 'A', 'JJ25J', 'R                             ', '2021', NULL, '1', '2021', 'B', 32);
INSERT INTO public.sections VALUES (6, NULL, 'A', 'KP44N', 'R                             ', '2021', NULL, '1', '2021', 'N', 33);
INSERT INTO public.sections VALUES (7, NULL, 'A', 'KW85G', 'R                             ', '2021', NULL, '1', '2021', 'P', 34);
INSERT INTO public.sections VALUES (8, NULL, 'A', 'LYQZA', 'R                             ', '2021', NULL, '1', '2021', 'E', 36);
INSERT INTO public.sections VALUES (9, NULL, 'A', 'MJGKL', 'R                             ', '2021', NULL, '1', '2021', 'A', 37);
INSERT INTO public.sections VALUES (42, NULL, 'C', 'A5WGY', 'V                             ', '2021', NULL, '1', '2021', 'I', 80);
INSERT INTO public.sections VALUES (70, NULL, 'E', 'VJ9EF', 'V                             ', '2021', NULL, '1', '2021', 'P', 69);
INSERT INTO public.sections VALUES (76, NULL, 'F', '8KFB4', 'F                             ', '2021', NULL, '1', '2021', 'B', 81);
INSERT INTO public.sections VALUES (77, NULL, 'F', '2JFFU', 'F                             ', '2021', NULL, '1', '2021', 'N', 82);
INSERT INTO public.sections VALUES (78, NULL, 'F', 'YWD39', 'V                             ', '2021', NULL, '1', '2021', 'P', 55);
INSERT INTO public.sections VALUES (79, NULL, 'F', 'JTMEE', 'F                             ', '2021', NULL, '1', '2021', 'E', 85);
INSERT INTO public.sections VALUES (80, NULL, 'F', '888WE', 'R                             ', '2021', NULL, '1', '2021', 'A', 16);
INSERT INTO public.sections VALUES (81, NULL, 'F', '8PXAJ', 'R                             ', '2021', NULL, '1', '2021', 'I', 17);
INSERT INTO public.sections VALUES (82, NULL, 'F', 'AXKQ4', 'R                             ', '2021', NULL, '1', '2021', 'B', 18);
INSERT INTO public.sections VALUES (83, NULL, 'F', '4LURR', 'R                             ', '2021', NULL, '1', '2021', 'E', 8);
INSERT INTO public.sections VALUES (84, NULL, 'F', '7FXG6', 'R                             ', '2021', NULL, '1', '2021', 'E', 15);
INSERT INTO public.sections VALUES (85, NULL, 'G', 'F7H2L', 'R                             ', '2021', NULL, '1', '2021', 'I', 24);
INSERT INTO public.sections VALUES (86, NULL, 'G', 'HAN8Y', 'R                             ', '2021', NULL, '1', '2021', 'A', 30);
INSERT INTO public.sections VALUES (87, NULL, 'G', 'R66XU', 'V                             ', '2021', NULL, '1', '2021', 'A', 58);
INSERT INTO public.sections VALUES (88, NULL, 'G', 'G3LNQ', 'V                             ', '2021', NULL, '1', '2021', 'N', 61);
INSERT INTO public.sections VALUES (89, NULL, 'G', 'RQGRP', 'F                             ', '2021', NULL, '1', '2021', 'B', 88);
INSERT INTO public.sections VALUES (90, NULL, 'G', '2EU6F', 'F                             ', '2021', NULL, '1', '2021', 'M', 91);
INSERT INTO public.sections VALUES (91, NULL, 'G', 'FAYPS', 'F                             ', '2021', NULL, '1', '2021', 'I', 94);
INSERT INTO public.sections VALUES (92, NULL, 'G', '9HD32', 'F                             ', '2021', NULL, '1', '2021', 'P', 97);
INSERT INTO public.sections VALUES (93, NULL, 'G', '79RUC', 'F                             ', '2021', NULL, '1', '2021', 'A', 100);
INSERT INTO public.sections VALUES (94, NULL, 'G', 'HDFV5', 'R                             ', '2021', NULL, '1', '2021', 'I', 31);
INSERT INTO public.sections VALUES (95, NULL, 'G', '2HKNV', 'R                             ', '2021', NULL, '1', '2021', 'A', 2);
INSERT INTO public.sections VALUES (96, NULL, 'G', '2PXD7', 'R                             ', '2021', NULL, '1', '2021', 'I', 3);
INSERT INTO public.sections VALUES (97, NULL, 'G', '2WUJ2', 'R                             ', '2021', NULL, '1', '2021', 'B', 4);
INSERT INTO public.sections VALUES (98, NULL, 'G', '3RVMX', 'R                             ', '2021', NULL, '1', '2021', 'N', 5);
INSERT INTO public.sections VALUES (99, NULL, 'H', '4RBLJ', 'R                             ', '2021', NULL, '1', '2021', 'A', 9);
INSERT INTO public.sections VALUES (100, NULL, 'H', '5J3BN', 'R                             ', '2021', NULL, '1', '2021', 'I', 10);
INSERT INTO public.sections VALUES (10, NULL, 'A', 'NMWE7', 'R                             ', '2021', NULL, '1', '2021', 'B', 39);
INSERT INTO public.sections VALUES (11, NULL, 'A', 'NL5U7', 'R                             ', '2021', NULL, '1', '2021', 'I', 38);
INSERT INTO public.sections VALUES (12, NULL, 'A', 'NSUP2', 'R                             ', '2021', NULL, '1', '2021', 'N', 40);
INSERT INTO public.sections VALUES (13, NULL, 'A', 'TS62E', 'R                             ', '2021', NULL, '1', '2021', 'A', 44);
INSERT INTO public.sections VALUES (14, NULL, 'A', 'PJ59F', 'R                             ', '2021', NULL, '1', '2021', 'P', 41);
INSERT INTO public.sections VALUES (24, NULL, 'B', 'XS7CW', 'V                             ', '2021', NULL, '1', '2021', 'M', 56);
INSERT INTO public.sections VALUES (25, NULL, 'B', 'E825B', 'V                             ', '2021', NULL, '1', '2021', 'I', 52);
INSERT INTO public.sections VALUES (26, NULL, 'B', 'JUSZ6', 'V                             ', '2021', NULL, '1', '2021', 'E', 57);
INSERT INTO public.sections VALUES (27, NULL, 'B', 'TGYLF', 'V                             ', '2021', NULL, '1', '2021', 'B', 60);
INSERT INTO public.sections VALUES (28, NULL, 'B', 'NWBEL', 'V                             ', '2021', NULL, '1', '2021', 'I', 59);


--
-- TOC entry 2214 (class 0 OID 0)
-- Dependencies: 194
-- Name: sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sections_id_seq', 1, false);


--
-- TOC entry 2177 (class 0 OID 24694)
-- Dependencies: 184
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (1, 'test', '09856654754', 'admin', 'test@testing.com', NULL, '$2y$10$P1nqGlFfp6fprD5kJ3iHRuqONsnLcNOQfLJL4SSMa2/dRnRR/Xhfq', 'qWkA54FT8lADiArPnc7rwKWbV8PS5sXNuNVGZPoiWbFnMjcArSOL58r49Chr', '2021-11-05 03:26:26', '2021-11-05 03:26:26');


--
-- TOC entry 2215 (class 0 OID 0)
-- Dependencies: 183
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- TOC entry 2045 (class 2606 OID 49336)
-- Name: afpsn_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cadets
    ADD CONSTRAINT afpsn_unique UNIQUE (afpsn);


--
-- TOC entry 2055 (class 2606 OID 24743)
-- Name: cadetcrses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cadetcrses
    ADD CONSTRAINT cadetcrses_pkey PRIMARY KEY (id);


--
-- TOC entry 2047 (class 2606 OID 24719)
-- Name: cadets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cadets
    ADD CONSTRAINT cadets_pkey PRIMARY KEY (id);


--
-- TOC entry 2051 (class 2606 OID 49334)
-- Name: ccode_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT ccode_unique UNIQUE (ccode);


--
-- TOC entry 2053 (class 2606 OID 24735)
-- Name: courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- TOC entry 2049 (class 2606 OID 24727)
-- Name: departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- TOC entry 2038 (class 2606 OID 24691)
-- Name: migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2059 (class 2606 OID 49282)
-- Name: sectionlists_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sectionlists
    ADD CONSTRAINT sectionlists_pkey PRIMARY KEY (id);


--
-- TOC entry 2057 (class 2606 OID 24751)
-- Name: sections_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY (id);


--
-- TOC entry 2040 (class 2606 OID 24704)
-- Name: users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 2042 (class 2606 OID 24702)
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2043 (class 1259 OID 24708)
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- TOC entry 2198 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2022-05-02 08:10:06

--
-- PostgreSQL database dump complete
--

