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
    name character varying(30) NOT NULL,
    length_in_ly integer,
    has_life boolean,
    age_in_millions_of_years integer
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
    name character varying(30) NOT NULL,
    planet_id integer,
    has_life boolean,
    had_fake_landing boolean
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
    name character varying(30) NOT NULL,
    star_id integer,
    has_life boolean,
    description text
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    solar_mass numeric(4,1),
    age_in_millions_of_years integer
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
-- Name: trade_routes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.trade_routes (
    planet1_id integer,
    planet2_id integer,
    description text NOT NULL,
    length_of_route_in_ly integer,
    name character varying(30) NOT NULL,
    trade_routes_id integer NOT NULL
);


ALTER TABLE public.trade_routes OWNER TO freecodecamp;

--
-- Name: trade_routes_trade_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.trade_routes_trade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.trade_routes_trade_id_seq OWNER TO freecodecamp;

--
-- Name: trade_routes_trade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.trade_routes_trade_id_seq OWNED BY public.trade_routes.trade_routes_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Name: trade_routes trade_routes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.trade_routes ALTER COLUMN trade_routes_id SET DEFAULT nextval('public.trade_routes_trade_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Tadpole Galaxy', 3000000, false, 162);
INSERT INTO public.galaxy VALUES (2, 'Sunflower Galaxy', 1000, true, 4);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 3400000, true, 2000);
INSERT INTO public.galaxy VALUES (4, 'Andromedea Galaxy', 2000000, false, 6);
INSERT INTO public.galaxy VALUES (5, 'Stormtrooper Galaxy', 2300000, true, 1);
INSERT INTO public.galaxy VALUES (6, 'Strawberry', 3500000, false, 2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mercury', 2, NULL, false);
INSERT INTO public.moon VALUES (2, 'Saturn', 5, NULL, true);
INSERT INTO public.moon VALUES (3, 'Ariel', 1, NULL, false);
INSERT INTO public.moon VALUES (4, 'Florb', 6, NULL, false);
INSERT INTO public.moon VALUES (5, 'Bradmont', 11, NULL, true);
INSERT INTO public.moon VALUES (6, 'Michael', 6, NULL, true);
INSERT INTO public.moon VALUES (7, 'Loman', 8, NULL, false);
INSERT INTO public.moon VALUES (8, 'Bormoni', 3, NULL, true);
INSERT INTO public.moon VALUES (9, 'Tornado', 4, NULL, false);
INSERT INTO public.moon VALUES (10, 'Chicken', 12, NULL, true);
INSERT INTO public.moon VALUES (11, 'Maleficent', 6, NULL, false);
INSERT INTO public.moon VALUES (12, 'Crab', 9, NULL, true);
INSERT INTO public.moon VALUES (13, 'Squidward', 11, NULL, false);
INSERT INTO public.moon VALUES (14, 'Handsome Squidward', 5, NULL, false);
INSERT INTO public.moon VALUES (15, 'Ursula', 7, NULL, false);
INSERT INTO public.moon VALUES (16, 'Dragon', 5, NULL, true);
INSERT INTO public.moon VALUES (17, 'Car', 6, NULL, false);
INSERT INTO public.moon VALUES (18, 'Robe', 2, NULL, true);
INSERT INTO public.moon VALUES (19, 'Duck', 12, NULL, false);
INSERT INTO public.moon VALUES (20, 'Skai', 10, NULL, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Ewok', 3, true, 'FURRY NIGHTMARE CHILDREN, RUN!!!');
INSERT INTO public.planet VALUES (1, 'Pluto', 6, true, 'Blue, and actually a suprisingly warm planet with many beach resorts, and lots of grass and sand, their grass is actually blue, hence the confusion!');
INSERT INTO public.planet VALUES (4, 'Halus', 6, true, NULL);
INSERT INTO public.planet VALUES (2, 'Blueberry', 5, false, 'It''s literally a blueberry lol');
INSERT INTO public.planet VALUES (5, 'Lorbin', 4, false, NULL);
INSERT INTO public.planet VALUES (6, 'Kerbin', 4, false, NULL);
INSERT INTO public.planet VALUES (7, 'Laimnor', 2, false, NULL);
INSERT INTO public.planet VALUES (8, 'Churzig', 6, false, NULL);
INSERT INTO public.planet VALUES (9, 'Morn', 3, false, NULL);
INSERT INTO public.planet VALUES (10, 'Kepar', 1, false, NULL);
INSERT INTO public.planet VALUES (11, 'Alron', 1, false, NULL);
INSERT INTO public.planet VALUES (12, 'Coconut', 5, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Solaris', 1, 4.0, 240);
INSERT INTO public.star VALUES (2, 'Perry', 6, 3.0, 1);
INSERT INTO public.star VALUES (3, 'Chewbacca', 5, 5.0, 3);
INSERT INTO public.star VALUES (4, 'Bob', 1, 0.6, 2);
INSERT INTO public.star VALUES (5, 'Chadskiddlearian', 6, 0.6, 20);
INSERT INTO public.star VALUES (6, 'Sun', 3, 6.0, 120);
INSERT INTO public.star VALUES (7, 'Bvorjak', 6, NULL, NULL);


--
-- Data for Name: trade_routes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.trade_routes VALUES (3, 5, 'A sweet substance', NULL, 'Sugar', 2);
INSERT INTO public.trade_routes VALUES (12, 4, 'A substance to give food more kick', NULL, 'Spice', 3);
INSERT INTO public.trade_routes VALUES (7, 9, 'Some cool things for you', NULL, 'Everything Nice', 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: trade_routes_trade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.trade_routes_trade_id_seq', 4, true);


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
-- Name: trade_routes trade_routes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.trade_routes
    ADD CONSTRAINT trade_routes_name_key UNIQUE (name);


--
-- Name: trade_routes trade_routes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.trade_routes
    ADD CONSTRAINT trade_routes_pkey PRIMARY KEY (trade_routes_id);


--
-- Name: moon moon_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

