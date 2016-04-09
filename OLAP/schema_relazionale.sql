--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.11
-- Dumped by pg_dump version 9.3.11
-- Started on 2016-04-09 08:19:31 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 9 (class 2615 OID 16996)
-- Name: AVA; Type: SCHEMA; Schema: -; Owner: valerio
--

CREATE SCHEMA "AVA";


ALTER SCHEMA "AVA" OWNER TO valerio;

--
-- TOC entry 10 (class 2615 OID 17513)
-- Name: raw; Type: SCHEMA; Schema: -; Owner: valerio
--

CREATE SCHEMA raw;


ALTER SCHEMA raw OWNER TO valerio;

--
-- TOC entry 2 (class 3079 OID 11787)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2250 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 1 (class 3079 OID 17617)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 2251 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET search_path = "AVA", pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 174 (class 1259 OID 16997)
-- Name: studente; Type: TABLE; Schema: AVA; Owner: valerio; Tablespace: 
--

CREATE TABLE studente (
    k_studente integer NOT NULL,
    data_nascita date,
    cf character varying(38),
    coorte bigint,
    titolo_di_studio character varying(69),
    sesso character varying(11),
    comune_residenza character varying(62),
    regione_residenza character varying(21),
    provincia_residenza character varying(25),
    cittadinanza character varying(44),
    stato_residenza character varying(44),
    nazione_diploma character varying(44),
    tipo_scuola_media_superiore character varying(79),
    istituto_scuola_media_superiore character varying(79),
    anno_conseguimento_titolo bigint
);


ALTER TABLE "AVA".studente OWNER TO valerio;

--
-- TOC entry 175 (class 1259 OID 17003)
-- Name: Studente_k_studente_seq; Type: SEQUENCE; Schema: AVA; Owner: valerio
--

CREATE SEQUENCE "Studente_k_studente_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AVA"."Studente_k_studente_seq" OWNER TO valerio;

--
-- TOC entry 2253 (class 0 OID 0)
-- Dependencies: 175
-- Name: Studente_k_studente_seq; Type: SEQUENCE OWNED BY; Schema: AVA; Owner: valerio
--

ALTER SEQUENCE "Studente_k_studente_seq" OWNED BY studente.k_studente;


--
-- TOC entry 176 (class 1259 OID 17005)
-- Name: anno_accademico; Type: TABLE; Schema: AVA; Owner: valerio; Tablespace: 
--

CREATE TABLE anno_accademico (
    k_anno_accademico integer NOT NULL,
    nome_anno_accademico text NOT NULL,
    anno_accademico_fine integer,
    anno_accademico_inizio integer
);


ALTER TABLE "AVA".anno_accademico OWNER TO valerio;

--
-- TOC entry 177 (class 1259 OID 17011)
-- Name: anno_accademico_k_anno_accademico_seq; Type: SEQUENCE; Schema: AVA; Owner: valerio
--

CREATE SEQUENCE anno_accademico_k_anno_accademico_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AVA".anno_accademico_k_anno_accademico_seq OWNER TO valerio;

--
-- TOC entry 2255 (class 0 OID 0)
-- Dependencies: 177
-- Name: anno_accademico_k_anno_accademico_seq; Type: SEQUENCE OWNED BY; Schema: AVA; Owner: valerio
--

ALTER SEQUENCE anno_accademico_k_anno_accademico_seq OWNED BY anno_accademico.k_anno_accademico;


--
-- TOC entry 178 (class 1259 OID 17021)
-- Name: corso; Type: TABLE; Schema: AVA; Owner: valerio; Tablespace: 
--

CREATE TABLE corso (
    k_corso integer NOT NULL,
    crediti_corso numeric NOT NULL,
    codice_corso text,
    ssd text NOT NULL,
    nome_corso text
);


ALTER TABLE "AVA".corso OWNER TO valerio;

--
-- TOC entry 179 (class 1259 OID 17027)
-- Name: corso_di_studi; Type: TABLE; Schema: AVA; Owner: valerio; Tablespace: 
--

CREATE TABLE corso_di_studi (
    k_corso_di_studi integer NOT NULL,
    durata_legale numeric,
    codice_ateneo text,
    codice_dipartimento text,
    nome_dipartimento text,
    tipo_cds text,
    nome_cds text,
    codice_cds text,
    data_inizio_validita numeric,
    data_fine_validita numeric
);


ALTER TABLE "AVA".corso_di_studi OWNER TO valerio;

--
-- TOC entry 180 (class 1259 OID 17033)
-- Name: corso_di_studi_k_corso_di_studi_seq; Type: SEQUENCE; Schema: AVA; Owner: valerio
--

CREATE SEQUENCE corso_di_studi_k_corso_di_studi_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AVA".corso_di_studi_k_corso_di_studi_seq OWNER TO valerio;

--
-- TOC entry 2258 (class 0 OID 0)
-- Dependencies: 180
-- Name: corso_di_studi_k_corso_di_studi_seq; Type: SEQUENCE OWNED BY; Schema: AVA; Owner: valerio
--

ALTER SEQUENCE corso_di_studi_k_corso_di_studi_seq OWNED BY corso_di_studi.k_corso_di_studi;


--
-- TOC entry 181 (class 1259 OID 17035)
-- Name: corso_k_corso_seq; Type: SEQUENCE; Schema: AVA; Owner: valerio
--

CREATE SEQUENCE corso_k_corso_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AVA".corso_k_corso_seq OWNER TO valerio;

--
-- TOC entry 2259 (class 0 OID 0)
-- Dependencies: 181
-- Name: corso_k_corso_seq; Type: SEQUENCE OWNED BY; Schema: AVA; Owner: valerio
--

ALTER SEQUENCE corso_k_corso_seq OWNED BY corso.k_corso;


--
-- TOC entry 182 (class 1259 OID 17037)
-- Name: data; Type: TABLE; Schema: AVA; Owner: macr0s; Tablespace: 
--

CREATE TABLE data (
    k_data integer NOT NULL,
    giorno integer NOT NULL,
    mese integer NOT NULL,
    anno integer NOT NULL,
    datacompleta date NOT NULL,
    data_string text
);


ALTER TABLE "AVA".data OWNER TO macr0s;

--
-- TOC entry 183 (class 1259 OID 17040)
-- Name: data_k_data_seq; Type: SEQUENCE; Schema: AVA; Owner: macr0s
--

CREATE SEQUENCE data_k_data_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AVA".data_k_data_seq OWNER TO macr0s;

--
-- TOC entry 2261 (class 0 OID 0)
-- Dependencies: 183
-- Name: data_k_data_seq; Type: SEQUENCE OWNED BY; Schema: AVA; Owner: macr0s
--

ALTER SEQUENCE data_k_data_seq OWNED BY data.k_data;


--
-- TOC entry 235 (class 1259 OID 17857)
-- Name: fact_esami; Type: TABLE; Schema: AVA; Owner: valerio; Tablespace: 
--

CREATE TABLE fact_esami (
    cfu_acquisiti bigint,
    voto bigint,
    fk_corso integer,
    fk_studente integer,
    fk_anno_accademico integer,
    fk_data integer,
    fk_corso_di_studi_studente integer
);


ALTER TABLE "AVA".fact_esami OWNER TO valerio;

--
-- TOC entry 184 (class 1259 OID 17079)
-- Name: fact_ingressi; Type: TABLE; Schema: AVA; Owner: valerio; Tablespace: 
--

CREATE TABLE fact_ingressi (
    fk_corso_di_studi integer NOT NULL,
    fk_anno_accademico integer NOT NULL,
    fk_studente integer NOT NULL,
    fk_data_iscrizione integer NOT NULL,
    fk_tipo_immatricolazione integer NOT NULL,
    punteggio_test numeric,
    immatricolato boolean
);


ALTER TABLE "AVA".fact_ingressi OWNER TO valerio;

--
-- TOC entry 185 (class 1259 OID 17088)
-- Name: fact_lauree; Type: TABLE; Schema: AVA; Owner: valerio; Tablespace: 
--

CREATE TABLE fact_lauree (
    fk_studente integer NOT NULL,
    fk_anno_accademico integer NOT NULL,
    fk_data integer NOT NULL,
    fk_corso_di_studi integer NOT NULL,
    voto_laurea text
);


ALTER TABLE "AVA".fact_lauree OWNER TO valerio;

--
-- TOC entry 186 (class 1259 OID 17119)
-- Name: tipo_immatricolazione; Type: TABLE; Schema: AVA; Owner: valerio; Tablespace: 
--

CREATE TABLE tipo_immatricolazione (
    k_tipo_immatricolazione integer NOT NULL,
    tipo_immatricolazione text NOT NULL
);


ALTER TABLE "AVA".tipo_immatricolazione OWNER TO valerio;

--
-- TOC entry 187 (class 1259 OID 17125)
-- Name: tipo_immatricolazione_k_tipo_immatricolazione_seq; Type: SEQUENCE; Schema: AVA; Owner: valerio
--

CREATE SEQUENCE tipo_immatricolazione_k_tipo_immatricolazione_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AVA".tipo_immatricolazione_k_tipo_immatricolazione_seq OWNER TO valerio;

--
-- TOC entry 2265 (class 0 OID 0)
-- Dependencies: 187
-- Name: tipo_immatricolazione_k_tipo_immatricolazione_seq; Type: SEQUENCE OWNED BY; Schema: AVA; Owner: valerio
--

ALTER SEQUENCE tipo_immatricolazione_k_tipo_immatricolazione_seq OWNED BY tipo_immatricolazione.k_tipo_immatricolazione;


SET search_path = raw, pg_catalog;

--
-- TOC entry 226 (class 1259 OID 17718)
-- Name: a7; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE a7 (
    cod bigint,
    des character varying(55),
    tipo_corso_cod character varying(3),
    cla_ateneo_cod character varying(9),
    norm_cod character varying(5),
    codicione bigint,
    max_durata_anni bigint,
    cod_1 bigint,
    des_1 character varying(95)
);


ALTER TABLE raw.a7 OWNER TO valerio;

--
-- TOC entry 229 (class 1259 OID 17746)
-- Name: a7_corsi_completi; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE a7_corsi_completi (
    id_corso bigint,
    codice_offf bigint,
    nome_corso character varying(86),
    nome_curriculum character varying(72),
    id_classe bigint,
    id_sede bigint,
    nome_sede character varying(55),
    codicione bigint,
    id_tipo_laurea character varying(2),
    anno_validita bigint,
    codice_interno_ateneo character varying(28),
    id_classe_intclasse bigint,
    flag_intclasse bigint,
    id_rad bigint,
    didattica character varying(1),
    interateneo bigint,
    id_struttura bigint,
    atenei_partner character varying(102)
);


ALTER TABLE raw.a7_corsi_completi OWNER TO valerio;

--
-- TOC entry 227 (class 1259 OID 17722)
-- Name: ad; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE ad (
    cod character varying(10),
    des character varying(249)
);


ALTER TABLE raw.ad OWNER TO valerio;

--
-- TOC entry 190 (class 1259 OID 17533)
-- Name: codici_ambiti_univoci; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_ambiti_univoci (
    id_ambito_univoco bigint,
    descrizione character varying(178),
    ambito_disc bigint,
    id_attivita_formativa character varying(1),
    classe bigint
);


ALTER TABLE raw.codici_ambiti_univoci OWNER TO valerio;

--
-- TOC entry 192 (class 1259 OID 17544)
-- Name: codici_atenei_stranieri; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_atenei_stranieri (
    cod_ateneo_estero text,
    nome_ateneo_estero text,
    id_nazione text
);


ALTER TABLE raw.codici_atenei_stranieri OWNER TO valerio;

--
-- TOC entry 195 (class 1259 OID 17566)
-- Name: codici_attivita_formative; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_attivita_formative (
    id_attivita_formativa character varying(1),
    descrizione character varying(79)
);


ALTER TABLE raw.codici_attivita_formative OWNER TO valerio;

--
-- TOC entry 191 (class 1259 OID 17541)
-- Name: codici_borsa_studio; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_borsa_studio (
    id_borsa character varying(1),
    descrizione character varying(48)
);


ALTER TABLE raw.codici_borsa_studio OWNER TO valerio;

--
-- TOC entry 193 (class 1259 OID 17550)
-- Name: codici_classi; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_classi (
    id_classe bigint,
    codice_classe character varying(10),
    descrizione character varying(90),
    tipo_laurea character varying(2),
    codice_area bigint,
    descrizione_area character varying(16)
);


ALTER TABLE raw.codici_classi OWNER TO valerio;

--
-- TOC entry 194 (class 1259 OID 17555)
-- Name: codici_comuni; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_comuni (
    cod_istat bigint,
    comune character varying(62),
    sigla character varying(2),
    provincia character varying(25),
    id_comune_stato bigint,
    comune_poste character varying(35),
    codice_catastale character varying(4),
    cod_istat_regione bigint,
    regione character varying(21)
);


ALTER TABLE raw.codici_comuni OWNER TO valerio;

--
-- TOC entry 225 (class 1259 OID 17710)
-- Name: codici_corsi_studio; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_corsi_studio (
    code_un character varying(2),
    codicione character varying(16),
    denominazione character varying(211),
    tipo_titolo character varying(2),
    id_classe bigint,
    cod_facolta character varying(3),
    anno_min_off bigint,
    anno_max_off bigint,
    sedi character varying(150),
    id_struttura bigint,
    atenei_partner character varying(102)
);


ALTER TABLE raw.codici_corsi_studio OWNER TO valerio;

--
-- TOC entry 196 (class 1259 OID 17575)
-- Name: codici_descrizione_int_supporto; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_descrizione_int_supporto (
    cod_tipo_descr_int_supporto character varying(2),
    valore_descr_int_supporto character varying(130)
);


ALTER TABLE raw.codici_descrizione_int_supporto OWNER TO valerio;

--
-- TOC entry 197 (class 1259 OID 17594)
-- Name: codici_didattica; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_didattica (
    code_didattica character varying(1),
    descrizione character varying(13)
);


ALTER TABLE raw.codici_didattica OWNER TO valerio;

--
-- TOC entry 200 (class 1259 OID 17626)
-- Name: codici_esenzione; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_esenzione (
    id_esenzione character varying(1),
    descrizione character varying(58)
);


ALTER TABLE raw.codici_esenzione OWNER TO valerio;

--
-- TOC entry 199 (class 1259 OID 17614)
-- Name: codici_esonero; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_esonero (
    id_esonero character varying(1),
    descrizione character varying(99)
);


ALTER TABLE raw.codici_esonero OWNER TO valerio;

--
-- TOC entry 198 (class 1259 OID 17611)
-- Name: codici_eventi; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_eventi (
    id_evento character varying(2),
    descrizione_evento character varying(92),
    spedizione_associata bigint
);


ALTER TABLE raw.codici_eventi OWNER TO valerio;

--
-- TOC entry 201 (class 1259 OID 17629)
-- Name: codici_facolta; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_facolta (
    cod_facolta character varying(3),
    denominazione character varying(73)
);


ALTER TABLE raw.codici_facolta OWNER TO valerio;

--
-- TOC entry 203 (class 1259 OID 17636)
-- Name: codici_interventi_supporto; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_interventi_supporto (
    id_intervento character varying(2),
    descrizione_intervento character varying(55)
);


ALTER TABLE raw.codici_interventi_supporto OWNER TO valerio;

--
-- TOC entry 202 (class 1259 OID 17633)
-- Name: codici_motivi_sospensioni; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_motivi_sospensioni (
    id_motivo_sospensione character varying(3),
    descrizione character varying(27)
);


ALTER TABLE raw.codici_motivi_sospensioni OWNER TO valerio;

--
-- TOC entry 205 (class 1259 OID 17642)
-- Name: codici_motivi_uscita; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_motivi_uscita (
    id_motivo character varying(1),
    descrizione character varying(49)
);


ALTER TABLE raw.codici_motivi_uscita OWNER TO valerio;

--
-- TOC entry 204 (class 1259 OID 17639)
-- Name: codici_nazioni; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_nazioni (
    id_nazionalita character varying(3),
    nazione character varying(44),
    cod_istat bigint,
    codice_catastale character varying(4)
);


ALTER TABLE raw.codici_nazioni OWNER TO valerio;

--
-- TOC entry 206 (class 1259 OID 17645)
-- Name: codici_piano_studi; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_piano_studi (
    id_piano character varying(1),
    tipologia_piano_di_studi character varying(18)
);


ALTER TABLE raw.codici_piano_studi OWNER TO valerio;

--
-- TOC entry 207 (class 1259 OID 17648)
-- Name: codici_prova_finale; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_prova_finale (
    id_prova_finale character varying(1),
    descrizione character varying(40)
);


ALTER TABLE raw.codici_prova_finale OWNER TO valerio;

--
-- TOC entry 228 (class 1259 OID 17729)
-- Name: codici_scuole_superiori; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_scuole_superiori (
    id_scuola bigint,
    codice_scuola character varying(10),
    denominazione character varying(79),
    tipo_scuola character varying(79),
    ente character varying(11),
    regione character varying(21),
    provincia character varying(25),
    comune character varying(45),
    cap character varying(15),
    indirizzo character varying(63),
    telefono character varying(13),
    livello_funzionale character varying(19),
    codice_scuola_riferimento character varying(10),
    tipologia character varying(2),
    tipologia_sede character varying(38),
    parita character varying(9),
    codice_istat bigint
);


ALTER TABLE raw.codici_scuole_superiori OWNER TO valerio;

--
-- TOC entry 189 (class 1259 OID 17519)
-- Name: codici_sesso; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_sesso (
    id_sesso character varying(1),
    sesso character varying(11)
);


ALTER TABLE raw.codici_sesso OWNER TO valerio;

--
-- TOC entry 208 (class 1259 OID 17651)
-- Name: codici_settori_disciplinari; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_settori_disciplinari (
    id_settore character varying(15),
    nome_settore character varying(97),
    codice_area bigint,
    descrizione_area character varying(67)
);


ALTER TABLE raw.codici_settori_disciplinari OWNER TO valerio;

--
-- TOC entry 210 (class 1259 OID 17658)
-- Name: codici_spedizioni; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_spedizioni (
    id_spedizione bigint,
    descrizione_spedizione character varying(57)
);


ALTER TABLE raw.codici_spedizioni OWNER TO valerio;

--
-- TOC entry 209 (class 1259 OID 17655)
-- Name: codici_strutture; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_strutture (
    id_struttura bigint,
    code_un character varying(2),
    nome_struttura character varying(135),
    flag_dipartimento bigint
);


ALTER TABLE raw.codici_strutture OWNER TO valerio;

--
-- TOC entry 211 (class 1259 OID 17662)
-- Name: codici_studente_lavoratore; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_studente_lavoratore (
    id_tipo character varying(1),
    descrizione character varying(59)
);


ALTER TABLE raw.codici_studente_lavoratore OWNER TO valerio;

--
-- TOC entry 212 (class 1259 OID 17665)
-- Name: codici_tipi_strutture_atenei; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_tipi_strutture_atenei (
    cod_tipo_struttura_ateneo character varying(13),
    desc_tipo_struttura_ateneo character varying(77)
);


ALTER TABLE raw.codici_tipi_strutture_atenei OWNER TO valerio;

--
-- TOC entry 213 (class 1259 OID 17668)
-- Name: codici_tipo_attivita; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_tipo_attivita (
    id_attivita character varying(3),
    "DESCRIZIONE ATTIVITA" character varying(26)
);


ALTER TABLE raw.codici_tipo_attivita OWNER TO valerio;

--
-- TOC entry 214 (class 1259 OID 17671)
-- Name: codici_tipo_ingresso; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_tipo_ingresso (
    id_tipo_ingresso character varying(1),
    descrizione character varying(61)
);


ALTER TABLE raw.codici_tipo_ingresso OWNER TO valerio;

--
-- TOC entry 215 (class 1259 OID 17674)
-- Name: codici_tipo_invio; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_tipo_invio (
    id_tipo_invio character varying(1),
    descrizione character varying(14)
);


ALTER TABLE raw.codici_tipo_invio OWNER TO valerio;

--
-- TOC entry 216 (class 1259 OID 17677)
-- Name: codici_tipo_iscrizione; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_tipo_iscrizione (
    id_tipo_iscrizione character varying(2),
    descrizione character varying(73)
);


ALTER TABLE raw.codici_tipo_iscrizione OWNER TO valerio;

--
-- TOC entry 217 (class 1259 OID 17680)
-- Name: codici_tipo_laurea; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_tipo_laurea (
    id_tipo_laurea character varying(2),
    descrizione character varying(67)
);


ALTER TABLE raw.codici_tipo_laurea OWNER TO valerio;

--
-- TOC entry 220 (class 1259 OID 17689)
-- Name: codici_tipo_scuole; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_tipo_scuole (
    codice_tipo_scuola character varying(2),
    descrizione character varying(79)
);


ALTER TABLE raw.codici_tipo_scuole OWNER TO valerio;

--
-- TOC entry 218 (class 1259 OID 17683)
-- Name: codici_tipologia_valore_crediti; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_tipologia_valore_crediti (
    id_valore character varying(1),
    descrizione character varying(7)
);


ALTER TABLE raw.codici_tipologia_valore_crediti OWNER TO valerio;

--
-- TOC entry 219 (class 1259 OID 17686)
-- Name: codici_titoli_diploma; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_titoli_diploma (
    id_diploma bigint,
    descrizione character varying(69),
    tipo_scuola character varying(79),
    codice_tipo_scuola character varying(2)
);


ALTER TABLE raw.codici_titoli_diploma OWNER TO valerio;

--
-- TOC entry 221 (class 1259 OID 17693)
-- Name: codici_universita; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_universita (
    id_universita character varying(3),
    nome character varying(80),
    statale character varying(11),
    via character varying(70),
    cap bigint,
    cod_comune bigint,
    comune character varying(22),
    provincia character varying(2),
    cod_tipo_struttura_ateneo character varying(13),
    nota character varying(179),
    anno_introduzione bigint
);


ALTER TABLE raw.codici_universita OWNER TO valerio;

--
-- TOC entry 222 (class 1259 OID 17697)
-- Name: codici_voti_diploma; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_voti_diploma (
    id_voto_diploma character varying(4),
    descrizione character varying(24)
);


ALTER TABLE raw.codici_voti_diploma OWNER TO valerio;

--
-- TOC entry 223 (class 1259 OID 17700)
-- Name: codici_voti_esami; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_voti_esami (
    id_voto text,
    descrizione text
);


ALTER TABLE raw.codici_voti_esami OWNER TO valerio;

--
-- TOC entry 224 (class 1259 OID 17707)
-- Name: codici_voti_laurea; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE codici_voti_laurea (
    id_voto_laurea character varying(4),
    descrizione character varying(26)
);


ALTER TABLE raw.codici_voti_laurea OWNER TO valerio;

--
-- TOC entry 188 (class 1259 OID 17514)
-- Name: data; Type: VIEW; Schema: raw; Owner: valerio
--

CREATE VIEW data AS
 SELECT dq.datum AS date,
    date_part('year'::text, dq.datum) AS year,
    date_part('month'::text, dq.datum) AS month,
    to_char((dq.datum)::timestamp with time zone, 'TMMonth'::text) AS monthname,
    date_part('day'::text, dq.datum) AS day,
    date_part('doy'::text, dq.datum) AS dayofyear,
    to_char((dq.datum)::timestamp with time zone, 'TMDay'::text) AS weekdayname,
    date_part('week'::text, dq.datum) AS calendarweek,
    to_char((dq.datum)::timestamp with time zone, 'dd. mm. yyyy'::text) AS formatteddate,
    ('Q'::text || to_char((dq.datum)::timestamp with time zone, 'Q'::text)) AS quartal,
    to_char((dq.datum)::timestamp with time zone, 'yyyy/"Q"Q'::text) AS yearquartal,
    to_char((dq.datum)::timestamp with time zone, 'yyyy/mm'::text) AS yearmonth,
    to_char((dq.datum)::timestamp with time zone, 'iyyy/IW'::text) AS yearcalendarweek,
        CASE
            WHEN (date_part('isodow'::text, dq.datum) = ANY (ARRAY[(6)::double precision, (7)::double precision])) THEN 'Weekend'::text
            ELSE 'Weekday'::text
        END AS weekend,
        CASE
            WHEN (to_char((dq.datum)::timestamp with time zone, 'MMDD'::text) = ANY (ARRAY['0101'::text, '0704'::text, '1225'::text, '1226'::text])) THEN 'Holiday'::text
            ELSE 'No holiday'::text
        END AS americanholiday,
        CASE
            WHEN (to_char((dq.datum)::timestamp with time zone, 'MMDD'::text) = ANY (ARRAY['0101'::text, '0106'::text, '0501'::text, '0815'::text, '1101'::text, '1208'::text, '1225'::text, '1226'::text])) THEN 'Holiday'::text
            ELSE 'No holiday'::text
        END AS austrianholiday,
        CASE
            WHEN (to_char((dq.datum)::timestamp with time zone, 'MMDD'::text) = ANY (ARRAY['0101'::text, '0701'::text, '1225'::text, '1226'::text])) THEN 'Holiday'::text
            ELSE 'No holiday'::text
        END AS canadianholiday,
        CASE
            WHEN ((to_char((dq.datum)::timestamp with time zone, 'MMDD'::text) >= '0701'::text) AND (to_char((dq.datum)::timestamp with time zone, 'MMDD'::text) <= '0831'::text)) THEN 'Summer break'::text
            WHEN ((to_char((dq.datum)::timestamp with time zone, 'MMDD'::text) >= '1115'::text) AND (to_char((dq.datum)::timestamp with time zone, 'MMDD'::text) <= '1225'::text)) THEN 'Christmas season'::text
            WHEN ((to_char((dq.datum)::timestamp with time zone, 'MMDD'::text) > '1225'::text) OR (to_char((dq.datum)::timestamp with time zone, 'MMDD'::text) <= '0106'::text)) THEN 'Winter break'::text
            ELSE 'Normal'::text
        END AS period,
    (dq.datum + (((1)::double precision - date_part('isodow'::text, dq.datum)))::integer) AS cwstart,
    (dq.datum + (((7)::double precision - date_part('isodow'::text, dq.datum)))::integer) AS cwend,
    (dq.datum + (((1)::double precision - date_part('day'::text, dq.datum)))::integer) AS monthstart,
    ((((dq.datum + (((1)::double precision - date_part('day'::text, dq.datum)))::integer) + '1 mon'::interval))::date - '1 day'::interval) AS monthend
   FROM ( SELECT ('2006-01-01'::date + sequence.day) AS datum
           FROM generate_series(0, 6308) sequence(day)
          GROUP BY sequence.day) dq
  ORDER BY dq.datum;


ALTER TABLE raw.data OWNER TO valerio;

--
-- TOC entry 230 (class 1259 OID 17753)
-- Name: spedizione1_avvio_carriera; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE spedizione1_avvio_carriera (
    codice_fiscale_evento character varying(38),
    evento character varying(2),
    data_evento bigint,
    codice_fiscale character varying(38),
    sesso character varying(1),
    comune_nascita bigint,
    data_nascita bigint,
    stato_nascita character varying(3),
    data_prima_immatricolazione bigint,
    anno_prima_immatricolazione bigint,
    cittadinanza character varying(3),
    stato_residenza character varying(2),
    comune_residenza bigint,
    tipo_ingresso character varying(1),
    id_corso bigint,
    esito_test_ingresso bigint,
    cf_validi_corso bigint,
    debiti_accertati bigint,
    anno_iscrizione_corso bigint,
    lavoratore bigint,
    impegno bigint,
    piano_studi_individuale character varying(1),
    borsa_di_studio character varying(1),
    esenzione character varying(1),
    esonero character varying(1),
    contributi_dovuti bigint,
    contributi_pagati bigint,
    interventi_di_supporto character varying(2),
    descrizione_interventi_suuport character varying(100),
    titolo_studio_diploma bigint,
    istituto_diploma bigint,
    anno_diploma bigint,
    votazione_diploma character varying(4),
    nazione_diploma character varying(3),
    codice_ateneo character varying(2),
    anno_accademico bigint
);


ALTER TABLE raw.spedizione1_avvio_carriera OWNER TO valerio;

--
-- TOC entry 231 (class 1259 OID 17760)
-- Name: spedizione4_eventi_carriera; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE spedizione4_eventi_carriera (
    codice_fiscale_evento character varying(38),
    evento character varying(2),
    data_evento bigint,
    id_corso bigint,
    esito_test_ingresso bigint,
    cfu_validi_corso bigint,
    debiti_accertati bigint,
    anno_iscrizione_corso bigint,
    lavoratore bigint,
    impegno bigint,
    piano_studi_individuale character varying(1),
    borsa_di_studio character varying(1),
    esenzione character varying(1),
    esonero character varying(1),
    contributi_dovuti bigint,
    contributi_pagati bigint,
    interventi_supporto character varying(2),
    descrizione_interventi_supporto boolean,
    chiave_corso_uscita bigint,
    ateneo_provenienza character varying(3),
    ateneo_destinazione character varying(3),
    motivo_sospensione character varying(3),
    codice_ateneo character varying(2),
    anno_accademico bigint
);


ALTER TABLE raw.spedizione4_eventi_carriera OWNER TO valerio;

--
-- TOC entry 232 (class 1259 OID 17765)
-- Name: spedizione6_crediti_formativi; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE spedizione6_crediti_formativi (
    codice_fiscale_evento character varying(38),
    evento character varying(2),
    data_evento bigint,
    id_corso bigint,
    anno_solare bigint,
    settore_scientifico_disciplinare character varying(15),
    ambito_disciplinare bigint,
    tipologia_valore character varying(1),
    cfu_corso bigint,
    cfu_universita bigint,
    cfu_altre_istituzioni_universitarie bigint,
    cfu_altre_istituzioni_straniere bigint,
    cfu_stage bigint,
    cfu_validi_per_corso bigint,
    codice_esame character varying(10),
    voto bigint,
    tipo_attivita character varying(3),
    ore bigint,
    codice_ateneo character varying(2),
    anno_accademico bigint
);


ALTER TABLE raw.spedizione6_crediti_formativi OWNER TO valerio;

--
-- TOC entry 233 (class 1259 OID 17772)
-- Name: spedizione7_chiusura_carriera; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE spedizione7_chiusura_carriera (
    codice_fiscale_evento character varying(38),
    evento character varying(2),
    data_evento bigint,
    id_corso bigint,
    motivazione_chiusura character varying(1),
    anno_accademico_conseguimento_titolo bigint,
    votazione_finale character varying(4),
    tipologia_prova_finale character varying(1),
    codice_ateneo character varying(2),
    anno_accademico bigint
);


ALTER TABLE raw.spedizione7_chiusura_carriera OWNER TO valerio;

--
-- TOC entry 234 (class 1259 OID 17826)
-- Name: tempo; Type: TABLE; Schema: raw; Owner: valerio; Tablespace: 
--

CREATE TABLE tempo (
    date date,
    year double precision,
    month double precision,
    monthname text,
    day double precision,
    dayofyear double precision,
    weekdayname text,
    calendarweek double precision,
    formatteddate text,
    quartal text,
    yearquartal text,
    yearmonth text,
    yearcalendarweek text,
    pentahodate text,
    weekend text,
    americanholiday text,
    austrianholiday text,
    canadianholiday text,
    period text,
    cwstart date,
    cwend date,
    monthstart date,
    monthend timestamp without time zone
);


ALTER TABLE raw.tempo OWNER TO valerio;

SET search_path = "AVA", pg_catalog;

--
-- TOC entry 2105 (class 2604 OID 17143)
-- Name: k_anno_accademico; Type: DEFAULT; Schema: AVA; Owner: valerio
--

ALTER TABLE ONLY anno_accademico ALTER COLUMN k_anno_accademico SET DEFAULT nextval('anno_accademico_k_anno_accademico_seq'::regclass);


--
-- TOC entry 2106 (class 2604 OID 17145)
-- Name: k_corso; Type: DEFAULT; Schema: AVA; Owner: valerio
--

ALTER TABLE ONLY corso ALTER COLUMN k_corso SET DEFAULT nextval('corso_k_corso_seq'::regclass);


--
-- TOC entry 2107 (class 2604 OID 17146)
-- Name: k_corso_di_studi; Type: DEFAULT; Schema: AVA; Owner: valerio
--

ALTER TABLE ONLY corso_di_studi ALTER COLUMN k_corso_di_studi SET DEFAULT nextval('corso_di_studi_k_corso_di_studi_seq'::regclass);


--
-- TOC entry 2108 (class 2604 OID 17147)
-- Name: k_data; Type: DEFAULT; Schema: AVA; Owner: macr0s
--

ALTER TABLE ONLY data ALTER COLUMN k_data SET DEFAULT nextval('data_k_data_seq'::regclass);


--
-- TOC entry 2104 (class 2604 OID 17151)
-- Name: k_studente; Type: DEFAULT; Schema: AVA; Owner: valerio
--

ALTER TABLE ONLY studente ALTER COLUMN k_studente SET DEFAULT nextval('"Studente_k_studente_seq"'::regclass);


--
-- TOC entry 2109 (class 2604 OID 17153)
-- Name: k_tipo_immatricolazione; Type: DEFAULT; Schema: AVA; Owner: valerio
--

ALTER TABLE ONLY tipo_immatricolazione ALTER COLUMN k_tipo_immatricolazione SET DEFAULT nextval('tipo_immatricolazione_k_tipo_immatricolazione_seq'::regclass);


--
-- TOC entry 2111 (class 2606 OID 17159)
-- Name: Studente_pkey; Type: CONSTRAINT; Schema: AVA; Owner: valerio; Tablespace: 
--

ALTER TABLE ONLY studente
    ADD CONSTRAINT "Studente_pkey" PRIMARY KEY (k_studente);


--
-- TOC entry 2114 (class 2606 OID 17161)
-- Name: anno_accademico_pkey; Type: CONSTRAINT; Schema: AVA; Owner: valerio; Tablespace: 
--

ALTER TABLE ONLY anno_accademico
    ADD CONSTRAINT anno_accademico_pkey PRIMARY KEY (k_anno_accademico);


--
-- TOC entry 2116 (class 2606 OID 17794)
-- Name: corso_codice_corso_key; Type: CONSTRAINT; Schema: AVA; Owner: valerio; Tablespace: 
--

ALTER TABLE ONLY corso
    ADD CONSTRAINT corso_codice_corso_key UNIQUE (codice_corso);


--
-- TOC entry 2120 (class 2606 OID 17165)
-- Name: corso_di_studi_pkey; Type: CONSTRAINT; Schema: AVA; Owner: valerio; Tablespace: 
--

ALTER TABLE ONLY corso_di_studi
    ADD CONSTRAINT corso_di_studi_pkey PRIMARY KEY (k_corso_di_studi);


--
-- TOC entry 2118 (class 2606 OID 17167)
-- Name: corso_pkey; Type: CONSTRAINT; Schema: AVA; Owner: valerio; Tablespace: 
--

ALTER TABLE ONLY corso
    ADD CONSTRAINT corso_pkey PRIMARY KEY (k_corso);


--
-- TOC entry 2122 (class 2606 OID 17169)
-- Name: data_pkey; Type: CONSTRAINT; Schema: AVA; Owner: macr0s; Tablespace: 
--

ALTER TABLE ONLY data
    ADD CONSTRAINT data_pkey PRIMARY KEY (k_data);


--
-- TOC entry 2124 (class 2606 OID 17884)
-- Name: fact_ingressi_pkey; Type: CONSTRAINT; Schema: AVA; Owner: valerio; Tablespace: 
--

ALTER TABLE ONLY fact_ingressi
    ADD CONSTRAINT fact_ingressi_pkey PRIMARY KEY (fk_tipo_immatricolazione, fk_corso_di_studi, fk_anno_accademico, fk_studente, fk_data_iscrizione);


--
-- TOC entry 2126 (class 2606 OID 17195)
-- Name: tipo_immatricolazione_pkey; Type: CONSTRAINT; Schema: AVA; Owner: valerio; Tablespace: 
--

ALTER TABLE ONLY tipo_immatricolazione
    ADD CONSTRAINT tipo_immatricolazione_pkey PRIMARY KEY (k_tipo_immatricolazione);


--
-- TOC entry 2112 (class 1259 OID 17835)
-- Name: idx_studente_lookup; Type: INDEX; Schema: AVA; Owner: valerio; Tablespace: 
--

CREATE INDEX idx_studente_lookup ON studente USING btree (cf, coorte, titolo_di_studio, sesso, comune_residenza, regione_residenza, provincia_residenza, cittadinanza, stato_residenza, nazione_diploma, tipo_scuola_media_superiore, istituto_scuola_media_superiore, data_nascita, anno_conseguimento_titolo);


--
-- TOC entry 2127 (class 2606 OID 17212)
-- Name: c_anno_accademico; Type: FK CONSTRAINT; Schema: AVA; Owner: valerio
--

ALTER TABLE ONLY fact_ingressi
    ADD CONSTRAINT c_anno_accademico FOREIGN KEY (fk_anno_accademico) REFERENCES anno_accademico(k_anno_accademico);


--
-- TOC entry 2130 (class 2606 OID 17227)
-- Name: c_anno_accademico; Type: FK CONSTRAINT; Schema: AVA; Owner: valerio
--

ALTER TABLE ONLY fact_lauree
    ADD CONSTRAINT c_anno_accademico FOREIGN KEY (fk_anno_accademico) REFERENCES anno_accademico(k_anno_accademico);


--
-- TOC entry 2131 (class 2606 OID 17272)
-- Name: c_cds; Type: FK CONSTRAINT; Schema: AVA; Owner: valerio
--

ALTER TABLE ONLY fact_lauree
    ADD CONSTRAINT c_cds FOREIGN KEY (fk_corso_di_studi) REFERENCES corso_di_studi(k_corso_di_studi);


--
-- TOC entry 2128 (class 2606 OID 17342)
-- Name: c_corso_di_studi; Type: FK CONSTRAINT; Schema: AVA; Owner: valerio
--

ALTER TABLE ONLY fact_ingressi
    ADD CONSTRAINT c_corso_di_studi FOREIGN KEY (fk_corso_di_studi) REFERENCES corso_di_studi(k_corso_di_studi);


--
-- TOC entry 2132 (class 2606 OID 17362)
-- Name: c_data; Type: FK CONSTRAINT; Schema: AVA; Owner: valerio
--

ALTER TABLE ONLY fact_lauree
    ADD CONSTRAINT c_data FOREIGN KEY (fk_data) REFERENCES data(k_data);


--
-- TOC entry 2129 (class 2606 OID 17437)
-- Name: c_studente; Type: FK CONSTRAINT; Schema: AVA; Owner: valerio
--

ALTER TABLE ONLY fact_ingressi
    ADD CONSTRAINT c_studente FOREIGN KEY (fk_studente) REFERENCES studente(k_studente);


--
-- TOC entry 2133 (class 2606 OID 17452)
-- Name: c_studente; Type: FK CONSTRAINT; Schema: AVA; Owner: valerio
--

ALTER TABLE ONLY fact_lauree
    ADD CONSTRAINT c_studente FOREIGN KEY (fk_studente) REFERENCES studente(k_studente);


--
-- TOC entry 2247 (class 0 OID 0)
-- Dependencies: 9
-- Name: AVA; Type: ACL; Schema: -; Owner: valerio
--

REVOKE ALL ON SCHEMA "AVA" FROM PUBLIC;
REVOKE ALL ON SCHEMA "AVA" FROM valerio;
GRANT ALL ON SCHEMA "AVA" TO valerio;
GRANT ALL ON SCHEMA "AVA" TO PUBLIC;


--
-- TOC entry 2249 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- TOC entry 2252 (class 0 OID 0)
-- Dependencies: 174
-- Name: studente; Type: ACL; Schema: AVA; Owner: valerio
--

REVOKE ALL ON TABLE studente FROM PUBLIC;
REVOKE ALL ON TABLE studente FROM valerio;
GRANT ALL ON TABLE studente TO valerio;
GRANT ALL ON TABLE studente TO macr0s;
GRANT ALL ON TABLE studente TO alex;


--
-- TOC entry 2254 (class 0 OID 0)
-- Dependencies: 176
-- Name: anno_accademico; Type: ACL; Schema: AVA; Owner: valerio
--

REVOKE ALL ON TABLE anno_accademico FROM PUBLIC;
REVOKE ALL ON TABLE anno_accademico FROM valerio;
GRANT ALL ON TABLE anno_accademico TO valerio;
GRANT ALL ON TABLE anno_accademico TO macr0s;
GRANT ALL ON TABLE anno_accademico TO alex;


--
-- TOC entry 2256 (class 0 OID 0)
-- Dependencies: 178
-- Name: corso; Type: ACL; Schema: AVA; Owner: valerio
--

REVOKE ALL ON TABLE corso FROM PUBLIC;
REVOKE ALL ON TABLE corso FROM valerio;
GRANT ALL ON TABLE corso TO valerio;
GRANT ALL ON TABLE corso TO macr0s;
GRANT ALL ON TABLE corso TO alex;


--
-- TOC entry 2257 (class 0 OID 0)
-- Dependencies: 179
-- Name: corso_di_studi; Type: ACL; Schema: AVA; Owner: valerio
--

REVOKE ALL ON TABLE corso_di_studi FROM PUBLIC;
REVOKE ALL ON TABLE corso_di_studi FROM valerio;
GRANT ALL ON TABLE corso_di_studi TO valerio;
GRANT ALL ON TABLE corso_di_studi TO macr0s;
GRANT ALL ON TABLE corso_di_studi TO alex;


--
-- TOC entry 2260 (class 0 OID 0)
-- Dependencies: 182
-- Name: data; Type: ACL; Schema: AVA; Owner: macr0s
--

REVOKE ALL ON TABLE data FROM PUBLIC;
REVOKE ALL ON TABLE data FROM macr0s;
GRANT ALL ON TABLE data TO macr0s;
GRANT ALL ON TABLE data TO alex;
GRANT ALL ON TABLE data TO valerio;


--
-- TOC entry 2262 (class 0 OID 0)
-- Dependencies: 184
-- Name: fact_ingressi; Type: ACL; Schema: AVA; Owner: valerio
--

REVOKE ALL ON TABLE fact_ingressi FROM PUBLIC;
REVOKE ALL ON TABLE fact_ingressi FROM valerio;
GRANT ALL ON TABLE fact_ingressi TO valerio;
GRANT ALL ON TABLE fact_ingressi TO macr0s;
GRANT ALL ON TABLE fact_ingressi TO alex;


--
-- TOC entry 2263 (class 0 OID 0)
-- Dependencies: 185
-- Name: fact_lauree; Type: ACL; Schema: AVA; Owner: valerio
--

REVOKE ALL ON TABLE fact_lauree FROM PUBLIC;
REVOKE ALL ON TABLE fact_lauree FROM valerio;
GRANT ALL ON TABLE fact_lauree TO valerio;
GRANT ALL ON TABLE fact_lauree TO macr0s;
GRANT ALL ON TABLE fact_lauree TO alex;


--
-- TOC entry 2264 (class 0 OID 0)
-- Dependencies: 186
-- Name: tipo_immatricolazione; Type: ACL; Schema: AVA; Owner: valerio
--

REVOKE ALL ON TABLE tipo_immatricolazione FROM PUBLIC;
REVOKE ALL ON TABLE tipo_immatricolazione FROM valerio;
GRANT ALL ON TABLE tipo_immatricolazione TO valerio;
GRANT ALL ON TABLE tipo_immatricolazione TO macr0s;
GRANT ALL ON TABLE tipo_immatricolazione TO alex;


-- Completed on 2016-04-09 08:19:31 UTC

--
-- PostgreSQL database dump complete
--

