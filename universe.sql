
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: federation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.federation (
    federation_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    has_warp boolean NOT NULL,
    planet_pop integer,
    num_of_contacts integer
);


ALTER TABLE public.federation OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    galaxy_types character varying(50) NOT NULL,
    age_in_millions_of_years numeric(10,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    planet_types character varying(50) NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    distance_from_earth numeric(10,2),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: federation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.federation VALUES (1, 'Ardana', 'planet of Ardanans', true, 300, 4);
INSERT INTO public.federation VALUES (2, 'Bajoran', 'a warlike and expansionist species', false, 5751, 18);
INSERT INTO public.federation VALUES (3, 'Romulan', 'a warlike and expansionist species', true, 9454, 55);
INSERT INTO public.federation VALUES (4, 'Cardassian', 'a technologically advanced species', false, 1461, 17);
INSERT INTO public.federation VALUES (5, 'Trill', 'a technologically advanced species', true, 5171, 19);
INSERT INTO public.federation VALUES (6, 'Hekaras II', 'a warlike and expansionist species', false, 4159, 7);
INSERT INTO public.federation VALUES (7, 'Risa', 'a vacation planet', false, 8519, 90);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'the milky way galaxy where Earth is', 'spiral', 3.80);
INSERT INTO public.galaxy VALUES (2, 'Lactose Way', 'a region of space with milk', 'spiral', 1.20);
INSERT INTO public.galaxy VALUES (3, 'Robotica', 'galaxy with robots', 'cubic', 2.00);
INSERT INTO public.galaxy VALUES (4, 'Javawa', 'galaxy of Java coders', 'spiral', 0.30);
INSERT INTO public.galaxy VALUES (5, 'Pythona', 'galaxy of pythonista coders', 'spiral', 3.12);
INSERT INTO public.galaxy VALUES (6, 'Andoria', 'galaxy for Andorians', 'cubic', 1.12);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (100, 'Mastodona', 'a moon for decentralized alien species', true, 4000);
INSERT INTO public.moon VALUES (101, 'Juliet', 'a tidally locked an icy a rocky moon', true, 5000);
INSERT INTO public.moon VALUES (102, 'Rhea', 'an atmosphere of a volcanic a small moon.', false, 13000);
INSERT INTO public.moon VALUES (103, 'Io', 'a volcanic cryovolcanoes on a rocky moon.', true, 5000);
INSERT INTO public.moon VALUES (104, 'Rija', 'an atmosphere of potential for life on a large moon.', false, 2000);
INSERT INTO public.moon VALUES (105, 'Rosalind', 'a moon with a rocky a tidally locked moon.', true, 1000);
INSERT INTO public.moon VALUES (106, 'Dione', 'rings of cryovolcanoes on a rocky moon.', false, 2000);
INSERT INTO public.moon VALUES (107, 'Bianca', 'a small a barren rings of moon.', true, 3000);
INSERT INTO public.moon VALUES (108, 'Dionika', 'a rocky a tidally locked a barren moon.', false, 5000);
INSERT INTO public.moon VALUES (109, 'Kejea', 'an atmosphere of hydrothermal vents on an atmosphere of moon.', false, 1000);
INSERT INTO public.moon VALUES (110, 'Dijnef', 'rings of a volcanic a moon with moon.', true, 8000);
INSERT INTO public.moon VALUES (111, 'Oberon', 'an atmosphere of cryovolcanoes on rings of moon.', false, 7000);
INSERT INTO public.moon VALUES (112, 'Callisto', 'rings of hydrothermal vents on a heavily cratered moon.', false, 9000);
INSERT INTO public.moon VALUES (113, 'Janus', 'rings of a volcanic a rocky moon.', false, 12000);
INSERT INTO public.moon VALUES (114, 'Pandora', 'cryovolcanoes on a tidally locked a tidally locked moon.', false, 12000);
INSERT INTO public.moon VALUES (115, 'Umbriel', 'potential for life on a large a heavily cratered moon.', true, 6000);
INSERT INTO public.moon VALUES (116, 'Miranda', 'a tidally locked rings of an atmosphere of moon.', true, 10000);
INSERT INTO public.moon VALUES (117, 'Koora', 'a small a tidally locked an icy moon.', false, 11000);
INSERT INTO public.moon VALUES (118, 'Mimas', 'rings of a moon with rings of moon.', true, 11000);
INSERT INTO public.moon VALUES (119, 'Skerjon', 'a heavily cratered a barren a small moon.', false, 6000);
INSERT INTO public.moon VALUES (120, 'Helaka', 'a heavily cratered a barren a small moon.', false, 9000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1000, 'fitnessa', 'planet for fitness', true, 'healthy', 500);
INSERT INTO public.planet VALUES (2000, 'proteina', 'planet for growing proteins', true, 'healthy', 600);
INSERT INTO public.planet VALUES (3000, 'javala', 'planet for java development', false, 'coffee', 300);
INSERT INTO public.planet VALUES (4000, 'Earth', 'Our home planet, a rocky planet with diverse life.', false, 'Terrestrial', 600);
INSERT INTO public.planet VALUES (5000, 'Jupiter', 'Largest planet in our solar system, a gas giant with potential for microbial life in its clouds.', true, 'Gas Giant', 200);
INSERT INTO public.planet VALUES (6000, 'Europa', 'A moon of Jupiter with a subsurface ocean, potentially harboring life.', true, 'Ice Giant', 200);
INSERT INTO public.planet VALUES (7000, 'Gliese 581 g', 'A hot, rocky planet orbiting a red dwarf star, potentially with volcanic activity.', false, 'Terrestrial', 300);
INSERT INTO public.planet VALUES (8000, 'Mars', 'The red planet, a cold, rocky world with no known life.', false, 'Terrestrial', 400);
INSERT INTO public.planet VALUES (9000, 'Neptune', 'An ice giant with extreme winds and storms, unlikely to support life.', false, 'Gas Giant', 500);
INSERT INTO public.planet VALUES (10000, 'Kepler-186f', 'A super-Earth in the habitable zone of its star, potentially with liquid water on its surface.', true, 'Super-Earth', 600);
INSERT INTO public.planet VALUES (11000, 'WISE-0855-5714', 'A rogue planet discovered drifting through interstellar space.', false, 'Terrestrial', 100);
INSERT INTO public.planet VALUES (12000, 'Pandora', 'A fictional planet from the movie Avatar, rich in flora and fauna.', true, 'Alien', 400);
INSERT INTO public.planet VALUES (13000, 'Saturn', 'A gas giant with a complex system of moons, some potentially harboring life.', true, 'Gas Giant', 600);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (100, 'r2d100', 'small star', true, 5.60, 3);
INSERT INTO public.star VALUES (200, 'py314', 'python pi star', true, 3.14, 5);
INSERT INTO public.star VALUES (300, 'javajee', 'star for Java', false, 2.90, 4);
INSERT INTO public.star VALUES (400, 'andorah', 'Andorian star', true, 8.40, 6);
INSERT INTO public.star VALUES (500, 'almondona', 'alt milk star', false, 4.40, 2);
INSERT INTO public.star VALUES (600, 'milkja', 'small star in milky way', true, 1.10, 1);


--
-- Name: federation federation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.federation
    ADD CONSTRAINT federation_name_key UNIQUE (name);


--
-- Name: federation federation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.federation
    ADD CONSTRAINT federation_pkey PRIMARY KEY (federation_id);


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

