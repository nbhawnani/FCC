--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    name character varying(20) NOT NULL,
    comet_id integer NOT NULL,
    meteor_count integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    planets integer NOT NULL,
    asteroids integer NOT NULL,
    constellations integer
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
    name character varying(20),
    atmosphere numeric(5,2),
    planet_id integer,
    meteor_count integer NOT NULL
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
    name character varying(20),
    hasrings boolean,
    star_id integer,
    meteor_count integer NOT NULL
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
    name character varying(20),
    description text NOT NULL,
    hasrings boolean,
    galaxy_id integer
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES ('cometA', 1, NULL);
INSERT INTO public.comet VALUES ('cometB', 2, NULL);
INSERT INTO public.comet VALUES ('cometC', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxyA', 100, 100, 100);
INSERT INTO public.galaxy VALUES (2, 'galaxyB', 99, 99, 99);
INSERT INTO public.galaxy VALUES (3, 'galaxyC', 98, 98, 98);
INSERT INTO public.galaxy VALUES (4, 'galaxyD', 97, 97, 97);
INSERT INTO public.galaxy VALUES (5, 'galaxyE', 96, 96, 96);
INSERT INTO public.galaxy VALUES (6, 'galaxyF', 95, 95, 95);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moonA', 1.10, 1, 1);
INSERT INTO public.moon VALUES (2, 'moonB', 2.20, 2, 2);
INSERT INTO public.moon VALUES (3, 'moonC', 2.20, 2, 3);
INSERT INTO public.moon VALUES (4, 'moonD', 2.20, 2, 4);
INSERT INTO public.moon VALUES (5, 'moonE', 2.20, 2, 5);
INSERT INTO public.moon VALUES (6, 'moonF', 2.20, 3, 6);
INSERT INTO public.moon VALUES (7, 'moonG', 2.20, 3, 7);
INSERT INTO public.moon VALUES (8, 'moonH', 2.20, 3, 8);
INSERT INTO public.moon VALUES (9, 'moonI', 2.20, 3, 9);
INSERT INTO public.moon VALUES (10, 'moonJ', 2.20, 3, 10);
INSERT INTO public.moon VALUES (11, 'moonK', 2.20, 3, 11);
INSERT INTO public.moon VALUES (12, 'moonL', 2.20, 3, 12);
INSERT INTO public.moon VALUES (13, 'moonM', 2.20, 3, 13);
INSERT INTO public.moon VALUES (14, 'moonN', 2.20, 3, 14);
INSERT INTO public.moon VALUES (15, 'moonO', 2.20, 3, 15);
INSERT INTO public.moon VALUES (16, 'moonP', 2.20, 3, 16);
INSERT INTO public.moon VALUES (17, 'moonQ', 2.20, 4, 17);
INSERT INTO public.moon VALUES (18, 'moonQ', 2.20, 2, 18);
INSERT INTO public.moon VALUES (19, 'moonR', 2.20, 4, 19);
INSERT INTO public.moon VALUES (20, 'moonS', 2.20, 5, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planetA', false, 1, 1);
INSERT INTO public.planet VALUES (2, 'planetB', false, 2, 2);
INSERT INTO public.planet VALUES (3, 'planetC', false, 3, 3);
INSERT INTO public.planet VALUES (4, 'planetD', false, 4, 4);
INSERT INTO public.planet VALUES (5, 'planetE', false, 5, 5);
INSERT INTO public.planet VALUES (6, 'planetF', false, 6, 6);
INSERT INTO public.planet VALUES (7, 'planetG', false, 7, 7);
INSERT INTO public.planet VALUES (10, 'planetH', false, 6, 8);
INSERT INTO public.planet VALUES (11, 'planetI', false, 6, 9);
INSERT INTO public.planet VALUES (12, 'planetJ', false, 6, 10);
INSERT INTO public.planet VALUES (13, 'planetK', false, 6, 11);
INSERT INTO public.planet VALUES (14, 'planetL', false, 4, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'starA', 'starA', true, 1);
INSERT INTO public.star VALUES (2, 'starB', 'starB', true, 1);
INSERT INTO public.star VALUES (3, 'starC', 'starC', true, 2);
INSERT INTO public.star VALUES (4, 'starD', 'starD', true, 3);
INSERT INTO public.star VALUES (5, 'starE', 'starE', true, 4);
INSERT INTO public.star VALUES (6, 'starF', 'starF', true, 5);
INSERT INTO public.star VALUES (7, 'starG', 'starG', false, 6);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_constellations_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellations_key UNIQUE (constellations);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_meteor_count_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_meteor_count_key UNIQUE (meteor_count);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT uniq UNIQUE (name);


--
-- Name: star uniq_desc; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uniq_desc UNIQUE (description);


--
-- Name: planet uniq_met; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uniq_met UNIQUE (meteor_count);


--
-- Name: moon moon_parent_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_parent_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_parent_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_parent_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_parent_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_parent_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

