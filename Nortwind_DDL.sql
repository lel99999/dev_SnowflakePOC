---
--- drop tables
---


DROP TABLE IF EXISTS customer_customer_demo;
DROP TABLE IF EXISTS customer_demographics;
DROP TABLE IF EXISTS employee_territories;
DROP TABLE IF EXISTS order_details;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS shippers;
DROP TABLE IF EXISTS suppliers;
DROP TABLE IF EXISTS territories;
DROP TABLE IF EXISTS us_states;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS region;
DROP TABLE IF EXISTS employees;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE IF NOT EXISTS categories (
    category_id smallint NOT NULL,
    category_name character varying(15) NOT NULL,
    description text,
--    picture bytes
    picture binary  
);

--
-- Name: customer_customer_demo; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE IF NOT EXISTS customer_customer_demo (
--    customer_id bpchar NOT NULL,
    customer_id char NOT NULL,
--    customer_type_id bpchar NOT NULL
    customer_type_id char NOT NULL
);

--
-- Name: customer_demographics; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE IF NOT EXISTS customer_demographics (
--    customer_type_id bpchar NOT NULL,
    customer_type_id char NOT NULL,
    customer_desc text
);

--
-- Name: customers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE IF NOT EXISTS customers (
--    customer_id bpchar NOT NULL,
    customer_id char NOT NULL,
--    company_name character varying(40) NOT NULL,
--    contact_name character varying(30),
--    contact_title character varying(30),
--    address character varying(60),
--    city character varying(15),
--    region character varying(15),
--    postal_code character varying(10),
--    country character varying(15),
--    phone character varying(24),
--    fax character varying(24)
    company_name varchar(40) NOT NULL,
    contact_name varchar(30),
    contact_title varchar(30),
    address varchar(60),
    city varchar(15),
    region varchar(15),
    postal_code varchar(10),
    country varchar(15),
    phone varchar(24),
    fax varchar(24)

);

--
-- Name: employees; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE IF NOT EXISTS employees (
    employee_id smallint NOT NULL,
--    last_name character varying(20) NOT NULL,
--    first_name character varying(10) NOT NULL,
--    title character varying(30),
--    title_of_courtesy character varying(25),
    last_name varchar(20) NOT NULL,
    first_name varchar(10) NOT NULL,
    title varchar(30),
    title_of_courtesy varchar(25),
    birth_date date,
    hire_date date,
--    address character varying(60),
--    city character varying(15),
--    region character varying(15),
--    postal_code character varying(10),
--    country character varying(15),
--    home_phone character varying(24),
--    extension character varying(4),
    address varchar(60),
    city varchar(15),
    region varchar(15),
    postal_code varchar(10),
    country varchar(15),
    home_phone varchar(24),
    extension varchar(4),
--    photo bytea,
    photo binary,
    notes text,
    reports_to smallint,
--    photo_path character varying(255)
    photo_path varchar(255)
);

--
-- Name: employee_territories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE IF NOT EXISTS employee_territories (
    employee_id smallint NOT NULL,
--    territory_id character varying(20) NOT NULL
    territory_id varchar(20) NOT NULL
);


--
-- Name: order_details; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE IF NOT EXISTS order_details (
    order_id smallint NOT NULL,
    product_id smallint NOT NULL,
    unit_price real NOT NULL,
    quantity smallint NOT NULL,
    discount real NOT NULL
);

--
-- Name: orders; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE IF NOT EXISTS orders (
    order_id smallint NOT NULL,
--    customer_id bpchar,
    customer_id char,
    employee_id smallint,
    order_date date,
    required_date date,
    shipped_date date,
    ship_via smallint,
    freight real,
--    ship_name character varying(40),
--    ship_address character varying(60),
--    ship_city character varying(15),
--    ship_region character varying(15),
--    ship_postal_code character varying(10),
--    ship_country character varying(15)
    ship_name varchar(40),
    ship_address varchar(60),
    ship_city varchar(15),
    ship_region varchar(15),
    ship_postal_code varchar(10),
    ship_country varchar(15)
);

--
-- Name: products; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE IF NOT EXISTS products (
    product_id smallint NOT NULL,
--    product_name character varying(40) NOT NULL,
    product_name varchar(40) NOT NULL,
    supplier_id smallint,
    category_id smallint,
--    quantity_per_unit character varying(20),
    quantity_per_unit varchar(20),
    unit_price real,
    units_in_stock smallint,
    units_on_order smallint,
    reorder_level smallint,
    discontinued integer NOT NULL
);

--
-- Name: region; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE  IF NOT EXISTS region (
    region_id smallint NOT NULL,
--    region_description bpchar NOT NULL
    region_description char NOT NULL
);


--
-- Name: shippers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE IF NOT EXISTS shippers (
    shipper_id smallint NOT NULL,
--    company_name character varying(40) NOT NULL,
--    phone character varying(24)
    company_name varchar(40) NOT NULL,
    phone varchar(24)
);



--
-- Name: suppliers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE IF NOT EXISTS suppliers (
    supplier_id smallint NOT NULL,
--    company_name character varying(40) NOT NULL,
--    contact_name character varying(30),
--    contact_title character varying(30),
--    address character varying(60),
--    city character varying(15),
--    region character varying(15),
--    postal_code character varying(10),
--    country character varying(15),
--    phone character varying(24),
--    fax character varying(24),
    company_name varchar(40) NOT NULL,
    contact_name varchar(30),
    contact_title varchar(30),
    address varchar(60),
    city varchar(15),
    region varchar(15),
    postal_code varchar(10),
    country varchar(15),
    phone varchar(24),
    fax varchar(24),
    homepage text
);

--
-- Name: territories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE IF NOT EXISTS territories (
--    territory_id character varying(20) NOT NULL,
--    territory_description bpchar NOT NULL,
    territory_id varchar(20) NOT NULL,
    territory_description char NOT NULL,
    region_id smallint NOT NULL
);


--
-- Name: us_states; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE IF NOT EXISTS us_states (
    state_id smallint NOT NULL,
--    state_name character varying(100),
--    state_abbr character varying(2),
--    state_region character varying(50)
    state_name varchar(100),
    state_abbr varchar(2),
    state_region varchar(50)
);