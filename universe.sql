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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean DEFAULT true,
    is_spherical boolean DEFAULT true,
    planet_types text,
    galaxy_types text,
    age_in_millions_of_years numeric(10,4) NOT NULL,
    distance_from_earth integer NOT NULL
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
    has_life boolean DEFAULT true,
    is_spherical boolean DEFAULT true,
    planet_types text,
    galaxy_types text,
    age_in_millions_of_years numeric(10,4) NOT NULL,
    distance_from_earth integer NOT NULL,
    planet_id integer NOT NULL
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
    has_life boolean DEFAULT true,
    is_spherical boolean DEFAULT true,
    planet_types text,
    galaxy_types text,
    age_in_millions_of_years numeric(10,4) NOT NULL,
    distance_from_earth integer NOT NULL,
    star_id integer NOT NULL
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
-- Name: rocket; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rocket (
    rocket_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_available boolean DEFAULT true
);


ALTER TABLE public.rocket OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rocket_rocket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rocket_rocket_id_seq OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rocket_rocket_id_seq OWNED BY public.rocket.rocket_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean DEFAULT true,
    is_spherical boolean DEFAULT true,
    planet_types text,
    galaxy_types text,
    age_in_millions_of_years numeric(10,4) NOT NULL,
    distance_from_earth integer NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: rocket rocket_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket ALTER COLUMN rocket_id SET DEFAULT nextval('public.rocket_rocket_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our galaxy containing the Solar System.', true, true, 'Rocky, Gas Giants', 'Spiral', 13.6000, 0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest spiral galaxy to the Milky Way.', true, true, 'Spiral', 'Spiral', 10.0000, 2530000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A spiral galaxy located in the Triangulum constellation.', false, true, 'Spiral', 'Spiral', 3.0000, 3000000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'A grand design spiral galaxy.', false, true, 'Spiral', 'Spiral', 2.0000, 23000000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'A spiral galaxy famous for its bright nucleus.', false, true, 'Spiral', 'Spiral', 10.0000, 28000000);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'A giant elliptical galaxy with a prominent dust lane.', true, true, 'Lenticular', 'Lenticular', 10.0000, 13000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Natural sattelite of earth.', true, true, 'Rocky', 'Spiral', 4.6000, 41, 14);
INSERT INTO public.moon VALUES (21, 'Europa', 'Moon of Jupiter, known for its ice-covered ocean.', true, true, 'Icy', 'Spiral', 4.6000, 628300, 15);
INSERT INTO public.moon VALUES (22, 'Ganymede', 'Largest moon in the Solar System, also of Jupiter.', true, true, 'Icy', 'Spiral', 4.6000, 1070400, 15);
INSERT INTO public.moon VALUES (23, 'Callisto', 'Heavily cratered moon of Jupiter.', true, true, 'Icy', 'Spiral', 4.6000, 1883000, 15);
INSERT INTO public.moon VALUES (24, 'Titan', 'Largest moon of Saturn, with a thick atmosphere.', true, true, 'Icy', 'Spiral', 4.6000, 1221700, 16);
INSERT INTO public.moon VALUES (25, 'Enceladus', 'Small moon of Saturn, known for its geysers.', true, true, 'Icy', 'Spiral', 4.6000, 238000, 16);
INSERT INTO public.moon VALUES (26, 'Dione', 'Moon of Saturn, featuring bright icy terrain.', true, true, 'Rocky', 'Spiral', 4.6000, 561000, 16);
INSERT INTO public.moon VALUES (27, 'Tethys', 'Moon of Saturn, known for its large impact crater.', true, true, 'Rocky', 'Spiral', 4.6000, 294000, 16);
INSERT INTO public.moon VALUES (28, 'Rhea', 'Heavily cratered moon of Saturn.', true, true, 'Rocky', 'Spiral', 4.6000, 527000, 16);
INSERT INTO public.moon VALUES (29, 'Miranda', 'Moon of Uranus, known for its diverse geology.', true, true, 'Rocky', 'Spiral', 4.6000, 129800, 17);
INSERT INTO public.moon VALUES (30, 'Ariel', 'Moon of Uranus, featuring canyons and valleys.', true, true, 'Rocky', 'Spiral', 4.6000, 116500, 17);
INSERT INTO public.moon VALUES (31, 'Umbriel', 'Dark moon of Uranus, known for its heavily cratered surface.', true, true, 'Rocky', 'Spiral', 4.6000, 266000, 17);
INSERT INTO public.moon VALUES (32, 'Oberon', 'Moon of Uranus, featuring a large number of craters.', true, true, 'Rocky', 'Spiral', 4.6000, 583000, 17);
INSERT INTO public.moon VALUES (33, 'Phobos', 'Larger moon of Mars, heavily cratered.', true, true, 'Rocky', 'Spiral', 4.6000, 6000, 18);
INSERT INTO public.moon VALUES (34, 'Deimos', 'Smaller moon of Mars, less cratered than Phobos.', true, true, 'Rocky', 'Spiral', 4.6000, 23000, 18);
INSERT INTO public.moon VALUES (35, 'Charon', 'Largest moon of Pluto, nearly the size of Pluto itself.', true, true, 'Rocky', 'Spiral', 4.6000, 19760, 19);
INSERT INTO public.moon VALUES (36, 'Titania', 'Largest moon of Uranus, featuring canyons and cliffs.', true, true, 'Rocky', 'Spiral', 4.6000, 436000, 17);
INSERT INTO public.moon VALUES (37, 'Mimas', 'Moon of Saturn, known for its large impact crater, Herschel.', true, true, 'Rocky', 'Spiral', 4.6000, 185000, 16);
INSERT INTO public.moon VALUES (38, 'Iapetus', 'Moon of Saturn known for its two-tone coloration.', true, true, 'Rocky', 'Spiral', 4.6000, 356000, 16);
INSERT INTO public.moon VALUES (39, 'Rhea2', 'Heavily cratered moon of Saturn.', true, true, 'Rocky', 'Spiral', 4.6000, 527000, 16);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Mercury', 'The closest planet to the Sun, with a barren surface.', false, true, 'Terrestrial', 'Spiral', 4.6000, 0, 2);
INSERT INTO public.planet VALUES (14, 'Venus', 'The second planet from the Sun, known for its thick atmosphere.', false, true, 'Terrestrial', 'Spiral', 4.6000, 41, 2);
INSERT INTO public.planet VALUES (15, 'Earth', 'The third planet from the Sun, home to life.', true, true, 'Terrestrial', 'Spiral', 4.6000, 0, 2);
INSERT INTO public.planet VALUES (16, 'Mars', 'The red planet, known for its iron oxide surface.', true, true, 'Terrestrial', 'Spiral', 4.6000, 225, 2);
INSERT INTO public.planet VALUES (17, 'Jupiter', 'The largest planet in the Solar System, a gas giant.', false, true, 'Gas Giant', 'Spiral', 4.6000, 484, 2);
INSERT INTO public.planet VALUES (18, 'Saturn', 'Known for its extensive ring system, a gas giant.', false, true, 'Gas Giant', 'Spiral', 4.6000, 886, 2);
INSERT INTO public.planet VALUES (19, 'Uranus', 'An ice giant with a unique axial tilt.', false, true, 'Ice Giant', 'Spiral', 4.6000, 1780, 2);
INSERT INTO public.planet VALUES (20, 'Neptune', 'The furthest planet from the Sun, an ice giant.', false, true, 'Ice Giant', 'Spiral', 4.6000, 2790, 2);
INSERT INTO public.planet VALUES (21, 'Proxima b', 'A potentially habitable exoplanet orbiting Proxima Centauri.', true, true, 'Rocky', 'Red Dwarf', 4.8500, 4, 3);
INSERT INTO public.planet VALUES (22, 'Alpha Centauri Bb', 'A planet in the Alpha Centauri system, possibly rocky.', false, true, 'Rocky', 'Triple', 4.3700, 4, 3);
INSERT INTO public.planet VALUES (23, 'Kepler-22b', 'An exoplanet in the Kepler-22 system, possibly habitable.', true, true, 'Super-Earth', 'Spiral', 600.0000, 600, 4);
INSERT INTO public.planet VALUES (24, 'HD 209458 b', 'An exoplanet known for its transit across its star.', false, true, 'Gas Giant', 'Spiral', 4.0000, 159, 5);


--
-- Data for Name: rocket; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rocket VALUES (1, 'Falcon 9', true);
INSERT INTO public.rocket VALUES (2, 'Atlas V', true);
INSERT INTO public.rocket VALUES (3, 'Soyuz', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', 'The star at the center of our Solar System', true, true, 'Rocky, Gas Giants', 'Spiral', 4.6000, 0, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 'The brightest star in the night sky', true, true, 'Gas Giants', 'Binary', 200.0000, 9, 2);
INSERT INTO public.star VALUES (4, 'Alpha Centauri', 'The closest star system to the Solar System', true, true, 'Rocky, Gas Giants', 'Triple', 4.3700, 4, 3);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 'A red supergiant star', false, true, 'Gas Giants', 'Irregular', 10.0000, 643, 1);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 'The closest known star to the Sun', true, true, 'Rocky', 'Red Dwarf', 4.8500, 4, 3);
INSERT INTO public.star VALUES (7, 'Polaris', 'The North Star, a yellow supergiant', false, true, 'Gas Giants', 'Spiral', 450.0000, 431, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 39, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rocket_rocket_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: rocket rocket_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_name_key UNIQUE (name);


--
-- Name: rocket rocket_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_pkey PRIMARY KEY (rocket_id);


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

