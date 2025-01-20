SELECT *FROM tdofi
--tbase@mlptcp1                 
UPDATE tdofi 
SET tdofihost = 'tbase@cm04'

SELECT *FROM gbofi ORDER BY 1;

--tbase@cm09                    
-- CM
UPDATE gbofi
SET gbofihost = 'tbase@cm04';

-- LINEA
UPDATE gbofi
SET gbofihost = 'tbase@mlptcp1';

SELECT *FROM gbdsn;
--netbank-php-dev                         
-- LABORATORIO
UPDATE gbdsn
SET gbdsnndsn = 'netbank-php-test3'--''netbank-php-dev'

-- LINEA
UPDATE gbdsn
SET gbdsnndsn = 'netbank-php';

INSERT INTO gbdsn (gbdsnnofi,gbdsnndsn) VALUES (2,'netbank-php-test3                       ');
INSERT INTO gbdsn (gbdsnnofi,gbdsnndsn) VALUES (20,'netbank-php-test3                       ');
INSERT INTO gbdsn (gbdsnnofi,gbdsnndsn) VALUES (30,'netbank-php-test3                       ');
INSERT INTO gbdsn (gbdsnnofi,gbdsnndsn) VALUES (31,'netbank-php-test3                       ');
INSERT INTO gbdsn (gbdsnnofi,gbdsnndsn) VALUES (33,'netbank-php-test3                       ');
INSERT INTO gbdsn (gbdsnnofi,gbdsnndsn) VALUES (34,'netbank-php-test3                       ');
INSERT INTO gbdsn (gbdsnnofi,gbdsnndsn) VALUES (50,'netbank-php-test3                       ');
INSERT INTO gbdsn (gbdsnnofi,gbdsnndsn) VALUES (51,'netbank-php-test3                       ');
INSERT INTO gbdsn (gbdsnnofi,gbdsnndsn) VALUES (52,'netbank-php-test3                       ');
INSERT INTO gbdsn (gbdsnnofi,gbdsnndsn) VALUES (80,'netbank-php-test3                       ');
INSERT INTO gbdsn (gbdsnnofi,gbdsnndsn) VALUES (81,'netbank-php-test3                       ');
INSERT INTO gbdsn (gbdsnnofi,gbdsnndsn) VALUES (82,'netbank-php-test3                       ');
INSERT INTO gbdsn (gbdsnnofi,gbdsnndsn) VALUES (90,'netbank-php-test3                       ');
