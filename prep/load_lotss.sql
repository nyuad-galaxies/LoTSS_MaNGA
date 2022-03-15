DROP TABLE IF EXISTS lotss CASCADE;

CREATE TABLE lotss (
    id          bigint PRIMARY KEY,
    source_id   varchar(22),
    ra          real,
    e_ra        real,
    dec         real,
    e_dec       real,
    SP          real,
    e_SP        real,
    SI          real,
    e_SI        real,
    maj         real,
    e_maj       real,
    min         real,
    e_min       real,
    dc_maj      real,
    e_dc_maj    real,
    dc_min      real,
    e_dc_min    real,
    pa          real,
    e_pa        real,
    dc_pa       real,
    e_dc_pa     real,
    rms         real,
    type        varchar(1),
    mosaic      varchar(32),
    n_point     real,
    masked_fraction real
);

\copy lotss FROM '../data/LoTSS_DR2_v110_masked.srl.csv' DELIMITER ',' CSV HEADER;

ALTER TABLE lotss OWNER TO lotss_user;

CREATE INDEX ON lotss (q3c_ang2ipix(ra, dec));

CLUSTER lotss_q3c_ang2ipix_idx ON lotss;

ANALYZE lotss;