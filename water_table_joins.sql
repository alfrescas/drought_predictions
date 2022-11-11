CREATE TABLE water_public_supply (
	id VARCHAR (40),
	county VARCHAR (30),
	year INT,
	totalPop NUMERIC,
	ps_topop NUMERIC,
	ps_wgwto NUMERIC,
	ps_wswto NUMERIC,
	ps_wtotl NUMERIC,
	do_wdelv NUMERIC,
	in_wswto NUMERIC,
	in_wtotl NUMERIC
);

--DROP TABLE public_supply_1985 CASCADE;

CREATE TABLE land_water_use (
	id VARCHAR (40),
	state VARCHAR (10),
	year INT,
	totalPop NUMERIC,
	county VARCHAR (30),
	ir_cusfr NUMERIC,	
	ir_irtot NUMERIC,
	ic_wfrto NUMERIC,
	ic_irtot NUMERIC,
	ig_cusfr NUMERIC,
	ig_irtot NUMERIC,
	li_wfrto NUMERIC,
	aq_wgwto NUMERIC,
	aq_wswto NUMERIC
);

CREATE TABLE water_mining (
	state VARCHAR (10),
	year INT,
	county VARCHAR (30),
	mi_wgwto NUMERIC,
	mi_wtotl NUMERIC	
);

CREATE TABLE water_thermoelectric (
	state VARCHAR (10),
	year INT,
	county VARCHAR (30),
	pt_wgwto NUMERIC,
	pt_wswto NUMERIC,
	pt_wtotl NUMERIC,
	pt_cutot NUMERIC,
	po_wgwto NUMERIC,
	po_wswto NUMERIC,
	po_wtotl NUMERIC,
	po_cutot NUMERIC,
	pc_wgwto NUMERIC,
	pc_wswto NUMERIC,
	pc_wtotl NUMERIC,
	pc_cutot NUMERIC
);

CREATE TABLE water_totals (
	state VARCHAR (10),
	year INT,
	county VARCHAR (30),
	to_wgwto NUMERIC,
	to_wswto NUMERIC,
	to_wtotl NUMERIC,
	to_cutotpartial NUMERIC
);

SELECT * FROM water_mining;
SELECT * FROM water_public_supply;
SELECT * FROM water_thermoelectric;
SELECT * FROM land_water_use;
SELECT * FROM water_totals;

--Join tables together

SELECT wm.state,
     wm.year,
     wm.county,
     wm.mi_wgwto,
	 wm.mi_wtotl,
	 wt.to_wgwto,
	 wt.to_wswto,
	 wt.to_wtotl,
	 wt.to_cutotpartial
FROM water_mining as wm
INNER JOIN water_totals as wt
ON wm.county = wt.county;

