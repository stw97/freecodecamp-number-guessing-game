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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_guesses integer NOT NULL,
    user_id integer
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

INSERT INTO public.games VALUES (1, 154, 1);
INSERT INTO public.games VALUES (2, 26, 1);
INSERT INTO public.games VALUES (3, 785, 2);
INSERT INTO public.games VALUES (4, 425, 2);
INSERT INTO public.games VALUES (5, 2, 1);
INSERT INTO public.games VALUES (6, 233, 1);
INSERT INTO public.games VALUES (7, 437, 1);
INSERT INTO public.games VALUES (8, 198, 3);
INSERT INTO public.games VALUES (9, 195, 3);
INSERT INTO public.games VALUES (10, 394, 4);
INSERT INTO public.games VALUES (11, 4, 4);
INSERT INTO public.games VALUES (12, 2, 3);
INSERT INTO public.games VALUES (13, 149, 3);
INSERT INTO public.games VALUES (14, 159, 3);
INSERT INTO public.games VALUES (15, 109, 5);
INSERT INTO public.games VALUES (16, 562, 5);
INSERT INTO public.games VALUES (17, 39, 6);
INSERT INTO public.games VALUES (18, 315, 6);
INSERT INTO public.games VALUES (19, 2, 5);
INSERT INTO public.games VALUES (20, 580, 5);
INSERT INTO public.games VALUES (21, 136, 5);
INSERT INTO public.games VALUES (22, 10, 7);
INSERT INTO public.games VALUES (23, 190, 8);
INSERT INTO public.games VALUES (24, 60, 8);
INSERT INTO public.games VALUES (25, 393, 9);
INSERT INTO public.games VALUES (26, 298, 9);
INSERT INTO public.games VALUES (27, 825, 8);
INSERT INTO public.games VALUES (28, 997, 8);
INSERT INTO public.games VALUES (29, 969, 8);
INSERT INTO public.games VALUES (30, 564, 10);
INSERT INTO public.games VALUES (31, 119, 10);
INSERT INTO public.games VALUES (32, 577, 11);
INSERT INTO public.games VALUES (33, 963, 11);
INSERT INTO public.games VALUES (34, 476, 10);
INSERT INTO public.games VALUES (35, 637, 10);
INSERT INTO public.games VALUES (36, 63, 10);
INSERT INTO public.games VALUES (37, 7, 7);
INSERT INTO public.games VALUES (38, 904, 12);
INSERT INTO public.games VALUES (39, 567, 12);
INSERT INTO public.games VALUES (40, 448, 13);
INSERT INTO public.games VALUES (41, 269, 13);
INSERT INTO public.games VALUES (42, 107, 12);
INSERT INTO public.games VALUES (43, 43, 12);
INSERT INTO public.games VALUES (44, 295, 12);
INSERT INTO public.games VALUES (45, 645, 14);
INSERT INTO public.games VALUES (46, 467, 14);
INSERT INTO public.games VALUES (47, 350, 15);
INSERT INTO public.games VALUES (48, 918, 15);
INSERT INTO public.games VALUES (49, 773, 14);
INSERT INTO public.games VALUES (50, 44, 14);
INSERT INTO public.games VALUES (51, 927, 14);
INSERT INTO public.games VALUES (52, 13, 16);
INSERT INTO public.games VALUES (53, 812, 17);
INSERT INTO public.games VALUES (54, 738, 17);
INSERT INTO public.games VALUES (55, 458, 18);
INSERT INTO public.games VALUES (56, 922, 18);
INSERT INTO public.games VALUES (57, 502, 17);
INSERT INTO public.games VALUES (58, 399, 17);
INSERT INTO public.games VALUES (59, 367, 17);
INSERT INTO public.games VALUES (60, 10, 7);
INSERT INTO public.games VALUES (61, 30, 19);
INSERT INTO public.games VALUES (62, 706, 19);
INSERT INTO public.games VALUES (63, 142, 20);
INSERT INTO public.games VALUES (64, 537, 20);
INSERT INTO public.games VALUES (65, 207, 19);
INSERT INTO public.games VALUES (66, 157, 19);
INSERT INTO public.games VALUES (67, 661, 19);
INSERT INTO public.games VALUES (68, 14, 7);
INSERT INTO public.games VALUES (69, 945, 21);
INSERT INTO public.games VALUES (70, 302, 21);
INSERT INTO public.games VALUES (71, 232, 22);
INSERT INTO public.games VALUES (72, 731, 22);
INSERT INTO public.games VALUES (73, 238, 21);
INSERT INTO public.games VALUES (74, 42, 21);
INSERT INTO public.games VALUES (75, 308, 21);
INSERT INTO public.games VALUES (76, 9, 7);
INSERT INTO public.games VALUES (77, 986, 23);
INSERT INTO public.games VALUES (78, 455, 23);
INSERT INTO public.games VALUES (79, 523, 24);
INSERT INTO public.games VALUES (80, 297, 24);
INSERT INTO public.games VALUES (81, 319, 23);
INSERT INTO public.games VALUES (82, 821, 23);
INSERT INTO public.games VALUES (83, 892, 23);
INSERT INTO public.games VALUES (84, 700, 25);
INSERT INTO public.games VALUES (85, 316, 25);
INSERT INTO public.games VALUES (86, 320, 26);
INSERT INTO public.games VALUES (87, 364, 26);
INSERT INTO public.games VALUES (88, 611, 25);
INSERT INTO public.games VALUES (89, 110, 25);
INSERT INTO public.games VALUES (90, 491, 25);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1662150937713');
INSERT INTO public.users VALUES (2, 'user_1662150937712');
INSERT INTO public.users VALUES (3, 'user_1662151019313');
INSERT INTO public.users VALUES (4, 'user_1662151019312');
INSERT INTO public.users VALUES (5, 'user_1662151151472');
INSERT INTO public.users VALUES (6, 'user_1662151151471');
INSERT INTO public.users VALUES (7, 'me');
INSERT INTO public.users VALUES (8, 'user_1662151343832');
INSERT INTO public.users VALUES (9, 'user_1662151343831');
INSERT INTO public.users VALUES (10, 'user_1662151394482');
INSERT INTO public.users VALUES (11, 'user_1662151394481');
INSERT INTO public.users VALUES (12, 'user_1662151523804');
INSERT INTO public.users VALUES (13, 'user_1662151523803');
INSERT INTO public.users VALUES (14, 'user_1662151586407');
INSERT INTO public.users VALUES (15, 'user_1662151586406');
INSERT INTO public.users VALUES (16, 'no');
INSERT INTO public.users VALUES (17, 'user_1662151853544');
INSERT INTO public.users VALUES (18, 'user_1662151853543');
INSERT INTO public.users VALUES (19, 'user_1662152182081');
INSERT INTO public.users VALUES (20, 'user_1662152182080');
INSERT INTO public.users VALUES (21, 'user_1662152487215');
INSERT INTO public.users VALUES (22, 'user_1662152487214');
INSERT INTO public.users VALUES (23, 'user_1662152587719');
INSERT INTO public.users VALUES (24, 'user_1662152587718');
INSERT INTO public.users VALUES (25, 'user_1662152630297');
INSERT INTO public.users VALUES (26, 'user_1662152630296');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 90, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 26, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--
