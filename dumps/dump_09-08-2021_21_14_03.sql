--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE post;




--
-- Drop roles
--

DROP ROLE post;


--
-- Roles
--

CREATE ROLE post;
ALTER ROLE post WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md57f3504a67662ee6f264bde4235063e08';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 13.1 (Debian 13.1-1.pgdg100+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: post
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO post;

\connect template1

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

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: post
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: post
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: post
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "post" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 13.1 (Debian 13.1-1.pgdg100+1)

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

--
-- Name: post; Type: DATABASE; Schema: -; Owner: post
--

CREATE DATABASE post WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE post OWNER TO post;

\connect post

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO post;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO post;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO post;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO post;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO post;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO post;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: authnapp_user; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.authnapp_user (
    id integer NOT NULL,
    is_client boolean NOT NULL,
    is_staff boolean NOT NULL,
    personal_account character varying(128) NOT NULL,
    password character varying(128) NOT NULL,
    name character varying(128),
    email character varying(254),
    phone character varying(11),
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_login timestamp with time zone,
    activation_key character varying(128) NOT NULL,
    activation_key_expires timestamp with time zone NOT NULL
);


ALTER TABLE public.authnapp_user OWNER TO post;

--
-- Name: authnapp_user_groups; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.authnapp_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.authnapp_user_groups OWNER TO post;

--
-- Name: authnapp_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.authnapp_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authnapp_user_groups_id_seq OWNER TO post;

--
-- Name: authnapp_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.authnapp_user_groups_id_seq OWNED BY public.authnapp_user_groups.id;


--
-- Name: authnapp_user_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.authnapp_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authnapp_user_id_seq OWNER TO post;

--
-- Name: authnapp_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.authnapp_user_id_seq OWNED BY public.authnapp_user.id;


--
-- Name: authnapp_user_user_permissions; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.authnapp_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.authnapp_user_user_permissions OWNER TO post;

--
-- Name: authnapp_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.authnapp_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authnapp_user_user_permissions_id_seq OWNER TO post;

--
-- Name: authnapp_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.authnapp_user_user_permissions_id_seq OWNED BY public.authnapp_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO post;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO post;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO post;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO post;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO post;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO post;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO post;

--
-- Name: mainapp_appartament; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_appartament (
    id integer NOT NULL,
    number character varying(3) NOT NULL,
    add_number integer NOT NULL,
    sq_appart numeric(5,2),
    num_owner integer,
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    house_id integer NOT NULL,
    user_id integer,
    CONSTRAINT mainapp_appartament_add_number_check CHECK ((add_number >= 0)),
    CONSTRAINT mainapp_appartament_num_owner_check CHECK ((num_owner >= 0))
);


ALTER TABLE public.mainapp_appartament OWNER TO post;

--
-- Name: mainapp_appartament_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_appartament_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_appartament_id_seq OWNER TO post;

--
-- Name: mainapp_appartament_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_appartament_id_seq OWNED BY public.mainapp_appartament.id;


--
-- Name: mainapp_city; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_city (
    id integer NOT NULL,
    city character varying(128) NOT NULL,
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.mainapp_city OWNER TO post;

--
-- Name: mainapp_city_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_city_id_seq OWNER TO post;

--
-- Name: mainapp_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_city_id_seq OWNED BY public.mainapp_city.id;


--
-- Name: mainapp_constantpayments; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_constantpayments (
    id integer NOT NULL,
    data jsonb NOT NULL,
    total numeric(8,3) NOT NULL,
    pre_total numeric(8,3) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.mainapp_constantpayments OWNER TO post;

--
-- Name: mainapp_constantpayments_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_constantpayments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_constantpayments_id_seq OWNER TO post;

--
-- Name: mainapp_constantpayments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_constantpayments_id_seq OWNED BY public.mainapp_constantpayments.id;


--
-- Name: mainapp_currentcounter; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_currentcounter (
    id integer NOT NULL,
    period date NOT NULL,
    col_water integer,
    hot_water integer,
    electric_day integer,
    electric_night integer,
    electric_single integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT mainapp_currentcounter_col_water_check CHECK ((col_water >= 0)),
    CONSTRAINT mainapp_currentcounter_electric_day_check CHECK ((electric_day >= 0)),
    CONSTRAINT mainapp_currentcounter_electric_night_check CHECK ((electric_night >= 0)),
    CONSTRAINT mainapp_currentcounter_electric_single_check CHECK ((electric_single >= 0)),
    CONSTRAINT mainapp_currentcounter_hot_water_check CHECK ((hot_water >= 0))
);


ALTER TABLE public.mainapp_currentcounter OWNER TO post;

--
-- Name: mainapp_currentcounter_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_currentcounter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_currentcounter_id_seq OWNER TO post;

--
-- Name: mainapp_currentcounter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_currentcounter_id_seq OWNED BY public.mainapp_currentcounter.id;


--
-- Name: mainapp_headerdata; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_headerdata (
    id integer NOT NULL,
    data jsonb NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.mainapp_headerdata OWNER TO post;

--
-- Name: mainapp_headerdata_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_headerdata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_headerdata_id_seq OWNER TO post;

--
-- Name: mainapp_headerdata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_headerdata_id_seq OWNED BY public.mainapp_headerdata.id;


--
-- Name: mainapp_historycounter; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_historycounter (
    id integer NOT NULL,
    period date NOT NULL,
    col_water integer,
    hot_water integer,
    electric_day integer,
    electric_night integer,
    electric_single integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    user_id integer,
    CONSTRAINT mainapp_historycounter_col_water_check CHECK ((col_water >= 0)),
    CONSTRAINT mainapp_historycounter_electric_day_check CHECK ((electric_day >= 0)),
    CONSTRAINT mainapp_historycounter_electric_night_check CHECK ((electric_night >= 0)),
    CONSTRAINT mainapp_historycounter_electric_single_check CHECK ((electric_single >= 0)),
    CONSTRAINT mainapp_historycounter_hot_water_check CHECK ((hot_water >= 0))
);


ALTER TABLE public.mainapp_historycounter OWNER TO post;

--
-- Name: mainapp_historycounter_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_historycounter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_historycounter_id_seq OWNER TO post;

--
-- Name: mainapp_historycounter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_historycounter_id_seq OWNED BY public.mainapp_historycounter.id;


--
-- Name: mainapp_house; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_house (
    id integer NOT NULL,
    number character varying(3) NOT NULL,
    add_number character varying(3) NOT NULL,
    sq_home numeric(7,2) NOT NULL,
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    category_rate_id integer,
    city_id integer,
    street_id integer,
    uk_id integer
);


ALTER TABLE public.mainapp_house OWNER TO post;

--
-- Name: mainapp_house_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_house_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_house_id_seq OWNER TO post;

--
-- Name: mainapp_house_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_house_id_seq OWNED BY public.mainapp_house.id;


--
-- Name: mainapp_housecurrent; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_housecurrent (
    id integer NOT NULL,
    period date NOT NULL,
    col_water integer,
    hot_water integer,
    electric_day integer,
    electric_night integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    house_id integer,
    CONSTRAINT mainapp_housecurrent_col_water_check CHECK ((col_water >= 0)),
    CONSTRAINT mainapp_housecurrent_electric_day_check CHECK ((electric_day >= 0)),
    CONSTRAINT mainapp_housecurrent_electric_night_check CHECK ((electric_night >= 0)),
    CONSTRAINT mainapp_housecurrent_hot_water_check CHECK ((hot_water >= 0))
);


ALTER TABLE public.mainapp_housecurrent OWNER TO post;

--
-- Name: mainapp_housecurrent_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_housecurrent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_housecurrent_id_seq OWNER TO post;

--
-- Name: mainapp_housecurrent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_housecurrent_id_seq OWNED BY public.mainapp_housecurrent.id;


--
-- Name: mainapp_househistory; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_househistory (
    id integer NOT NULL,
    period date NOT NULL,
    col_water integer,
    hot_water integer,
    electric_day integer,
    electric_night integer,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    house_id integer,
    CONSTRAINT mainapp_househistory_col_water_check CHECK ((col_water >= 0)),
    CONSTRAINT mainapp_househistory_electric_day_check CHECK ((electric_day >= 0)),
    CONSTRAINT mainapp_househistory_electric_night_check CHECK ((electric_night >= 0)),
    CONSTRAINT mainapp_househistory_hot_water_check CHECK ((hot_water >= 0))
);


ALTER TABLE public.mainapp_househistory OWNER TO post;

--
-- Name: mainapp_househistory_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_househistory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_househistory_id_seq OWNER TO post;

--
-- Name: mainapp_househistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_househistory_id_seq OWNED BY public.mainapp_househistory.id;


--
-- Name: mainapp_mainbook; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_mainbook (
    id integer NOT NULL,
    period date NOT NULL,
    direction character varying(1) NOT NULL,
    amount numeric(7,2) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.mainapp_mainbook OWNER TO post;

--
-- Name: mainapp_mainbook_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_mainbook_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_mainbook_id_seq OWNER TO post;

--
-- Name: mainapp_mainbook_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_mainbook_id_seq OWNED BY public.mainapp_mainbook.id;


--
-- Name: mainapp_metrics; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_metrics (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.mainapp_metrics OWNER TO post;

--
-- Name: mainapp_metrics_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_metrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_metrics_id_seq OWNER TO post;

--
-- Name: mainapp_metrics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_metrics_id_seq OWNED BY public.mainapp_metrics.id;


--
-- Name: mainapp_payment; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_payment (
    id integer NOT NULL,
    period date NOT NULL,
    amount_profit numeric(7,2) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.mainapp_payment OWNER TO post;

--
-- Name: mainapp_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_payment_id_seq OWNER TO post;

--
-- Name: mainapp_payment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_payment_id_seq OWNED BY public.mainapp_payment.id;


--
-- Name: mainapp_paymentorder; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_paymentorder (
    id integer NOT NULL,
    period date NOT NULL,
    constant_data jsonb NOT NULL,
    variable_data jsonb NOT NULL,
    amount numeric(7,2) NOT NULL,
    pre_amount numeric(7,2) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    user_id integer,
    header_data jsonb
);


ALTER TABLE public.mainapp_paymentorder OWNER TO post;

--
-- Name: mainapp_paymentorder_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_paymentorder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_paymentorder_id_seq OWNER TO post;

--
-- Name: mainapp_paymentorder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_paymentorder_id_seq OWNED BY public.mainapp_paymentorder.id;


--
-- Name: mainapp_personalaccountstatus; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_personalaccountstatus (
    id integer NOT NULL,
    amount numeric(8,2) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.mainapp_personalaccountstatus OWNER TO post;

--
-- Name: mainapp_personalaccountstatus_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_personalaccountstatus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_personalaccountstatus_id_seq OWNER TO post;

--
-- Name: mainapp_personalaccountstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_personalaccountstatus_id_seq OWNED BY public.mainapp_personalaccountstatus.id;


--
-- Name: mainapp_postnews; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_postnews (
    id integer NOT NULL,
    title character varying(128) NOT NULL,
    content text NOT NULL,
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.mainapp_postnews OWNER TO post;

--
-- Name: mainapp_postnews_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_postnews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_postnews_id_seq OWNER TO post;

--
-- Name: mainapp_postnews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_postnews_id_seq OWNED BY public.mainapp_postnews.id;


--
-- Name: mainapp_privileges; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_privileges (
    id integer NOT NULL,
    sale integer NOT NULL,
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    "desc" text,
    service_id integer NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT mainapp_privileges_sale_check CHECK ((sale >= 0))
);


ALTER TABLE public.mainapp_privileges OWNER TO post;

--
-- Name: mainapp_privileges_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_privileges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_privileges_id_seq OWNER TO post;

--
-- Name: mainapp_privileges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_privileges_id_seq OWNED BY public.mainapp_privileges.id;


--
-- Name: mainapp_recalculations; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_recalculations (
    id integer NOT NULL,
    period date NOT NULL,
    recalc numeric(7,2) NOT NULL,
    "desc" text,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    service_id integer,
    user_id integer
);


ALTER TABLE public.mainapp_recalculations OWNER TO post;

--
-- Name: mainapp_recalculations_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_recalculations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_recalculations_id_seq OWNER TO post;

--
-- Name: mainapp_recalculations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_recalculations_id_seq OWNED BY public.mainapp_recalculations.id;


--
-- Name: mainapp_services; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_services (
    id integer NOT NULL,
    name character varying(256) NOT NULL,
    rate numeric(7,3) NOT NULL,
    factor numeric(3,2) NOT NULL,
    const boolean NOT NULL,
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    category_id integer NOT NULL,
    unit_id integer NOT NULL
);


ALTER TABLE public.mainapp_services OWNER TO post;

--
-- Name: mainapp_services_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_services_id_seq OWNER TO post;

--
-- Name: mainapp_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_services_id_seq OWNED BY public.mainapp_services.id;


--
-- Name: mainapp_servicescategory; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_servicescategory (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL
);


ALTER TABLE public.mainapp_servicescategory OWNER TO post;

--
-- Name: mainapp_servicescategory_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_servicescategory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_servicescategory_id_seq OWNER TO post;

--
-- Name: mainapp_servicescategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_servicescategory_id_seq OWNED BY public.mainapp_servicescategory.id;


--
-- Name: mainapp_standart; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_standart (
    id integer NOT NULL,
    period date NOT NULL,
    col_water numeric(6,2) NOT NULL,
    hot_water numeric(6,2) NOT NULL,
    electric_day numeric(6,2),
    electric_night numeric(6,2),
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    house_id integer
);


ALTER TABLE public.mainapp_standart OWNER TO post;

--
-- Name: mainapp_standart_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_standart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_standart_id_seq OWNER TO post;

--
-- Name: mainapp_standart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_standart_id_seq OWNED BY public.mainapp_standart.id;


--
-- Name: mainapp_street; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_street (
    id integer NOT NULL,
    street character varying(128) NOT NULL,
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.mainapp_street OWNER TO post;

--
-- Name: mainapp_street_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_street_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_street_id_seq OWNER TO post;

--
-- Name: mainapp_street_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_street_id_seq OWNED BY public.mainapp_street.id;


--
-- Name: mainapp_subsidies; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_subsidies (
    id integer NOT NULL,
    sale integer NOT NULL,
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    "desc" text,
    service_id integer NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT mainapp_subsidies_sale_check CHECK ((sale >= 0))
);


ALTER TABLE public.mainapp_subsidies OWNER TO post;

--
-- Name: mainapp_subsidies_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_subsidies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_subsidies_id_seq OWNER TO post;

--
-- Name: mainapp_subsidies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_subsidies_id_seq OWNED BY public.mainapp_subsidies.id;


--
-- Name: mainapp_uk; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_uk (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    num_building character varying(3) NOT NULL,
    phone character varying(11),
    email character varying(254) NOT NULL,
    inn character varying(10) NOT NULL,
    ps character varying(20) NOT NULL,
    bik character varying(10) NOT NULL,
    ks character varying(20) NOT NULL,
    bank character varying(128) NOT NULL,
    web_addr character varying(128) NOT NULL,
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    city_id integer,
    street_id integer
);


ALTER TABLE public.mainapp_uk OWNER TO post;

--
-- Name: mainapp_uk_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_uk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_uk_id_seq OWNER TO post;

--
-- Name: mainapp_uk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_uk_id_seq OWNED BY public.mainapp_uk.id;


--
-- Name: mainapp_userprofile; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_userprofile (
    id integer NOT NULL,
    gender character varying(1),
    type_electric_meter character varying(1),
    is_active boolean NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.mainapp_userprofile OWNER TO post;

--
-- Name: mainapp_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_userprofile_id_seq OWNER TO post;

--
-- Name: mainapp_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_userprofile_id_seq OWNED BY public.mainapp_userprofile.id;


--
-- Name: mainapp_variablepayments; Type: TABLE; Schema: public; Owner: post
--

CREATE TABLE public.mainapp_variablepayments (
    id integer NOT NULL,
    period date NOT NULL,
    data jsonb NOT NULL,
    total numeric(7,2) NOT NULL,
    pre_total numeric(7,2) NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.mainapp_variablepayments OWNER TO post;

--
-- Name: mainapp_variablepayments_id_seq; Type: SEQUENCE; Schema: public; Owner: post
--

CREATE SEQUENCE public.mainapp_variablepayments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mainapp_variablepayments_id_seq OWNER TO post;

--
-- Name: mainapp_variablepayments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: post
--

ALTER SEQUENCE public.mainapp_variablepayments_id_seq OWNED BY public.mainapp_variablepayments.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: authnapp_user id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.authnapp_user ALTER COLUMN id SET DEFAULT nextval('public.authnapp_user_id_seq'::regclass);


--
-- Name: authnapp_user_groups id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.authnapp_user_groups ALTER COLUMN id SET DEFAULT nextval('public.authnapp_user_groups_id_seq'::regclass);


--
-- Name: authnapp_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.authnapp_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.authnapp_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: mainapp_appartament id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_appartament ALTER COLUMN id SET DEFAULT nextval('public.mainapp_appartament_id_seq'::regclass);


--
-- Name: mainapp_city id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_city ALTER COLUMN id SET DEFAULT nextval('public.mainapp_city_id_seq'::regclass);


--
-- Name: mainapp_constantpayments id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_constantpayments ALTER COLUMN id SET DEFAULT nextval('public.mainapp_constantpayments_id_seq'::regclass);


--
-- Name: mainapp_currentcounter id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_currentcounter ALTER COLUMN id SET DEFAULT nextval('public.mainapp_currentcounter_id_seq'::regclass);


--
-- Name: mainapp_headerdata id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_headerdata ALTER COLUMN id SET DEFAULT nextval('public.mainapp_headerdata_id_seq'::regclass);


--
-- Name: mainapp_historycounter id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_historycounter ALTER COLUMN id SET DEFAULT nextval('public.mainapp_historycounter_id_seq'::regclass);


--
-- Name: mainapp_house id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_house ALTER COLUMN id SET DEFAULT nextval('public.mainapp_house_id_seq'::regclass);


--
-- Name: mainapp_housecurrent id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_housecurrent ALTER COLUMN id SET DEFAULT nextval('public.mainapp_housecurrent_id_seq'::regclass);


--
-- Name: mainapp_househistory id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_househistory ALTER COLUMN id SET DEFAULT nextval('public.mainapp_househistory_id_seq'::regclass);


--
-- Name: mainapp_mainbook id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_mainbook ALTER COLUMN id SET DEFAULT nextval('public.mainapp_mainbook_id_seq'::regclass);


--
-- Name: mainapp_metrics id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_metrics ALTER COLUMN id SET DEFAULT nextval('public.mainapp_metrics_id_seq'::regclass);


--
-- Name: mainapp_payment id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_payment ALTER COLUMN id SET DEFAULT nextval('public.mainapp_payment_id_seq'::regclass);


--
-- Name: mainapp_paymentorder id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_paymentorder ALTER COLUMN id SET DEFAULT nextval('public.mainapp_paymentorder_id_seq'::regclass);


--
-- Name: mainapp_personalaccountstatus id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_personalaccountstatus ALTER COLUMN id SET DEFAULT nextval('public.mainapp_personalaccountstatus_id_seq'::regclass);


--
-- Name: mainapp_postnews id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_postnews ALTER COLUMN id SET DEFAULT nextval('public.mainapp_postnews_id_seq'::regclass);


--
-- Name: mainapp_privileges id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_privileges ALTER COLUMN id SET DEFAULT nextval('public.mainapp_privileges_id_seq'::regclass);


--
-- Name: mainapp_recalculations id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_recalculations ALTER COLUMN id SET DEFAULT nextval('public.mainapp_recalculations_id_seq'::regclass);


--
-- Name: mainapp_services id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_services ALTER COLUMN id SET DEFAULT nextval('public.mainapp_services_id_seq'::regclass);


--
-- Name: mainapp_servicescategory id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_servicescategory ALTER COLUMN id SET DEFAULT nextval('public.mainapp_servicescategory_id_seq'::regclass);


--
-- Name: mainapp_standart id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_standart ALTER COLUMN id SET DEFAULT nextval('public.mainapp_standart_id_seq'::regclass);


--
-- Name: mainapp_street id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_street ALTER COLUMN id SET DEFAULT nextval('public.mainapp_street_id_seq'::regclass);


--
-- Name: mainapp_subsidies id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_subsidies ALTER COLUMN id SET DEFAULT nextval('public.mainapp_subsidies_id_seq'::regclass);


--
-- Name: mainapp_uk id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_uk ALTER COLUMN id SET DEFAULT nextval('public.mainapp_uk_id_seq'::regclass);


--
-- Name: mainapp_userprofile id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_userprofile ALTER COLUMN id SET DEFAULT nextval('public.mainapp_userprofile_id_seq'::regclass);


--
-- Name: mainapp_variablepayments id; Type: DEFAULT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_variablepayments ALTER COLUMN id SET DEFAULT nextval('public.mainapp_variablepayments_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.auth_group (id, name) FROM stdin;
1	Client
2	Manager
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	1	16
17	1	17
18	1	18
19	1	19
20	1	20
21	1	21
22	1	22
23	1	23
24	1	24
25	1	25
26	1	26
27	1	27
28	1	28
29	1	29
30	1	30
31	1	31
32	1	32
33	1	33
34	1	34
35	1	35
36	1	36
37	1	37
38	1	38
39	1	39
40	1	40
41	1	41
42	1	42
43	1	43
44	1	44
45	1	45
46	1	46
47	1	47
48	1	48
49	1	49
50	1	50
51	1	51
52	1	52
53	1	53
54	1	54
55	1	55
56	1	56
57	1	57
58	1	58
59	1	59
60	1	60
61	1	61
62	1	62
63	1	63
64	1	64
65	1	65
66	1	66
67	1	67
68	1	68
69	1	69
70	1	70
71	1	71
72	1	72
73	1	73
74	1	74
75	1	75
76	1	76
77	1	77
78	1	78
79	1	79
80	1	80
81	1	81
82	1	82
83	1	83
84	1	84
85	1	85
86	1	86
87	1	87
88	1	88
89	1	89
90	1	90
91	1	91
92	1	92
93	1	93
94	1	94
95	1	95
96	1	96
97	1	97
98	1	98
99	1	99
100	1	100
101	1	101
102	1	102
103	1	103
104	1	104
105	1	105
106	1	106
107	1	107
108	1	108
109	1	109
110	1	110
111	1	111
112	1	112
113	1	113
114	1	114
115	1	115
116	1	116
117	1	117
118	1	118
119	1	119
120	1	120
121	1	121
122	1	122
123	1	123
124	1	124
125	2	1
126	2	2
127	2	3
128	2	4
129	2	5
130	2	6
131	2	7
132	2	8
133	2	9
134	2	10
135	2	11
136	2	12
137	2	13
138	2	14
139	2	15
140	2	16
141	2	17
142	2	18
143	2	19
144	2	20
145	2	21
146	2	22
147	2	23
148	2	24
149	2	25
150	2	26
151	2	27
152	2	28
153	2	29
154	2	30
155	2	31
156	2	32
157	2	33
158	2	34
159	2	35
160	2	36
161	2	37
162	2	38
163	2	39
164	2	40
165	2	41
166	2	42
167	2	43
168	2	44
169	2	45
170	2	46
171	2	47
172	2	48
173	2	49
174	2	50
175	2	51
176	2	52
177	2	53
178	2	54
179	2	55
180	2	56
181	2	57
182	2	58
183	2	59
184	2	60
185	2	61
186	2	62
187	2	63
188	2	64
189	2	65
190	2	66
191	2	67
192	2	68
193	2	69
194	2	70
195	2	71
196	2	72
197	2	73
198	2	74
199	2	75
200	2	76
201	2	77
202	2	78
203	2	79
204	2	80
205	2	81
206	2	82
207	2	83
208	2	84
209	2	85
210	2	86
211	2	87
212	2	88
213	2	89
214	2	90
215	2	91
216	2	92
217	2	93
218	2	94
219	2	95
220	2	96
221	2	97
222	2	98
223	2	99
224	2	100
225	2	101
226	2	102
227	2	103
228	2	104
229	2	105
230	2	106
231	2	107
232	2	108
233	2	109
234	2	110
235	2	111
236	2	112
237	2	113
238	2	114
239	2	115
240	2	116
241	2	117
242	2	118
243	2	119
244	2	120
245	2	121
246	2	122
247	2	123
248	2	124
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add Город	6	add_city
22	Can change Город	6	change_city
23	Can delete Город	6	delete_city
24	Can view Город	6	view_city
25	Can add Дом	7	add_house
26	Can change Дом	7	change_house
27	Can delete Дом	7	delete_house
28	Can view Дом	7	view_house
29	Can add Единица измерения	8	add_metrics
30	Can change Единица измерения	8	change_metrics
31	Can delete Единица измерения	8	delete_metrics
32	Can view Единица измерения	8	view_metrics
33	Can add Услугу	9	add_services
34	Can change Услугу	9	change_services
35	Can delete Услугу	9	delete_services
36	Can view Услугу	9	view_services
37	Can add Категория услуг	10	add_servicescategory
38	Can change Категория услуг	10	change_servicescategory
39	Can delete Категория услуг	10	delete_servicescategory
40	Can view Категория услуг	10	view_servicescategory
41	Can add Улица	11	add_street
42	Can change Улица	11	change_street
43	Can delete Улица	11	delete_street
44	Can view Улица	11	view_street
45	Can add Платеж (перепенные)	12	add_variablepayments
46	Can change Платеж (перепенные)	12	change_variablepayments
47	Can delete Платеж (перепенные)	12	delete_variablepayments
48	Can view Платеж (перепенные)	12	view_variablepayments
49	Can add Профиль	13	add_userprofile
50	Can change Профиль	13	change_userprofile
51	Can delete Профиль	13	delete_userprofile
52	Can view Профиль	13	view_userprofile
53	Can add Управляющая компания	14	add_uk
54	Can change Управляющая компания	14	change_uk
55	Can delete Управляющая компания	14	delete_uk
56	Can view Управляющая компания	14	view_uk
57	Can add Субсидия	15	add_subsidies
58	Can change Субсидия	15	change_subsidies
59	Can delete Субсидия	15	delete_subsidies
60	Can view Субсидия	15	view_subsidies
61	Can add Норматив	16	add_standart
62	Can change Норматив	16	change_standart
63	Can delete Норматив	16	delete_standart
64	Can view Норматив	16	view_standart
65	Can add Перерасчет	17	add_recalculations
66	Can change Перерасчет	17	change_recalculations
67	Can delete Перерасчет	17	delete_recalculations
68	Can view Перерасчет	17	view_recalculations
69	Can add Льгота	18	add_privileges
70	Can change Льгота	18	change_privileges
71	Can delete Льгота	18	delete_privileges
72	Can view Льгота	18	view_privileges
73	Can add Состояние счета	19	add_personalaccountstatus
74	Can change Состояние счета	19	change_personalaccountstatus
75	Can delete Состояние счета	19	delete_personalaccountstatus
76	Can view Состояние счета	19	view_personalaccountstatus
77	Can add Оплата	20	add_payment
78	Can change Оплата	20	change_payment
79	Can delete Оплата	20	delete_payment
80	Can view Оплата	20	view_payment
81	Can add Главная книга	21	add_mainbook
82	Can change Главная книга	21	change_mainbook
83	Can delete Главная книга	21	delete_mainbook
84	Can view Главная книга	21	view_mainbook
85	Can add Домовой счетчик (история)	22	add_househistory
86	Can change Домовой счетчик (история)	22	change_househistory
87	Can delete Домовой счетчик (история)	22	delete_househistory
88	Can view Домовой счетчик (история)	22	view_househistory
89	Can add Домовой счетчик (текущий)	23	add_housecurrent
90	Can change Домовой счетчик (текущий)	23	change_housecurrent
91	Can delete Домовой счетчик (текущий)	23	delete_housecurrent
92	Can view Домовой счетчик (текущий)	23	view_housecurrent
93	Can add Индивид. счетчик (история)	24	add_historycounter
94	Can change Индивид. счетчик (история)	24	change_historycounter
95	Can delete Индивид. счетчик (история)	24	delete_historycounter
96	Can view Индивид. счетчик (история)	24	view_historycounter
97	Can add Начисление	25	add_headerdata
98	Can change Начисление	25	change_headerdata
99	Can delete Начисление	25	delete_headerdata
100	Can view Начисление	25	view_headerdata
101	Can add Индивид. счетчик (текущий)	26	add_currentcounter
102	Can change Индивид. счетчик (текущий)	26	change_currentcounter
103	Can delete Индивид. счетчик (текущий)	26	delete_currentcounter
104	Can view Индивид. счетчик (текущий)	26	view_currentcounter
105	Can add Платеж (постоянные)	27	add_constantpayments
106	Can change Платеж (постоянные)	27	change_constantpayments
107	Can delete Платеж (постоянные)	27	delete_constantpayments
108	Can view Платеж (постоянные)	27	view_constantpayments
109	Can add Квартира	28	add_appartament
110	Can change Квартира	28	change_appartament
111	Can delete Квартира	28	delete_appartament
112	Can view Квартира	28	view_appartament
113	Can add Новость	29	add_postnews
114	Can change Новость	29	change_postnews
115	Can delete Новость	29	delete_postnews
116	Can view Новость	29	view_postnews
117	Can add Начисление	30	add_paymentorder
118	Can change Начисление	30	change_paymentorder
119	Can delete Начисление	30	delete_paymentorder
120	Can view Начисление	30	view_paymentorder
121	Can add Пользователь	31	add_user
122	Can change Пользователь	31	change_user
123	Can delete Пользователь	31	delete_user
124	Can view Пользователь	31	view_user
\.


--
-- Data for Name: authnapp_user; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.authnapp_user (id, is_client, is_staff, personal_account, password, name, email, phone, is_active, is_superuser, last_login, activation_key, activation_key_expires) FROM stdin;
4	t	f	111002	pbkdf2_sha256$150000$TCudCUeFusvJ$iRuwqX5hvDwlUGqEjpWlpPSJXJwv6kxxy6BsO9bKSUQ=	Агамлян Татьяна Ивановна	002@gmail.com	78900988899	t	f	2021-06-12 07:45:08.37+00		2021-06-11 12:11:22.835+00
5	t	f	111003	pbkdf2_sha256$150000$6NVW8XpsI7Wg$f1vy98rnXa2Vqa6QZnhgJK8hisp0a2Vpc1izPdpad8g=	Иванова Инга Сергеевна	003@gmail.com	78900009897	t	f	2021-06-12 07:46:07.851+00		2021-06-11 12:11:22.835+00
3	t	f	111001	pbkdf2_sha256$150000$vB8hnLvGGZX4$CsnLM1ZZfzPYFwUOfiK6OyC7KazOu1bF5XhSs1AIwDk=	Петров Иван Иванович	001@mail.com	78900098889	t	f	2021-08-09 20:53:23.006575+00		2021-06-11 12:11:22.835+00
2	t	t	777001	pbkdf2_sha256$150000$dIppCqfFLGYm$Ge6p4na/v2/nb9UYrmlMtaXcMz1jCf0S5yypWN7IBQ0=	Петрова Ирина Николаевна	001@gmail.com	79808099090	t	f	2021-08-09 20:57:39.946728+00		2021-06-11 12:11:22.835+00
1	t	t	admin	pbkdf2_sha256$150000$qvL1wjvrA6ih$ZbCNJtLfvOTG1BTw9Y7R/gWAfflzz3rlfkWTj3Mh7o8=		admin@admin.com		t	t	2021-08-09 20:58:28.636868+00		2021-04-14 03:00:29.359+00
\.


--
-- Data for Name: authnapp_user_groups; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.authnapp_user_groups (id, user_id, group_id) FROM stdin;
2	2	2
3	3	1
4	4	1
5	5	1
\.


--
-- Data for Name: authnapp_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.authnapp_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-07-01 06:52:16.873829+00	1	Client	1	[{"added": {}}]	3	1
2	2021-07-01 06:52:30.311306+00	2	Manager	1	[{"added": {}}]	3	1
3	2021-08-09 20:59:41.029274+00	1	Мы начали работу! - (2021-08-09 20:59:40.858717+00:00)	1	[{"added": {}}]	29	1
4	2021-08-09 21:00:08.443876+00	2	В городе есть горячая вода! - (2021-08-09 21:00:08.438288+00:00)	1	[{"added": {}}]	29	1
5	2021-08-09 21:00:21.26675+00	2	В городе есть горячая вода! - (2021-08-09 21:00:21.263462+00:00)	2	[{"changed": {"fields": ["content"]}}]	29	1
6	2021-08-09 21:00:30.190252+00	1	Мы начали работу! - (2021-08-09 21:00:30.186169+00:00)	2	[{"changed": {"fields": ["content"]}}]	29	1
7	2021-08-09 21:01:13.343186+00	3	Ура! Мы поднимаем тарифы! - (2021-08-09 21:01:13.338766+00:00)	1	[{"added": {}}]	29	1
8	2021-08-09 21:01:35.391898+00	4	Скоро новый год! - (2021-08-09 21:01:35.386900+00:00)	1	[{"added": {}}]	29	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	mainapp	city
7	mainapp	house
8	mainapp	metrics
9	mainapp	services
10	mainapp	servicescategory
11	mainapp	street
12	mainapp	variablepayments
13	mainapp	userprofile
14	mainapp	uk
15	mainapp	subsidies
16	mainapp	standart
17	mainapp	recalculations
18	mainapp	privileges
19	mainapp	personalaccountstatus
20	mainapp	payment
21	mainapp	mainbook
22	mainapp	househistory
23	mainapp	housecurrent
24	mainapp	historycounter
25	mainapp	headerdata
26	mainapp	currentcounter
27	mainapp	constantpayments
28	mainapp	appartament
29	mainapp	postnews
30	mainapp	paymentorder
31	authnapp	user
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-07-01 06:51:06.291065+00
2	contenttypes	0002_remove_content_type_name	2021-07-01 06:51:06.323153+00
3	auth	0001_initial	2021-07-01 06:51:06.43435+00
4	auth	0002_alter_permission_name_max_length	2021-07-01 06:51:06.55942+00
5	auth	0003_alter_user_email_max_length	2021-07-01 06:51:06.577872+00
6	auth	0004_alter_user_username_opts	2021-07-01 06:51:06.594313+00
7	auth	0005_alter_user_last_login_null	2021-07-01 06:51:06.610316+00
8	auth	0006_require_contenttypes_0002	2021-07-01 06:51:06.616898+00
9	auth	0007_alter_validators_add_error_messages	2021-07-01 06:51:06.634227+00
10	auth	0008_alter_user_username_max_length	2021-07-01 06:51:06.648467+00
11	auth	0009_alter_user_last_name_max_length	2021-07-01 06:51:06.665283+00
12	auth	0010_alter_group_name_max_length	2021-07-01 06:51:06.688232+00
13	auth	0011_update_proxy_permissions	2021-07-01 06:51:06.703992+00
14	authnapp	0001_initial	2021-07-01 06:51:06.838227+00
15	admin	0001_initial	2021-07-01 06:51:07.045809+00
16	admin	0002_logentry_remove_auto_add	2021-07-01 06:51:07.13162+00
17	admin	0003_logentry_add_action_flag_choices	2021-07-01 06:51:07.147392+00
18	authnapp	0002_auto_20210616_0249	2021-07-01 06:51:07.170086+00
19	authnapp	0003_auto_20210625_1045	2021-07-01 06:51:07.192258+00
20	authnapp	0004_auto_20210625_1417	2021-07-01 06:51:07.214376+00
21	authnapp	0005_auto_20210629_0319	2021-07-01 06:51:07.232201+00
22	authnapp	0006_auto_20210629_0340	2021-07-01 06:51:07.250665+00
23	authnapp	0007_auto_20210630_0224	2021-07-01 06:51:07.275232+00
24	authnapp	0008_auto_20210701_0631	2021-07-01 06:51:07.309842+00
25	mainapp	0001_initial	2021-07-01 06:51:08.588088+00
26	mainapp	0002_auto_20210616_0249	2021-07-01 06:51:09.758607+00
27	mainapp	0003_auto_20210625_1045	2021-07-01 06:51:10.038298+00
28	mainapp	0004_auto_20210625_1417	2021-07-01 06:51:10.235333+00
29	mainapp	0005_auto_20210629_0319	2021-07-01 06:51:10.578929+00
30	mainapp	0006_auto_20210629_0340	2021-07-01 06:51:10.841874+00
31	mainapp	0007_auto_20210630_0224	2021-07-01 06:51:11.040159+00
32	mainapp	0008_auto_20210701_0631	2021-07-01 06:51:11.234974+00
33	sessions	0001_initial	2021-07-01 06:51:11.28908+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
9at7g4pkzhyucl2n25ek5z4hyoqfwi5z	Y2Y0NjAxNmMzMjgwNjhhNWUwNTRmNWIyMmQ3ZjM0ZGE3MWUyZjQ5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYjY5ZjY5Mjc1MDg1YjAzY2QwNzI1ZThkNTJkYjI3ZjRiYzFmZGIwIn0=	2021-08-23 20:58:28.662098+00
\.


--
-- Data for Name: mainapp_appartament; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_appartament (id, number, add_number, sq_appart, num_owner, is_active, created, updated, house_id, user_id) FROM stdin;
1	1	0	65.00	2	t	2021-06-09 12:28:33.656+00	2021-06-15 09:18:44.05+00	1	3
2	2	0	65.00	3	t	2021-06-09 12:28:58.537+00	2021-06-15 09:18:54.74+00	1	4
3	3	0	76.00	1	t	2021-06-09 12:29:24.03+00	2021-06-15 09:19:04.934+00	1	5
\.


--
-- Data for Name: mainapp_city; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_city (id, city, is_active, created, updated) FROM stdin;
1	Тюмень	t	2021-06-09 10:33:33.256+00	2021-06-09 10:33:33.256+00
\.


--
-- Data for Name: mainapp_constantpayments; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_constantpayments (id, data, total, pre_total, created, updated, user_id) FROM stdin;
1	"[{\\"service\\": \\"Капитальный ремонт\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"7.500\\", \\"accured\\": \\"487.50000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"487.50000\\", \\"pre_total\\": \\"487.50000\\"}, {\\"service\\": \\"Вывоз ТБО\\", \\"unit\\": \\"чел\\", \\"rate\\": \\"141.500\\", \\"accured\\": \\"424.500\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"424.500\\", \\"pre_total\\": \\"424.500\\"}, {\\"service\\": \\"Обслуживание дома\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"3.100\\", \\"accured\\": \\"201.50000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"201.50000\\", \\"pre_total\\": \\"201.50000\\"}, {\\"service\\": \\"Содержание придомовой территории\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"4.180\\", \\"accured\\": \\"271.70000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"271.70000\\", \\"pre_total\\": \\"271.70000\\"}]"	1385.200	1385.200	2021-07-01 07:00:54.181903+00	2021-07-01 07:00:54.181969+00	4
2	"[{\\"service\\": \\"Капитальный ремонт\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"7.500\\", \\"accured\\": \\"570.00000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"570.00000\\", \\"pre_total\\": \\"570.00000\\"}, {\\"service\\": \\"Вывоз ТБО\\", \\"unit\\": \\"чел\\", \\"rate\\": \\"141.500\\", \\"accured\\": \\"141.500\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"141.500\\", \\"pre_total\\": \\"141.500\\"}, {\\"service\\": \\"Обслуживание дома\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"3.100\\", \\"accured\\": \\"235.60000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"235.60000\\", \\"pre_total\\": \\"235.60000\\"}, {\\"service\\": \\"Содержание придомовой территории\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"4.180\\", \\"accured\\": \\"317.68000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"317.68000\\", \\"pre_total\\": \\"317.68000\\"}]"	1264.780	1264.780	2021-07-01 07:00:54.2174+00	2021-07-01 07:00:54.217468+00	5
3	"[{\\"service\\": \\"Капитальный ремонт\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"7.500\\", \\"accured\\": \\"487.50000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"487.50000\\", \\"pre_total\\": \\"487.50000\\"}, {\\"service\\": \\"Вывоз ТБО\\", \\"unit\\": \\"чел\\", \\"rate\\": \\"141.500\\", \\"accured\\": \\"283.000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"283.000\\", \\"pre_total\\": \\"283.000\\"}, {\\"service\\": \\"Обслуживание дома\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"3.100\\", \\"accured\\": \\"201.50000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"201.50000\\", \\"pre_total\\": \\"201.50000\\"}, {\\"service\\": \\"Содержание придомовой территории\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"4.180\\", \\"accured\\": \\"271.70000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"271.70000\\", \\"pre_total\\": \\"271.70000\\"}]"	1243.700	1243.700	2021-07-01 07:00:54.24214+00	2021-07-01 07:00:54.242205+00	3
\.


--
-- Data for Name: mainapp_currentcounter; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_currentcounter (id, period, col_water, hot_water, electric_day, electric_night, electric_single, created, updated, user_id) FROM stdin;
\.


--
-- Data for Name: mainapp_headerdata; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_headerdata (id, data, created, updated, user_id) FROM stdin;
1	"{\\"payer\\": \\"Агамлян Татьяна Ивановна\\", \\"address\\": \\"ул.Зеленая, д.1, кв.2, комн.0\\", \\"sq_appart\\": \\"65.00\\", \\"num_living\\": 3, \\"name_uk\\": {\\"name\\": \\"ООО Новый город\\", \\"address\\": \\"ул.Молодежная, д.1\\", \\"phone\\": \\"тел.78980988090\\", \\"web\\": \\"www.uk.ru\\"}, \\"requisites\\": {\\"inn\\": \\"7897897988\\", \\"check_acc\\": \\"98685678456898589679\\", \\"bik\\": \\"8567869578\\", \\"corr_acc\\": \\"85698687956785678968\\", \\"bank\\": \\"ОАО Альфа-Барк\\"}, \\"personal_account\\": \\"111002\\"}"	2021-07-01 07:00:54.709695+00	2021-07-01 07:00:54.70977+00	4
2	"{\\"payer\\": \\"Иванова Инга Сергеевна\\", \\"address\\": \\"ул.Зеленая, д.1, кв.3, комн.0\\", \\"sq_appart\\": \\"76.00\\", \\"num_living\\": 1, \\"name_uk\\": {\\"name\\": \\"ООО Новый город\\", \\"address\\": \\"ул.Молодежная, д.1\\", \\"phone\\": \\"тел.78980988090\\", \\"web\\": \\"www.uk.ru\\"}, \\"requisites\\": {\\"inn\\": \\"7897897988\\", \\"check_acc\\": \\"98685678456898589679\\", \\"bik\\": \\"8567869578\\", \\"corr_acc\\": \\"85698687956785678968\\", \\"bank\\": \\"ОАО Альфа-Барк\\"}, \\"personal_account\\": \\"111003\\"}"	2021-07-01 07:00:54.756881+00	2021-07-01 07:00:54.756983+00	5
3	"{\\"payer\\": \\"Петров Иван Иванович\\", \\"address\\": \\"ул.Зеленая, д.1, кв.1, комн.0\\", \\"sq_appart\\": \\"65.00\\", \\"num_living\\": 2, \\"name_uk\\": {\\"name\\": \\"ООО Новый город\\", \\"address\\": \\"ул.Молодежная, д.1\\", \\"phone\\": \\"тел.78980988090\\", \\"web\\": \\"www.uk.ru\\"}, \\"requisites\\": {\\"inn\\": \\"7897897988\\", \\"check_acc\\": \\"98685678456898589679\\", \\"bik\\": \\"8567869578\\", \\"corr_acc\\": \\"85698687956785678968\\", \\"bank\\": \\"ОАО Альфа-Барк\\"}, \\"personal_account\\": \\"111001\\"}"	2021-07-01 07:00:54.798862+00	2021-07-01 07:00:54.798955+00	3
\.


--
-- Data for Name: mainapp_historycounter; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_historycounter (id, period, col_water, hot_water, electric_day, electric_night, electric_single, created, updated, user_id) FROM stdin;
1	2021-05-01	1000	1000	\N	\N	\N	2021-06-12 19:40:41.424+00	2021-06-12 19:40:41.424+00	3
2	2021-05-01	1000	1000	\N	\N	\N	2021-06-12 19:40:55.967+00	2021-06-12 19:40:55.967+00	4
3	2021-05-01	1000	1000	\N	\N	\N	2021-06-12 19:41:10.802+00	2021-06-12 19:41:10.802+00	5
\.


--
-- Data for Name: mainapp_house; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_house (id, number, add_number, sq_home, is_active, created, updated, category_rate_id, city_id, street_id, uk_id) FROM stdin;
1	1	-	7655.00	t	2021-06-09 12:27:59.358+00	2021-06-09 12:27:59.358+00	1	1	4	1
2	2	-	7654.00	t	2021-06-09 12:28:17.488+00	2021-06-09 12:28:17.488+00	1	1	4	1
\.


--
-- Data for Name: mainapp_housecurrent; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_housecurrent (id, period, col_water, hot_water, electric_day, electric_night, created, updated, house_id) FROM stdin;
1	2021-07-01	15000	14000	\N	\N	2021-07-01 06:59:40.122803+00	2021-07-01 06:59:40.122864+00	2
2	2021-07-01	17000	16000	\N	\N	2021-07-01 06:59:52.069174+00	2021-07-01 06:59:52.069254+00	1
\.


--
-- Data for Name: mainapp_househistory; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_househistory (id, period, col_water, hot_water, electric_day, electric_night, created, updated, house_id) FROM stdin;
1	2021-06-01	10000	10000	10000	10000	2021-06-12 19:39:48.069+00	2021-06-12 19:39:48.069+00	1
2	2021-06-01	10000	10000	10000	10000	2021-06-12 19:40:03.67+00	2021-06-12 19:40:03.67+00	2
\.


--
-- Data for Name: mainapp_mainbook; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_mainbook (id, period, direction, amount, created, updated, user_id) FROM stdin;
4	2021-07-01	C	9604.68	2021-07-01 07:00:54.361489+00	2021-07-01 07:00:54.36155+00	4
5	2021-07-01	C	10875.25	2021-07-01 07:00:54.491643+00	2021-07-01 07:00:54.491706+00	5
6	2021-07-01	C	9463.18	2021-07-01 07:00:54.596545+00	2021-07-01 07:00:54.596621+00	3
\.


--
-- Data for Name: mainapp_metrics; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_metrics (id, name, is_active, created, updated) FROM stdin;
1	м2	t	2021-06-09 10:34:28.521+00	2021-06-09 10:34:28.521+00
2	м3	t	2021-06-09 10:34:31.574+00	2021-06-09 10:34:31.574+00
3	кВт.ч	t	2021-06-09 10:34:38.051+00	2021-06-09 10:34:38.051+00
4	чел	t	2021-06-09 10:34:42.79+00	2021-06-09 10:34:42.79+00
5	кв	t	2021-06-09 10:34:45.509+00	2021-06-09 10:34:45.509+00
6	шт	t	2021-06-09 10:34:49.04+00	2021-06-09 10:34:49.04+00
7	Гкал	t	2021-06-09 10:35:03.233+00	2021-06-09 10:35:03.233+00
\.


--
-- Data for Name: mainapp_payment; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_payment (id, period, amount_profit, created, updated, user_id) FROM stdin;
\.


--
-- Data for Name: mainapp_paymentorder; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_paymentorder (id, period, constant_data, variable_data, amount, pre_amount, created, updated, user_id, header_data) FROM stdin;
5	2021-07-01	"[{\\"service\\": \\"Капитальный ремонт\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"7.500\\", \\"accured\\": \\"570.00000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"570.00000\\", \\"pre_total\\": \\"570.00000\\"}, {\\"service\\": \\"Вывоз ТБО\\", \\"unit\\": \\"чел\\", \\"rate\\": \\"141.500\\", \\"accured\\": \\"141.500\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"141.500\\", \\"pre_total\\": \\"141.500\\"}, {\\"service\\": \\"Обслуживание дома\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"3.100\\", \\"accured\\": \\"235.60000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"235.60000\\", \\"pre_total\\": \\"235.60000\\"}, {\\"service\\": \\"Содержание придомовой территории\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"4.180\\", \\"accured\\": \\"317.68000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"317.68000\\", \\"pre_total\\": \\"317.68000\\"}]"	"[{\\"service\\": \\"Холодная вода\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"32.450\\", \\"volume\\": \\"0.91\\", \\"accured\\": \\"2244.2420000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"2244.242000000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"2244.242000000\\"}, {\\"service\\": \\"Горячая вода\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"65.450\\", \\"volume\\": \\"0.91\\", \\"accured\\": \\"4526.5220000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"4526.522000000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"4526.522000000\\"}, {\\"service\\": \\"Водоотведение\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"20.530\\", \\"volume\\": \\"138.3200\\", \\"accured\\": \\"2839.7096000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"2839.709600000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"2839.709600000\\"}]"	10875.25	10875.25	2021-07-01 07:00:54.508994+00	2021-07-01 07:00:54.509057+00	5	"{\\"payer\\": \\"Иванова Инга Сергеевна\\", \\"address\\": \\"ул.Зеленая, д.1, кв.3, комн.0\\", \\"sq_appart\\": \\"76.00\\", \\"num_living\\": 1, \\"name_uk\\": {\\"name\\": \\"ООО Новый город\\", \\"address\\": \\"ул.Молодежная, д.1\\", \\"phone\\": \\"тел.78980988090\\", \\"web\\": \\"www.uk.ru\\"}, \\"requisites\\": {\\"inn\\": \\"7897897988\\", \\"check_acc\\": \\"98685678456898589679\\", \\"bik\\": \\"8567869578\\", \\"corr_acc\\": \\"85698687956785678968\\", \\"bank\\": \\"ОАО Альфа-Барк\\"}, \\"personal_account\\": \\"111003\\"}"
6	2021-07-01	"[{\\"service\\": \\"Капитальный ремонт\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"7.500\\", \\"accured\\": \\"487.50000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"487.50000\\", \\"pre_total\\": \\"487.50000\\"}, {\\"service\\": \\"Вывоз ТБО\\", \\"unit\\": \\"чел\\", \\"rate\\": \\"141.500\\", \\"accured\\": \\"283.000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"283.000\\", \\"pre_total\\": \\"283.000\\"}, {\\"service\\": \\"Обслуживание дома\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"3.100\\", \\"accured\\": \\"201.50000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"201.50000\\", \\"pre_total\\": \\"201.50000\\"}, {\\"service\\": \\"Содержание придомовой территории\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"4.180\\", \\"accured\\": \\"271.70000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"271.70000\\", \\"pre_total\\": \\"271.70000\\"}]"	"[{\\"service\\": \\"Холодная вода\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"32.450\\", \\"volume\\": \\"0.91\\", \\"accured\\": \\"1919.4175000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"1919.417500000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"1919.417500000\\"}, {\\"service\\": \\"Горячая вода\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"65.450\\", \\"volume\\": \\"0.91\\", \\"accured\\": \\"3871.3675000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"3871.367500000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"3871.367500000\\"}, {\\"service\\": \\"Водоотведение\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"20.530\\", \\"volume\\": \\"118.3000\\", \\"accured\\": \\"2428.6990000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"2428.699000000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"2428.699000000\\"}]"	9463.18	9463.18	2021-07-01 07:00:54.616244+00	2021-07-01 07:00:54.616319+00	3	"{\\"payer\\": \\"Петров Иван Иванович\\", \\"address\\": \\"ул.Зеленая, д.1, кв.1, комн.0\\", \\"sq_appart\\": \\"65.00\\", \\"num_living\\": 2, \\"name_uk\\": {\\"name\\": \\"ООО Новый город\\", \\"address\\": \\"ул.Молодежная, д.1\\", \\"phone\\": \\"тел.78980988090\\", \\"web\\": \\"www.uk.ru\\"}, \\"requisites\\": {\\"inn\\": \\"7897897988\\", \\"check_acc\\": \\"98685678456898589679\\", \\"bik\\": \\"8567869578\\", \\"corr_acc\\": \\"85698687956785678968\\", \\"bank\\": \\"ОАО Альфа-Барк\\"}, \\"personal_account\\": \\"111001\\"}"
4	2021-07-01	"[{\\"service\\": \\"Капитальный ремонт\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"7.500\\", \\"accured\\": \\"487.50000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"487.50000\\", \\"pre_total\\": \\"487.50000\\"}, {\\"service\\": \\"Вывоз ТБО\\", \\"unit\\": \\"чел\\", \\"rate\\": \\"141.500\\", \\"accured\\": \\"424.500\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"424.500\\", \\"pre_total\\": \\"424.500\\"}, {\\"service\\": \\"Обслуживание дома\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"3.100\\", \\"accured\\": \\"201.50000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"201.50000\\", \\"pre_total\\": \\"201.50000\\"}, {\\"service\\": \\"Содержание придомовой территории\\", \\"unit\\": \\"м2\\", \\"rate\\": \\"4.180\\", \\"accured\\": \\"271.70000\\", \\"standart\\": \\"\\", \\"volume\\": \\"\\", \\"coefficient\\": \\"1.00\\", \\"subsidies\\": 0, \\"privileges\\": 0, \\"recalculation\\": 0, \\"total\\": \\"271.70000\\", \\"pre_total\\": \\"271.70000\\"}]"	"[{\\"service\\": \\"Холодная вода\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"32.450\\", \\"volume\\": \\"0.91\\", \\"accured\\": \\"1919.4175000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"1919.417500000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"1919.417500000\\"}, {\\"service\\": \\"Горячая вода\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"65.450\\", \\"volume\\": \\"0.91\\", \\"accured\\": \\"3871.3675000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"3871.367500000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"3871.367500000\\"}, {\\"service\\": \\"Водоотведение\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"20.530\\", \\"volume\\": \\"118.3000\\", \\"accured\\": \\"2428.6990000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"2428.699000000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"2428.699000000\\"}]"	9604.68	9604.68	2021-07-01 07:00:54.383621+00	2021-07-01 07:00:54.383682+00	4	"{\\"payer\\": \\"Агамлян Татьяна Ивановна\\", \\"address\\": \\"ул.Зеленая, д.1, кв.2, комн.0\\", \\"sq_appart\\": \\"65.00\\", \\"num_living\\": 3, \\"name_uk\\": {\\"name\\": \\"ООО Новый город\\", \\"address\\": \\"ул.Молодежная, д.1\\", \\"phone\\": \\"тел.78980988090\\", \\"web\\": \\"www.uk.ru\\"}, \\"requisites\\": {\\"inn\\": \\"7897897988\\", \\"check_acc\\": \\"98685678456898589679\\", \\"bik\\": \\"8567869578\\", \\"corr_acc\\": \\"85698687956785678968\\", \\"bank\\": \\"ОАО Альфа-Барк\\"}, \\"personal_account\\": \\"111002\\"}"
\.


--
-- Data for Name: mainapp_personalaccountstatus; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_personalaccountstatus (id, amount, created, updated, user_id) FROM stdin;
4	9604.68	2021-07-01 07:00:54.413812+00	2021-07-01 07:00:54.413879+00	4
5	10875.25	2021-07-01 07:00:54.528706+00	2021-07-01 07:00:54.528784+00	5
6	9463.18	2021-07-01 07:00:54.638521+00	2021-07-01 07:00:54.638585+00	3
\.


--
-- Data for Name: mainapp_postnews; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_postnews (id, title, content, is_active, created, updated) FROM stdin;
2	В городе есть горячая вода!	Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint tempore dicta adipisci commodi. Iste distinctio delectus sunt vel quia blanditiis quaerat voluptatibus eveniet exercitationem, nisi unde, laborum placeat tempora, repellat praesentium vero suscipit. Doloremque aliquam vel at dolorum, pariatur quidem hic. Aperiam sit ratione quod facere ut alias expedita vero assumenda eum ipsa unde laborum vitae nesciunt, cupiditate quia facilis. Perferendis temporibus quo asperiores velit aliquid minus rem! Consectetur, rerum, molestias eligendi veritatis at amet nemo quam quo ipsa est cupiditate quas! Quibusdam ad voluptatibus culpa aut similique iusto nam excepturi vitae mollitia accusantium ut blanditiis minus, tempore rerum? Qui aperiam inventore vel iure nisi reiciendis quisquam mollitia atque aut temporibus, dolorem perspiciatis! Laboriosam doloremque, voluptatibus sequi ratione perferendis cupiditate quibusdam veritatis natus corrupti asperiores iure impedit doloribus repellat magni beatae distinctio deserunt dolores expedita? Delectus qui voluptatibus consequuntur sit nesciunt facere corrupti, sed fugit iure atque. Illum tempora nam architecto saepe praesentium aliquam rerum sequi minus, et tenetur accusamus dolores autem!	t	2021-08-09 21:00:08.438226+00	2021-08-09 21:00:21.263462+00
1	Мы начали работу!	Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint tempore dicta adipisci commodi. Iste distinctio delectus sunt vel quia blanditiis quaerat voluptatibus eveniet exercitationem, nisi unde, laborum placeat tempora, repellat praesentium vero suscipit. Doloremque aliquam vel at dolorum, pariatur quidem hic. Aperiam sit ratione quod facere ut alias expedita vero assumenda eum ipsa unde laborum vitae nesciunt, cupiditate quia facilis. Perferendis temporibus quo asperiores velit aliquid minus rem! Consectetur, rerum, molestias eligendi veritatis at amet nemo quam quo ipsa est cupiditate quas! Quibusdam ad voluptatibus culpa aut similique iusto nam excepturi vitae mollitia accusantium ut blanditiis minus, tempore rerum? Qui aperiam inventore vel iure nisi reiciendis quisquam mollitia atque aut temporibus, dolorem perspiciatis! Laboriosam doloremque, voluptatibus sequi ratione perferendis cupiditate quibusdam veritatis natus corrupti asperiores iure impedit doloribus repellat magni beatae distinctio deserunt dolores expedita? Delectus qui voluptatibus consequuntur sit nesciunt facere corrupti, sed fugit iure atque. Illum tempora nam architecto saepe praesentium aliquam rerum sequi minus, et tenetur accusamus dolores autem molestiae sunt expedita possimus delectus veritatis a ratione nostrum dolorem! Tempore tenetur ullam optio exercitationem nobis saepe quidem, debitis error quam dignissimos odit adipisci autem veniam pariatur ipsa placeat cumque minima porro velit rem, fugit dolores. Esse et aliquam atque accusantium explicabo quia eius odit fugit id commodi optio minus neque ut voluptatum sapiente vel, iure laborum rerum! Id facilis odio tempora. Veniam natus aspernatur incidunt magni itaque, debitis odit vel quasi exercitationem dicta sunt ab dolor adipisci accusantium iste? Corrupti iusto esse pariatur possimus enim, sequi saepe illo eaque, quasi impedit reprehenderit quisquam reiciendis suscipit architecto ipsa molestias labore molestiae voluptatum nihil natus dolore optio? Quia ea fugit qui modi officiis? Harum unde incidunt fuga quam quasi quos? Laudantium a ducimus cum neque tenetur magni asperiores ex natus ad quod perferendis aperiam error, fuga itaque quasi saepe illum. Ducimus cum sunt incidunt quam molestiae, nihil architecto consequuntur veritatis labore, eaque nulla? Placeat tempore dolorum nostrum eos harum suscipit	t	2021-08-09 20:59:40.858655+00	2021-08-09 21:00:30.186169+00
3	Ура! Мы поднимаем тарифы!	Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint tempore dicta adipisci commodi. Iste distinctio delectus sunt vel quia blanditiis quaerat voluptatibus eveniet exercitationem, nisi unde, laborum placeat tempora, repellat praesentium vero suscipit. Doloremque aliquam vel at dolorum, pariatur quidem hic. Aperiam sit ratione quod facere ut alias expedita vero assumenda eum ipsa unde laborum vitae nesciunt, cupiditate quia facilis. Perferendis temporibus quo asperiores velit aliquid minus rem! Consectetur, rerum, molestias eligendi veritatis at amet nemo quam quo ipsa est cupiditate quas! Quibusdam ad voluptatibus culpa aut similique iusto nam excepturi vitae mollitia accusantium ut blanditiis minus, tempore rerum? Qui aperiam inventore vel iure nisi reiciendis quisquam mollitia atque aut temporibus, dolorem perspiciatis! Laboriosam doloremque, voluptatibus sequi ratione perferendis cupiditate quibusdam veritatis natus corrupti asperiores iure impedit doloribus repellat magni beatae distinctio deserunt dolores expedita? Delectus qui voluptatibus consequuntur sit nesciunt facere corrupti, sed fugit iure atque. Illum tempora nam architecto saepe praesentium aliquam rerum sequi minus, et tenetur accusamus dolores autem molestiae sunt expedita possimus delectus veritatis a ratione nostrum dolorem! Tempore tenetur ullam optio exercitationem nobis saepe quidem, debitis error quam dignissimos odit adipisci autem veniam pariatur ipsa placeat cumque minima porro velit rem, fugit dolores. Esse et aliquam atque accusantium explicabo quia eius odit fugit id commodi optio minus neque ut voluptatum sapiente vel, iure laborum rerum! Id facilis odio tempora. Veniam natus aspernatur incidunt magni itaque, debitis odit vel quasi exercitationem dicta sunt ab dolor adipisci accusantium iste? Corrupti iusto esse pariatur possimus enim, sequi saepe illo eaque, quasi impedit	t	2021-08-09 21:01:13.338682+00	2021-08-09 21:01:13.338766+00
4	Скоро новый год!	Lorem ipsum dolor sit amet consectetur adipisicing elit. Sint tempore dicta adipisci commodi. Iste distinctio delectus sunt vel quia blanditiis quaerat voluptatibus eveniet exercitationem, nisi unde, laborum placeat tempora, repellat praesentium vero suscipit. Doloremque aliquam vel at dolorum, pariatur quidem hic. Aperiam sit ratione quod facere ut alias expedita vero assumenda eum ipsa unde laborum vitae nesciunt, cupiditate quia facilis. Perferendis temporibus quo asperiores velit aliquid minus rem! Consectetur, rerum, molestias eligendi veritatis at amet nemo quam quo ipsa est cupiditate quas! Quibusdam ad voluptatibus culpa aut similique iusto nam excepturi vitae mollitia accusantium ut	t	2021-08-09 21:01:35.386828+00	2021-08-09 21:01:35.3869+00
\.


--
-- Data for Name: mainapp_privileges; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_privileges (id, sale, is_active, created, updated, "desc", service_id, user_id) FROM stdin;
\.


--
-- Data for Name: mainapp_recalculations; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_recalculations (id, period, recalc, "desc", created, updated, service_id, user_id) FROM stdin;
\.


--
-- Data for Name: mainapp_services; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_services (id, name, rate, factor, const, is_active, created, updated, category_id, unit_id) FROM stdin;
1	Холодная вода	32.450	1.00	f	t	2021-06-09 12:14:26.286+00	2021-06-09 12:14:26.286+00	1	2
2	Горячая вода	65.450	1.00	f	t	2021-06-09 12:14:41.34+00	2021-06-15 09:20:00.43+00	1	2
3	Водоотведение	20.530	1.00	f	t	2021-06-09 12:15:06.222+00	2021-06-15 09:20:42.381+00	1	2
4	Капитальный ремонт	7.500	1.00	t	t	2021-06-09 12:15:23.809+00	2021-06-12 07:49:09.799+00	1	1
5	Вывоз ТБО	141.500	1.00	t	t	2021-06-09 12:16:07.263+00	2021-06-09 12:16:07.263+00	1	4
6	Обслуживание дома	3.100	1.00	t	t	2021-06-09 12:18:04.222+00	2021-06-12 07:48:18.225+00	1	1
7	Содержание придомовой территории	4.180	1.00	t	t	2021-06-09 12:18:38.092+00	2021-06-12 07:48:40.416+00	1	1
\.


--
-- Data for Name: mainapp_servicescategory; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_servicescategory (id, name, is_active, created, updated) FROM stdin;
1	Базовая	t	2021-06-09 10:35:38.052+00	2021-06-09 10:35:38.052+00
\.


--
-- Data for Name: mainapp_standart; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_standart (id, period, col_water, hot_water, electric_day, electric_night, created, updated, house_id) FROM stdin;
3	2021-07-01	0.65	0.52	\N	\N	2021-07-01 06:59:40.160869+00	2021-07-01 06:59:40.160931+00	2
4	2021-07-01	0.91	0.78	\N	\N	2021-07-01 06:59:52.096697+00	2021-07-01 06:59:52.096764+00	1
\.


--
-- Data for Name: mainapp_street; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_street (id, street, is_active, created, updated, city_id) FROM stdin;
1	Советская	t	2021-06-09 10:33:44.107+00	2021-06-09 10:33:44.107+00	1
2	Молодежная	t	2021-06-09 10:33:50.889+00	2021-06-09 10:33:50.889+00	1
3	Центральная	t	2021-06-09 10:33:58.101+00	2021-06-09 10:33:58.101+00	1
4	Зеленая	t	2021-06-09 10:34:16.623+00	2021-06-09 10:34:16.623+00	1
\.


--
-- Data for Name: mainapp_subsidies; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_subsidies (id, sale, is_active, created, updated, "desc", service_id, user_id) FROM stdin;
\.


--
-- Data for Name: mainapp_uk; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_uk (id, name, num_building, phone, email, inn, ps, bik, ks, bank, web_addr, is_active, created, updated, city_id, street_id) FROM stdin;
1	ООО Новый город	1	78980988090	uk@gmail.com	7897897988	98685678456898589679	8567869578	85698687956785678968	ОАО Альфа-Барк	www.uk.ru	t	2021-06-09 10:37:58.799+00	2021-06-09 10:37:58.799+00	1	2
\.


--
-- Data for Name: mainapp_userprofile; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_userprofile (id, gender, type_electric_meter, is_active, created, updated, user_id) FROM stdin;
4	W	\N	t	2021-06-09 12:30:16.998+00	2021-06-12 07:45:56.069+00	4
5	W	\N	t	2021-06-09 12:30:36.414+00	2021-06-12 07:46:40.916+00	5
3	M	\N	t	2021-06-09 12:29:51.687+00	2021-08-09 20:53:23.14135+00	3
2	\N	\N	t	2021-06-09 10:33:00.802+00	2021-08-09 20:57:39.961495+00	2
1	\N	\N	t	2021-06-09 10:29:51.175+00	2021-08-09 20:58:28.651987+00	1
\.


--
-- Data for Name: mainapp_variablepayments; Type: TABLE DATA; Schema: public; Owner: post
--

COPY public.mainapp_variablepayments (id, period, data, total, pre_total, created, updated, user_id) FROM stdin;
1	2021-07-01	"[{\\"service\\": \\"Холодная вода\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"32.450\\", \\"volume\\": \\"0.91\\", \\"accured\\": \\"1919.4175000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"1919.417500000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"1919.417500000\\"}, {\\"service\\": \\"Горячая вода\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"65.450\\", \\"volume\\": \\"0.91\\", \\"accured\\": \\"3871.3675000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"3871.367500000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"3871.367500000\\"}, {\\"service\\": \\"Водоотведение\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"20.530\\", \\"volume\\": \\"118.3000\\", \\"accured\\": \\"2428.6990000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"2428.699000000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"2428.699000000\\"}]"	8219.48	8219.48	2021-07-01 07:00:54.336575+00	2021-07-01 07:00:54.336637+00	4
2	2021-07-01	"[{\\"service\\": \\"Холодная вода\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"32.450\\", \\"volume\\": \\"0.91\\", \\"accured\\": \\"2244.2420000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"2244.242000000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"2244.242000000\\"}, {\\"service\\": \\"Горячая вода\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"65.450\\", \\"volume\\": \\"0.91\\", \\"accured\\": \\"4526.5220000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"4526.522000000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"4526.522000000\\"}, {\\"service\\": \\"Водоотведение\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"20.530\\", \\"volume\\": \\"138.3200\\", \\"accured\\": \\"2839.7096000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"2839.709600000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"2839.709600000\\"}]"	9610.47	9610.47	2021-07-01 07:00:54.469478+00	2021-07-01 07:00:54.469538+00	5
3	2021-07-01	"[{\\"service\\": \\"Холодная вода\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"32.450\\", \\"volume\\": \\"0.91\\", \\"accured\\": \\"1919.4175000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"1919.417500000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"1919.417500000\\"}, {\\"service\\": \\"Горячая вода\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"65.450\\", \\"volume\\": \\"0.91\\", \\"accured\\": \\"3871.3675000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"3871.367500000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"3871.367500000\\"}, {\\"service\\": \\"Водоотведение\\", \\"unit\\": \\"м3\\", \\"standart\\": 0, \\"rate\\": \\"20.530\\", \\"volume\\": \\"118.3000\\", \\"accured\\": \\"2428.6990000\\", \\"coefficient\\": \\"1.00\\", \\"pre_total\\": \\"2428.699000000\\", \\"subsidies\\": \\"0E-9\\", \\"privileges\\": \\"0E-9\\", \\"recalculation\\": 0, \\"total\\": \\"2428.699000000\\"}]"	8219.48	8219.48	2021-07-01 07:00:54.575565+00	2021-07-01 07:00:54.575649+00	3
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 248, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 124, true);


--
-- Name: authnapp_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.authnapp_user_groups_id_seq', 5, true);


--
-- Name: authnapp_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.authnapp_user_id_seq', 5, true);


--
-- Name: authnapp_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.authnapp_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 8, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 31, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 33, true);


--
-- Name: mainapp_appartament_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_appartament_id_seq', 3, true);


--
-- Name: mainapp_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_city_id_seq', 1, true);


--
-- Name: mainapp_constantpayments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_constantpayments_id_seq', 3, true);


--
-- Name: mainapp_currentcounter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_currentcounter_id_seq', 1, false);


--
-- Name: mainapp_headerdata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_headerdata_id_seq', 3, true);


--
-- Name: mainapp_historycounter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_historycounter_id_seq', 3, true);


--
-- Name: mainapp_house_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_house_id_seq', 2, true);


--
-- Name: mainapp_housecurrent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_housecurrent_id_seq', 2, true);


--
-- Name: mainapp_househistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_househistory_id_seq', 2, true);


--
-- Name: mainapp_mainbook_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_mainbook_id_seq', 6, true);


--
-- Name: mainapp_metrics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_metrics_id_seq', 7, true);


--
-- Name: mainapp_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_payment_id_seq', 1, false);


--
-- Name: mainapp_paymentorder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_paymentorder_id_seq', 6, true);


--
-- Name: mainapp_personalaccountstatus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_personalaccountstatus_id_seq', 6, true);


--
-- Name: mainapp_postnews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_postnews_id_seq', 4, true);


--
-- Name: mainapp_privileges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_privileges_id_seq', 1, false);


--
-- Name: mainapp_recalculations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_recalculations_id_seq', 1, false);


--
-- Name: mainapp_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_services_id_seq', 7, true);


--
-- Name: mainapp_servicescategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_servicescategory_id_seq', 1, true);


--
-- Name: mainapp_standart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_standart_id_seq', 4, true);


--
-- Name: mainapp_street_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_street_id_seq', 4, true);


--
-- Name: mainapp_subsidies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_subsidies_id_seq', 1, false);


--
-- Name: mainapp_uk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_uk_id_seq', 1, true);


--
-- Name: mainapp_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_userprofile_id_seq', 5, true);


--
-- Name: mainapp_variablepayments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: post
--

SELECT pg_catalog.setval('public.mainapp_variablepayments_id_seq', 3, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: authnapp_user authnapp_user_email_key; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.authnapp_user
    ADD CONSTRAINT authnapp_user_email_key UNIQUE (email);


--
-- Name: authnapp_user_groups authnapp_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.authnapp_user_groups
    ADD CONSTRAINT authnapp_user_groups_pkey PRIMARY KEY (id);


--
-- Name: authnapp_user_groups authnapp_user_groups_user_id_group_id_c1a0fa10_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.authnapp_user_groups
    ADD CONSTRAINT authnapp_user_groups_user_id_group_id_c1a0fa10_uniq UNIQUE (user_id, group_id);


--
-- Name: authnapp_user authnapp_user_personal_account_key; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.authnapp_user
    ADD CONSTRAINT authnapp_user_personal_account_key UNIQUE (personal_account);


--
-- Name: authnapp_user authnapp_user_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.authnapp_user
    ADD CONSTRAINT authnapp_user_pkey PRIMARY KEY (id);


--
-- Name: authnapp_user_user_permissions authnapp_user_user_permi_user_id_permission_id_26a717c2_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.authnapp_user_user_permissions
    ADD CONSTRAINT authnapp_user_user_permi_user_id_permission_id_26a717c2_uniq UNIQUE (user_id, permission_id);


--
-- Name: authnapp_user_user_permissions authnapp_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.authnapp_user_user_permissions
    ADD CONSTRAINT authnapp_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: mainapp_appartament mainapp_appartament_house_id_number_add_number_0bdec302_uniq; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_appartament
    ADD CONSTRAINT mainapp_appartament_house_id_number_add_number_0bdec302_uniq UNIQUE (house_id, number, add_number);


--
-- Name: mainapp_appartament mainapp_appartament_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_appartament
    ADD CONSTRAINT mainapp_appartament_pkey PRIMARY KEY (id);


--
-- Name: mainapp_city mainapp_city_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_city
    ADD CONSTRAINT mainapp_city_pkey PRIMARY KEY (id);


--
-- Name: mainapp_constantpayments mainapp_constantpayments_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_constantpayments
    ADD CONSTRAINT mainapp_constantpayments_pkey PRIMARY KEY (id);


--
-- Name: mainapp_currentcounter mainapp_currentcounter_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_currentcounter
    ADD CONSTRAINT mainapp_currentcounter_pkey PRIMARY KEY (id);


--
-- Name: mainapp_headerdata mainapp_headerdata_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_headerdata
    ADD CONSTRAINT mainapp_headerdata_pkey PRIMARY KEY (id);


--
-- Name: mainapp_historycounter mainapp_historycounter_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_historycounter
    ADD CONSTRAINT mainapp_historycounter_pkey PRIMARY KEY (id);


--
-- Name: mainapp_house mainapp_house_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_house
    ADD CONSTRAINT mainapp_house_pkey PRIMARY KEY (id);


--
-- Name: mainapp_housecurrent mainapp_housecurrent_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_housecurrent
    ADD CONSTRAINT mainapp_housecurrent_pkey PRIMARY KEY (id);


--
-- Name: mainapp_househistory mainapp_househistory_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_househistory
    ADD CONSTRAINT mainapp_househistory_pkey PRIMARY KEY (id);


--
-- Name: mainapp_mainbook mainapp_mainbook_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_mainbook
    ADD CONSTRAINT mainapp_mainbook_pkey PRIMARY KEY (id);


--
-- Name: mainapp_metrics mainapp_metrics_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_metrics
    ADD CONSTRAINT mainapp_metrics_pkey PRIMARY KEY (id);


--
-- Name: mainapp_payment mainapp_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_payment
    ADD CONSTRAINT mainapp_payment_pkey PRIMARY KEY (id);


--
-- Name: mainapp_paymentorder mainapp_paymentorder_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_paymentorder
    ADD CONSTRAINT mainapp_paymentorder_pkey PRIMARY KEY (id);


--
-- Name: mainapp_personalaccountstatus mainapp_personalaccountstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_personalaccountstatus
    ADD CONSTRAINT mainapp_personalaccountstatus_pkey PRIMARY KEY (id);


--
-- Name: mainapp_personalaccountstatus mainapp_personalaccountstatus_user_id_key; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_personalaccountstatus
    ADD CONSTRAINT mainapp_personalaccountstatus_user_id_key UNIQUE (user_id);


--
-- Name: mainapp_postnews mainapp_postnews_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_postnews
    ADD CONSTRAINT mainapp_postnews_pkey PRIMARY KEY (id);


--
-- Name: mainapp_privileges mainapp_privileges_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_privileges
    ADD CONSTRAINT mainapp_privileges_pkey PRIMARY KEY (id);


--
-- Name: mainapp_recalculations mainapp_recalculations_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_recalculations
    ADD CONSTRAINT mainapp_recalculations_pkey PRIMARY KEY (id);


--
-- Name: mainapp_services mainapp_services_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_services
    ADD CONSTRAINT mainapp_services_pkey PRIMARY KEY (id);


--
-- Name: mainapp_servicescategory mainapp_servicescategory_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_servicescategory
    ADD CONSTRAINT mainapp_servicescategory_pkey PRIMARY KEY (id);


--
-- Name: mainapp_standart mainapp_standart_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_standart
    ADD CONSTRAINT mainapp_standart_pkey PRIMARY KEY (id);


--
-- Name: mainapp_street mainapp_street_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_street
    ADD CONSTRAINT mainapp_street_pkey PRIMARY KEY (id);


--
-- Name: mainapp_subsidies mainapp_subsidies_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_subsidies
    ADD CONSTRAINT mainapp_subsidies_pkey PRIMARY KEY (id);


--
-- Name: mainapp_uk mainapp_uk_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_uk
    ADD CONSTRAINT mainapp_uk_pkey PRIMARY KEY (id);


--
-- Name: mainapp_userprofile mainapp_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_userprofile
    ADD CONSTRAINT mainapp_userprofile_pkey PRIMARY KEY (id);


--
-- Name: mainapp_userprofile mainapp_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_userprofile
    ADD CONSTRAINT mainapp_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: mainapp_variablepayments mainapp_variablepayments_pkey; Type: CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_variablepayments
    ADD CONSTRAINT mainapp_variablepayments_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: authnapp_user_email_43a63878_like; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX authnapp_user_email_43a63878_like ON public.authnapp_user USING btree (email varchar_pattern_ops);


--
-- Name: authnapp_user_groups_group_id_412a245a; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX authnapp_user_groups_group_id_412a245a ON public.authnapp_user_groups USING btree (group_id);


--
-- Name: authnapp_user_groups_user_id_4d5f3c9c; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX authnapp_user_groups_user_id_4d5f3c9c ON public.authnapp_user_groups USING btree (user_id);


--
-- Name: authnapp_user_personal_account_aa717c94_like; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX authnapp_user_personal_account_aa717c94_like ON public.authnapp_user USING btree (personal_account varchar_pattern_ops);


--
-- Name: authnapp_user_user_permissions_permission_id_f279ea2f; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX authnapp_user_user_permissions_permission_id_f279ea2f ON public.authnapp_user_user_permissions USING btree (permission_id);


--
-- Name: authnapp_user_user_permissions_user_id_6095be0e; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX authnapp_user_user_permissions_user_id_6095be0e ON public.authnapp_user_user_permissions USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: mainapp_appartament_house_id_53b45bf4; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_appartament_house_id_53b45bf4 ON public.mainapp_appartament USING btree (house_id);


--
-- Name: mainapp_appartament_is_active_2c039bc4; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_appartament_is_active_2c039bc4 ON public.mainapp_appartament USING btree (is_active);


--
-- Name: mainapp_appartament_user_id_13ccf675; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_appartament_user_id_13ccf675 ON public.mainapp_appartament USING btree (user_id);


--
-- Name: mainapp_city_is_active_681be8bc; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_city_is_active_681be8bc ON public.mainapp_city USING btree (is_active);


--
-- Name: mainapp_constantpayments_user_id_16c2d464; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_constantpayments_user_id_16c2d464 ON public.mainapp_constantpayments USING btree (user_id);


--
-- Name: mainapp_currentcounter_user_id_2f0d47ca; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_currentcounter_user_id_2f0d47ca ON public.mainapp_currentcounter USING btree (user_id);


--
-- Name: mainapp_headerdata_user_id_cb0f87de; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_headerdata_user_id_cb0f87de ON public.mainapp_headerdata USING btree (user_id);


--
-- Name: mainapp_historycounter_user_id_1354c610; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_historycounter_user_id_1354c610 ON public.mainapp_historycounter USING btree (user_id);


--
-- Name: mainapp_house_category_rate_id_cbd50101; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_house_category_rate_id_cbd50101 ON public.mainapp_house USING btree (category_rate_id);


--
-- Name: mainapp_house_city_id_f6b24c2f; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_house_city_id_f6b24c2f ON public.mainapp_house USING btree (city_id);


--
-- Name: mainapp_house_is_active_bf42129b; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_house_is_active_bf42129b ON public.mainapp_house USING btree (is_active);


--
-- Name: mainapp_house_street_id_65cb6473; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_house_street_id_65cb6473 ON public.mainapp_house USING btree (street_id);


--
-- Name: mainapp_house_uk_id_d4f8b5ee; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_house_uk_id_d4f8b5ee ON public.mainapp_house USING btree (uk_id);


--
-- Name: mainapp_housecurrent_house_id_55d087e7; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_housecurrent_house_id_55d087e7 ON public.mainapp_housecurrent USING btree (house_id);


--
-- Name: mainapp_househistory_house_id_1b195ca0; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_househistory_house_id_1b195ca0 ON public.mainapp_househistory USING btree (house_id);


--
-- Name: mainapp_mainbook_user_id_96d2e8a4; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_mainbook_user_id_96d2e8a4 ON public.mainapp_mainbook USING btree (user_id);


--
-- Name: mainapp_metrics_is_active_f0fdcccb; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_metrics_is_active_f0fdcccb ON public.mainapp_metrics USING btree (is_active);


--
-- Name: mainapp_payment_user_id_c08d347b; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_payment_user_id_c08d347b ON public.mainapp_payment USING btree (user_id);


--
-- Name: mainapp_paymentorder_user_id_dff7020c; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_paymentorder_user_id_dff7020c ON public.mainapp_paymentorder USING btree (user_id);


--
-- Name: mainapp_postnews_is_active_4380e41a; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_postnews_is_active_4380e41a ON public.mainapp_postnews USING btree (is_active);


--
-- Name: mainapp_privileges_is_active_a5c33b27; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_privileges_is_active_a5c33b27 ON public.mainapp_privileges USING btree (is_active);


--
-- Name: mainapp_privileges_service_id_89814c5c; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_privileges_service_id_89814c5c ON public.mainapp_privileges USING btree (service_id);


--
-- Name: mainapp_privileges_user_id_a5afae4e; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_privileges_user_id_a5afae4e ON public.mainapp_privileges USING btree (user_id);


--
-- Name: mainapp_recalculations_service_id_6719b5d1; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_recalculations_service_id_6719b5d1 ON public.mainapp_recalculations USING btree (service_id);


--
-- Name: mainapp_recalculations_user_id_b5296158; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_recalculations_user_id_b5296158 ON public.mainapp_recalculations USING btree (user_id);


--
-- Name: mainapp_services_category_id_c9fa699a; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_services_category_id_c9fa699a ON public.mainapp_services USING btree (category_id);


--
-- Name: mainapp_services_const_85f8c257; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_services_const_85f8c257 ON public.mainapp_services USING btree (const);


--
-- Name: mainapp_services_is_active_28292896; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_services_is_active_28292896 ON public.mainapp_services USING btree (is_active);


--
-- Name: mainapp_services_unit_id_837a305e; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_services_unit_id_837a305e ON public.mainapp_services USING btree (unit_id);


--
-- Name: mainapp_servicescategory_is_active_f66b16c7; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_servicescategory_is_active_f66b16c7 ON public.mainapp_servicescategory USING btree (is_active);


--
-- Name: mainapp_standart_house_id_f506c58e; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_standart_house_id_f506c58e ON public.mainapp_standart USING btree (house_id);


--
-- Name: mainapp_street_city_id_faeb9cfe; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_street_city_id_faeb9cfe ON public.mainapp_street USING btree (city_id);


--
-- Name: mainapp_street_is_active_88ab565a; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_street_is_active_88ab565a ON public.mainapp_street USING btree (is_active);


--
-- Name: mainapp_subsidies_is_active_762ffc6b; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_subsidies_is_active_762ffc6b ON public.mainapp_subsidies USING btree (is_active);


--
-- Name: mainapp_subsidies_service_id_e956d984; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_subsidies_service_id_e956d984 ON public.mainapp_subsidies USING btree (service_id);


--
-- Name: mainapp_subsidies_user_id_639778d4; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_subsidies_user_id_639778d4 ON public.mainapp_subsidies USING btree (user_id);


--
-- Name: mainapp_uk_city_id_3d69be33; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_uk_city_id_3d69be33 ON public.mainapp_uk USING btree (city_id);


--
-- Name: mainapp_uk_is_active_c8782cab; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_uk_is_active_c8782cab ON public.mainapp_uk USING btree (is_active);


--
-- Name: mainapp_uk_street_id_240bd51b; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_uk_street_id_240bd51b ON public.mainapp_uk USING btree (street_id);


--
-- Name: mainapp_userprofile_is_active_6d09acb1; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_userprofile_is_active_6d09acb1 ON public.mainapp_userprofile USING btree (is_active);


--
-- Name: mainapp_variablepayments_user_id_23c74e13; Type: INDEX; Schema: public; Owner: post
--

CREATE INDEX mainapp_variablepayments_user_id_23c74e13 ON public.mainapp_variablepayments USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authnapp_user_groups authnapp_user_groups_group_id_412a245a_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.authnapp_user_groups
    ADD CONSTRAINT authnapp_user_groups_group_id_412a245a_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authnapp_user_groups authnapp_user_groups_user_id_4d5f3c9c_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.authnapp_user_groups
    ADD CONSTRAINT authnapp_user_groups_user_id_4d5f3c9c_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authnapp_user_user_permissions authnapp_user_user_p_permission_id_f279ea2f_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.authnapp_user_user_permissions
    ADD CONSTRAINT authnapp_user_user_p_permission_id_f279ea2f_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authnapp_user_user_permissions authnapp_user_user_p_user_id_6095be0e_fk_authnapp_; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.authnapp_user_user_permissions
    ADD CONSTRAINT authnapp_user_user_p_user_id_6095be0e_fk_authnapp_ FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_appartament mainapp_appartament_house_id_53b45bf4_fk_mainapp_house_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_appartament
    ADD CONSTRAINT mainapp_appartament_house_id_53b45bf4_fk_mainapp_house_id FOREIGN KEY (house_id) REFERENCES public.mainapp_house(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_appartament mainapp_appartament_user_id_13ccf675_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_appartament
    ADD CONSTRAINT mainapp_appartament_user_id_13ccf675_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_constantpayments mainapp_constantpayments_user_id_16c2d464_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_constantpayments
    ADD CONSTRAINT mainapp_constantpayments_user_id_16c2d464_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_currentcounter mainapp_currentcounter_user_id_2f0d47ca_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_currentcounter
    ADD CONSTRAINT mainapp_currentcounter_user_id_2f0d47ca_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_headerdata mainapp_headerdata_user_id_cb0f87de_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_headerdata
    ADD CONSTRAINT mainapp_headerdata_user_id_cb0f87de_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_historycounter mainapp_historycounter_user_id_1354c610_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_historycounter
    ADD CONSTRAINT mainapp_historycounter_user_id_1354c610_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_house mainapp_house_category_rate_id_cbd50101_fk_mainapp_s; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_house
    ADD CONSTRAINT mainapp_house_category_rate_id_cbd50101_fk_mainapp_s FOREIGN KEY (category_rate_id) REFERENCES public.mainapp_servicescategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_house mainapp_house_city_id_f6b24c2f_fk_mainapp_city_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_house
    ADD CONSTRAINT mainapp_house_city_id_f6b24c2f_fk_mainapp_city_id FOREIGN KEY (city_id) REFERENCES public.mainapp_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_house mainapp_house_street_id_65cb6473_fk_mainapp_street_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_house
    ADD CONSTRAINT mainapp_house_street_id_65cb6473_fk_mainapp_street_id FOREIGN KEY (street_id) REFERENCES public.mainapp_street(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_house mainapp_house_uk_id_d4f8b5ee_fk_mainapp_uk_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_house
    ADD CONSTRAINT mainapp_house_uk_id_d4f8b5ee_fk_mainapp_uk_id FOREIGN KEY (uk_id) REFERENCES public.mainapp_uk(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_housecurrent mainapp_housecurrent_house_id_55d087e7_fk_mainapp_house_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_housecurrent
    ADD CONSTRAINT mainapp_housecurrent_house_id_55d087e7_fk_mainapp_house_id FOREIGN KEY (house_id) REFERENCES public.mainapp_house(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_househistory mainapp_househistory_house_id_1b195ca0_fk_mainapp_house_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_househistory
    ADD CONSTRAINT mainapp_househistory_house_id_1b195ca0_fk_mainapp_house_id FOREIGN KEY (house_id) REFERENCES public.mainapp_house(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_mainbook mainapp_mainbook_user_id_96d2e8a4_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_mainbook
    ADD CONSTRAINT mainapp_mainbook_user_id_96d2e8a4_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_payment mainapp_payment_user_id_c08d347b_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_payment
    ADD CONSTRAINT mainapp_payment_user_id_c08d347b_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_paymentorder mainapp_paymentorder_user_id_dff7020c_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_paymentorder
    ADD CONSTRAINT mainapp_paymentorder_user_id_dff7020c_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_personalaccountstatus mainapp_personalacco_user_id_f4e24719_fk_authnapp_; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_personalaccountstatus
    ADD CONSTRAINT mainapp_personalacco_user_id_f4e24719_fk_authnapp_ FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_privileges mainapp_privileges_service_id_89814c5c_fk_mainapp_services_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_privileges
    ADD CONSTRAINT mainapp_privileges_service_id_89814c5c_fk_mainapp_services_id FOREIGN KEY (service_id) REFERENCES public.mainapp_services(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_privileges mainapp_privileges_user_id_a5afae4e_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_privileges
    ADD CONSTRAINT mainapp_privileges_user_id_a5afae4e_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_recalculations mainapp_recalculatio_service_id_6719b5d1_fk_mainapp_s; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_recalculations
    ADD CONSTRAINT mainapp_recalculatio_service_id_6719b5d1_fk_mainapp_s FOREIGN KEY (service_id) REFERENCES public.mainapp_services(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_recalculations mainapp_recalculations_user_id_b5296158_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_recalculations
    ADD CONSTRAINT mainapp_recalculations_user_id_b5296158_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_services mainapp_services_category_id_c9fa699a_fk_mainapp_s; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_services
    ADD CONSTRAINT mainapp_services_category_id_c9fa699a_fk_mainapp_s FOREIGN KEY (category_id) REFERENCES public.mainapp_servicescategory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_services mainapp_services_unit_id_837a305e_fk_mainapp_metrics_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_services
    ADD CONSTRAINT mainapp_services_unit_id_837a305e_fk_mainapp_metrics_id FOREIGN KEY (unit_id) REFERENCES public.mainapp_metrics(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_standart mainapp_standart_house_id_f506c58e_fk_mainapp_house_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_standart
    ADD CONSTRAINT mainapp_standart_house_id_f506c58e_fk_mainapp_house_id FOREIGN KEY (house_id) REFERENCES public.mainapp_house(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_street mainapp_street_city_id_faeb9cfe_fk_mainapp_city_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_street
    ADD CONSTRAINT mainapp_street_city_id_faeb9cfe_fk_mainapp_city_id FOREIGN KEY (city_id) REFERENCES public.mainapp_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_subsidies mainapp_subsidies_service_id_e956d984_fk_mainapp_services_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_subsidies
    ADD CONSTRAINT mainapp_subsidies_service_id_e956d984_fk_mainapp_services_id FOREIGN KEY (service_id) REFERENCES public.mainapp_services(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_subsidies mainapp_subsidies_user_id_639778d4_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_subsidies
    ADD CONSTRAINT mainapp_subsidies_user_id_639778d4_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_uk mainapp_uk_city_id_3d69be33_fk_mainapp_city_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_uk
    ADD CONSTRAINT mainapp_uk_city_id_3d69be33_fk_mainapp_city_id FOREIGN KEY (city_id) REFERENCES public.mainapp_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_uk mainapp_uk_street_id_240bd51b_fk_mainapp_street_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_uk
    ADD CONSTRAINT mainapp_uk_street_id_240bd51b_fk_mainapp_street_id FOREIGN KEY (street_id) REFERENCES public.mainapp_street(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_userprofile mainapp_userprofile_user_id_c68a7d79_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_userprofile
    ADD CONSTRAINT mainapp_userprofile_user_id_c68a7d79_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mainapp_variablepayments mainapp_variablepayments_user_id_23c74e13_fk_authnapp_user_id; Type: FK CONSTRAINT; Schema: public; Owner: post
--

ALTER TABLE ONLY public.mainapp_variablepayments
    ADD CONSTRAINT mainapp_variablepayments_user_id_23c74e13_fk_authnapp_user_id FOREIGN KEY (user_id) REFERENCES public.authnapp_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 13.1 (Debian 13.1-1.pgdg100+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: post
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO post;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: post
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

