-- SQL script that lists all bands with Glam rock as their main style,
-- ranked by their longevity
SELECT DISTINCT `band_name`, IFNULL(split, curdate()) - FORMED as `lifespan`
  FROM `metal_bands` WHERE FIND_IN_SET('Glam rock', style)
  ORDER BY `lifespan` DESC;
