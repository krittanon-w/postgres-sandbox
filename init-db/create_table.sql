-- Table: public.order_transection

DROP TABLE IF EXISTS public.order_transection;
CREATE TABLE IF NOT EXISTS public.order_transection
(
    id bigint NOT NULL,
    item_id bigint NOT NULL,
    customer_id bigint NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    CONSTRAINT order_transection_pkey PRIMARY KEY (id)
)

TABLESPACE postgres;

ALTER TABLE IF EXISTS public.order_transection
    OWNER to admin;
