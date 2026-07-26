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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_billions_of_years numeric(3,1),
    type character varying(50),
    galaxy_number integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_billions_of_years numeric(3,1),
    type character varying(50),
    moon_number integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    more_info_id integer NOT NULL,
    name character varying(30) NOT NULL,
    info text NOT NULL
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_billions_of_years numeric(3,1),
    type character varying(50),
    planet_number integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_billions_of_years numeric(3,1),
    type character varying(50),
    star_number integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'bob', 'nice', false, false, 10.1, 'chill', 1);
INSERT INTO public.galaxy VALUES (3, 'bib', 'nice', false, false, 10.1, 'chill', 2);
INSERT INTO public.galaxy VALUES (4, 'bub', 'nice', false, false, 10.1, 'chill', 3);
INSERT INTO public.galaxy VALUES (5, 'beb', 'nice', false, false, 10.1, 'chill', 4);
INSERT INTO public.galaxy VALUES (6, 'fred', 'nice', false, false, 10.1, 'chill', 5);
INSERT INTO public.galaxy VALUES (7, 'frog', 'nice', false, false, 10.1, 'chill', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'frog', 'nice', false, false, 10.1, 'chill', 0, 1);
INSERT INTO public.moon VALUES (2, 'frog', 'nice', false, false, 10.1, 'chill', 1, 1);
INSERT INTO public.moon VALUES (3, 'frog', 'nice', false, false, 10.1, 'chill', 2, 1);
INSERT INTO public.moon VALUES (4, 'frog', 'nice', false, false, 10.1, 'chill', 3, 1);
INSERT INTO public.moon VALUES (5, 'frog', 'nice', false, false, 10.1, 'chill', 4, 1);
INSERT INTO public.moon VALUES (6, 'frog', 'nice', false, false, 10.1, 'chill', 5, 1);
INSERT INTO public.moon VALUES (7, 'frog', 'nice', false, false, 10.1, 'chill', 6, 1);
INSERT INTO public.moon VALUES (8, 'frog', 'nice', false, false, 10.1, 'chill', 7, 1);
INSERT INTO public.moon VALUES (9, 'frog', 'nice', false, false, 10.1, 'chill', 8, 1);
INSERT INTO public.moon VALUES (10, 'frog', 'nice', false, false, 10.1, 'chill', 9, 1);
INSERT INTO public.moon VALUES (11, 'frog', 'nice', false, false, 10.1, 'chill', 10, 1);
INSERT INTO public.moon VALUES (12, 'frog', 'nice', false, false, 10.1, 'chill', 11, 1);
INSERT INTO public.moon VALUES (13, 'frog', 'nice', false, false, 10.1, 'chill', 12, 1);
INSERT INTO public.moon VALUES (14, 'frog', 'nice', false, false, 10.1, 'chill', 13, 1);
INSERT INTO public.moon VALUES (15, 'frog', 'nice', false, false, 10.1, 'chill', 14, 1);
INSERT INTO public.moon VALUES (16, 'frog', 'nice', false, false, 10.1, 'chill', 15, 1);
INSERT INTO public.moon VALUES (17, 'frog', 'nice', false, false, 10.1, 'chill', 16, 1);
INSERT INTO public.moon VALUES (18, 'frog', 'nice', false, false, 10.1, 'chill', 17, 1);
INSERT INTO public.moon VALUES (19, 'frog', 'nice', false, false, 10.1, 'chill', 18, 1);
INSERT INTO public.moon VALUES (20, 'frog', 'nice', false, false, 10.1, 'chill', 19, 1);
INSERT INTO public.moon VALUES (21, 'frog', 'nice', false, false, 10.1, 'chill', 20, 1);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (1, 'tim', 'amazing');
INSERT INTO public.more_info VALUES (2, 'tom', 'cool');
INSERT INTO public.more_info VALUES (3, 'jim', 'lame');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'frog', 'nice', false, false, 10.1, 'chill', 0, 1);
INSERT INTO public.planet VALUES (2, 'frog', 'nice', false, false, 10.1, 'chill', 1, 1);
INSERT INTO public.planet VALUES (3, 'frog', 'nice', false, false, 10.1, 'chill', 2, 1);
INSERT INTO public.planet VALUES (4, 'frog', 'nice', false, false, 10.1, 'chill', 3, 1);
INSERT INTO public.planet VALUES (5, 'frog', 'nice', false, false, 10.1, 'chill', 4, 1);
INSERT INTO public.planet VALUES (6, 'frog', 'nice', false, false, 10.1, 'chill', 5, 1);
INSERT INTO public.planet VALUES (7, 'frog', 'nice', false, false, 10.1, 'chill', 6, 1);
INSERT INTO public.planet VALUES (8, 'frog', 'nice', false, false, 10.1, 'chill', 7, 1);
INSERT INTO public.planet VALUES (9, 'frog', 'nice', false, false, 10.1, 'chill', 8, 1);
INSERT INTO public.planet VALUES (10, 'frog', 'nice', false, false, 10.1, 'chill', 9, 1);
INSERT INTO public.planet VALUES (11, 'frog', 'nice', false, false, 10.1, 'chill', 10, 1);
INSERT INTO public.planet VALUES (12, 'frog', 'nice', false, false, 10.1, 'chill', 11, 1);
INSERT INTO public.planet VALUES (13, 'frog', 'nice', false, false, 10.1, 'chill', 12, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'frog', 'nice', false, false, 10.1, 'chill', 0, 1);
INSERT INTO public.star VALUES (2, 'frog', 'nice', false, false, 10.1, 'chill', 1, 3);
INSERT INTO public.star VALUES (3, 'frog', 'nice', false, false, 10.1, 'chill', 2, 4);
INSERT INTO public.star VALUES (4, 'frog', 'nice', false, false, 10.1, 'chill', 3, 4);
INSERT INTO public.star VALUES (5, 'frog', 'nice', false, false, 10.1, 'chill', 4, 4);
INSERT INTO public.star VALUES (6, 'frog', 'nice', false, false, 10.1, 'chill', 5, 4);
INSERT INTO public.star VALUES (7, 'frog', 'nice', false, false, 10.1, 'chill', 6, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_galaxy_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_number_key UNIQUE (galaxy_number);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_number_key UNIQUE (moon_number);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: more_info name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_number_key UNIQUE (planet_number);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_number_key UNIQUE (star_number);


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
-- PostgreSQL database dump complete
--

