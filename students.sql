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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (53, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (54, 'Web Programming');
INSERT INTO public.courses VALUES (55, 'Database Systems');
INSERT INTO public.courses VALUES (56, 'Computer Networks');
INSERT INTO public.courses VALUES (57, 'SQL');
INSERT INTO public.courses VALUES (58, 'Machine Learning');
INSERT INTO public.courses VALUES (59, 'Computer Systems');
INSERT INTO public.courses VALUES (60, 'Web Applications');
INSERT INTO public.courses VALUES (61, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (62, 'Python');
INSERT INTO public.courses VALUES (63, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (64, 'Calculus');
INSERT INTO public.courses VALUES (65, 'Game Architecture');
INSERT INTO public.courses VALUES (66, 'Algorithms');
INSERT INTO public.courses VALUES (67, 'UNIX');
INSERT INTO public.courses VALUES (68, 'Server Administration');
INSERT INTO public.courses VALUES (69, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (66, 'Database Administration');
INSERT INTO public.majors VALUES (67, 'Web Development');
INSERT INTO public.majors VALUES (68, 'Data Science');
INSERT INTO public.majors VALUES (69, 'Network Engineering');
INSERT INTO public.majors VALUES (70, 'Computer Programming');
INSERT INTO public.majors VALUES (71, 'Game Design');
INSERT INTO public.majors VALUES (72, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (66, 53);
INSERT INTO public.majors_courses VALUES (67, 54);
INSERT INTO public.majors_courses VALUES (66, 55);
INSERT INTO public.majors_courses VALUES (68, 53);
INSERT INTO public.majors_courses VALUES (69, 56);
INSERT INTO public.majors_courses VALUES (66, 57);
INSERT INTO public.majors_courses VALUES (68, 58);
INSERT INTO public.majors_courses VALUES (69, 59);
INSERT INTO public.majors_courses VALUES (70, 56);
INSERT INTO public.majors_courses VALUES (66, 60);
INSERT INTO public.majors_courses VALUES (71, 61);
INSERT INTO public.majors_courses VALUES (68, 62);
INSERT INTO public.majors_courses VALUES (70, 63);
INSERT INTO public.majors_courses VALUES (72, 59);
INSERT INTO public.majors_courses VALUES (71, 64);
INSERT INTO public.majors_courses VALUES (67, 53);
INSERT INTO public.majors_courses VALUES (68, 64);
INSERT INTO public.majors_courses VALUES (67, 63);
INSERT INTO public.majors_courses VALUES (71, 65);
INSERT INTO public.majors_courses VALUES (72, 56);
INSERT INTO public.majors_courses VALUES (71, 66);
INSERT INTO public.majors_courses VALUES (72, 67);
INSERT INTO public.majors_courses VALUES (72, 68);
INSERT INTO public.majors_courses VALUES (70, 59);
INSERT INTO public.majors_courses VALUES (70, 62);
INSERT INTO public.majors_courses VALUES (69, 69);
INSERT INTO public.majors_courses VALUES (67, 60);
INSERT INTO public.majors_courses VALUES (69, 66);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (6, 'Rhea', 'Kellems', 66, 2.5);
INSERT INTO public.students VALUES (7, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (8, 'Kimberly', 'Whitley', 67, 3.8);
INSERT INTO public.students VALUES (9, 'Jimmy', 'Felipe', 66, 3.7);
INSERT INTO public.students VALUES (10, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (11, 'Casares', 'Hijo', 71, 4.0);
INSERT INTO public.students VALUES (12, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (13, 'Sterling', 'Boss', 71, 3.9);
INSERT INTO public.students VALUES (14, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (15, 'Kaija', 'Uronen', 71, 3.7);
INSERT INTO public.students VALUES (16, 'Faye', 'Conn', 71, 2.1);
INSERT INTO public.students VALUES (17, 'Efren', 'Reilly', 67, 3.9);
INSERT INTO public.students VALUES (18, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (19, 'Maxine', 'Hagenes', 66, 2.9);
INSERT INTO public.students VALUES (20, 'Larry', 'Saunders', 68, 2.2);
INSERT INTO public.students VALUES (21, 'Karl', 'Kuhar', 67, NULL);
INSERT INTO public.students VALUES (22, 'Lieke', 'Hazenveld', 71, 3.5);
INSERT INTO public.students VALUES (23, 'Obie', 'Hilpert', 67, NULL);
INSERT INTO public.students VALUES (24, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (25, 'Nathan', 'Turner', 66, 3.3);
INSERT INTO public.students VALUES (26, 'Gerald', 'Osiki', 68, 2.2);
INSERT INTO public.students VALUES (27, 'Vanya', 'Hassanah', 71, 4.0);
INSERT INTO public.students VALUES (28, 'Roxelana', 'Florescu', 66, 3.2);
INSERT INTO public.students VALUES (29, 'Helene', 'Parker', 68, 3.4);
INSERT INTO public.students VALUES (30, 'Mariana', 'Russel', 67, 1.8);
INSERT INTO public.students VALUES (31, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (32, 'Mehdi', 'Vandenberghe', 66, 1.9);
INSERT INTO public.students VALUES (33, 'Dejon', 'Howell', 67, 4.0);
INSERT INTO public.students VALUES (34, 'Aliya', 'Gulgowski', 72, 2.6);
INSERT INTO public.students VALUES (35, 'Ana', 'Tupajic', 68, 3.1);
INSERT INTO public.students VALUES (36, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 69, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 72, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 36, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

