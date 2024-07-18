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

DROP DATABASE games;
--
-- Name: games; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE games WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE games OWNER TO freecodecamp;

\connect games

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    username character varying(22),
    guess integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'user_1721311396090', 938);
INSERT INTO public.games VALUES (2, 'user_1721311396090', 966);
INSERT INTO public.games VALUES (3, 'user_1721311396089', 364);
INSERT INTO public.games VALUES (4, 'user_1721311396089', 482);
INSERT INTO public.games VALUES (5, 'user_1721311396090', 345);
INSERT INTO public.games VALUES (6, 'user_1721311396090', 854);
INSERT INTO public.games VALUES (7, 'user_1721311396090', 634);
INSERT INTO public.games VALUES (8, 'yousef', 7);
INSERT INTO public.games VALUES (9, 'user_1721311604361', 469);
INSERT INTO public.games VALUES (10, 'user_1721311604361', 46);
INSERT INTO public.games VALUES (11, 'user_1721311604360', 989);
INSERT INTO public.games VALUES (12, 'user_1721311604360', 658);
INSERT INTO public.games VALUES (13, 'user_1721311604361', 520);
INSERT INTO public.games VALUES (14, 'user_1721311604361', 982);
INSERT INTO public.games VALUES (15, 'user_1721311604361', 879);
INSERT INTO public.games VALUES (16, 'user_1721311626391', 149);
INSERT INTO public.games VALUES (17, 'user_1721311626391', 631);
INSERT INTO public.games VALUES (18, 'user_1721311626390', 516);
INSERT INTO public.games VALUES (19, 'user_1721311626390', 953);
INSERT INTO public.games VALUES (20, 'user_1721311626391', 992);
INSERT INTO public.games VALUES (21, 'user_1721311626391', 974);
INSERT INTO public.games VALUES (22, 'user_1721311626391', 843);
INSERT INTO public.games VALUES (23, 'user_1721311643142', 306);
INSERT INTO public.games VALUES (24, 'user_1721311643142', 232);
INSERT INTO public.games VALUES (25, 'user_1721311643141', 589);
INSERT INTO public.games VALUES (26, 'user_1721311643141', 58);
INSERT INTO public.games VALUES (27, 'user_1721311643142', 489);
INSERT INTO public.games VALUES (28, 'user_1721311643142', 242);
INSERT INTO public.games VALUES (29, 'user_1721311643142', 609);
INSERT INTO public.games VALUES (30, 'user_1721311678535', 915);
INSERT INTO public.games VALUES (31, 'user_1721311678535', 323);
INSERT INTO public.games VALUES (32, 'user_1721311678534', 683);
INSERT INTO public.games VALUES (33, 'user_1721311678534', 591);
INSERT INTO public.games VALUES (34, 'user_1721311678535', 731);
INSERT INTO public.games VALUES (35, 'user_1721311678535', 399);
INSERT INTO public.games VALUES (36, 'user_1721311678535', 29);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1721310295419');
INSERT INTO public.users VALUES (2, 'user_1721310295418');
INSERT INTO public.users VALUES (3, 'yousef');
INSERT INTO public.users VALUES (4, 'user_1721310502830');
INSERT INTO public.users VALUES (5, 'user_1721310502829');
INSERT INTO public.users VALUES (6, 'user_1721311396090');
INSERT INTO public.users VALUES (7, 'user_1721311396089');
INSERT INTO public.users VALUES (8, 'user_1721311604361');
INSERT INTO public.users VALUES (9, 'user_1721311604360');
INSERT INTO public.users VALUES (10, 'user_1721311626391');
INSERT INTO public.users VALUES (11, 'user_1721311626390');
INSERT INTO public.users VALUES (12, 'user_1721311643142');
INSERT INTO public.users VALUES (13, 'user_1721311643141');
INSERT INTO public.users VALUES (14, 'user_1721311678535');
INSERT INTO public.users VALUES (15, 'user_1721311678534');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 36, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 15, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- Name: games games_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_username_fkey FOREIGN KEY (username) REFERENCES public.users(username);


--
-- PostgreSQL database dump complete
--

