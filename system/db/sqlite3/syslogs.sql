--
-- Tabella dei syslog
--
CREATE TABLE IF NOT EXISTS syslogs (
  id INTEGER NOT NULL PRIMARY KEY,
  sol_id INTEGER NOT NULL REFERENCES sols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  pol_id INTEGER NOT NULL REFERENCES pols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  source_id INTEGER NOT NULL REFERENCES sources(id) ON DELETE CASCADE ON UPDATE CASCADE,
  capture_date TIMESTAMP NOT NULL DEFAULT '1990-01-01 00:00:00',
  decoding_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  viewed_date TIMESTAMP NOT NULL DEFAULT '1990-01-01 00:00:00',
  first_visualization_user_id INTEGER NOT NULL DEFAULT 0,
  flow_info VARCHAR( 255 ) NOT NULL,
  important BOOL DEFAULT 0,
  hosts VARCHAR( 512 ),
  log VARCHAR( 255 ),
  log_size INTEGER
);
