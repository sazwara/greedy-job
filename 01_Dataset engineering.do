version 16
clear all
set more off

*=============================================================================*
* DEMANDING JOB
* (1) Demanding job dataset engineering
* Programmer: Tahtia Sazwara
*=============================================================================*

***Path***
local data "$project/SAKERNAS"

*=============================================================================*
*  MAIN LOOP over all 25 August waves
*=============================================================================*
foreach y in 2016 2017 2018 2019 2020 2021 2022 2023 2024 2025 {

if `y'==2016 {
        local wt weight
        local kodeprov kode_prov
        local kodekab ""
        local psu ""
        local strata ""
        local sex b4_k4
        local age b4_k6
        local sch b4_k8
        local look b5_r11
        local education b5_r1a
        local marry b4_k7
        local ruralurb klasifikas
        local jobtype b5_r23
        local incomeidr b5_r26a
        local incomeinkind b5_r26b
        local hoursworked b5_r22b
        local urut urutan
        local roster b4_k1
        local statuskel b4_k3
        local industry b5_r19_9
        local occ b5_r20_200
}

if `y'==2017 {
        local wt weight
        local kodeprov kode_prov
        local kodekab kode_kab
        local psu ""
        local strata ""
        local sex b4_k4
        local age b4_k6
        local sch b4_k7
        local look b5_r15a
        local education b5_r1a
        local marry b4_k8
        local ruralurb klasifikas
        local jobtype b5_r27a
        local incomeidr b5_r30b1 b5_r30c11 b5_r30c21
        local incomeinkind b5_r30b2 b5_r30c12 b5_r30c22
        local hoursworked b5_r26b
        local urut ""
        local roster ""
        local statuskel b4_k3
        local industry b5_r23_9
        local occ b5_r24_198
}

if `y'==2018 {
        local wt final_weig
        local kodeprov kode_prov
        local kodekab kode_kab
        local psu ""
        local strata ""
        local sex b4_k6
        local age b4_k8
        local sch b4_k9
        local look b5_r15a
        local education b5_r1a
        local marry b4_k10
        local ruralurb klasifikas
        local jobtype b5_r27a
        local incomeidr b5_r31b1 b5_r31c1
        local incomeinkind b5_r31b2 b5_r31c2
        local hoursworked b5_r26b
        local urut urutan
        local roster b4_k1
        local statuskel b4_k3
        local industry b5_r23_sek
        local occ b5_r24_kji
}

if `y'==2019 {
        local wt weightr_sp
        local kodeprov kode_prov
        local kodekab kode_kab
        local psu ""
        local strata ""
        local sex b4_k6
        local age b4_k8
        local sch b4_k9
        local look b5_r12a
        local education b5_r1a
        local marry b4_k10
        local ruralurb klasifikas
        local jobtype b5_r24a
        local incomeidr b5_r28b1 b5_r28c1
        local incomeinkind b5_r28b2 b5_r28c2
        local hoursworked b5_r23b
        local urut urutan_u
        local roster b4_k1
        local statuskel b4_k3
        local industry b5_r20_kat
        local occ b5_r21_kji
}

if `y'==2020 {
        local wt final_weig
        local kodeprov kode_prov
        local kodekab kode_kab
        local psu ""
        local strata ""
        local sex k4
        local age k6
        local sch r5
        local look r22a
        local education r6a
        local marry r4
        local ruralurb klasifikas
        local jobtype r12a
        local incomeidr r14a1
        local incomeinkind r14a2
        local hoursworked r16a
        local urut urutan
        local roster k1
        local statuskel k3
        local industry r13a_kateg
        local occ r13b_kji19
}

if `y'==2021 {
        local wt final_weig
        local kodeprov kode_prov
        local kodekab kode_kab
        local psu psu
        local strata ""
        local sex k4
        local age k6
        local sch r5
        local look r29a
        local education r6a
        local marry r4
        local ruralurb klas
        local jobtype r12a
        local incomeidr r14a_uang
        local incomeinkind r14a2_brg
        local hoursworked r16a2
        local urut urutan
        local roster k1
        local statuskel k3
        local industry kbli2020_1
        local occ kbji1982
}

if `y'==2022 {
        local wt weight
        local kodeprov kode_prov
        local kodekab kode_kab
        local psu psu
        local strata strata
        local sex k4
        local age k6
        local sch r5
        local look r32a
        local education r6a
        local marry r4
        local ruralurb klas
        local jobtype r13a
        local incomeidr r15a_uang
        local incomeinkind r15a_brg
        local hoursworked r17b
        local urut urutan
        local roster k1
        local statuskel k3
        local industry r14akatego
        local occ r14bkbji19
}

if `y'==2023 {
        local wt weightr
        local kodeprov kode_prov
        local kodekab kode_kab
        local psu psu
        local strata strata
        local sex k4
        local age k9
        local sch r5
        local look r32a
        local education r6a
        local marry r4
        local ruralurb klas
        local jobtype r13a
        local incomeidr r15_uang
        local incomeinkind r15_brg
        local hoursworked r18b
        local urut rowindex
        local roster ""
        local statuskel k3
        local industry r14akatego
        local occ r14bkbji19
}

if `y'==2024 {
        local wt weight
        local kodeprov kode_prov
        local kodekab kode_kab
        local psu psu
        local strata strata
        local sex k4
        local age k10
        local sch r5
        local look r38a
        local education r6a
        local marry r4
        local ruralurb klasifikas
        local jobtype r14a
        local incomeidr r16_1
        local incomeinkind r16_2
        local hoursworked r19b
        local urut urutan
        local roster k1
        local statuskel k3
        local industry r15a_kbli2
        local occ r15b_kbji1
}

if `y'==2025 {
        local wt 
        local kodeprov 
        local kodekab 
        local psu 
        local strata 
        local sex 
        local age 
        local sch 
        local look 
        local education 
        local marry 
        local ruralurb 
        local jobtype 
        local incomeidr 
        local incomeinkind
        local hoursworked 
        local urut 
        local roster
        local statuskel 
        local industry 
        local occ 
		local abovefive
		local member
		local ins_health
		local ins_kk
		local ins_jk
		local ins_jht
		local ins_jp
		local ins_ann
		local ins_mat
		local ins_sick
}

    use "`data'/`y' SAKERNAS.dta", clear
    ren *, lower
	gen _source_order = _n
	gen _year = `y'

    * some early waves store variables as strings -> make the ones we use numeric
    foreach v in `wt' `kodeprov' `kodekab' `psu' `strata' `sex' `age' `sch' ///
				`look' `education' `marry' `ruralurb' `jobtype' `incomeidr' ///
				`incomeinkind' `hoursworked' `urut' `roster' `statuskel' /// 
				`industry' `occ' {
        capture confirm string variable `v'
        if !_rc destring `v', replace force
    }

* ---------------------------------------------------------------------------
* A. Variables construction: transformed variables
* ---------------------------------------------------------------------------
	
***A1. labor force status***
*
* Note: unemployed is both not working+looking for work 
*
gen _employed = inrange(`jobtype', 1, 7)

gen _unemployed = (_employed == 0 & `look' == 1)

gen _laborforce = (_employed == 1 | _unemployed == 1)

label variable _employed   "1 = employed"
label variable _unemployed "1 = unemployed"
label variable _laborforce "1 = in labour force"

***A2. birth year and age cohort***
gen _birthyear = `y' - `age'

label var _birthyear "birth year"

gen _yobcohort = _birthyear

recode _yobcohort min/1949=1 1950/1959=2 1960/1969=3 1970/1979=4 1980/1989=5 ///
				  1990/1999=6 2000/max=7
label define yoblabel ///
	1 "born in 1940-1949" ///
	2 "born in 1950-1959" ///
	3 "born in 1960-1969" ///
	4 "born in 1970-1979" ///
	5 "born in 1980-1989" ///
	6 "born in 1990-1999" ///
	7 "born in 2000-2009"

label var _yobcohort "Year of Birth Cohort (7)"
label values _yobcohort yoblabel

***A3. education group***
gen _educohort = `education'

if inrange(`y', 2016, 2019) {
	recode _educohort (1/4=1) (5/7=2) (8/11=3) (12/16=4)
}
else if `y' == 2020 {
	recode _educohort (1/2=1) (3=2) (4/5=3) (6/8=4)
}
else if inrange(`y', 2021, 2025) {
	recode _educohort (1/2=1) (3=2) (4/6=3) (7/12=4)
}
label define edulabel ///
	1 "primary & lower" ///
	2 "lower secondary" ///
	3 "upper secondary" ///
	4 "tertiary"
	
label var _educohort "level of education (4)"
label values _educohort edulabel

***A4. marriage status***
gen _is_married = `marry'
replace _is_married = 1 if `marry'== 2
replace _is_married = 0 if inlist(`marry', 1, 3, 4)

label var _is_married "1 if married, else 0"

***A5. rural/urban*** NOTE: 1=urban 2=rural
gen byte _is_rural = (`ruralurb' == 2) if inlist(`ruralurb', 1, 2)

label var _is_rural "1 if lives in rural"

***A6. job formality***
gen _formal=.
gen _informal=.

	replace _formal = 1 if `jobtype' == 4
	replace _formal = 0 if inlist(`jobtype', 1, 2, 3, 5, 6, 7)
	replace _informal = 0 if `jobtype' == 4
	replace _informal = 1 if inlist(`jobtype', 1, 2, 3, 5, 6, 7)

label var _informal "1 if works informal, else formal, missing nonlabor"
label var _formal "1 if works formal, else informal, missing nonlabor"

***A7. employment types***

gen _empltype = .
	replace _empltype = 1 if inrange(`jobtype', 1, 3)
	replace _empltype = 2 if `jobtype' == 4
	replace _empltype = 3 if inlist(`jobtype', 5, 6)
	replace _empltype = 4 if `jobtype' == 7

label define jobtype4                              ///
    1 "Self-employed/employer"                     ///
    2 "Wage employee"                              ///
    3 "Casual worker"                              ///
    4 "Unpaid family worker"

label values _empltype jobtype4

***A8. hourly earnings*** 
*
* NOTE: should be adjusted by CPI, not included in codeblock yet
*

egen double _monthly_earnings = ///
    rowtotal(`incomeidr' `incomeinkind'), missing

egen double _min_income_component = ///
    rowmin(`incomeidr' `incomeinkind')

replace _monthly_earnings = . ///
    if _min_income_component < 0

drop _min_income_component

gen double _hourly_earnings = .

replace _hourly_earnings = ///
    _monthly_earnings / ((52/12) * `hoursworked') ///
    if _employed == 1                          ///
    & `hoursworked' > 0                        ///
    & !missing(_monthly_earnings)

replace _hourly_earnings = 0 ///
    if _empltype == 4 & missing(_hourly_earnings)

***A9. household ID
*
* DISCLAIMER: raw ordering of dataset assumed to retain information of 
* household i.e., if the "relation with household head" value is 1,
* it signifies a new household sampled.
*
* I use this assumption since there is no real household unique identifier
* for sakernas. From 2010-2015, there is no rowindex or family roster either.
*
* Multiple methods used to construct the composite household index. 
* household id format: year + province + district + rural/urban 
*					  + sample ID + household serial
*

	
* `urut' is primary row index; when unavailable, use _source_order
local ordervar "_source_order"
if "`urut'" != "" local ordervar "`urut'"

	*
	* Automatically locate early household identifiers.
	*
	local hhserial ""
	foreach v in b1p10 b1r8 nourt {
		capture confirm variable `v'
		if !_rc local hhserial `v'
	}

	local sampleid ""
	foreach v in b1p09 b1p07 b1r7 nks {
		capture confirm variable `v'
		if !_rc local sampleid `v'
	}

	capture drop _hh_within_year _new_household 

	*
	* Method 1: official sample code + household serial
	* Year: 2000-2006
	*
	if "`hhserial'" != "" & "`sampleid'" != "" {

		egen long _hh_within_year = group(                    ///
			`kodeprov' `kodekab' `ruralurb'                   ///
			`sampleid' `hhserial')
	}

	*
	* Known problematic files: do not manufacture an ID.
	*
	else if inlist(`y', 2009, 2010, 2017, 2019) {

		gen long _hh_within_year = .
		di as text "No household identifier construction available in `y'."
	}

	*
	* Method 2: unique person row order + roster starts at 1
	* Year: 2016, 2018, 2020-2022, 2024
	*
	else if inlist(`y', 2016, 2018, 2020, 2021, 2022, 2024) ///
		& "`urut'" != "" & "`roster'" != "" {

		sort `urut'
		gen byte _new_household = (`roster' == 1)
		gen long _hh_within_year = sum(_new_household)
	}

	*
	* Method 3: unique row order + household head starts the household
	* Year: 2023
	*
	else if `y' == 2023 & "`urut'" != "" & "`statuskel'" != "" {

		sort `urut'
		gen byte _new_household = (`statuskel' == 1)
		gen long _hh_within_year = sum(_new_household)
	}

	*
	* Method 4: roster exists and original file order is household order
	* Year: 2007, 2008
	*
	else if "`roster'" != "" {

		sort _source_order
		gen byte _new_household = (`roster' == 1)
		gen long _hh_within_year = sum(_new_household)
	}

	*
	* Method 5: only relation-to-head and original household ordering
	* Year: 2011, 2012, 2014, 2015
	*
	else if inlist(`y', 2011, 2012, 2014, 2015) {

		sort _source_order
		gen byte _new_household = (`statuskel' == 1)
		gen long _hh_within_year = sum(_new_household)
	}

	*
	* No defensible household identifier; will be treated as missing
	*
	else {
		gen long _hh_within_year = .
		di as text "No household identifier construction available in `y'."
	}

*
* Make the identifier unique after appending different years.
*
gen double _household_id =                              ///
	(`y' * 10000000) + _hh_within_year                  ///
	if !missing(_hh_within_year)

format _household_id %15.0f
sort _source_order

***A10. child-in-household statistics & family status*** 

	*
	* Identify roles of household
	*
	gen _is_child    = (`statuskel' == 3) if !missing(`statuskel')

	gen _fam_stat 	 = `statuskel'
	recode _fam_stat 0=4 1=1 2=2 3=3 4/max=4
	
	label define keluarga ///
		1 "Head of household" ///
		2 "Spouse of household" ///
		3 "Child of household" ///
		4 "Others"
	
	label values _fam_stat keluarga
	label var _fam_stat "Household member status"
	label var _is_child "1 if household child"
	
	* n of child & age of child
	bysort _household_id: egen _hh_n_children = total(_is_child) ///
		if !missing(_household_id)
	bysort _household_id: egen _hh_youngest_child_age = ///
		min(cond(_is_child == 1, `age', .))
	replace _hh_youngest_child_age = . if missing(_household_id)
	bysort _household_id: egen _hh_oldest_child_age = ///
		max(cond(_is_child == 1, `age', .))
	replace _hh_oldest_child_age = . if missing(_household_id)

///replace _hh_n_children = 0 ///
    ///if missing(_hh_n_children) & !missing(_household_id)
	
label var _hh_n_children "n of children in household"
label var _hh_youngest_child_age "youngest age of child in household"
label var _hh_oldest_child_age "oldest age of child in household" 

///sanity check for children age
* Age of household head
bysort _household_id: egen double _hh_head_age = ///
    max(cond(_fam_stat == 1, `age', .))

* Flag household if a k3==3 member is older than the head
gen byte _hh_head_younger_child = ///
    (_hh_oldest_child_age > _hh_head_age) ///
    if !missing(_household_id, _hh_head_age, _hh_oldest_child_age)

* Count affected households, not repeated individual rows
egen byte _hh_tag = tag(_year _household_id) ///
    if !missing(_household_id)

drop _hh_tag
drop if _hh_head_younger_child == 1

***A11. sex
gen byte _is_female = (`sex' == 2) if inlist(`sex', 1, 2)

label var _is_female "1 if female"

***A12. harmonized nine-sector KBLI
gen _kbli_default = `industry'
replace _kbli_default = . if _employed == 0
gen byte _kbli_harmonized = .

	* 2000-2006: detailed KLUI codes
	if inrange(`y', 2000, 2006) {
		replace _kbli_harmonized = 1 if inrange(_kbli_default,   1,  50)
		replace _kbli_harmonized = 2 if inrange(_kbli_default, 101, 142)
		replace _kbli_harmonized = 3 if inrange(_kbli_default, 150, 372)
		replace _kbli_harmonized = 4 if inrange(_kbli_default, 400, 410)
		replace _kbli_harmonized = 5 if inrange(_kbli_default, 450, 499)
		replace _kbli_harmonized = 6 if inrange(_kbli_default, 501, 599)
		replace _kbli_harmonized = 7 if inrange(_kbli_default, 601, 650)
		replace _kbli_harmonized = 8 if inrange(_kbli_default, 651, 749)
		replace _kbli_harmonized = 9 if inrange(_kbli_default, 750, 999)
	}

	* 2007-2017: already nine-sector categories
	if inrange(`y', 2007, 2017) {
		replace _kbli_harmonized = _kbli_default ///
			if inrange(_kbli_default, 1, 9)
	}

	* 2018-2024: seventeen sectors converted to nine sectors
	if inrange(`y', 2018, 2024) {
		replace _kbli_harmonized = 1 if _kbli_default == 1
		replace _kbli_harmonized = 2 if _kbli_default == 2
		replace _kbli_harmonized = 3 if _kbli_default == 3
		replace _kbli_harmonized = 4 if inlist(_kbli_default, 4, 5)
		replace _kbli_harmonized = 5 if _kbli_default == 6
		replace _kbli_harmonized = 6 if inlist(_kbli_default, 7, 9)
		replace _kbli_harmonized = 7 if inlist(_kbli_default, 8, 10)
		replace _kbli_harmonized = 8 if inlist(_kbli_default, 11, 12, 13)
		replace _kbli_harmonized = 9 if inlist(_kbli_default, 14, 15, 16, 17)
	}

label define kblilevel ///
	1 "Agriculture, forestry, hunting and fishing" ///
	2 "Mining and quarrying" ///
	3 "Manufacturing" ///
	4 "Electricity, gas and water" ///
	5 "Construction" ///
	6 "Trade, restaurants and accommodation" ///
	7 "Transport, storage and communication" ///
	8 "Finance, real estate and business services" ///
	9 "Community, social and personal services", replace

label values _kbli_harmonized kblilevel
label variable _kbli_default    "Industry classification as released"
label variable _kbli_harmonized "Harmonized nine-sector industry"

* Broad sector retained for aggregate sector graphs
gen byte _kbli_broad = .
replace _kbli_broad = 1 if inlist(_kbli_harmonized, 1, 2)
replace _kbli_broad = 2 if inlist(_kbli_harmonized, 3, 4, 5)
replace _kbli_broad = 3 if inrange(_kbli_harmonized, 6, 9)

label define kblibroad ///
	1 "Primary sector" ///
	2 "Secondary sector" ///
	3 "Tertiary/services sector", replace

label values _kbli_broad kblibroad
label variable _kbli_broad "Harmonized three-sector industry"


***A13. harmonized occupation tier***

gen _kbji_default = `occ'
replace _kbji_default = . if _employed == 0

gen _kbji_major_raw = .

* KBJI 2000 / ASCO: detailed code
if `y' == 2000 {
	replace _kbji_major_raw = floor(_kbji_default/100) ///
		if !missing(_kbji_default)
}

* Detailed three-digit KJI 1982
else if inrange(`y', 2001, 2006) | inrange(`y', 2013, 2015) {
	replace _kbji_major_raw = cond(_kbji_default < 100, 0, ///
		floor(_kbji_default/100)) ///
		if !missing(_kbji_default)
}

* All remaining variables are already grouped codes
else {
	replace _kbji_major_raw = _kbji_default ///
		if !missing(_kbji_default)
}

* Common detailed occupation groups.
* Six comparable groups retained across waves.
gen int _kbji_group = .

* KBJI 2000 / ASCO
if `y' == 2000 {
	replace _kbji_group =   1 if _kbji_major_raw == 1
	replace _kbji_group =   2 if inlist(_kbji_major_raw, 2, 3)
	replace _kbji_group =   3 if _kbji_major_raw == 4
	replace _kbji_group =   4 if _kbji_major_raw == 5
	replace _kbji_group =   5 if _kbji_major_raw == 6
	replace _kbji_group =   6 if inrange(_kbji_major_raw, 7, 9)
}

* Detailed KJI 1982
else if inrange(`y', 2001, 2006) | inrange(`y', 2013, 2015) {
	replace _kbji_group =   1 if _kbji_major_raw == 2
	replace _kbji_group =   2 if inlist(_kbji_major_raw, 0, 1) ///
		& _kbji_default != 0 & !missing(_kbji_default)
	replace _kbji_group =   3 if _kbji_major_raw == 3
	replace _kbji_group =   4 if inlist(_kbji_major_raw, 4, 5)
	replace _kbji_group =   5 if _kbji_major_raw == 6
	replace _kbji_group =   6 if inrange(_kbji_major_raw, 7, 9)
}

* Special 2007 converted KJI format
else if `y' == 2007 {
	replace _kbji_group =   2 if _kbji_default == 1
	replace _kbji_group =   1 if _kbji_default == 2
	replace _kbji_group =   3 if _kbji_default == 3
	replace _kbji_group =   4 if inlist(_kbji_default, 4, 5)
	replace _kbji_group =   5 if _kbji_default == 6
	replace _kbji_group =   6 if _kbji_default == 789
	* Code 10 remains excluded
}

* One-digit KJI 1982
else if inrange(`y', 2008, 2012) | inrange(`y', 2016, 2024) {
	replace _kbji_group =   2 if _kbji_default == 1
	replace _kbji_group =   1 if _kbji_default == 2
	replace _kbji_group =   3 if _kbji_default == 3
	replace _kbji_group =   4 if inlist(_kbji_default, 4, 5)
	replace _kbji_group =   5 if _kbji_default == 6
	replace _kbji_group =   6 if _kbji_default == 7
	* Codes 0 and 8 remain excluded
}

label define kbjigroup ///
	  1 "Managers" ///
	  2 "Professionals and technicians" ///
	  3 "Clerical and administrative" ///
	  4 "Service and sales" ///
	  5 "Skilled agricultural" ///
	  6 "Production, operators and elementary", replace

label values _kbji_group kbjigroup
label variable _kbji_group "Harmonized comparable occupation group"

* Retain the existing high/middle/low occupation tier
gen byte _kbji_harmonized = .
replace _kbji_harmonized = 1 if inlist(_kbji_group, 1, 2)
replace _kbji_harmonized = 2 if inlist(_kbji_group, 3, 4, 5)
replace _kbji_harmonized = 3 if _kbji_group == 6

label define kbjilevel ///
	1 "High occupation tier" ///
	2 "Middle occupation tier" ///
	3 "Low occupation tier", replace

label values _kbji_harmonized kbjilevel
label variable _kbji_default "Occupation classification as released"
label variable _kbji_harmonized "Harmonized three-tier occupation group"

gen byte _occ_high = ///
    (_kbji_harmonized == 1) if _employed == 1

gen byte _occ_middle = ///
    (_kbji_harmonized == 2) if _employed == 1

gen byte _occ_low = ///
    (_kbji_harmonized == 3) if _employed == 1

gen byte _occ_missing = ///
    missing(_kbji_harmonized) if _employed == 1
	
***A14. family member status (number of members, above five, below five)

clonevar _fam_member = `member'
clonevar _abovefive = `abovefive'

gen _belowfive=.
if _is_child==1 {
	replace _belowfive = `member' - `abovefive'
	}
else {
	replace _belowfive = .
	}

label var _fam_member "number of family members"
label var _abovefive "people above 5 years old"
label var _belowfive "people below 5 years old"

***A15. Work benefits
*
* NOTES: current construction gives "insurance benefit" value if at least one 
* of the insurance provided is satisfied. does this reflect reality?
*

gen _benefit_ins =1 if `ins_health' == 1 | `ins_kk' == 1 | `ins_jk' == 1 | `ins_jht' == 1 ///
					`ins_jp' == 1 & _employed==1 
replace _benefit_ins =. if _employed == 0 & _laborforce == 0

gen _benefit_leave = .

if `y' = 2025 {
		replace _benefit_leave==1 if `ins_ann'==1 | `ins_mat' == 1 | `ins_sick' == 1
}

else if inlist(`y', 2023, 2024) {
		replace _benefit_leave ==1 if `ins_ann' == 1 | `ins_sick' == 1
}
else {
	replace _benefit_leave == 1 if `ins_ann' == 1
}



* ---------------------------------------------------------------------------
* B. Variables construction: non-transformed variables
* ---------------------------------------------------------------------------
*
* raw: _age, _hoursworked, _rowindex, _kode_prov, 
* 	   _kode_kab, _weight, _psu, _strata
*

clonevar _age         = `age'

clonevar _hoursworked = `hoursworked'
replace _hoursworked = . if _employed == 0

clonevar _kode_prov   = `kodeprov'
clonevar _weight      = `wt'

gen byte _inschool = .
if inrange(`y', 2011, 2015) {
	replace _inschool = inlist(`sch', 2, 3) if !missing(`sch')
}
else {
	replace _inschool = (`sch' == 2) if !missing(`sch')
}
label variable _inschool "1 = currently attending school"


if "`urut'" != "" {
    clonevar _rowindex = `urut'
}
else {
    clonevar _rowindex = _source_order
}

* Variables that are absent in some waves
foreach pair in ///
    "kodekab _kode_kab" ///
    "psu _psu" ///
    "strata _strata" ///
    "roster _roster"  {

    gettoken source target : pair
    local rawvar "``source''"

    if "`rawvar'" != "" {
        clonevar `target' = `rawvar'
    }
    else {
        gen double `target' = .
    }
}

	
* ---------------------------------------------------------------------------
* Final cleaning & appending
* ---------------------------------------------------------------------------

keep if inrange(_birthyear, 1940, 2009)

foreach v in _source_order _new_household _hh_within_year ///
             _kbji_major_raw _merge _is_child _hh_head_age _hh_head_younger_child {
    capture drop `v'
}

keep _* 

order _year _rowindex _weight _psu _strata _kode_prov _kode_kab _household_id ///
	_is_rural  _is_female _roster _fam_stat _is_married _hh_n_children ///
	_hh_youngest_child_age _hh_oldest_child_age _age _birthyear _yobcohort ///
	_educohort _inschool _laborforce _employed _unemployed _empltype _formal 	///
	_informal _hoursworked _hourly_earnings _kbli_default _kbli_harmonized ///
	_kbli_broad ///
	_kbji_default _kbji_group _kbji_harmonized 

save "$temp/clean `y'.dta", replace
di as result "`y' is cleaned and reconstructed"
}

use "$temp/clean 2025.dta", clear
foreach y in 2016 2017 2018 2019 2020 2021 2022 2023 2024 {
    append using "$temp/clean `y'.dta"
}
	
label data "SAKERNAS reconstructed dataset for demanding job paper"
save "$output/sakernas_dj_2016_2025.dta", replace
di as result "dataset complete: $output/sakernas_dj_2016_2025.dta"

sum
*------
* done
*------
