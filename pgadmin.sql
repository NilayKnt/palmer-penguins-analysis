CREATE TABLE penguins (
    studyname text,
    sample_number int,
    species text,
    region text,
    island text,
    stage text,
    individual_id text,
    clutch_completion text,
    date_egg text,
    culmen_length_mm numeric,
    culmen_depth_mm numeric,
    flipper_length_mm numeric,
    body_mass_g numeric,
    sex text,
    delta_15_n_ooo numeric,
    delta_13_c_ooo numeric,
    comments text
);
-- 0. Row count
SELECT COUNT(*) FROM penguins;

-- 1. Count by species
SELECT species, COUNT(*) AS total
FROM penguins
GROUP BY species;

-- 2. Average body mass and flipper length by species
SELECT species,
       ROUND(AVG(body_mass_g), 1) AS avg_body_mass,
       ROUND(AVG(flipper_length_mm), 1) AS avg_flipper
FROM penguins
GROUP BY species
ORDER BY avg_body_mass DESC;

-- 3. Islands with more than one species
SELECT island, COUNT(DISTINCT species) AS species_count
FROM penguins
GROUP BY island
HAVING COUNT(DISTINCT species) > 1;

-- 4. Count by weight class
SELECT species,
       CASE WHEN body_mass_g < 3500 THEN 'Light'
            WHEN body_mass_g < 4500 THEN 'Medium'
            ELSE 'Heavy' END AS weight_class,
       COUNT(*) AS total
FROM penguins
GROUP BY species, weight_class
ORDER BY species, total DESC;

-- 5. Penguins heavier than the average
SELECT species, island, body_mass_g
FROM penguins
WHERE body_mass_g > (SELECT AVG(body_mass_g) FROM penguins)
ORDER BY body_mass_g DESC
LIMIT 10;

-- 6. Non-Gentoo penguins overlapping with Gentoo's minimum
SELECT 'flipper' AS measure, COUNT(*) AS overlap
FROM penguins
WHERE species <> 'Gentoo'
  AND flipper_length_mm >= (SELECT MIN(flipper_length_mm) FROM penguins WHERE species = 'Gentoo')
UNION ALL
SELECT 'body_mass', COUNT(*)
FROM penguins
WHERE species <> 'Gentoo'
  AND body_mass_g >= (SELECT MIN(body_mass_g) FROM penguins WHERE species = 'Gentoo');

-- 7. Top 3 heaviest penguins per species
WITH ranked AS (
    SELECT species, island, body_mass_g,
           RANK() OVER (PARTITION BY species ORDER BY body_mass_g DESC) AS rank_no
    FROM penguins
)
SELECT * FROM ranked
WHERE rank_no <= 3
ORDER BY species, rank_no;

