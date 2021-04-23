
CREATE TABLE public.location (
    id integer NOT NULL,
    location public.geography(Point,4326)
);


CREATE TABLE public.location_name (
    id integer NOT NULL,
    location_id integer,
    name character varying
);


--- POINT(-76.277966 38.887223)
INSERT INTO public.location VALUES (1, '0101000020E610000099D9E731CA1153C027A1F48590714340');
--- POINT(-75.817867 38.871161)
INSERT INTO public.location VALUES (2, '0101000020E6100000925ED4EE57F452C07C462234826F4340');
--- POINT(-77.542072 38.826045)
INSERT INTO public.location VALUES (3, '0101000020E6100000F304C24EB16253C01D03B2D7BB694340');


INSERT INTO public.location_name VALUES (1, 1, 'Eastern Bay');
INSERT INTO public.location_name VALUES (2, 2, 'Denton, MD');
INSERT INTO public.location_name VALUES (3, 3, 'Manassas, VA');


ALTER TABLE ONLY public.location_name
    ADD CONSTRAINT location_name_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (id);


