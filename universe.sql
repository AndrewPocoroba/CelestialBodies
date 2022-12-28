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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: finishing; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.finishing (
    finishing_id integer NOT NULL,
    a_number integer NOT NULL,
    name character varying(40)
);


ALTER TABLE public.finishing OWNER TO freecodecamp;

--
-- Name: finishing_finishing_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.finishing_finishing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.finishing_finishing_id_seq OWNER TO freecodecamp;

--
-- Name: finishing_finishing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.finishing_finishing_id_seq OWNED BY public.finishing.finishing_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    diameter integer,
    distance_mil_of_ly numeric(10,2),
    supermassive_b_h boolean,
    notes text
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
    name character varying(40) NOT NULL,
    planet_id integer,
    notes text,
    is_man boolean
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
    name character varying(40) NOT NULL,
    star_id integer,
    habitable boolean,
    notes text
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
    name character varying(40) NOT NULL,
    galaxy_id integer,
    num_of_planets integer,
    notes text
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
-- Name: finishing finishing_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.finishing ALTER COLUMN finishing_id SET DEFAULT nextval('public.finishing_finishing_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


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
-- Data for Name: finishing; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.finishing VALUES (1, 1, NULL);
INSERT INTO public.finishing VALUES (2, 2, NULL);
INSERT INTO public.finishing VALUES (3, 3, NULL);
INSERT INTO public.finishing VALUES (4, 4, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 87400, 0.03, true, 'Home galaxy of Earth');
INSERT INTO public.galaxy VALUES (3, 'Canis Major Dwarf', NULL, 0.03, NULL, 'Status as galaxy disputed');
INSERT INTO public.galaxy VALUES (4, 'Draco II', 120, 0.02, NULL, 'Satalite of Milky Way');
INSERT INTO public.galaxy VALUES (5, 'Tucana III', 220, 0.08, NULL, 'Satalite of Milky way thats being tidally disrupted');
INSERT INTO public.galaxy VALUES (6, 'Segue 1', NULL, 0.08, NULL, 'Satalite of Milky Way');
INSERT INTO public.galaxy VALUES (7, 'Sagittarius Dwarf Sphr', 10000, 0.08, NULL, 'Satalite of Milky Way');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, NULL, false);
INSERT INTO public.moon VALUES (2, 'moon2', 1, NULL, false);
INSERT INTO public.moon VALUES (3, 'moon3', 1, NULL, false);
INSERT INTO public.moon VALUES (4, 'moon4', 1, NULL, false);
INSERT INTO public.moon VALUES (5, 'moon5', 1, NULL, false);
INSERT INTO public.moon VALUES (6, 'moon6', 3, NULL, false);
INSERT INTO public.moon VALUES (7, 'moon7', 3, NULL, false);
INSERT INTO public.moon VALUES (8, 'moon8', 4, NULL, false);
INSERT INTO public.moon VALUES (9, 'moon9', 5, NULL, false);
INSERT INTO public.moon VALUES (10, 'moon10', 2, NULL, false);
INSERT INTO public.moon VALUES (11, 'moon11', 8, NULL, false);
INSERT INTO public.moon VALUES (12, 'moon12', 6, NULL, false);
INSERT INTO public.moon VALUES (13, 'moon13', 4, NULL, false);
INSERT INTO public.moon VALUES (14, 'moon14', 4, NULL, false);
INSERT INTO public.moon VALUES (15, 'moon15', 4, NULL, false);
INSERT INTO public.moon VALUES (16, 'moon16', 7, NULL, false);
INSERT INTO public.moon VALUES (17, 'moon17', 4, NULL, false);
INSERT INTO public.moon VALUES (18, 'moon18', 4, NULL, false);
INSERT INTO public.moon VALUES (19, 'moon19', 5, NULL, false);
INSERT INTO public.moon VALUES (20, 'moon20', 4, NULL, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 'Home');
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, false, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, false, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, false, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, false, NULL);
INSERT INTO public.planet VALUES (9, 'Wolf 1061b', 5, false, NULL);
INSERT INTO public.planet VALUES (10, 'Wolf 1061c', 5, false, NULL);
INSERT INTO public.planet VALUES (11, 'Wolf1061d', 5, false, NULL);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri b', 2, false, 'Circles around Proxima Centauri of the Alpha Centauri system');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Solar System', 1, 8, 'Our home system');
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 1, 2, '1 additional disputed planet');
INSERT INTO public.star VALUES (3, 'Barnards Star', 1, 0, '1 disputed planet');
INSERT INTO public.star VALUES (4, 'Luhmans 16', 1, 0, '1 disputed planet');
INSERT INTO public.star VALUES (5, 'Wolf 359', 1, 2, 'Flare star');
INSERT INTO public.star VALUES (6, 'Lalande 21185', 1, 2, 'planets discoverd in 2010 and 2021);
');


--
-- Name: finishing_finishing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.finishing_finishing_id_seq', 6, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: finishing finishing_a_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.finishing
    ADD CONSTRAINT finishing_a_number_key UNIQUE (a_number);


--
-- Name: finishing finishing_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.finishing
    ADD CONSTRAINT finishing_pkey PRIMARY KEY (finishing_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


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

