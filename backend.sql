PGDMP                         y            backend    13.4    13.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16394    backend    DATABASE     d   CREATE DATABASE backend WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE backend;
                postgres    false            ?            1259    16397    users    TABLE       CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    password character varying(255),
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    deletedat timestamp without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16395    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    201            ?           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    200            #           2604    16400    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            ?          0    16397    users 
   TABLE DATA           P   COPY public.users (id, name, email, password, createdat, deletedat) FROM stdin;
    public          postgres    false    201   ?
       ?           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          postgres    false    200            &           2606    16406    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    201            ?   u   x?]?1?0 g?|??m????????%?
!QR?T?>б?-?;??g????|???????y-??*{#|?6qL?I]?렿???Q*[??neѣ?}?I??D?v?LcR???"~?h$     