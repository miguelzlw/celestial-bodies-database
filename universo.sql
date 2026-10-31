--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: buraco_negro; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.buraco_negro (
    name character varying(60) NOT NULL,
    buraco_negro_id integer NOT NULL,
    denssidade numeric,
    idade bigint,
    tem_planet_ao_redor boolean
);


ALTER TABLE public.buraco_negro OWNER TO freecodecamp;

--
-- Name: buraco_negro_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.buraco_negro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buraco_negro_id_seq OWNER TO freecodecamp;

--
-- Name: buraco_negro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.buraco_negro_id_seq OWNED BY public.buraco_negro.buraco_negro_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    qnt_sistemas_planetarios integer,
    qntd_estrelas numeric,
    qntd_planetas numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer,
    distacia_planet integer,
    qual_a_cor character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_id integer,
    tem_vida boolean,
    planet_rochoso boolean,
    sobre_o_planet text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer,
    qntd_planetas integer,
    tipo character varying(50),
    distancia_terra numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: buraco_negro buraco_negro_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.buraco_negro ALTER COLUMN buraco_negro_id SET DEFAULT nextval('public.buraco_negro_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: buraco_negro; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.buraco_negro VALUES ('M71', 1, NULL, NULL, NULL);
INSERT INTO public.buraco_negro VALUES ('cuzin', 2, NULL, NULL, NULL);
INSERT INTO public.buraco_negro VALUES ('elfo_negro', 3, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Láctea', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andrômeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triângulo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombreiro', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Redemoinho', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Bode', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lua', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Tritão', 6, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Calisto', 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganímedes', 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Titânia', 8, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Oberon', 7, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Umbriel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Ariel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Miranda', 7, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Nereida', 8, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Galateia', 8, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Encélado', 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Titã', 6, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Mimas', 6, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Dione', 6, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Metis', 2, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Deimos', 5, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Amalteia', 2, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Terra', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Jupiter', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Mercurio', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Vênus', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Marte', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturno', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Urano', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neturno', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Plutão', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Vormy', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Ego', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Pandora', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Krypton', 1, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Verelhao', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Sírius', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Canopus', 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Centauro', 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Prócion', 2, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Arcturo', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (1, 'Sol', 1, NULL, NULL, NULL);


--
-- Name: buraco_negro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.buraco_negro_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: buraco_negro buraco_negro_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.buraco_negro
    ADD CONSTRAINT buraco_negro_name_key UNIQUE (name);


--
-- Name: buraco_negro buraco_negro_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.buraco_negro
    ADD CONSTRAINT buraco_negro_pkey PRIMARY KEY (buraco_negro_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Performance Optimizations: Indexes on Foreign Key Columns
-- PostgreSQL does not automatically create indexes on foreign key columns.
-- Adding explicit B-Tree indexes optimizes JOIN query performance and FK validation lookups
-- from O(N) sequential table scans to O(log N) index lookups.
--

CREATE INDEX idx_star_galaxy_id ON public.star USING btree (galaxy_id);
CREATE INDEX idx_planet_star_id ON public.planet USING btree (star_id);
CREATE INDEX idx_moon_planet_id ON public.moon USING btree (planet_id);


--
-- PostgreSQL database dump complete
--

