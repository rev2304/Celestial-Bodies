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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age_in_million integer NOT NULL,
    has_life boolean,
    shape character varying(30)
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
-- Name: meteoroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteoroids (
    meteoroids_id integer NOT NULL,
    name character varying(30),
    cycle integer NOT NULL
);


ALTER TABLE public.meteoroids OWNER TO freecodecamp;

--
-- Name: meteoroids_met_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteoroids_met_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteoroids_met_id_seq OWNER TO freecodecamp;

--
-- Name: meteoroids_met_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteoroids_met_id_seq OWNED BY public.meteoroids.meteoroids_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    gravity numeric(5,2) NOT NULL,
    planet_id integer,
    color character varying(10)
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    no_of_moons integer NOT NULL,
    describe text NOT NULL,
    has_life boolean,
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
    name character varying(30),
    galaxy_id integer,
    no_of_planets integer NOT NULL,
    has_solar boolean,
    doesnt_matter character varying(30)
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
-- Name: meteoroids meteoroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteoroids ALTER COLUMN meteoroids_id SET DEFAULT nextval('public.meteoroids_met_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Wave', 136, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Juicy Wave', 13, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Watery Wave', 1, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'UE12I2', 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'MIE123', 4, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'QUY51ER', 5, NULL, NULL);


--
-- Data for Name: meteoroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteoroids VALUES (1, 'ek', 86);
INSERT INTO public.meteoroids VALUES (2, 'be', 12);
INSERT INTO public.meteoroids VALUES (3, 'tran', 34);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The moon', 34.56, 1, 'White');
INSERT INTO public.moon VALUES (2, 'Titaania', 4.56, 13, 'White');
INSERT INTO public.moon VALUES (3, 'Umbriel', 14.60, 13, 'Black');
INSERT INTO public.moon VALUES (4, 'Oberon', 14.69, 13, 'Reddish');
INSERT INTO public.moon VALUES (5, 'hobos', 69.13, 4, 'Graay');
INSERT INTO public.moon VALUES (6, 'Deimos', 69.41, 4, 'Whhite');
INSERT INTO public.moon VALUES (7, 'One', 68.13, 11, 'White');
INSERT INTO public.moon VALUES (8, 'OnTwo', 68.13, 11, 'WBBlue');
INSERT INTO public.moon VALUES (9, 'Three', 68.13, 11, 'Red');
INSERT INTO public.moon VALUES (10, 'Four', 68.13, 12, 'Orange');
INSERT INTO public.moon VALUES (11, 'haron', 68.13, 9, 'White');
INSERT INTO public.moon VALUES (12, 'hHydra', 68.13, 9, 'White');
INSERT INTO public.moon VALUES (13, 'hNix', 68.13, 9, 'White');
INSERT INTO public.moon VALUES (14, 'Kerberos', 68.13, 9, 'White');
INSERT INTO public.moon VALUES (15, 'Styx', 68.13, 9, 'White');
INSERT INTO public.moon VALUES (16, 'Nalad', 68.13, 8, 'White');
INSERT INTO public.moon VALUES (17, 'Nered', 68.13, 8, 'White');
INSERT INTO public.moon VALUES (18, 'NDespina', 68.13, 8, 'White');
INSERT INTO public.moon VALUES (19, 'Hippo', 68.13, 8, 'blue');
INSERT INTO public.moon VALUES (20, 'Proteus', 68.13, 8, 'gray');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'enus', 0, 'dawdwa', false, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 0, 'dawdwa', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'wdwa', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2, 'wdwa', false, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 82, 'large,rings', false, 1);
INSERT INTO public.planet VALUES (7, 'Jupiter', 879, 'huge', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 14, 'blue', false, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 5, 'dwarf', false, 1);
INSERT INTO public.planet VALUES (10, 'Rasna', 0, 'nslajdkjsjd', false, 2);
INSERT INTO public.planet VALUES (11, 'Tropicana', 3, 'nslajdkjsjd', true, 2);
INSERT INTO public.planet VALUES (12, 'Bisleri', 1, 'bottle', true, 3);
INSERT INTO public.planet VALUES (13, 'Uranus', 27, 'aqua', false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SUN', 1, 9, true, NULL);
INSERT INTO public.star VALUES (2, 'hdjh', 1, 5, true, NULL);
INSERT INTO public.star VALUES (3, 'IHAJS', 1, 0, false, NULL);
INSERT INTO public.star VALUES (4, 'Oransun', 2, 3, true, NULL);
INSERT INTO public.star VALUES (5, 'Banasun', 2, 0, false, NULL);
INSERT INTO public.star VALUES (6, 'H2O', 3, 5, true, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: meteoroids_met_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteoroids_met_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_age_in_million_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_in_million_key UNIQUE (age_in_million);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteoroids meteoroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteoroids
    ADD CONSTRAINT meteoroids_name_key UNIQUE (name);


--
-- Name: meteoroids meteoroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteoroids
    ADD CONSTRAINT meteoroids_pkey PRIMARY KEY (meteoroids_id);


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
-- Name: star star_doesnt_matter_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_doesnt_matter_key UNIQUE (doesnt_matter);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

