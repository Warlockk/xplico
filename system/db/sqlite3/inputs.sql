--
-- Tabella dei file di input (pcap)
--
CREATE TABLE IF NOT EXISTS inputs (
  id INTEGER NOT NULL PRIMARY KEY,
  sol_id INTEGER NOT NULL REFERENCES sols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  pol_id INTEGER NOT NULL REFERENCES pols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  start_time TIMESTAMP NOT NULL DEFAULT '1990-01-01 00:00:00',
  end_time TIMESTAMP NOT NULL DEFAULT '1990-01-01 00:00:00',
  data_size INTEGER,
  filename VARCHAR( 255 ),
  md5 VARCHAR( 255 ),
  sha1 VARCHAR( 255 )
);
