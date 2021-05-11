-- This file and its contents are licensed under the Apache License 2.0.
-- Please see the included NOTICE for copyright information and
-- LICENSE-APACHE for a copy of the license.

-- ts_date_trunc() is similar to date_trunc() in PostgreSQL but supports intervals like 'N months'
CREATE OR REPLACE FUNCTION ts_date_trunc(bucket_width INTERVAL, ts DATE) RETURNS DATE
	AS '@MODULE_PATHNAME@', 'ts_date_trunc' LANGUAGE C IMMUTABLE PARALLEL SAFE STRICT;

CREATE OR REPLACE FUNCTION ts_date_trunc(bucket_width INTERVAL, ts DATE, origin DATE) RETURNS DATE
	AS '@MODULE_PATHNAME@', 'ts_date_trunc' LANGUAGE C IMMUTABLE PARALLEL SAFE STRICT;

-- utility functions
CREATE OR REPLACE FUNCTION ts_date_trunc(bucket_width INTERVAL, ts TIMESTAMP) RETURNS TIMESTAMP
	AS '@MODULE_PATHNAME@', 'ts_date_trunc_timestamp' LANGUAGE C IMMUTABLE PARALLEL SAFE STRICT;

CREATE OR REPLACE FUNCTION ts_date_trunc(bucket_width INTERVAL, ts TIMESTAMP, origin TIMESTAMP) RETURNS TIMESTAMP
	AS '@MODULE_PATHNAME@', 'ts_date_trunc_timestamp' LANGUAGE C IMMUTABLE PARALLEL SAFE STRICT;

--CREATE OR REPLACE FUNCTION ts_date_trunc(bucket_width INTERVAL, ts TIMESTAMPTZ) RETURNS TIMESTAMPTZ
--	AS '@MODULE_PATHNAME@', 'ts_date_trunc_timestamptz' LANGUAGE C IMMUTABLE PARALLEL SAFE STRICT;

--CREATE OR REPLACE FUNCTION ts_date_trunc(bucket_width INTERVAL, ts TIMESTAMPTZ, origin TIMESTAMPTZ) RETURNS TIMESTAMPTZ
--	AS '@MODULE_PATHNAME@', 'ts_date_trunc_timestamptz' LANGUAGE C IMMUTABLE PARALLEL SAFE STRICT;