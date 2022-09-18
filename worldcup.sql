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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: games_teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games_teams (
    game_id integer NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.games_teams OWNER TO freecodecamp;

--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (414, 2018, 'Final', 340, 341, 4, 2);
INSERT INTO public.games VALUES (415, 2018, 'Third Place', 342, 343, 2, 0);
INSERT INTO public.games VALUES (416, 2018, 'Semi-Final', 341, 343, 2, 1);
INSERT INTO public.games VALUES (417, 2018, 'Semi-Final', 340, 342, 1, 0);
INSERT INTO public.games VALUES (418, 2018, 'Quarter-Final', 341, 344, 3, 2);
INSERT INTO public.games VALUES (419, 2018, 'Quarter-Final', 343, 345, 2, 0);
INSERT INTO public.games VALUES (420, 2018, 'Quarter-Final', 342, 346, 2, 1);
INSERT INTO public.games VALUES (421, 2018, 'Quarter-Final', 340, 347, 2, 0);
INSERT INTO public.games VALUES (422, 2018, 'Eighth-Final', 343, 348, 2, 1);
INSERT INTO public.games VALUES (423, 2018, 'Eighth-Final', 345, 349, 1, 0);
INSERT INTO public.games VALUES (424, 2018, 'Eighth-Final', 342, 350, 3, 2);
INSERT INTO public.games VALUES (425, 2018, 'Eighth-Final', 346, 351, 2, 0);
INSERT INTO public.games VALUES (426, 2018, 'Eighth-Final', 341, 352, 2, 1);
INSERT INTO public.games VALUES (427, 2018, 'Eighth-Final', 344, 353, 2, 1);
INSERT INTO public.games VALUES (428, 2018, 'Eighth-Final', 347, 354, 2, 1);
INSERT INTO public.games VALUES (429, 2018, 'Eighth-Final', 340, 355, 4, 3);
INSERT INTO public.games VALUES (430, 2014, 'Final', 356, 355, 1, 0);
INSERT INTO public.games VALUES (431, 2014, 'Third Place', 357, 346, 3, 0);
INSERT INTO public.games VALUES (432, 2014, 'Semi-Final', 355, 357, 1, 0);
INSERT INTO public.games VALUES (433, 2014, 'Semi-Final', 356, 346, 7, 1);
INSERT INTO public.games VALUES (434, 2014, 'Quarter-Final', 357, 358, 1, 0);
INSERT INTO public.games VALUES (435, 2014, 'Quarter-Final', 355, 342, 1, 0);
INSERT INTO public.games VALUES (436, 2014, 'Quarter-Final', 346, 348, 2, 1);
INSERT INTO public.games VALUES (437, 2014, 'Quarter-Final', 356, 340, 1, 0);
INSERT INTO public.games VALUES (438, 2014, 'Eighth-Final', 346, 359, 2, 1);
INSERT INTO public.games VALUES (439, 2014, 'Eighth-Final', 348, 347, 2, 0);
INSERT INTO public.games VALUES (440, 2014, 'Eighth-Final', 340, 360, 2, 0);
INSERT INTO public.games VALUES (441, 2014, 'Eighth-Final', 356, 361, 2, 1);
INSERT INTO public.games VALUES (442, 2014, 'Eighth-Final', 357, 351, 2, 1);
INSERT INTO public.games VALUES (443, 2014, 'Eighth-Final', 358, 362, 2, 1);
INSERT INTO public.games VALUES (444, 2014, 'Eighth-Final', 355, 349, 1, 0);
INSERT INTO public.games VALUES (445, 2014, 'Eighth-Final', 342, 363, 2, 1);


--
-- Data for Name: games_teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games_teams VALUES (414, 340);
INSERT INTO public.games_teams VALUES (414, 341);
INSERT INTO public.games_teams VALUES (415, 342);
INSERT INTO public.games_teams VALUES (415, 343);
INSERT INTO public.games_teams VALUES (416, 341);
INSERT INTO public.games_teams VALUES (416, 343);
INSERT INTO public.games_teams VALUES (417, 340);
INSERT INTO public.games_teams VALUES (417, 342);
INSERT INTO public.games_teams VALUES (418, 341);
INSERT INTO public.games_teams VALUES (418, 344);
INSERT INTO public.games_teams VALUES (419, 343);
INSERT INTO public.games_teams VALUES (419, 345);
INSERT INTO public.games_teams VALUES (420, 342);
INSERT INTO public.games_teams VALUES (420, 346);
INSERT INTO public.games_teams VALUES (421, 340);
INSERT INTO public.games_teams VALUES (421, 347);
INSERT INTO public.games_teams VALUES (422, 343);
INSERT INTO public.games_teams VALUES (422, 348);
INSERT INTO public.games_teams VALUES (423, 345);
INSERT INTO public.games_teams VALUES (423, 349);
INSERT INTO public.games_teams VALUES (424, 342);
INSERT INTO public.games_teams VALUES (424, 350);
INSERT INTO public.games_teams VALUES (425, 346);
INSERT INTO public.games_teams VALUES (425, 351);
INSERT INTO public.games_teams VALUES (426, 341);
INSERT INTO public.games_teams VALUES (426, 352);
INSERT INTO public.games_teams VALUES (427, 344);
INSERT INTO public.games_teams VALUES (427, 353);
INSERT INTO public.games_teams VALUES (428, 347);
INSERT INTO public.games_teams VALUES (428, 354);
INSERT INTO public.games_teams VALUES (429, 340);
INSERT INTO public.games_teams VALUES (429, 355);
INSERT INTO public.games_teams VALUES (430, 356);
INSERT INTO public.games_teams VALUES (430, 355);
INSERT INTO public.games_teams VALUES (431, 357);
INSERT INTO public.games_teams VALUES (431, 346);
INSERT INTO public.games_teams VALUES (432, 355);
INSERT INTO public.games_teams VALUES (432, 357);
INSERT INTO public.games_teams VALUES (433, 356);
INSERT INTO public.games_teams VALUES (433, 346);
INSERT INTO public.games_teams VALUES (434, 357);
INSERT INTO public.games_teams VALUES (434, 358);
INSERT INTO public.games_teams VALUES (435, 355);
INSERT INTO public.games_teams VALUES (435, 342);
INSERT INTO public.games_teams VALUES (436, 346);
INSERT INTO public.games_teams VALUES (436, 348);
INSERT INTO public.games_teams VALUES (437, 356);
INSERT INTO public.games_teams VALUES (437, 340);
INSERT INTO public.games_teams VALUES (438, 346);
INSERT INTO public.games_teams VALUES (438, 359);
INSERT INTO public.games_teams VALUES (439, 348);
INSERT INTO public.games_teams VALUES (439, 347);
INSERT INTO public.games_teams VALUES (440, 340);
INSERT INTO public.games_teams VALUES (440, 360);
INSERT INTO public.games_teams VALUES (441, 356);
INSERT INTO public.games_teams VALUES (441, 361);
INSERT INTO public.games_teams VALUES (442, 357);
INSERT INTO public.games_teams VALUES (442, 351);
INSERT INTO public.games_teams VALUES (443, 358);
INSERT INTO public.games_teams VALUES (443, 362);
INSERT INTO public.games_teams VALUES (444, 355);
INSERT INTO public.games_teams VALUES (444, 349);
INSERT INTO public.games_teams VALUES (445, 342);
INSERT INTO public.games_teams VALUES (445, 363);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (340, 'France');
INSERT INTO public.teams VALUES (341, 'Croatia');
INSERT INTO public.teams VALUES (342, 'Belgium');
INSERT INTO public.teams VALUES (343, 'England');
INSERT INTO public.teams VALUES (344, 'Russia');
INSERT INTO public.teams VALUES (345, 'Sweden');
INSERT INTO public.teams VALUES (346, 'Brazil');
INSERT INTO public.teams VALUES (347, 'Uruguay');
INSERT INTO public.teams VALUES (348, 'Colombia');
INSERT INTO public.teams VALUES (349, 'Switzerland');
INSERT INTO public.teams VALUES (350, 'Japan');
INSERT INTO public.teams VALUES (351, 'Mexico');
INSERT INTO public.teams VALUES (352, 'Denmark');
INSERT INTO public.teams VALUES (353, 'Spain');
INSERT INTO public.teams VALUES (354, 'Portugal');
INSERT INTO public.teams VALUES (355, 'Argentina');
INSERT INTO public.teams VALUES (356, 'Germany');
INSERT INTO public.teams VALUES (357, 'Netherlands');
INSERT INTO public.teams VALUES (358, 'Costa Rica');
INSERT INTO public.teams VALUES (359, 'Chile');
INSERT INTO public.teams VALUES (360, 'Nigeria');
INSERT INTO public.teams VALUES (361, 'Algeria');
INSERT INTO public.teams VALUES (362, 'Greece');
INSERT INTO public.teams VALUES (363, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 445, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 363, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: games_teams games_teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_teams
    ADD CONSTRAINT games_teams_pkey PRIMARY KEY (game_id, team_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games_teams games_teams_game_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_teams
    ADD CONSTRAINT games_teams_game_id_fkey FOREIGN KEY (game_id) REFERENCES public.games(game_id);


--
-- Name: games_teams games_teams_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games_teams
    ADD CONSTRAINT games_teams_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

