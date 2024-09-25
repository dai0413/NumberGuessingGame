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
-- Name: playlogs; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.playlogs (
    log_id integer NOT NULL,
    user_id integer,
    score integer NOT NULL,
    date date DEFAULT CURRENT_DATE
);


ALTER TABLE public.playlogs OWNER TO freecodecamp;

--
-- Name: playlogs_log_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.playlogs_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.playlogs_log_id_seq OWNER TO freecodecamp;

--
-- Name: playlogs_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.playlogs_log_id_seq OWNED BY public.playlogs.log_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22) NOT NULL
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
-- Name: playlogs log_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.playlogs ALTER COLUMN log_id SET DEFAULT nextval('public.playlogs_log_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: playlogs; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.playlogs VALUES (1, 2, 2, '2024-09-25');
INSERT INTO public.playlogs VALUES (2, 2, 12, '2024-09-25');
INSERT INTO public.playlogs VALUES (3, 18, 151, '2024-09-25');
INSERT INTO public.playlogs VALUES (4, 19, 850, '2024-09-25');
INSERT INTO public.playlogs VALUES (5, 18, 902, '2024-09-25');
INSERT INTO public.playlogs VALUES (6, 18, 227, '2024-09-25');
INSERT INTO public.playlogs VALUES (7, 18, 421, '2024-09-25');
INSERT INTO public.playlogs VALUES (8, 21, 26, '2024-09-25');
INSERT INTO public.playlogs VALUES (9, 22, 605, '2024-09-25');
INSERT INTO public.playlogs VALUES (10, 21, 367, '2024-09-25');
INSERT INTO public.playlogs VALUES (11, 21, 677, '2024-09-25');
INSERT INTO public.playlogs VALUES (12, 21, 60, '2024-09-25');
INSERT INTO public.playlogs VALUES (13, 23, 62, '2024-09-25');
INSERT INTO public.playlogs VALUES (14, 24, 71, '2024-09-25');
INSERT INTO public.playlogs VALUES (15, 23, 266, '2024-09-25');
INSERT INTO public.playlogs VALUES (16, 23, 28, '2024-09-25');
INSERT INTO public.playlogs VALUES (17, 23, 47, '2024-09-25');
INSERT INTO public.playlogs VALUES (18, 25, 172, '2024-09-25');
INSERT INTO public.playlogs VALUES (19, 26, 744, '2024-09-25');
INSERT INTO public.playlogs VALUES (20, 25, 246, '2024-09-25');
INSERT INTO public.playlogs VALUES (21, 25, 93, '2024-09-25');
INSERT INTO public.playlogs VALUES (22, 25, 867, '2024-09-25');
INSERT INTO public.playlogs VALUES (23, 27, 336, '2024-09-25');
INSERT INTO public.playlogs VALUES (24, 28, 182, '2024-09-25');
INSERT INTO public.playlogs VALUES (25, 27, 892, '2024-09-25');
INSERT INTO public.playlogs VALUES (26, 27, 604, '2024-09-25');
INSERT INTO public.playlogs VALUES (27, 27, 521, '2024-09-25');
INSERT INTO public.playlogs VALUES (28, 29, 303, '2024-09-25');
INSERT INTO public.playlogs VALUES (29, 30, 841, '2024-09-25');
INSERT INTO public.playlogs VALUES (30, 29, 747, '2024-09-25');
INSERT INTO public.playlogs VALUES (31, 29, 46, '2024-09-25');
INSERT INTO public.playlogs VALUES (32, 29, 551, '2024-09-25');
INSERT INTO public.playlogs VALUES (33, 31, 622, '2024-09-25');
INSERT INTO public.playlogs VALUES (34, 32, 301, '2024-09-25');
INSERT INTO public.playlogs VALUES (35, 31, 801, '2024-09-25');
INSERT INTO public.playlogs VALUES (36, 31, 163, '2024-09-25');
INSERT INTO public.playlogs VALUES (37, 31, 947, '2024-09-25');
INSERT INTO public.playlogs VALUES (38, 33, 2, '2024-09-25');
INSERT INTO public.playlogs VALUES (39, 34, 6, '2024-09-25');
INSERT INTO public.playlogs VALUES (40, 33, 7, '2024-09-25');
INSERT INTO public.playlogs VALUES (41, 33, 4, '2024-09-25');
INSERT INTO public.playlogs VALUES (42, 33, 3, '2024-09-25');
INSERT INTO public.playlogs VALUES (43, 2, 3, '2024-09-25');
INSERT INTO public.playlogs VALUES (44, 36, 3, '2024-09-25');
INSERT INTO public.playlogs VALUES (45, 37, 5, '2024-09-25');
INSERT INTO public.playlogs VALUES (46, 36, 8, '2024-09-25');
INSERT INTO public.playlogs VALUES (47, 36, 6, '2024-09-25');
INSERT INTO public.playlogs VALUES (48, 36, 6, '2024-09-25');
INSERT INTO public.playlogs VALUES (49, 38, 4, '2024-09-25');
INSERT INTO public.playlogs VALUES (50, 39, 4, '2024-09-25');
INSERT INTO public.playlogs VALUES (51, 38, 1, '2024-09-25');
INSERT INTO public.playlogs VALUES (52, 38, 5, '2024-09-25');
INSERT INTO public.playlogs VALUES (53, 38, 3, '2024-09-25');
INSERT INTO public.playlogs VALUES (54, 40, 4, '2024-09-25');
INSERT INTO public.playlogs VALUES (55, 41, 856, '2024-09-25');
INSERT INTO public.playlogs VALUES (56, 40, 341, '2024-09-25');
INSERT INTO public.playlogs VALUES (57, 40, 800, '2024-09-25');
INSERT INTO public.playlogs VALUES (58, 40, 815, '2024-09-25');
INSERT INTO public.playlogs VALUES (59, 43, 6, '2024-09-25');
INSERT INTO public.playlogs VALUES (60, 43, 6, '2024-09-25');
INSERT INTO public.playlogs VALUES (61, 44, 4, '2024-09-25');
INSERT INTO public.playlogs VALUES (62, 44, 3, '2024-09-25');
INSERT INTO public.playlogs VALUES (63, 43, 7, '2024-09-25');
INSERT INTO public.playlogs VALUES (64, 43, 3, '2024-09-25');
INSERT INTO public.playlogs VALUES (65, 43, 5, '2024-09-25');
INSERT INTO public.playlogs VALUES (66, 45, 688, '2024-09-25');
INSERT INTO public.playlogs VALUES (67, 45, 754, '2024-09-25');
INSERT INTO public.playlogs VALUES (68, 46, 446, '2024-09-25');
INSERT INTO public.playlogs VALUES (69, 46, 671, '2024-09-25');
INSERT INTO public.playlogs VALUES (70, 45, 176, '2024-09-25');
INSERT INTO public.playlogs VALUES (71, 45, 123, '2024-09-25');
INSERT INTO public.playlogs VALUES (72, 45, 486, '2024-09-25');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Python');
INSERT INTO public.users VALUES (2, 'R');
INSERT INTO public.users VALUES (3, 'Java');
INSERT INTO public.users VALUES (4, 'php');
INSERT INTO public.users VALUES (5, 'user_1727227702425');
INSERT INTO public.users VALUES (6, 'user_1727227702424');
INSERT INTO public.users VALUES (7, 'user_1727227752260');
INSERT INTO public.users VALUES (8, 'user_1727227752259');
INSERT INTO public.users VALUES (9, 'user_1727227757497');
INSERT INTO public.users VALUES (10, 'user_1727227757496');
INSERT INTO public.users VALUES (11, 'PHP');
INSERT INTO public.users VALUES (12, 'user_1727228477472');
INSERT INTO public.users VALUES (13, 'user_1727228477471');
INSERT INTO public.users VALUES (14, 'user_1727228559492');
INSERT INTO public.users VALUES (15, 'user_1727228559491');
INSERT INTO public.users VALUES (16, 'user_1727228576603');
INSERT INTO public.users VALUES (17, 'user_1727228576602');
INSERT INTO public.users VALUES (18, 'user_1727228984696');
INSERT INTO public.users VALUES (19, 'user_1727228984695');
INSERT INTO public.users VALUES (20, 'o');
INSERT INTO public.users VALUES (21, 'user_1727229135629');
INSERT INTO public.users VALUES (22, 'user_1727229135628');
INSERT INTO public.users VALUES (23, 'user_1727229279959');
INSERT INTO public.users VALUES (24, 'user_1727229279958');
INSERT INTO public.users VALUES (25, 'user_1727229437961');
INSERT INTO public.users VALUES (26, 'user_1727229437960');
INSERT INTO public.users VALUES (27, 'user_1727229516675');
INSERT INTO public.users VALUES (28, 'user_1727229516674');
INSERT INTO public.users VALUES (29, 'user_1727229527454');
INSERT INTO public.users VALUES (30, 'user_1727229527453');
INSERT INTO public.users VALUES (31, 'user_1727229579446');
INSERT INTO public.users VALUES (32, 'user_1727229579445');
INSERT INTO public.users VALUES (33, 'user_1727229722740');
INSERT INTO public.users VALUES (34, 'user_1727229722739');
INSERT INTO public.users VALUES (35, 'py');
INSERT INTO public.users VALUES (36, 'user_1727229805418');
INSERT INTO public.users VALUES (37, 'user_1727229805417');
INSERT INTO public.users VALUES (38, 'user_1727229819478');
INSERT INTO public.users VALUES (39, 'user_1727229819477');
INSERT INTO public.users VALUES (40, 'user_1727229858378');
INSERT INTO public.users VALUES (41, 'user_1727229858377');
INSERT INTO public.users VALUES (42, 'new');
INSERT INTO public.users VALUES (43, 'user_1727229964284');
INSERT INTO public.users VALUES (44, 'user_1727229964283');
INSERT INTO public.users VALUES (45, 'user_1727230423950');
INSERT INTO public.users VALUES (46, 'user_1727230423949');


--
-- Name: playlogs_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.playlogs_log_id_seq', 72, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 46, true);


--
-- Name: playlogs playlogs_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.playlogs
    ADD CONSTRAINT playlogs_pkey PRIMARY KEY (log_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: playlogs playlogs_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.playlogs
    ADD CONSTRAINT playlogs_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

