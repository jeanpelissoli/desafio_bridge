do $$
BEGIN
	RAISE NOTICE 'Generating Schema...';
	
	CREATE TABLE category (
		id          INTEGER NOT NULL,
		name        VARCHAR(155) NOT NULL,
		description VARCHAR(155) NOT NULL
	);

	ALTER TABLE category ADD CONSTRAINT category_pk PRIMARY KEY ( id );

	CREATE TABLE client (
		id      INTEGER NOT NULL,
		name    VARCHAR(155) NOT NULL,
		address VARCHAR(155) NOT NULL
	);

	ALTER TABLE client ADD CONSTRAINT client_pk PRIMARY KEY ( id );

	CREATE TABLE purchase_order (
		id        INTEGER NOT NULL,
		date_    DATE NOT NULL,
		client_id INTEGER NOT NULL
	);

	ALTER TABLE purchase_order ADD CONSTRAINT order_pk PRIMARY KEY ( id );

	CREATE TABLE order_item (
		id         INTEGER NOT NULL,
		price      FLOAT,
		amount     INTEGER NOT NULL,
		product_id INTEGER NOT NULL,
		order_id   INTEGER NOT NULL
	);

	ALTER TABLE order_item ADD CONSTRAINT order_item_pk PRIMARY KEY ( id );

	CREATE TABLE product (
		id          INTEGER NOT NULL,
		name        VARCHAR(155) NOT NULL,
		description VARCHAR(155),
		price       FLOAT NOT NULL,
		category_id INTEGER NOT NULL
	);

	ALTER TABLE product ADD CONSTRAINT product_pk PRIMARY KEY ( id );

	ALTER TABLE purchase_order
		ADD CONSTRAINT order_client_fk FOREIGN KEY ( client_id )
		    REFERENCES client ( id );

	ALTER TABLE order_item
		ADD CONSTRAINT order_item_order_fk FOREIGN KEY ( order_id )
		    REFERENCES purchase_order ( id );

	ALTER TABLE order_item
		ADD CONSTRAINT order_item_product_fk FOREIGN KEY ( product_id )
		    REFERENCES product ( id );

	ALTER TABLE product
		ADD CONSTRAINT product_category_fk FOREIGN KEY ( category_id )
		    REFERENCES category ( id );
END $$

