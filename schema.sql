--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Ubuntu 12.3-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.3 (Ubuntu 12.3-1.pgdg20.04+1)

-- Started on 2020-08-22 14:43:45 CEST


\connect "FRAPP_Dev"

CREATE TABLE public.persons
(
    "ID" uuid NOT NULL DEFAULT uuid_generate_v4(),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    tscreated timestamp without time zone DEFAULT (now())::timestamp without time zone,
    CONSTRAINT persons_pkey PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE public.persons
    OWNER to postgres;

--
-- TOC entry 2982 (class 0 OID 75460)
-- Dependencies: 203
-- Data for Name: faces; Type: TABLE DATA; Schema: public; Owner: postgres
--

CREATE TABLE public.faces
(
    "ID" uuid NOT NULL DEFAULT uuid_generate_v4(),
    descriptor numeric[] NOT NULL,
    personid uuid NOT NULL,
    tscreated timestamp without time zone NOT NULL DEFAULT (now())::timestamp without time zone,
    CONSTRAINT faces_pkey PRIMARY KEY ("ID"),
    CONSTRAINT fk_faces_persons_id FOREIGN KEY (personid)
        REFERENCES public.persons ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.faces
    OWNER to postgres;

-- Completed on 2020-08-22 14:43:47 CEST

--
-- PostgreSQL database dump complete
--

