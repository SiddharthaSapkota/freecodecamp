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
    age integer,
    radius integer,
    mass integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    description text,
    orbital_distance integer,
    has_life boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    description text,
    distance_from_star numeric(8,1),
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: sapkota; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sapkota (
    name character varying(30) NOT NULL,
    sapkota_id integer NOT NULL,
    liffespan integer
);


ALTER TABLE public.sapkota OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    distance_from_sol numeric(4,1),
    type character(1)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 14, 20, 133);
INSERT INTO public.galaxy VALUES (2, 'one', 24, 30, 233);
INSERT INTO public.galaxy VALUES (3, 'two', 22, 31, 303);
INSERT INTO public.galaxy VALUES (4, 'three', 25, 21, 330);
INSERT INTO public.galaxy VALUES (5, 'four', 41, 43, 901);
INSERT INTO public.galaxy VALUES (6, 'five', 2, 5, 19);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (79, 'qa', 1, 'dm.z', 223, true);
INSERT INTO public.moon VALUES (78, 'qs', 1, 'dm.x', 224, true);
INSERT INTO public.moon VALUES (77, 'qd', 1, 'dm.c', 225, false);
INSERT INTO public.moon VALUES (76, 'qf', 2, 'dm.v', 226, true);
INSERT INTO public.moon VALUES (75, 'qg', 1, 'dm.b', 227, false);
INSERT INTO public.moon VALUES (74, 'qh', 2, 'dm.c', 228, true);
INSERT INTO public.moon VALUES (73, 'qj', 1, 'dm.x', 229, false);
INSERT INTO public.moon VALUES (72, 'qk', 2, 'dm.z', 230, true);
INSERT INTO public.moon VALUES (71, 'ql', 1, 'da.q', 231, false);
INSERT INTO public.moon VALUES (70, 'po', 2, 'da.w', 232, true);
INSERT INTO public.moon VALUES (69, 'pi', 1, 'da.e', 233, false);
INSERT INTO public.moon VALUES (68, 'pu', 2, 'da.r', 234, true);
INSERT INTO public.moon VALUES (67, 'py', 1, 'da.t', 235, false);
INSERT INTO public.moon VALUES (66, 'pt', 2, 'da.y', 236, true);
INSERT INTO public.moon VALUES (65, 'pr', 1, 'da.r', 237, false);
INSERT INTO public.moon VALUES (64, 'pe', 2, 'da.e', 238, true);
INSERT INTO public.moon VALUES (63, 'pw', 1, 'da.a', 239, false);
INSERT INTO public.moon VALUES (62, 'pz', 2, 'da.s', 240, true);
INSERT INTO public.moon VALUES (61, 'pc', 1, 'da.d', 241, false);
INSERT INTO public.moon VALUES (60, 'px', 2, 'da.f', 242, true);
INSERT INTO public.moon VALUES (59, 'pl', 1, 'da.u', 243, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'm', 1, 'q.w', 111.0, true);
INSERT INTO public.planet VALUES (2, 'n', 2, 'w.e', 112.0, false);
INSERT INTO public.planet VALUES (3, 'b', 3, 'e.r', 113.0, false);
INSERT INTO public.planet VALUES (4, 'v', 1, 'r.t', 114.0, true);
INSERT INTO public.planet VALUES (5, 'c', 4, 't.y', 115.0, true);
INSERT INTO public.planet VALUES (6, 'x', 2, 'y.u', 116.0, false);
INSERT INTO public.planet VALUES (7, 'z', 5, 'u.i', 117.0, false);
INSERT INTO public.planet VALUES (8, 'l', 5, 'i.o', 118.0, true);
INSERT INTO public.planet VALUES (9, 'k', 6, 'o.p', 119.0, true);
INSERT INTO public.planet VALUES (10, 'j', 1, 'p.a', 200.0, false);
INSERT INTO public.planet VALUES (11, 'h', 6, 's.a', 201.0, true);
INSERT INTO public.planet VALUES (12, 'g', 3, 'd.s', 202.0, false);
INSERT INTO public.planet VALUES (99, 'p', 1, 'dm.n', 203.0, false);
INSERT INTO public.planet VALUES (98, 'o', 1, 'dm.q', 204.0, false);
INSERT INTO public.planet VALUES (97, 'i', 2, 'dm.w', 205.0, true);
INSERT INTO public.planet VALUES (96, 'u', 2, 'dm.e', 206.0, true);
INSERT INTO public.planet VALUES (95, 'y', 3, 'dm.r', 207.0, true);
INSERT INTO public.planet VALUES (94, 't', 3, 'dm.t', 208.0, true);
INSERT INTO public.planet VALUES (93, 'r', 4, 'dm.y', 209.0, false);
INSERT INTO public.planet VALUES (92, 'e', 4, 'dm.u', 210.0, false);
INSERT INTO public.planet VALUES (91, 'w', 5, 'dm.i', 211.0, false);
INSERT INTO public.planet VALUES (90, 'q', 5, 'dm.o', 212.0, false);
INSERT INTO public.planet VALUES (89, 'qw', 6, 'dm.p', 213.0, true);
INSERT INTO public.planet VALUES (88, 'qq', 1, 'dm.a', 214.0, true);
INSERT INTO public.planet VALUES (87, 'qe', 1, 'dm.s', 215.0, true);
INSERT INTO public.planet VALUES (86, 'qr', 1, 'dm.d', 216.0, true);
INSERT INTO public.planet VALUES (85, 'qt', 1, 'dm.f', 217.0, false);
INSERT INTO public.planet VALUES (84, 'qy', 1, 'dm.g', 218.0, false);
INSERT INTO public.planet VALUES (83, 'qu', 2, 'dm.h', 219.0, false);
INSERT INTO public.planet VALUES (82, 'qi', 1, 'dm.j', 220.0, true);
INSERT INTO public.planet VALUES (81, 'qo', 2, 'dm.k', 221.0, false);
INSERT INTO public.planet VALUES (80, 'qp', 1, 'dm.l', 222.0, true);


--
-- Data for Name: sapkota; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sapkota VALUES ('A', 1, 110);
INSERT INTO public.sapkota VALUES ('B', 2, 112);
INSERT INTO public.sapkota VALUES ('C', 3, 113);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (6, 'qwe', 2, 0.5, 'A');
INSERT INTO public.star VALUES (5, 'wqe', 1, 0.4, 'B');
INSERT INTO public.star VALUES (4, 'weq', 3, 0.3, 'C');
INSERT INTO public.star VALUES (3, 'wer', 4, 0.2, 'D');
INSERT INTO public.star VALUES (2, 'rer', 5, 0.1, 'E');
INSERT INTO public.star VALUES (1, 'red', 6, 0.9, 'F');


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
-- Name: sapkota sapkota_name_uniq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sapkota
    ADD CONSTRAINT sapkota_name_uniq UNIQUE (name);


--
-- Name: sapkota sapkota_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sapkota
    ADD CONSTRAINT sapkota_pkey PRIMARY KEY (sapkota_id);


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

