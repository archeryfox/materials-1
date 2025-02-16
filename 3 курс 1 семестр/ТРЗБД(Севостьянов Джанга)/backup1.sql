PGDMP     #    "    
    	        {            idk    15.4    15.4 6    8           0    0    ENCODING    ENCODING     !   SET client_encoding = 'WIN1251';
                      false            9           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            :           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ;           1262    16398    idk    DATABASE     w   CREATE DATABASE idk WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE idk;
                postgres    false            �            1259    24742    company    TABLE     ~   CREATE TABLE public.company (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.company;
       public         heap    postgres    false            �            1259    24741    company_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.company_id_seq;
       public          postgres    false    218            <           0    0    company_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.company_id_seq OWNED BY public.company.id;
          public          postgres    false    217            �            1259    24785    daughter_companies    TABLE     �   CREATE TABLE public.daughter_companies (
    id integer NOT NULL,
    company_id integer,
    name character varying(20) NOT NULL,
    price integer NOT NULL,
    proportion integer NOT NULL
);
 &   DROP TABLE public.daughter_companies;
       public         heap    postgres    false            �            1259    24784    daughter_companies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.daughter_companies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.daughter_companies_id_seq;
       public          postgres    false    226            =           0    0    daughter_companies_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.daughter_companies_id_seq OWNED BY public.daughter_companies.id;
          public          postgres    false    225            �            1259    24756    official_position    TABLE     �   CREATE TABLE public.official_position (
    id integer NOT NULL,
    job_title character varying(20) NOT NULL,
    wage integer NOT NULL,
    schedule character varying(30) NOT NULL
);
 %   DROP TABLE public.official_position;
       public         heap    postgres    false            �            1259    24755    official_position_id_seq    SEQUENCE     �   CREATE SEQUENCE public.official_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.official_position_id_seq;
       public          postgres    false    222            >           0    0    official_position_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.official_position_id_seq OWNED BY public.official_position.id;
          public          postgres    false    221            �            1259    24749    personal_info_of_workers    TABLE     <  CREATE TABLE public.personal_info_of_workers (
    id integer NOT NULL,
    worker_name character varying(10) NOT NULL,
    surname character varying(10),
    patronymic character varying(10),
    sex character varying(1) NOT NULL,
    series_and_number_of_the_passport integer NOT NULL,
    age integer NOT NULL
);
 ,   DROP TABLE public.personal_info_of_workers;
       public         heap    postgres    false            �            1259    24748    personal_info_of_workers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_info_of_workers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.personal_info_of_workers_id_seq;
       public          postgres    false    220            ?           0    0    personal_info_of_workers_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.personal_info_of_workers_id_seq OWNED BY public.personal_info_of_workers.id;
          public          postgres    false    219            �            1259    16406    test    TABLE     \   CREATE TABLE public.test (
    id character varying(50) NOT NULL,
    name character(30)
);
    DROP TABLE public.test;
       public         heap    postgres    false            �            1259    16400    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    test_id character varying(50)
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    16399    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    215            @           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          postgres    false    214            �            1259    24763    workers    TABLE     �   CREATE TABLE public.workers (
    id integer NOT NULL,
    company_id integer,
    personal_info_of_workers_id integer,
    official_position_id integer,
    status character varying(20),
    work_expirience integer
);
    DROP TABLE public.workers;
       public         heap    postgres    false            �            1259    24762    workers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.workers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.workers_id_seq;
       public          postgres    false    224            A           0    0    workers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.workers_id_seq OWNED BY public.workers.id;
          public          postgres    false    223            �           2604    24745 
   company id    DEFAULT     h   ALTER TABLE ONLY public.company ALTER COLUMN id SET DEFAULT nextval('public.company_id_seq'::regclass);
 9   ALTER TABLE public.company ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    24788    daughter_companies id    DEFAULT     ~   ALTER TABLE ONLY public.daughter_companies ALTER COLUMN id SET DEFAULT nextval('public.daughter_companies_id_seq'::regclass);
 D   ALTER TABLE public.daughter_companies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    24759    official_position id    DEFAULT     |   ALTER TABLE ONLY public.official_position ALTER COLUMN id SET DEFAULT nextval('public.official_position_id_seq'::regclass);
 C   ALTER TABLE public.official_position ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    24752    personal_info_of_workers id    DEFAULT     �   ALTER TABLE ONLY public.personal_info_of_workers ALTER COLUMN id SET DEFAULT nextval('public.personal_info_of_workers_id_seq'::regclass);
 J   ALTER TABLE public.personal_info_of_workers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16403    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    24766 
   workers id    DEFAULT     h   ALTER TABLE ONLY public.workers ALTER COLUMN id SET DEFAULT nextval('public.workers_id_seq'::regclass);
 9   ALTER TABLE public.workers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            -          0    24742    company 
   TABLE DATA           2   COPY public.company (id, name, price) FROM stdin;
    public          postgres    false    218   v>       5          0    24785    daughter_companies 
   TABLE DATA           U   COPY public.daughter_companies (id, company_id, name, price, proportion) FROM stdin;
    public          postgres    false    226   �>       1          0    24756    official_position 
   TABLE DATA           J   COPY public.official_position (id, job_title, wage, schedule) FROM stdin;
    public          postgres    false    222   %?       /          0    24749    personal_info_of_workers 
   TABLE DATA           �   COPY public.personal_info_of_workers (id, worker_name, surname, patronymic, sex, series_and_number_of_the_passport, age) FROM stdin;
    public          postgres    false    220   �?       +          0    16406    test 
   TABLE DATA           (   COPY public.test (id, name) FROM stdin;
    public          postgres    false    216   x@       *          0    16400    user 
   TABLE DATA           3   COPY public."user" (id, name, test_id) FROM stdin;
    public          postgres    false    215   �@       3          0    24763    workers 
   TABLE DATA           }   COPY public.workers (id, company_id, personal_info_of_workers_id, official_position_id, status, work_expirience) FROM stdin;
    public          postgres    false    224   �@       B           0    0    company_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.company_id_seq', 3, true);
          public          postgres    false    217            C           0    0    daughter_companies_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.daughter_companies_id_seq', 3, true);
          public          postgres    false    225            D           0    0    official_position_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.official_position_id_seq', 6, true);
          public          postgres    false    221            E           0    0    personal_info_of_workers_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.personal_info_of_workers_id_seq', 6, true);
          public          postgres    false    219            F           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 1, true);
          public          postgres    false    214            G           0    0    workers_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.workers_id_seq', 6, true);
          public          postgres    false    223            �           2606    24747    company company_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT company_pkey;
       public            postgres    false    218            �           2606    24790 *   daughter_companies daughter_companies_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.daughter_companies
    ADD CONSTRAINT daughter_companies_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.daughter_companies DROP CONSTRAINT daughter_companies_pkey;
       public            postgres    false    226            �           2606    24761 (   official_position official_position_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.official_position
    ADD CONSTRAINT official_position_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.official_position DROP CONSTRAINT official_position_pkey;
       public            postgres    false    222            �           2606    24754 6   personal_info_of_workers personal_info_of_workers_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.personal_info_of_workers
    ADD CONSTRAINT personal_info_of_workers_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.personal_info_of_workers DROP CONSTRAINT personal_info_of_workers_pkey;
       public            postgres    false    220            �           2606    16410    test test_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.test DROP CONSTRAINT test_pkey;
       public            postgres    false    216            �           2606    16405    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    215            �           2606    24768    workers workers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.workers
    ADD CONSTRAINT workers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.workers DROP CONSTRAINT workers_pkey;
       public            postgres    false    224            �           2606    24791 5   daughter_companies daughter_companies_company_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.daughter_companies
    ADD CONSTRAINT daughter_companies_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.company(id);
 _   ALTER TABLE ONLY public.daughter_companies DROP CONSTRAINT daughter_companies_company_id_fkey;
       public          postgres    false    226    3213    218            �           2606    16411    user user_test_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_test_fk FOREIGN KEY (test_id) REFERENCES public.test(id) NOT VALID;
 =   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_test_fk;
       public          postgres    false    216    3211    215            �           2606    24769    workers workers_company_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.workers
    ADD CONSTRAINT workers_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.company(id);
 I   ALTER TABLE ONLY public.workers DROP CONSTRAINT workers_company_id_fkey;
       public          postgres    false    218    224    3213            �           2606    24779 )   workers workers_official_position_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.workers
    ADD CONSTRAINT workers_official_position_id_fkey FOREIGN KEY (official_position_id) REFERENCES public.official_position(id);
 S   ALTER TABLE ONLY public.workers DROP CONSTRAINT workers_official_position_id_fkey;
       public          postgres    false    3217    224    222            �           2606    24774 0   workers workers_personal_info_of_workers_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.workers
    ADD CONSTRAINT workers_personal_info_of_workers_id_fkey FOREIGN KEY (personal_info_of_workers_id) REFERENCES public.personal_info_of_workers(id);
 Z   ALTER TABLE ONLY public.workers DROP CONSTRAINT workers_personal_info_of_workers_id_fkey;
       public          postgres    false    3215    220    224            -   ?   x�3�<��û/��}�441 .#�s��)�9����9�:�p��o�=�44������ D=�      5   P   x���	�0���u!	�e�XW(�� Xz,xQ|<co�K{:�UX�	�7�~%��3)���λ�r؀�C�e$���      1   �   x�m�1�0��>E@��6�,��		.PD���F�q#^���o�0�ʀi�Ji��FS�8�xH)>g�fqVm�ӽ��1=����I��r���#tV�k��.�N���Oq*M<̙A�[��Uo�p�FA����$�ֈ�v�L�      /   �   x�e�M
�0���=������uY�P�*�@^SϦ}�ѕ��*����-&F���C��F��!�2��"����ơ���(�Ɲh~��4�[�����h�L�f,C�Ob�=u_�=�Z�Z�j�����ڇ�h<���U����h�ٚFt�S�/�R?Ko�      +      x������ � �      *      x�3�LL������� :b      3   Z   x�5��	�0���N1b�6c��=X��L�؀����*Q�)��,Z~K=�;���a�%��ڢz8��r�y�W	i����Vj��&�1I     