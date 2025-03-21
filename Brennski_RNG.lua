function get_sets()
	--binds--
	send_command("bind !f2 gs equip sets.CP; gs disable back; input /echo <----- CP mantle locked ----->") -- Alt F2 locks CP mantle
	send_command("bind ^f2 gs enable back; input /echo <----- CP mantle unlocked ----->") -- Ctrl F2 unlocks CP mantle

	send_command("bind !f10 gs c toggle SJ set;") -- Alt F10 swap subjob for different DW level 0 to 25 to 15
	send_command("bind !f9 gs c toggle Melee Weapon set;") -- Alt F9 swap melee weapon from Melee to Physical range to Magical range
	send_command("bind !f8 gs c toggle Range Weapon set;") -- Alt F8 swap range weapon from Gun to Xbow to Bow
	send_command("bind !f7 gs c toggle DW set;") -- Alt F7 swap DW
	send_command("bind !f6 gs c status check;") -- Alt F6 return sets status
	send_command("bind !f5 gs equip sets.Idle.DT;")

	--SubJob list--
	sets.SJ = {}
	sets.SJ.index = {"Other", "Ninja", "Dancer"}
	SJ_ind = 1

	--Weapon Sets--
	sets.Weapon_melee = {}
	sets.Weapon_melee.index = {"Melee", "Prange", "Mrange"}
	Wm_ind = 1
	sets.Weapon_melee.Melee = {
		main = "Perun +1",
		sub = "Odium"
	}
	sets.Weapon_melee.Prange = {
		main = "Perun +1",
		sub = "Perun"
	}
	sets.Weapon_melee.Mrange = {
		main = "Perun +1",
		sub = "Malevolence"
	}

	sets.Weapon_range = {}
	sets.Weapon_range.index = {"Gun", "XBow", "Bow"}
	Wr_ind = 1
	sets.Weapon_range.Gun = {
		range = "Fomalhaut",
		ammo = "Chrono Bullet"
	}
	sets.Weapon_range.XBow = {
		range = "Wochowsen",
		ammo = " bolt"
	}
	sets.Weapon_range.Bow = {
		range = {name = "Teller", augments = {"Weapon skill damage +2%", "DEX+14", "Rng.Acc.+29", "Rng.Atk.+20", "DMG:+11"}},
		ammo = "eminent arrow"
	}

	sets.DW_mode = {}
	sets.DW_mode.index = {"DW", "notDW"}
	DW_mode_ind = 1

	sets.DW_mode.DW = {}
	sets.DW_mode.notDW = {sub = "Nusku Shield"}

	--Idle Sets--
	sets.Idle = {}
	sets.Idle.index = {"Standard", "DT"}
	Idle_ind = 1
	sets.Idle.Standard = {
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Malignance Boots",
    neck="Sanctity Necklace",
    waist="Carrier's Sash",
    left_ear="Infused Earring",
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back="Moonbeam Cape",
	}
	sets.Idle.DT = {
    head="Malignance Chapeau",
    body="Malignance Tabard",
    hands="Malignance Gloves",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet="Malignance Boots",
    neck="Sanctity Necklace",
    waist="Carrier's Sash",
    left_ear="Infused Earring",
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back="Moonbeam Cape",
	}

	--CP mantle set--
	sets.CP = {
		back = "Mecisto. Mantle"
	}

	--TP Sets--
	sets.TP = {}
	sets.TP.index = {"Standard", "MidAccuracy", "HighAccuracy", "Hybride"}
	TP_ind = 1

	sets.TP.Standard = {}
	sets.TP.Standard.index = {"Other", "Ninja", "Dancer"}
	sets.TP.Standard.Other = {
		head = "Adhemar Bonnet +1",
		neck = "Lissome necklace",
		ear1 = "Sherida Earring",
		ear2 = "Telos Earring",
		body = "Adhemar Jacket +1",
		hands = "Adhemar Wristbands +1",
		ring1 = "Chirich Ring +1",
		ring2 = "Epona's Ring",
		back = "Grounded Mantle",
		waist = "Sailfi Belt +1",
		legs = "Samnuha Tights",
		Feet = "Nyame Sollerets",
	}
	sets.TP.Standard.Ninja = {
		head = "Adhemar Bonnet +1",
		neck = "Lissome necklace",
		ear1 = "Sherida Earring",
		ear2 = "Telos Earring",
		body = "Adhemar Jacket +1",
		hands = "Adhemar Wristbands +1",
		ring1 = "Chirich Ring +1",
		ring2 = "Epona's Ring",
		back = "Grounded Mantle",
		waist = "Sailfi Belt +1",
		legs = "Carmine Cuisses +1",
		Feet = "Nyame Sollerets",
	}
	sets.TP.Standard.Dancer = {
		head = "Adhemar Bonnet +1",
		neck = "Lissome necklace",
		ear1 = "Suppanomimi",
		ear2 = "Telos Earring",
		body = "Adhemar Jacket +1",
		hands = "Adhemar Wristbands +1",
		ring1 = "Chirich Ring +1",
		ring2 = "Epona's Ring",
		back = "Grounded Mantle",
		waist = "Sailfi Belt +1",
		legs = "Carmine Cuisses +1",
		Feet = "Nyame Sollerets",
	}

	sets.TP.MidAccuracy = {}
	sets.TP.MidAccuracy.index = {"Other", "Ninja", "Dancer"}
	sets.TP.MidAccuracy.Other = {
		head = "Adhemar Bonnet +1",
		neck = "Lissome necklace",
		ear1 = "Cessance Earring",
		ear2 = "Telos Earring",
		body = "Adhemar Jacket +1",
		hands = "Adhemar Wristbands +1",
		ring1 = "Chirich Ring +1",
		ring2 = "Epona's Ring",
		back = "Grounded Mantle",
		waist = "Sailfi Belt +1",
		legs = "Samnuha Tights",
		Feet = "Nyame Sollerets",
	}
	sets.TP.MidAccuracy.Ninja = {
		head = "Adhemar Bonnet +1",
		neck = "Lissome necklace",
		ear1 = "Cessance Earring",
		ear2 = "Telos Earring",
		body = "Adhemar Jacket +1",
		hands = "Adhemar Wristbands +1",
		ring1 = "Chirich Ring +1",
		ring2 = "Epona's Ring",
		back = "Grounded Mantle",
		waist = "Sailfi Belt +1",
		legs = "Carmine Cuisses +1",
		Feet = "Nyame Sollerets",
	}
	sets.TP.MidAccuracy.Dancer = {
		head = "Adhemar Bonnet +1",
		neck = "Lissome necklace",
		ear1 = "Suppanomimi",
		ear2 = "Telos Earring",
		body = "Adhemar Jacket +1",
		hands = "Adhemar Wristbands +1",
		ring1 = "Chirich Ring +1",
		ring2 = "Epona's Ring",
		back = "Grounded Mantle",
		waist = "Sailfi Belt +1",
		legs = "Carmine Cuisses +1",
		Feet = "Nyame Sollerets",
	}

	sets.TP.HighAccuracy = {}
	sets.TP.HighAccuracy.index = {"Other", "Ninja", "Dancer"}
	sets.TP.HighAccuracy.Other = {
		head = "Carmine Mask +1",
		neck = "Lissome necklace",
		ear1 = "Cessance Earring",
		ear2 = "Telos Earring",
		body = "Adhemar Jacket +1",
		hands = "Adhemar Wristbands +1",
		ring1 = "Chirich Ring +1",
		ring2 = "Cacoethic Ring",
		back = "Grounded Mantle",
		waist = "Sailfi Belt +1",
		legs = "Samnuha Tights",
		Feet = "Nyame Sollerets",
	}
	sets.TP.HighAccuracy.Ninja = {
		head = "Carmine Mask +1",
		neck = "Lissome necklace",
		ear1 = "Cessance Earring",
		ear2 = "Telos Earring",
		body = "Adhemar Jacket +1",
		hands = "Adhemar Wristbands +1",
		ring1 = "Chirich Ring +1",
		ring2 = "Cacoethic Ring",
		back = "Grounded Mantle",
		waist = "Sailfi Belt +1",
		legs = "Carmine Cuisses +1",
		Feet = "Nyame Sollerets",
	}
	sets.TP.HighAccuracy.Dancer = {
		head = "Carmine Mask +1",
		neck = "Lissome necklace",
		ear1 = "Suppanomimi",
		ear2 = "Telos Earring",
		body = "Adhemar Jacket +1",
		hands = "Adhemar Wristbands +1",
		ring1 = "Chirich Ring +1",
		ring2 = "Cacoethic Ring",
		back = "Grounded Mantle",
		waist = "Sailfi Belt +1",
		legs = "Carmine Cuisses +1",
		Feet = "Nyame Sollerets",
	}

	sets.TP.Hybride = {}
	sets.TP.Hybride.index = {"Other", "Ninja", "Dancer"}
	sets.TP.Hybride.Other = {
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		neck = "Lissome necklace",
		ear1 = "Cessance Earring",
		ear2 = "Telos Earring",
		body = "Adhemar Jacket +1",
		hands = "Kurys Gloves",
		ring1 = "Defending Ring",
		ring2 = "Chirich Ring +1",
		back="Null Shawl",
		waist = "Sailfi Belt +1",
		legs = "Samnuha Tights",
		Feet = "Nyame Sollerets",
	}
	sets.TP.Hybride.Ninja = {
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		neck = "Lissome necklace",
		ear1 = "Cessance Earring",
		ear2 = "Telos Earring",
		body = "Adhemar Jacket +1",
		hands = "Kurys Gloves",
		ring1 = "Defending Ring",
		ring2 = "Chirich Ring +1",
		back="Null Shawl",
		waist = "Sailfi Belt +1",
		legs = "Carmine Cuisses +1",
		Feet = "Nyame Sollerets",
	}
	sets.TP.Hybride.Dancer = {
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		neck = "Lissome necklace",
		ear1 = "Suppanomimi",
		ear2 = "Telos Earring",
		body = "Adhemar Jacket +1",
		hands = "Kurys Gloves",
		ring1 = "Defending Ring",
		ring2 = "Chirich Ring +1",
		back="Null Shawl",
		waist = "Sailfi Belt +1",
		legs = "Carmine Cuisses +1",
		Feet = "Nyame Sollerets",
	}

	sets.Ranged = {}
	sets.Ranged.index = {"Standard", "HighAccuracy"}
	sets.Ranged.Standard = {
		head = "Meghanada Visor +2",
		neck = "Iskur Gorget",
		ear2 = "Telos Earring",
		ear1 = "Volley Earring",
		body = "Nisroch Jerkin",
		hands = {name = "Adhemar Wristbands", augments = {"AGI+10", "Rng.Acc.+15", "Rng.Atk.+15"}},
		ring2= "Dingir Ring",
		ring1 = "Cacoethic Ring",
		waist = "Yemaya Belt",
		back = "Belenus's Cape",
		legs = "Adhemar Kecks",
		feet = "Meg. Jam. +2"
	}
	sets.Ranged.HighAccuracy = {
		head = "Meghanada Visor +2",
		neck = "Iskur Gorget",
		ear2 = "Telos Earring",
		ear1 = "Volley Earring",
		body = "Nisroch Jerkin",
		hands = {name = "Adhemar Wristbands", augments = {"AGI+10", "Rng.Acc.+15", "Rng.Atk.+15"}},
		ring1 = "Dingir Ring",
		ring2 = "Cacoethic Ring",
		waist = "Yemaya Belt",
		back = "Belenus's Cape",
		legs = "Adhemar Kecks",
		feet = "Meg. Jam. +2"
	}

	--Defence Sets--
	set.PDT = {
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		body = "Meg. Cuirie +1",
		hands = "Kurys gloves",
		legs = "Mummu Kecks +2",
		feet = "Ahosi Leggings",
		neck = "Loricate Torque +1",
		waist = "Flume Belt",
		left_ear = "Infused Earring",
		right_ear = "Eabani Earring",
		left_ring = "Chirich Ring +1",
		right_ring = "Defending Ring",
		back="Null Shawl"
	}
	set.MDT = {
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		body = "Meg. Cuirie +1",
		hands = "Kurys gloves",
		legs = "Mummu Kecks +2",
		feet = "Ahosi Leggings",
		neck = "Loricate Torque +1",
		waist = "Flume Belt",
		left_ear = "Infused Earring",
		right_ear = "Eabani Earring",
		left_ring = "Chirich Ring +1",
		right_ring = "Defending Ring",
		back="Null Shawl"
	}

	--Weaponskill Sets--
	sets.WS = {}
	sets.WS.index = {"Attack", "Accuracy"}
	WS_ind = 1

	sets.Ruinator = {}
	sets.Ruinator.Attack = {
		head = {name = "Adhemar Bonnet +1", augments = {"STR+10", "DEX+10", "Attack+15"}},
		body = {
			name = "Herculean Vest",
			augments = {"Pet: STR+1", "STR+9", "Quadruple Attack +2", "Accuracy+19 Attack+19", 'Mag. Acc.+19 "Mag.Atk.Bns."+19'}
		},
		hands = "Nyame Gauntlets",
		legs = {name = "Samnuha Tights", augments = {"STR+10", "DEX+10", '"Dbl.Atk."+3', '"Triple Atk."+3'}},
		feet = {name = "Rawhide Boots", augments = {"DEX+10", "STR+7", "INT+7"}},
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = "Telos Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		left_ring = "Ifrit Ring +1",
		right_ring = "Ifrit Ring +1",
		back = {name = "Belenus's Cape", augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Dbl.Atk."+10'}}
	}
	sets.Ruinator.Accuracy = {
		head = "Meghanada Visor +2",
		body = "Meg. Cuirie +1",
		hands = "Nyame Gauntlets",
		legs = "Meg. Chausses +1",
		feet = "Meg. Jam. +2",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = "Telos Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		left_ring = "Ramuh Ring +1",
		right_ring = "Ramuh Ring +1",
		back = {name = "Belenus's Cape", augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Dbl.Atk."+10'}}
	}

	sets.OtherAxe = {}
	sets.OtherAxe.Attack = {
		head = "Nyame Helm",
		body = "Nyame Mail",
		hands = "Meg. Gloves +1",
		Legs = "Nyame Flancard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck = "Rep. Plat. Medal",
		waist = "Chiner's Belt +1",
		left_ear = "Telos Earring",
		right_ear = "Jupiter's Pearl",
		left_ring = "Ifrit Ring +1",
		right_ring = "Ifrit Ring +1",
		back = {name = "Belenus's Cape", augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Dbl.Atk."+10'}}
	}
	sets.OtherAxe.Accuracy = {
		head = "Nyame Helm",
		body = {name = "Adhemar Jacket +1", augments = {"DEX+10", "AGI+10", "Accuracy+15"}},
		hands = "Nyame Gauntlets",
		hands="Nyame Gauntlets",
		feet = "Meg. Jam. +2",
		neck = "Shifting Neck. +1",
		waist = "Chiner's Belt +1",
		left_ear = "Telos Earring",
		right_ear = "Digni. Earring",
		left_ring = "Ramuh Ring +1",
		right_ring = "Ramuh Ring +1",
		back = {name = "Belenus's Cape", augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Dbl.Atk."+10'}}
	}

	sets.Rampage = {}
	sets.Rampage.Attack = {
		head = {name = "Adhemar Bonnet +1", augments = {"STR+10", "DEX+10", "Attack+15"}},
		body = "Meg. Cuirie +1",
		hands = "Mummu Wrists +1",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +1",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = "Telos Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		left_ring = "Ifrit Ring +1",
		right_ring = "Ifrit Ring +1",
		back = {name = "Belenus's Cape", augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Dbl.Atk."+10'}}
	}
	sets.Rampage.Accuracy = {
		head = "Mummu Bonnet +1",
		body = "Meg. Cuirie +1",
		hands = "Mummu Wrists +1",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +1",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = "Telos Earring",
		right_ear = "Digni. Earring",
		left_ring = "Ramuh Ring +1",
		right_ring = "Ramuh Ring +1",
		back = {name = "Belenus's Cape", augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Dbl.Atk."+10'}}
	}

	sets.Evisceration = {}
	sets.Evisceration.Attack = {
		head = {name = "Adhemar Bonnet +1", augments = {"STR+10", "DEX+10", "Attack+15"}},
		body = "Meg. Cuirie +1",
		hands = "Mummu Wrists +1",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +1",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = "Jupiter's Pearl",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		left_ring = "Ramuh Ring +1",
		right_ring = "Begrudging Ring",
		back = {name = "Belenus's Cape", augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Dbl.Atk."+10'}}
	}
	sets.Evisceration.Accuracy = {
		head = {name = "Carmine Mask +1", augments = {"Accuracy+20", "Mag. Acc.+12", '"Fast Cast"+4'}},
		body = "Mummu Jacket +1",
		hands = "Mummu Wrists +1",
		legs = {name = "Carmine Cuisses +1", augments = {"Accuracy+20", "Attack+12", '"Dual Wield"+6'}},
		feet = "Mummu Gamash. +1",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = "Jupiter's Pearl",
		right_ear = "Digni. Earring",
		left_ring = "Ramuh Ring +1",
		right_ring = "Begrudging Ring",
		back = {name = "Belenus's Cape", augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Dbl.Atk."+10'}}
	}

	sets.MagicGun = {}
	sets.MagicGun.Attack = {
		ammo = "Orichalc. Bullet",
		head = "Nyame Helm",
		neck = "Sanctity Necklace",
		ear2 = "Friomisi earring",
		ear1 = "Moonshade Earring",
		body = "Nyame Mail",
		hands="Nyame Gauntlets",
		ring1 = "Acumen Ring",
		ring2 = "Dingir Ring",
		waist = "Eschan Stone",
		back = "Belenus's Cape",
		Legs = "Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}
	sets.MagicGun.Accuracy = {
		ammo = "Orichalc. Bullet",
		head = "Nyame Helm",
		neck = "Sanctity Necklace",
		ear2 = "Friomisi earring",
		ear1 = "Moonshade Earring",
		body = "Nyame Mail",
		hands="Nyame Gauntlets",
		ring1 = "Acumen Ring",
		ring2 = "Dingir Ring",
		waist = "Eschan Stone",
		back = "Belenus's Cape",
		Legs = "Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.OtherWS = {}
	sets.OtherWS.Attack = {
		Head = "Nyame Helm",
		neck = "Fotia gorget",
		ear1 = "Sherida Earring",
		ear2 = "Moonshade Earring",
		body = "Adhemar Jacket +1",
		hands = "Nyame Gauntlets",
		ring1 = "Dingir Ring",
		ring2 = "Regal Ring",
		back = "Belenus's Cape",
		waist = "Fotia Belt",
		legs = {name = "Adhemar Kecks", augments = {"AGI+10", "Rng.Acc.+15", "Rng.Atk.+15"}},
		feet = "Meg. Jam. +2"
	}
	sets.OtherWS.Accuracy = {
		Head = "Nyame Helm",
		neck = "Fotia gorget",
		ear1 = "Sherida Earring",
		ear2 = "Moonshade Earring",
		body = "Adhemar Jacket +1",
		hands = "Nyame Gauntlets",
		ring1 = "Dingir Ring",
		ring2 = "Regal Ring",
		back = "Belenus's Cape",
		waist = "Fotia Belt",
		legs = {name = "Adhemar Kecks", augments = {"AGI+10", "Rng.Acc.+15", "Rng.Atk.+15"}},
		feet = "Meg. Jam. +2"
	}

	sets.RangedWS = {}
	sets.RangedWS.Attack = {
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Iskur Gorget",
    waist="Yemaya Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Telos Earring",
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
	}
	
	sets.RangedWS.Accuracy = {
    head={ name="Nyame Helm", augments={'Path: B',}},
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    legs={ name="Nyame Flanchard", augments={'Path: B',}},
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Iskur Gorget",
    waist="Yemaya Belt",
    left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
    right_ear="Telos Earring",
    left_ring="Dingir Ring",
    right_ring="Regal Ring",
    back={ name="Belenus's Cape", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
	}

	sets.RangedWScrit = {}
	sets.RangedWScrit.Attack = {
		head = {name = "Adhemar Bonnet +1", augments = {"STR+10", "DEX+10", "Attack+15"}},
		body = "Meg. Cuirie +1",
		hands = "Mummu Wrists +1",
		legs = "Darraigner's Brais",
		feet = "Mummu Gamash. +1",
		neck = "Combatant's Torque",
		waist = "Yemaya Belt",
		left_ear = "Telos Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		left_ring = "Dingir Ring",
		right_ring = "Begrudging Ring",
		back = {
			name = "Belenus's Cape",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "Weapon skill damage +10%"}
		}
	}
	sets.RangedWScrit.Accuracy = {
		head = "Mummu Bonnet +1",
		body = "Meg. Cuirie +1",
		hands = "Mummu Wrists +1",
		legs = "Mummu Kecks +2",
		feet = "Mummu Gamash. +1",
		neck = "Combatant's Torque",
		waist = "Yemaya Belt",
		left_ear = "Telos Earring",
		right_ear = "Digni. Earring",
		left_ring = "Hajduk Ring",
		right_ring = "Hajduk Ring",
		back = {
			name = "Belenus's Cape",
			augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "Weapon skill damage +10%"}
		}
	}

	sets.AeolianEdge = {}
	sets.AeolianEdge = {
		head = "Nyame Helm",
		neck = "Sanctity Necklace",
		ear2 = "Friomisi earring",
		ear1 = "Moonshade Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		ring1 = "Acumen Ring",
		ring2 = "Dingir Ring",
		waist = "Eschan Stone",
		back = "Belenus's Cape",
		Legs = "Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	--Job Ability Sets--
	sets.JA = {}
	sets.JA.EES = {legs = "Arcadian Braccae +1"}
	sets.JA.Scavange = {feet = "Orion Socks +1"}
	sets.JA.SBind = {hands = "Orion Bracers +1"}
	sets.JA.Camo = {body = "Orion Jerkin +1"}
	sets.JA.SShot = {legs = "Orion Braccae +1"}
	sets.JA.Barrage = {
		ear1 = "Sherida Earring",
		head = "Meghanada Visor +2",
		neck = "Sanctity Necklace",
		ear2 = "Telos Earring",
		body = "Nisroch Jerkin",
		hands = "Orion Bracers +1",
		ring1 = "Apate Ring",
		ring2 = "Cacoethic Ring",
		waist = "Yemaya Belt",
		back = "Belenus's Cape",
		legs = "Pursuer's Pants",
		feet = "Meg. Jam +1"
	}
	sets.JA.VShot = {body = "Amini Caban +1"}
	sets.JA.BShot = {hands = "Amini glovelettes +1"}

	--Other special gear--
	sets.obi = {
		waist = "Hachirin-no-Obi"
	}

	sets.lightnuke = {
		left_ring = "Weatherspoon Ring"
	}

	--Precast Sets--
	sets.snapshot = {
		head = "Amini Gapette", -- 7
		body = "Nisroch Jerkin", -- 7
		hands="Nyame Gauntlets", --8
		back = "Lutian Cape", -- 2
		legs = "Adhemar Kecks",
		waist = "Impulse Belt", -- 2
		feet = "Meg. Jam. +2" -- 8
	}

	--send_command('input /macro book 1;wait .1;input /macro set 1')
end

function precast(spell)
	if spell.english == "Ranged" then
		equip(sets.snapshot)
	elseif spell.type == "WeaponSkill" then
		if player.tp >= 1000 then
			if
				spell.english == "Last Stand" or spell.english == "Coronach" or spell.english == "Wildfire" or
					spell.english == "Trueflight" or
					spell.english == "Detonator" or
					spell.english == "Heavy Shot" or
					spell.english == "Slug Shot" or
					spell.english == "Sniper Shot" or
					spell.english == "Split Shot" or
					spell.english == "Hot Shot" or
					spell.english == "Jishun's Radiance" or
					spell.english == "Refulgent Arrow" or
					spell.english == "Empyreal Arrow" or
					spell.english == "Arching Arrow" or
					spell.english == "Sidewinder" or
					spell.english == "Dulling Arrow" or
					spell.english == "Piercing Arrow" or
					spell.english == "Flaming Arrow"
			 then
				if spell.target.distance <= 21.5 then
					if spell.english == "Trueflight" then
						equip(set_combine(sets.MagicGun[sets.WS.index[WS_ind]], sets.lightnuke))
						if world.day_element == "Light" or world.weather_element == "Light" then
							equip(set_combine(sets.obi, sets.lightnuke))
						end
					elseif spell.english == "Wildfire" or spell.english == "Hot Shot" or spell.english == "Flaming Arrow" then
						equip(sets.MagicGun[sets.WS.index[WS_ind]])
						if world.day_element == "Fire" or world.weather_element == "Fire" then
							equip(sets.obi)
						end
					elseif
						spell.english == "Last Stand" or spell.english == "Detonator" or spell.english == "Slug Shot" or
							spell.english == "Sniper Shot" or
							spell.english == "Split Shot" or
							spell.english == "Coronach"
					 then
						equip(sets.RangedWS[sets.WS.index[WS_ind]])
					elseif spell.english == "Jishun's Radiance" or spell.english == "Heavy Shot" or spell.english == "Arching Arrow" then
						equip(sets.RangedWScrit[sets.WS.index[WS_ind]])
					end
				else
					cancel_spell()
					windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
				end
			elseif spell.target.distance <= 5.5 then
				if spell.english == "Blast Shot" or spell.english == "Blast Arrow" or spell.english == "Numbing Shot" then
					equip(sets.RangedWS[sets.WS.index[WS_ind]])
				elseif spell.english == "Ruinator" then
					equip(sets.Ruinator[sets.WS.index[WS_ind]])
				elseif spell.english == "Rampage" then
					equip(sets.Rampage[sets.WS.index[WS_ind]])
				elseif spell.english == "Aeolian Edge" then
					equip(sets.AeolianEdge)
					if world.day_element == "Wind" or world.weather_element == "Wind" then
						equip(sets.obi)
					end
				elseif spell.english == "Evisceration" then
					equip(sets.Evisceration[sets.WS.index[WS_ind]])
				elseif
					spell.english == "Bora Axe" or spell.english == "Decimation" or spell.english == "Avalanche" or
						spell.english == "Gale Axe" or
						spell.english == "Smash Axe" or
						spell.english == "Raging Axe"
				 then
					equip(sets.OtherAxe[sets.WS.index[WS_ind]])
				elseif spell.type == "WeaponSkill" then
					equip(sets.OtherWS[sets.WS.index[WS_ind]])
				end
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		end
	elseif spell.english == "Scavange" then
		equip(sets.JA.Scavange)
	elseif spell.english == "Eagle Eye Shot" then
		equip(set_combine(sets.Ranged[sets.Ranged.index[WS_ind]], sets.JA.EES))
	elseif spell.english == "Shadowbind" then
		equip(sets.JA.SBind)
	elseif spell.english == "Camouflage" then
		equip(sets.JA.Camo)
	elseif spell.english == "Sharpshot" then
		equip(sets.JA.SShot)
	elseif spell.english == "Bounty Shot" then
		equip(sets.JA.BShot)
	end
end

function midcast(spell, act)
	if spell.english == "Ranged" then
		equip(sets.Ranged[sets.Ranged.index[WS_ind]])
		if buffactive["Velocity Shot"] then
			equip(sets.JA.VShot)
		end
		if buffactive["Barrage"] then
			equip(sets.JA.Barrage)
		end
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	else
		equip(
			set_combine(
				sets.Idle[sets.Idle.index[Idle_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	end
end

function status_change(new, old)
	if new == "Engaged" then
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	else
		equip(
			set_combine(
				sets.Idle[sets.Idle.index[Idle_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	end
end

function self_command(command)
	if command == "toggle TP set" then
		TP_ind = TP_ind + 1
		if TP_ind > #sets.TP.index then
			TP_ind = 1
		end
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ----->")
		if TP_ind > 1 then
			WS_ind = 2
		else
			WS_ind = 1
		end
		send_command("@input /echo <----- WS set changed to " .. sets.WS.index[WS_ind] .. " ----->")
		send_command("@input /echo <----- SJ Set changed to " .. sets.SJ.index[SJ_ind] .. " ----->")
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	elseif command == "toggle SJ set" then
		SJ_ind = SJ_ind + 1
		if SJ_ind > #sets.SJ.index then
			SJ_ind = 1
		end
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ----->")
		send_command("@input /echo <----- WS set changed to " .. sets.WS.index[WS_ind] .. " ----->")
		send_command("@input /echo <----- SJ Set changed to " .. sets.SJ.index[SJ_ind] .. " ----->")
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	elseif command == "toggle Melee Weapon set" then
		Wm_ind = Wm_ind + 1
		if Wm_ind > #sets.Weapon_melee.index then
			Wm_ind = 1
		end
		send_command("@input /echo <----- Melee weapon changed to " .. sets.Weapon_melee.index[Wm_ind] .. " ----->")
		send_command("@input /echo <----- Range weapon changed to " .. sets.Weapon_range.index[Wr_ind] .. " ----->")
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	elseif command == "toggle Range Weapon set" then
		Wr_ind = Wr_ind + 1
		if Wr_ind > #sets.Weapon_range.index then
			Wr_ind = 1
		end
		send_command("@input /echo <----- Melee weapon changed to " .. sets.Weapon_melee.index[Wm_ind] .. " ----->")
		send_command("@input /echo <----- Range weapon changed to " .. sets.Weapon_range.index[Wr_ind] .. " ----->")
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	elseif command == "toggle DW set" then
		DW_mode_ind = DW_mode_ind + 1
		if DW_mode_ind > #sets.DW_mode.index then
			DW_mode_ind = 1
		end
		send_command("@input /echo <----- DW status changed to " .. sets.DW_mode.index[DW_mode_ind] .. " ----->")
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.SJ.index[SJ_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	elseif command == "toggle idle set" then
		Idle_ind = Idle_ind + 1
		if Idle_ind > #sets.Idle.index then
			Idle_ind = 1
		end
		send_command("@input /echo <----- Idle Set changed to " .. sets.Idle.index[Idle_ind] .. " ----->")
		equip(
			set_combine(
				sets.Idle[sets.Idle.index[Idle_ind]],
				sets.Weapon_range[sets.Weapon_range.index[Wr_ind]],
				sets.DW_mode[sets.DW_mode.index[DW_mode_ind]]
			)
		)
	elseif command == "toggle pdt set" then
		equip(set.PDT)
		send_command("@input /echo <----- PDT set Equipped ----->")
	elseif command == "toggle mdt set" then
		equip(set.MDT)
		send_command("@input /echo <----- MDT set Equipped ----->")
	elseif command == "status check" then
		send_command("@input /echo <----- Melee weapon changed to " .. sets.Weapon_melee.index[Wm_ind] .. " ----->")
		send_command("@input /echo <----- Range weapon changed to " .. sets.Weapon_range.index[Wr_ind] .. " ----->")
		send_command("@input /echo <----- SJ Set changed to " .. sets.SJ.index[SJ_ind] .. " ----->")
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ----->")
		send_command("@input /echo <----- WS set changed to " .. sets.WS.index[WS_ind] .. " ----->")
	end
end
