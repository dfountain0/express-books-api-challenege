PGDMP                          x            booksdb    12.1    12.1     B           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            C           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            D           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            E           1262    16394    booksdb    DATABASE     e   CREATE DATABASE booksdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE booksdb;
                Edgeonix    false            �            1259    16395    books    TABLE     8  CREATE TABLE public.books (
    id integer NOT NULL,
    title character(255),
    authors character(255),
    description character(140),
    categories character(255),
    publisher character(255),
    published_date character(255),
    preview_link character(255),
    created_at date,
    updated_at date
);
    DROP TABLE public.books;
       public         heap    Edgeonix    false            �            1259    16404    Books_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Books_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Books_id_seq";
       public          Edgeonix    false    202            F           0    0    Books_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Books_id_seq" OWNED BY public.books.id;
          public          Edgeonix    false    203            �           2604    16406    books id    DEFAULT     f   ALTER TABLE ONLY public.books ALTER COLUMN id SET DEFAULT nextval('public."Books_id_seq"'::regclass);
 7   ALTER TABLE public.books ALTER COLUMN id DROP DEFAULT;
       public          Edgeonix    false    203    202            >          0    16395    books 
   TABLE DATA           �   COPY public.books (id, title, authors, description, categories, publisher, published_date, preview_link, created_at, updated_at) FROM stdin;
    public          Edgeonix    false    202           G           0    0    Books_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Books_id_seq"', 1, true);
          public          Edgeonix    false    203            �           2606    16411    books id 
   CONSTRAINT     F   ALTER TABLE ONLY public.books
    ADD CONSTRAINT id PRIMARY KEY (id);
 2   ALTER TABLE ONLY public.books DROP CONSTRAINT id;
       public            Edgeonix    false    202            >   �   x��1�0Eg��@ �F�n]ډ1�V@-�#����u%��x�ӗe{�i��-a3�q����.p����&�"��3��X�1��Z�@��;��k�� ��k>�庮Ef�O*Z�an2�u��7@:B�?����fz����B�Z&Ƙ��     