-- outbound.dail_list_queue definition

-- Drop table

-- DROP TABLE outbound.dail_list_queue;

CREATE TABLE outbound.dail_list_queue (
	id uuid NOT NULL DEFAULT uuid_generate_v4(),
	camp_id varchar NOT NULL,
	ref_id varchar NOT NULL,
	attempt_date varchar NULL,
	attempt_status varchar NOT NULL DEFAULT 'NEW'::character varying,
	attempt_number int4 NULL,
	msg_type varchar NULL,
	channel_type varchar NULL,
	created_date timestamptz NOT NULL DEFAULT now(),
	updated_date timestamptz NOT NULL DEFAULT now(),
	channel_status varchar NULL
);

-- outbound.dail_list_queue_history definition

-- Drop table

-- DROP TABLE outbound.dail_list_queue_history;

CREATE TABLE outbound.dail_list_queue_history (
	id uuid NOT NULL DEFAULT uuid_generate_v4(),
	camp_id varchar NULL,
	ref_id varchar NULL,
	attempt_date varchar NULL,
	attempt_status varchar NULL,
	attempt_number int4 NULL,
	msg_type varchar NULL,
	channel_type varchar NULL,
	created_date timestamptz NULL,
	updated_date timestamptz NULL,
	dail_list_queue_id varchar NOT NULL,
	transaction_type varchar NULL
);

-- outbound_config.file_db_col_mappig definition

-- Drop table

-- DROP TABLE outbound_config.file_db_col_mappig;

CREATE TABLE outbound_config.file_db_col_mappig (
	id uuid NOT NULL DEFAULT uuid_generate_v4(),
	db_col_name varchar NOT NULL,
	file_col_name varchar NOT NULL,
	col_type varchar NULL,
	column_pos varchar NULL,
	file_name varchar NOT NULL,
	datasource_id varchar NULL,
	campaign_id varchar NULL,
	notification_id varchar NULL,
	"delimiter" varchar NULL
);
-- outbound.sso_spinsci_diallist_order definition

-- Drop table

-- DROP TABLE outbound.sso_spinsci_diallist_order;

CREATE TABLE outbound.sso_spinsci_diallist_order (
	id uuid NOT NULL DEFAULT uuid_generate_v4(),
	appointment_id varchar NOT NULL,
	procedure_name varchar NULL,
	patient_mrn varchar NULL,
	patient_name varchar NULL,
	patient_dob varchar NULL,
	patient_preff_language varchar NULL,
	patient_phone_num varchar NULL,
	visit_type varchar NULL,
	department_id varchar NULL,
	specialty_id varchar NULL,
	requesting_provider varchar NULL,
	requesting_department varchar NULL,
	current_wqs varchar NULL,
	current_wqs_tab varchar NULL,
	created_date timestamptz NULL DEFAULT now(),
	updated_date timestamptz NULL DEFAULT now(),
	is_scheduled varchar NULL DEFAULT 'FALSE'::character varying,
	ordered_date varchar NULL,
	is_deffered varchar NULL DEFAULT 'FALSE'::character varying
);