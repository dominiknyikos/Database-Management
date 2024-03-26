USE katica;

INSERT INTO kategoria(id, kategoriaNev) VALUES
  (1, 'Ătelek'),
  (2, 'Italok');

INSERT INTO forgalom(id, termek, vevo, kategoriaId, egyseg, nettoar, mennyiseg, kiadva) VALUES
(246, 'Sajtos hot-dog', 'Lajos', 1, 'db', 450, 2, TRUE),
(247, 'LimonĂĄdĂŠ', 'Lajos', 2, 'dl', 100, 5, TRUE),
(248, 'GyrostĂĄl', 'Kinga', 1, 'db', 1500, 1, TRUE),
(249, 'Ăzes palacsinta', 'Kinga', 1, 'db', 350, 2, TRUE),
(250, 'TĂşros palacsinta', 'Kinga', 1, 'db', 270, 1, TRUE),
(251, 'NarancslĂŠ', 'Kinga', 2, 'dl', 150, 3, TRUE),
(252, 'FĹtt virsli', 'JenĹ', 1, 'pĂĄr', 450, 2, FALSE),
(253, 'KenyĂŠr', 'JenĹ', 1, 'szelet', 60, 2, TRUE),
(254, 'GyrostĂĄl', 'Ăgi', 1, 'db', 1500, 3, FALSE),
(255, 'MĂĄlnaszĂśrp', 'Ăgi', 2, 'dl', 100, 10, FALSE),
(256, 'Sajtos hot-dog', 'Lajos', 2, 'db', 450, 2, FALSE),
(257, 'MĂĄlnaszĂśrp', 'Lajos', 2, 'dl', 100, 3, FALSE),
(258, 'GyrostĂĄl', 'JenĹ', 1, 'db', 1500, 1, FALSE);