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
-- Name: astroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astroid (
    astroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.astroid OWNER TO freecodecamp;

--
-- Name: astroid_astroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astroid_astroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astroid_astroid_id_seq OWNER TO freecodecamp;

--
-- Name: astroid_astroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astroid_astroid_id_seq OWNED BY public.astroid.astroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    galaxy_types text
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
    description text NOT NULL,
    distance_from_earth numeric(10,1),
    is_spherical boolean,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,1),
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
-- Name: astroid astroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid ALTER COLUMN astroid_id SET DEFAULT nextval('public.astroid_astroid_id_seq'::regclass);


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
-- Data for Name: astroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astroid VALUES (1, 'Ceres', 'The largest asteroid in the asteroid belt.');
INSERT INTO public.astroid VALUES (2, 'Vesta', 'The second largest asteroid and a protoplanet.');
INSERT INTO public.astroid VALUES (3, 'Pallas', 'A large asteroid located in the asteroid belt.');
INSERT INTO public.astroid VALUES (4, 'Hygiea', 'A large asteroid and potential dwarf planet.');
INSERT INTO public.astroid VALUES (5, 'Eros', 'A near-Earth asteroid.');
INSERT INTO public.astroid VALUES (6, 'Bennu', 'A potentially hazardous asteroid visited by OSIRIS-REx.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'A spiral galaxy containing our Solar System.', true, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest spiral galaxy to the Milky Way.', false, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'A bright spiral galaxy with a prominent dust lane.', false, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'A classic spiral galaxy with well-defined arms.', false, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 'A member of the Local Group of galaxies.', false, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'A satellite galaxy of the Milky Way.', true, 'Irregular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth’s natural satellite.', 384400.0, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'A moon of Mars, one of the smallest moons.', 6000.0, true, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The second moon of Mars, smaller than Phobos.', 23000.0, true, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'A volcanic moon of Jupiter.', 628700.0, true, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 'A moon of Jupiter with a potential ocean beneath its icy surface.', 628300.0, true, 4);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'The largest moon in the Solar System.', 628800.0, true, 4);
INSERT INTO public.moon VALUES (7, 'Callisto', 'A moon of Jupiter with a heavily cratered surface.', 628900.0, true, 4);
INSERT INTO public.moon VALUES (8, 'Titan', 'A large moon of Saturn with a thick atmosphere.', 1270000.0, true, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 'A moon of Saturn with icy rings.', 1270000.0, true, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'A moon of Saturn known for its geysers.', 1275000.0, true, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 'A large moon of Neptune, unique for its retrograde orbit.', 3548000.0, true, 6);
INSERT INTO public.moon VALUES (12, 'Charon', 'The largest moon of Pluto.', 5900000.0, true, 12);
INSERT INTO public.moon VALUES (13, 'Mimas', 'A small moon of Saturn known for its resemblance to the Death Star.', 1140000.0, true, 6);
INSERT INTO public.moon VALUES (14, 'Iapetus', 'A moon of Saturn known for its two-tone coloration.', 1430000.0, true, 6);
INSERT INTO public.moon VALUES (15, 'Miranda', 'A moon of Uranus with a diverse landscape.', 1290000.0, true, 6);
INSERT INTO public.moon VALUES (16, 'Oberon', 'A moon of Uranus with a heavily cratered surface.', 1295000.0, true, 6);
INSERT INTO public.moon VALUES (17, 'Titania', 'The largest moon of Uranus.', 1292000.0, true, 6);
INSERT INTO public.moon VALUES (18, 'Umbriel', 'A dark, heavily cratered moon of Uranus.', 1298000.0, true, 6);
INSERT INTO public.moon VALUES (19, 'Phoebe', 'A moon of Saturn that orbits in the opposite direction of the planet’s rotation.', 1272000.0, true, 6);
INSERT INTO public.moon VALUES (20, 'Hyperion', 'An irregularly shaped moon of Saturn.', 1274000.0, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'The third planet from the Sun, known for its life.', 4600, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'The fourth planet, known as the Red Planet.', 4500, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 'The second planet from the Sun, similar in structure to Earth.', 4600, false, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'The largest planet in the Solar System.', 4600, false, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', 'Known for its prominent ring system.', 4600, false, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', 'The closest planet to the Sun.', 4600, false, 1);
INSERT INTO public.planet VALUES (7, 'Titan', 'A moon of Saturn with a dense atmosphere.', 4500, false, 6);
INSERT INTO public.planet VALUES (8, 'Europa', 'A moon of Jupiter that may harbor life.', 4600, true, 4);
INSERT INTO public.planet VALUES (9, 'Ganymede', 'The largest moon in the Solar System, also of Jupiter.', 4600, false, 4);
INSERT INTO public.planet VALUES (10, 'Callisto', 'A heavily cratered moon of Jupiter.', 4600, false, 4);
INSERT INTO public.planet VALUES (11, 'Ceres', 'The largest object in the asteroid belt.', 4600, false, 5);
INSERT INTO public.planet VALUES (12, 'Pluto', 'Once considered the ninth planet, now classified as a dwarf planet.', 4600, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of our Solar System.', 4600, 0.0, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'The brightest star in the night sky.', 200, 8.6, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant star in the Orion constellation.', 100, 642.5, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'The closest known star to the Sun.', 4500, 4.2, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 'A G-type star in the Alpha Centauri star system.', 5800, 4.4, 1);
INSERT INTO public.star VALUES (6, 'Vega', 'A bright star in the Lyra constellation.', 455, 25.0, 1);


--
-- Name: astroid_astroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astroid_astroid_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astroid astroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid
    ADD CONSTRAINT astroid_name_key UNIQUE (name);


--
-- Name: astroid astroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astroid
    ADD CONSTRAINT astroid_pkey PRIMARY KEY (astroid_id);


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

