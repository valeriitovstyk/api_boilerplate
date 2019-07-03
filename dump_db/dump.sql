--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9 (Ubuntu 10.9-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.9 (Ubuntu 10.9-0ubuntu0.18.04.1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    title text,
    author integer,
    date date,
    rating numeric,
    text text
);


ALTER TABLE public.articles OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.articles_id_seq OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    first_name text,
    last_name text,
    sex character(1)
);


ALTER TABLE public.authors OWNER TO postgres;

--
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authors_id_seq OWNER TO postgres;

--
-- Name: authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authors_id_seq OWNED BY public.authors.id;


--
-- Name: new; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.new (
    title text,
    author text,
    date date,
    rating real,
    text text
);


ALTER TABLE public.new OWNER TO postgres;

--
-- Name: test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test (
    title text,
    author text,
    date date,
    rating numeric,
    text text
);


ALTER TABLE public.test OWNER TO postgres;

--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors ALTER COLUMN id SET DEFAULT nextval('public.authors_id_seq'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.articles (id, title, author, date, rating, text) VALUES (10, 'The Grand Cultural Influence of Octavia Butler', 3, '2019-06-21', 3.8, '<p>Tomorrow, June 22, would have been legendary SF novelist and short story writer Octavia Butler’s 72nd birthday. She died in 2006—much too young, at only 58—already a certified genius who had a profound impact on many readers and writers across the world. Not surprisingly, this includes many of the best writers of SF, fantasy, speculative fiction, and horror working today, and so to celebrate Butler’s birthday, I’ve collected a few of their thoughts on her influence.</p>');
INSERT INTO public.articles (id, title, author, date, rating, text) VALUES (11, 'What Gets Lost (and Found) in Translating Prose to Comics', 8, '2019-01-08', 4.6, '<p>As goes language, so too goes form. Comics creators have long drawn on literary sources for inspiration or outright adaptation. We’ve moved far beyond the days of <em>Classics Illustrated</em>, wherein a condensed version of a novel was translated in a straightforward manner to words and pictures on a page. David Mazzucchelli’s adaptation of Paul Auster’s <em>City of Glass</em> is a notable work in its own right, and one that neatly blends the aesthetics of two distinctive artists.</p>');
INSERT INTO public.articles (id, title, author, date, rating, text) VALUES (12, 'Why We’ll Never Get Tired of Literary Retellings', 5, '2019-05-28', 4.95, '<p>I make an effort to read a wide variety of books, but the genre that I find myself drawn to time and again is retellings of classic novels. I’ve yet to hear about a new twist on a timeless tale that doesn’t sound compelling to me. In fact, it’s a niche of storytelling that I enjoy so much that I’ve written my own entry into the genre, a novel entitled <em>You, Me, and the Sea</em> that is inspired by Emily Bronte’s <em>Wuthering Heights</em>. As I worked on my novel, I spent a lot of time thinking about my favorite retellings, and what it is, exactly, that makes these stories so endearing to readers—and writers. What I’ve come to believe is that reimaginings present a unique delight to readers because they manage to combine the pleasure of surprising twists with the comfort of a familiar story.</p>');
INSERT INTO public.articles (id, title, author, date, rating, text) VALUES (1, 'How Alison Bechdel Understands Her Life as Fiction', 4, '2017-10-04', 4.3, '<p>A third of the way through her seminal autobiographical graphic novel, Fun Home, Alison Bechdel reveals the reasons for the many literary allusions—Henry James, Fitzgerald, Camus, Greek mythology—peppered throughout the book. “I employ these allusions,” she writes, “not only as descriptive devices, but because my parents are most real to me in fictional terms. And perhaps,” she reflects, “my cool aesthetic distance itself does more to convey the arctic climate of our family than any particular literary comparison.” Not long before this, Bechdel has not only come out as a lesbian but learned, too, that her father had a disquieting secret passion for underage boys—but it was this revelation about her allusions, more than anything else, that made me pause in my rereading of her intricate masterpiece. Fiction, it seemed, was the best translator of the curious language of her life; here was an autobiography that would have been impossible without fiction.</p>');
INSERT INTO public.articles (id, title, author, date, rating, text) VALUES (2, 'How Jamaica Kincaid Helped Me Understand My Mother', 4, '2019-03-22', 3.35, '<p>For two decades, my mother told me stories about going to a convent in Grenada. “It was where I learnt manners,” she would say, smiling. Her own mother, a grand woman from Curaçao who had married a Dominican man during the shipwreck chaos of the Second World War and moved with him to that legendarily green island in the middle of the Caribbean, had sent her 13 daughters to the convent of St. Joseph of Cluny, where the nuns taught them the indelible arts of propriety. They were punished if they did not wear their uniforms correctly, arrange their napkins in napkin holders the right way, or finish each grain of rice on their plates; one of my aunties wailed all night in front of an insurmountable plate of food, until she fell asleep at the table.</p>');
INSERT INTO public.articles (id, title, author, date, rating, text) VALUES (3, 'How Many Copies Did Famous Books Sell in the First Year?', 3, '2019-06-25', 2.4, '<p>Book publishing can be a tricky—and fickle—thing. Some of the classics we know and love today were instant bestsellers when they were originally published—and some were huge flops. While the numbers a book puts up during its first year in the world aren’t everything, they can be fascinating—especially when they’re a lot lower (or higher) than you’d think. (I mean, just look at Joyce.) So to that end, I’ve hunted around to find out how many copies the below books sold in the twelve months following their publications. Obviously, most of the numbers are approximate (it’s pretty clear when they’re not), and of course I haven’t mentioned every book on on the spectrum (because that would just be . . . every book). But if you’re a writer who knows your own book’s numbers, and you’re brave, feel free to add to the list in the comments section.</p>');
INSERT INTO public.articles (id, title, author, date, rating, text) VALUES (4, 'My Decade-Long Fascination with the Tale of Monica Lewinsky', 4, '2019-05-29', 5, '<p>For over a decade now, I’ve maintained a fascination with Monica Lewinsky so ardent that it borders on obsession. It began during my senior year of college, when I took a literature seminar that focused on early sentimental novels about scorned women. The course culminated in a research paper on a woman from history whose sexual decisions led to her to be scandalized by her society.</p>');
INSERT INTO public.articles (id, title, author, date, rating, text) VALUES (5, 'On “Good Men” and the Vague, Low Standards Required to Be One', 1, '2018-04-29', 4.5, '<p>The first time I fell in love, I was 14 years old, working nights and weekends as a ski instructor at the local mountain that had one chairlift and one rope tow. He also worked there, and he didn’t love me back—or at least I hope he didn’t; he was 25. Saying it now, as an adult, feels horrifying, though for years I stood firm that he was a good man and there was nothing particularly sinister about the relationship. He picked me up on the way to the mountain, and drove me home at night. We never actually had lessons to teach, so we spent our time riding the chairlift and skiing together. Sometimes, we would talk on the phone. He even made me a mix tape.</p>');
INSERT INTO public.articles (id, title, author, date, rating, text) VALUES (6, 'On Frank Lloyd Wright and the Architectural War For New York’s Skyline', 2, '2019-02-01', 3.85, '<p>The New York City to which Frank Lloyd Wright returned in late 1926 was dramatically different from the metropolis he had encountered in 1909, but its evolution was not a mystery. The dramatic skyscrapers, the stock market, airplanes, jazz, the Harlem Renaissance, radio, and even organized crime, which gave the 1920s their fame, did not appear from nowhere. All had developed from the preceding decades. The risk was large, but for greater New York, still barely 20 years old, “the ties that bound—subways, bridges, schools, amusement parks, police, theaters, jobs, water, public health, Tammany, the excitement and pride of living in a great city—overmatched the innumerable antagonisms and kept them with bounds.” Squinting at risk, its citizens might assume “so far so good.”</p>');
INSERT INTO public.articles (id, title, author, date, rating, text) VALUES (7, 'On the Modern American Obsession with French Revolution Narratives', 8, '2019-05-03', 4, '<p>Will we ever run out of stories to tell about the French Revolution? Edward Carey’s recent novel Little is the second novel in a decade to examine that period through the eyes of Marie Grosholtz, better known as Madame Tussaud; it’s preceded by Michelle Moran’s Madame Tussaud: A Novel of the French Revolution. Before Hilary Mantel chronicled the palace intrigue surrounding Henry VIII and Thomas Cromwell, she explored intrigue among revolutionaries in her novel A Place of Greater Safety. And Emma Orczy’s 1905 novel The Scarlet Pimpernel has been adapted for literally every medium possible, including a 1999 BBC series starring Richard E. Grant as the title character. And that doesn’t even touch on other novels about upheaval in France in the years following the French Revolution, from Alexander Chee’s The Queen of the Night and the grand-pere of them all, Victor Hugo’s Les Miserables.</p>');
INSERT INTO public.articles (id, title, author, date, rating, text) VALUES (8, 'On Walt Whitman, Unsung Newspaperman', 6, '2018-09-15', 4.25, '<p>There are many professions that can rightly claim Walt Whitman as their own. He was, at different times in his life, a carpenter, a schoolteacher, a government clerk, a volunteer nurse, a printer, a typesetter, and the operator of a stationary store.</p><p>He was also, you might have heard, a poet.</p>');


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.authors (id, first_name, last_name, sex) VALUES (1, 'Abi', 'Maxwell', 'F');
INSERT INTO public.authors (id, first_name, last_name, sex) VALUES (2, 'Anthony', 'Alofsin', 'M');
INSERT INTO public.authors (id, first_name, last_name, sex) VALUES (3, 'Emily', 'Temple', 'F');
INSERT INTO public.authors (id, first_name, last_name, sex) VALUES (4, 'Gabrielle', 'Bellot', 'F');
INSERT INTO public.authors (id, first_name, last_name, sex) VALUES (5, 'Meg', 'Donohue', 'F');
INSERT INTO public.authors (id, first_name, last_name, sex) VALUES (6, 'Philip', 'Eil', 'M');
INSERT INTO public.authors (id, first_name, last_name, sex) VALUES (8, 'Tobias', 'Carroll', 'M');


--
-- Data for Name: new; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_id_seq', 12, true);


--
-- Name: authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authors_id_seq', 9, true);


--
-- Name: articles articles_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pk PRIMARY KEY (id);


--
-- Name: authors authors_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pk PRIMARY KEY (id);


--
-- Name: articles articles_authors_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_authors_id_fk FOREIGN KEY (author) REFERENCES public.authors(id);


--
-- PostgreSQL database dump complete
--

