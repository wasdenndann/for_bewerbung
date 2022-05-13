SELECT
    CONCAT_WS(
        " ",
        DATE_FORMAT(CURDATE(), "%d.%m.%Y"),
        "-",
        b.name_vor,
        b.name_nach,
        "bitte für",
        s.art,
        "als",
        s.stellung,
        "einladen") AS Erinnerung
    FROM
        tbl_bewerber AS b
    LEFT JOIN tbl_offene_stellen AS s
    ON
        s.ID_nummer = b.stellung
    WHERE
        b.name_vor = "Peter" AND b.name_nach = "Pfrang" AND s.stellung LIKE "%Anwendungsentwicklung%";