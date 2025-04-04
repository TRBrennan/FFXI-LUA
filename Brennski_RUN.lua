--To toggle gearsets:
--Main command: //gs c toggle x set       where x = set name variable. Variables are as follows: --
--Idle sets: Idle, TP sets: TP--
--Resolution sets: Res, Requiescat sets: Req--

function get_sets()
	send_command("bind f9 gs c toggle TP set")
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind f11 gs c toggle Weapons")
	send_command("bind ^f9 gs c equip TP set")
	send_command("bind ^f10 gs c equip DT set")
	send_command("bind f11 gs c equip TP set")
	send_command("bind f12 gs c equip DT set")
	
	function file_unload()
		send_command("unbind ^f9")
		send_command("unbind ^f10")
		send_command("unbind ^f11")

		send_command("unbind !f9")
		send_command("unbind !f10")
		send_command("unbind !f11")

		send_command("unbind f9")
		send_command("unbind f10")
		send_command("unbind f11")
	end

	--Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard", "DT", "Cleave"}

	Idle_ind = 1

	sets.Idle.Standard = {
		ammo = "Homiliary",
		head="Null Masque",
		neck = "Warder's Charm +1",
		right_ear = "Erilaz Earring +1",
		left_ear = "Infused Earring",
		body = "Runeist Coat +3",
		hands = "Regal Gauntlets",
		left_ring = "Shneddick Ring",
		right_ring = "Defending Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}},
		waist = "Fucho-no-obi",
		legs = "Erilaz Leg Guards +3",
		feet = "Erilaz Greaves +3",
	}

	sets.Idle.DT = {
		ammo = "Staunch Tathlum +1",
		head="Null Masque",
		neck = "Futhark Torque +2",
		left_ear = "Odnowa Earring +1",
		right_ear = "Hearty Earring",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands = "Regal Gauntlets",
		left_ring	=	{name="Moonlight Ring",bag="wardrobe2"},
		right_ring = "Defending Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}},
		waist = "Null Belt",
		legs = "Erilaz Leg Guards +3",
		ffeet = "Erilaz Greaves +3",
	}

	sets.Idle.Cleave = {
		ammo = "Staunch Tathlum +1",
		head="Null Masque",
		neck = "Futhark Torque +2",
		left_ear = "Odnowa Earring +1",
		right_ear = "Erilaz Earring +1",
		body="Adamantite Armor",
		hands = "Regal Gauntlets",
		left_ring = "Shneddick Ring",
		right_ring = "Defending Ring",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}},
		waist = "Null Belt",
		legs = "Erilaz Leg Guards +3",
		feet = "Erilaz Greaves +3",
	}

	--Weapons--

	sets.Weapons = {}

	sets.Weapons.Index = {"EpeolatryMelee","EpeolatryTanking", "Aettir",  "Sword"}
	Weapons_ind = 1

	sets.Weapons.EpeolatryMelee = {main = "Epeolatry", sub = "Utu Grip"}
	
	sets.Weapons.EpeolatryTanking = {main = "Epeolatry", sub = "Refined Grip +1"}
	
	sets.Weapons.Aettir = {
		main ="Aettir",
		sub = "Refined Grip +1"
	}
	sets.Weapons.Sword = {main = "Reikiko"}

	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard", "MevaTank", "Ongo"}
	--1=Standard,2=MevaTtank, 3=Ongo --
	TP_ind = 1
	sets.TP.Standard = {
		ammo = "Yamarang",
		head="Nyame Helm",
		neck = "Futhark Torque +2",
		left_ear = "Telos Earring",
		right_ear = "Sherida earring",
		body = "Ashera Harness",
		hands = "Adhemar Wristbands +1",
		left_ring	=	{name="Moonlight Ring",bag="wardrobe2"},
		right_ring = "Niqmaddu Ring",
		back="Null Shawl",
		waist = "Ioskeha belt +1",
		legs = "Erilaz Leg Guards +3",
		feet = "Turms Leggings +1"
	}

	sets.TP.MevaTank = {
		ammo = "Staunch Tathlum +1",
		--head="Nyame Helm",
		head="Null Masque",
		body = "Runeist Coat +3",
		hands = "Nyame Gauntlets",
		legs = "Erilaz Leg Guards +3",
		--feet = "Turms Leggings +1",
		feet = "Erilaz Greaves +3",
		neck = "Futhark Torque +2",
		waist = "Null Belt",
		left_ear = "Odnowa Earring +1",
		right_ear = "Erilaz Earring +1",
		right_ring = "Defending Ring",
		left_ring	=	{name="Moonlight Ring",bag="wardrobe2"},
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}
	
	sets.TP.Ongo = {
	    ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Ashera Harness",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs = "Erilaz Leg Guards +3",
		feet="Turms Leggings +1",
		neck={ name="Futhark Torque +2", augments={'Path: A',}},
		--waist="Carrier's Sash",
		waist = "Ioskeha belt +1",
		left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		right_ear="Sherida Earring",
		right_ring="Moonlight Ring",
		left_ring="Moonlight Ring",
		back="Null Shawl",
	}

	--Weaponskill Sets--
	sets.WS = {}

	sets.Resolution = {}

	sets.Resolution.index = {"Attack"}
	Resolution_ind = 1

	sets.Resolution.Attack = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head = "Adhemar Bonnet +1",
		body="Ashera Harness",
		hands = "Adhemar Wristbands +1",
		legs = "Samnuha Tights",
		Feet = "Nyame Sollerets",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ear = "Sherida Earring",
		right_ring = "Niqmaddu Ring",
		left_ring = "Regal Ring",
		back="Null Shawl",
	}

	sets.Dimidiation = {}

	sets.Dimidiation.index = {"Attack"}
	Dimidiation_ind = 1

	sets.Dimidiation.Attack = {
		ammo = "Knobkierrie",
		Head = "Nyame Helm",
		Body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		Legs = "Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck = "Rep. Plat. Medal",
		waist = "Sailfi Belt +1",
		left_ear = "Ishvara Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		left_ring = "Epaminondas's Ring",
		right_ring = "Ilabrat Ring",
		back = {name = "Ogma's cape", augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "Weapon skill damage +10%"}}
	}

	sets.Requiescat = {}

	sets.Requiescat.index = {"Attack"}
	Requiescat_ind = 1

	sets.Requiescat.Attack = {
		ammo = "Seeth. Bomblet +1",
		head = "Adhemar Bonnet +1",
		neck = "Fotia gorget",
		right_ear = "Brutal earring",
		left_ear = "Moonshade earring",
		body="Ashera Harness",
		hands = "Adhemar Wristbands +1",
		right_ring = "Niqmaddu Ring",
		left_ring = "Regal ring",
		back="Null Shawl",
		waist = "Fotia belt",
		legs = "Samnuha Tights",
		Feet = "Nyame Sollerets",
	}

	sets.FellCleave = {}

	sets.FellCleave.index = {"Attack"}
	FellCleave_ind = 1

	sets.FellCleave.Attack = {
		ammo = "Seeth. Bomblet +1",
		head = "Adhemar Bonnet +1",
		body="Ashera Harness",
		hands = "Adhemar Wristbands +1",
		legs = "Samnuha Tights",
		Feet = "Nyame Sollerets",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ear = "Telos Earring",
		right_ring = "Niqmaddu Ring",
		left_ring = "Regal ring",
		back="Null Shawl",
	}

	sets.SavageBlade = {}

	sets.SavageBlade.index = {"Attack"}
	SavageBlade_ind = 1

	sets.SavageBlade.Attack = {
		ammo = "Knobkierrie",
		Head = "Nyame Helm",
		neck = "Rep. Plat. Medal",
		right_ear = "Ishvara Earring",
		left_ear = "Moonshade Earring",
		Body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		right_ring = "Niqmaddu Ring",
		left_ring = "Epaminondas's Ring",
		back = {name = "Ogma's cape", augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "Weapon skill damage +10%"}},
		waist = "Sailfi Belt +1",
		Legs = "Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	--Utility Sets--
	sets.Utility = {}

	sets.Utility.Phalanx = {
		ammo = "Staunch Tathlum +1",
		Head ="Fu. Bandeau +3",
		neck = "Incanter's Torque",
		left_ear = "Andoaa Earring",
		right_ear = "Mimir Earring",
		body={ name="Taeon Tabard", augments={'"Conserve MP"+5','Phalanx +3',}},
		hands = "Regal Gauntlets",
		waist = "Olympus Sash",
		left_ring = "Stikini ring +1",
		right_ring = "Defending Ring",
		legs = "Futhark Trousers +3",
		feet = {name = "Herculean Boots",augments = {"Magic burst dmg.+6%",'"Fast Cast"+1',"Phalanx +4","Accuracy+14 Attack+14",'Mag. Acc.+16 "Mag.Atk.Bns."+16'}},
		back = "Evasionist's cape"
	}

	sets.Utility.Regen = {
		ammo = "Staunch Tathlum +1",
		head="Rune. Bandeau +2",
		left_ear = "Augment. earring",
		body = "Futhark Coat +2",
		hands="Runeist Mitons +3",
		legs={ name="Futhark Trousers +3", augments={'Enhances "Inspire" effect',}},
		feet="Erilaz Greaves +3",
		neck="Sacro Gorget",
		waist="Sroda Belt",
		left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		right_ear={ name="Erilaz Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+13','Mag. Acc.+13','Damage taken-4%',}},
		left_ring="Stikini Ring +1",
		right_ring="Defending Ring",
		back="Null Shawl",

	}

	sets.Utility.SIRD = {
		ammo="Staunch Tathlum +1",
		head="Erilaz Galea +3",
		body="Adamantite Armor",
		hands={ name="Rawhide Gloves", augments={'HP+50','Accuracy+15','Evasion+20',}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Moonlight Necklace",
		waist="Audumbla Sash",
		left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		right_ear="Magnetic Earring",
		left_ring="Evanescence Ring",
		right_ring="Defending Ring",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Parrying rate+5%',}},
	}

	sets.Utility.Enmity = {
		ammo = "Staunch Tathlum +1",
		head = "Halitus Helm",
		neck = "Futhark Torque +2",
		right_ear = "Trux Earring",
		left_ear = "Odnowa Earring +1",
		body = "Emet harness +1",
		hands = "Kurys Gloves",
		waist = "Trance belt",
		right_ring = "Defending Ring",
		left_ring	=	{name="Moonlight Ring",bag="wardrobe2"},
		legs = "Erilaz Leg Guards +3",
		feet = "Erilaz Greaves +3",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.Utility.Enhancing = {
		ammo = "Staunch Tathlum +1",
		head = "Erilaz Galea +3",
		neck = "Incanter's Torque",
		right_ear = "Andoaa Earring",
		right_ear = "Mimir Earring",
		--body = "Emet harness +1",
		body="Adamantite Armor",
		hands = "Regal Gauntlets",
		waist = "Olympus Sash",
		left_ring= "Stikini ring +1",
		right_ring = "Stikini Ring +1",
		legs = "Futhark Trousers +3",
		feet = "Erilaz Greaves +3",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.Utility.EnhancingSkill = {
		ammo = "Staunch Tathlum +1",
		head = "Erilaz Galea +3",
		--body = "Emet Harness +1",
		body="Adamantite Armor",
		hands = "Runeist Mitons +3",
		legs = {name = "Carmine Cuisses +1", augments = {"Accuracy+20", "Attack+12", '"Dual Wield"+6'}},
		feet = "Erilaz Greaves +3",
		neck = "Incanter's Torque",
		waist = "Olympus Sash",
		right_ear = "Mimir Earring",
		left_ear = "Andoaa Earring",
		left_ring = "Stikini ring +1",
		right_ring = "Stikini Ring +1",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.Utility.Refresh = {
		ammo = "Staunch Tathlum +1",
		head = "Erilaz Galea +3",
		neck = "Incanter's Torque",
		left_ear = "Andoaa Earring",
		right_ear = "Mimir Earring",
		--body = "Emet harness +1",
		body="Adamantite Armor",
		hands = "Regal Gauntlets",
		waist = "Gishdubar Sash",
		left_ring= "Stikini ring +1",
		right_ring = "Defending Ring",
		legs = "Futhark Trousers +3",
		feet = "Erilaz Greaves +3",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}
	
	sets.Utility.FrightfulRoar = {
		ammo="Pemphredo Tathlum",
		head="Erilaz Galea +3",
		body="Erilaz Surcoat +2",
		hands={ name="Agwu's Gages", augments={'Path: A',}},
		legs="Eri. Leg Guards +3",
		feet="Erilaz Greaves +3",
		neck="Null Loop",
		waist="Null Belt",
		left_ear="Digni. Earring",
		right_ear="Crep. Earring",
		left_ring="Stikini Ring +1",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back="Null Shawl",
	}
	
	sets.Utility.Bluhealing = {
		ammo="Staunch Tathlum +1",
		head="Null Masque",
		body="Adamantite Armor",
		hands={ name="Agwu's Gages", augments={'Path: A',}},
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet="Erilaz Greaves +3",
		neck="Sacro Gorget",
		waist="Sroda Belt",
		left_ear="Roundel Earring",
		right_ear="Meili Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Parrying rate+5%',}},
		}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", left_ring= "Eshmun's Ring"}
	
	sets.Utility.TH ={waist = "Chaac Belt", Legs = "Volte Hose", feet = "Volte Boots", Hands = "Volte Bracers"}

	--Job Ability Sets--
	sets.JA = {}
	sets.JA.VP = {    
		ammo="Staunch Tathlum +1",
		head="Erilaz Galea +3",
		body="Adamantite Armor",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Rune. Trousers +3",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Incanter's Torque",
		waist="Null Belt",
		left_ear="Saxnot Earring",
		right_ear="Divine Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Ogma's Cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10','Parrying rate+5%',}},
	}

	sets.JA.Liement = {body = {name = "Futhark Coat +2", augments = {'Enhances "Elemental Sforzo" effect'}}}

	sets.JA.Embolen = {back = "Evasionist's cape"}

	sets.JA.Lunge = {
	    ammo="Pemphredo Tathlum",
		head={ name="Agwu's Cap", augments={'Path: A',}},
		body={ name="Agwu's Robe", augments={'Path: A',}},
		hands={ name="Agwu's Gages", augments={'Path: A',}},
		legs={ name="Agwu's Slops", augments={'Path: A',}},
		feet="Agwu's Pigaches",
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear="Erilaz Earring +1",
		left_ring="Moonlight Ring",
		right_ring="Defending Ring",
		back="Izdubar Mantle",
	}

	sets.JA.Battuta = {Head ="Fu. Bandeau +3", hands = "Turms Mittens +1"}

	sets.JA.BattutaActive = {hands = "Turms Mittens +1", feet = "Trums Leggings +1"}

	sets.JA.Gambit = {hands = "Runeist Mitons +3", waist = "Chaac Belt", Legs ="Volte Hose"}

	sets.JA.Pflug = {feet = "Runeist Bottes +3"}
	
	sets.JA.Swordplay ={ hands = "Futhark Mitons +1"}

	sets.JA.Rayke = {
		feet = {name = "Futhark Boots +1", augments = {'Enhances "Rayke" effect'}},
		waist = "Chaac Belt",
		Hands = "Volte Bracers",
		Legs ="Volte Hose"
	}

	sets.JA.Steps = {
		ammo = "Staunch Tathlum +1",
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		body = "Ashera Harness",
		hands = "Runeist Mitons +3",
		legs = "Rune. Trousers +3",
		feet = "Ahosi Leggings",
		neck = "Futhark Torque +2",
		waist = "Null Belt",
		left_ear = "Odnowa Earring +1",
		right_ear = "Hearty Earring",
		left_ring = "Defending Ring",
		right_ring = {name="Moonlight Ring",bag="wardrobe3"},
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	--Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		ammo = "Staunch Tathlum +1",
		head = "Carmine Mask +1",
		neck = "Voltsurge Torque",
		right_ear = "Loquac. Earring",
		left_ear = "Etiolation Earring",
		body = "Erilaz Surcoat +2",
		hands = "Nyame Gauntlets",
		waist = "Null Belt",
		left_ring = "Defending Ring",
		right_ring	=	{name="Moonlight Ring",bag="wardrobe3"},
		legs="Agwu's Slops",
		feet = "Carmine Greaves +1",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.precast.FC.Enhancing = {
		ammo = "Sapience Orb",
		head = "Carmine Mask +1",
		neck = "Voltsurge Torque",
		right_ear = "Loquac. Earring",
		left_ear = "Etiolation Earring",
		body = "Erilaz Surcoat +2",
		hands = "Nyame Gauntlets",
		waist = "Null Belt",
		left_ring = "Defending Ring",
		 right_ring	=	{name="Moonlight Ring",bag="wardrobe3"},
		legs = {name = "Futhark Trousers +1", augments = {'Enhances "Inspire" effect'}},
		feet = "Carmine Greaves +1",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}

	sets.precast.FC.Enmity = {
		ammo = "Sapience Orb",
		head = "Carmine Mask +1",
		neck = "Unmoving Collar +1",
		right_ear = "Loquac. Earring",
		left_ear = "Etiolation Earring",
		body = "Erilaz Surcoat +2",
		hands = "Nyame Gauntlets",
		waist = "Null Belt",
		left_ring = "Defending Ring",
		right_ring = {name="Moonlight Ring",bag="wardrobe3"},
		legs="Agwu's Slops",
		feet = "Carmine Greaves +1",
		back = {name = "Ogma's cape", augments = {"HP+60", "Eva.+20 /Mag. Eva.+20", "Mag. Evasion+10", "Enmity+10"}}
	}
end

function precast(spell)
	if spell.action_type =="Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.skill == "Enhancing Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.skill == "Ninjutsu" then
		equip(sets.precast.FC.Standard)
	elseif spell.english == "Vivacious Pulse" then
		equip(sets.JA.VP)
	elseif spell.english == "Lunge" or spell.english == "Swipe" or spell.english == "Herculean Slash" then
		equip(sets.JA.Lunge)
	elseif spell.english == "Vallation" or spell.english == "Valiance" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Vallation))
	elseif spell.english == "Swordplay" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Swordplay))
	elseif	spell.english == "Flash" or spell.skill == "Enfeebling Magic" or spell.english == "Foil" or spell.skill == "Dark Magic" or spell.skill == "Blue Magic" then
		equip(sets.precast.FC.Enmity)
	elseif
		spell.english == "Tellus" or spell.english == "Lux" or spell.english == "Gelus" or spell.english == "Tenebrae" or
			spell.english == "Sulpor" or
			spell.english == "Ignis" or
			spell.english == "Unda" or
			spell.english == "Flabra" or
			spell.english == "Weapon Bash" or
			spell.english == "Last Resort" or
			spell.english == "Souleater"
	 then
		equip(sets.Utility.Enmity)
	elseif spell.english == "Battuta" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Battuta))
	elseif spell.english == "Liement" or spell.english == "Elemental Sforzo" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Liement))
	elseif spell.english == "Pflug" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Pflug))
	elseif spell.english == "Gambit" then
		send_command('timers delete "Gambit"')
		send_command(
			'timers create "Gambit" 96 down;wait 60;input /party Gambit [WEARING OFF IN 30 SEC.];wait 30;input /party Gambit [OFF];timers delete "Gambit"'
		)
		equip(set_combine(sets.Utility.Enmity, sets.JA.Gambit))
	elseif spell.english == "Rayke" then
		send_command('timers delete "Rayke"')
		send_command(
			'timers create "Rayke" 49 down;wait 34;input /party Rayke [WEARING OFF IN 15 SEC.];wait 15;input /party Rayke [OFF];timers delete "Rayke"'
		)
		equip(set_combine(sets.Utility.Enmity, sets.JA.Rayke))
	elseif spell.english == "Resolution" or spell.english == "Shockwave" then
		equip(sets.Resolution[sets.Resolution.index[Resolution_ind]])
	elseif spell.english == "Dimidiation" then
		equip(sets.Dimidiation[sets.Dimidiation.index[Dimidiation_ind]])
	elseif spell.english == "Requiescat" then
		equip(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
	elseif spell.english == "Fell Cleave" then
		equip(sets.FellCleave[sets.FellCleave.index[FellCleave_ind]])
	elseif spell.english == "Savage Blade" or spell.english == "Ground Strike" then
		equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
	elseif spell.type == "WeaponSkill" then
		equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
	elseif spell.english == "Box Step" or spell.english == "Quickstep" or spell.english == "Stutter Step" then
		equip(sets.JA.Steps)
	end
end

function midcast(spell, act)
	if spell.skill == "Enhancing Magic" then
		equip(sets.Utility.Enhancing)
		if buffactive["Embolden"] then
			equip(set_combine(sets.Utility.Enhancing, sets.JA.Embolen))
		end
		if string.find(spell.name, "Bar") or spell.name == "Temper" then
			equip(sets.Utility.EnhancingSkill)
			if buffactive["Embolden"] then
				equip(set_combine(sets.Utility.EnhancingSkill, sets.JA.Embolen))
			end
		end	
		if spell.english == "Stoneskin" then
			equip(sets.Utility.SIRD)
			if buffactive["Stoneskin"] then
				send_command("@wait 0.7; input //cancel Stoneskin; input /echo Refreshing Stoneskin.")
			end
		end
		if spell.english == "Refresh" then
			equip(sets.Utility.Refresh)
		end
		if spell.english == "Phalanx" then
			equip(sets.Utility.Phalanx)
			if buffactive["Embolden"] then
				equip(set_combine(sets.Utility.Phalanx, sets.JA.Embolen))
			end
		end
		if
		spell.english == "Regen" or spell.english == "Regen II" or spell.english == "Regen III" or spell.english == "Regen IV"
		then
			equip(sets.Utility.Regen)
		end
	end
	if spell.english == "Utsusemi: Ichi" then
		equip(sets.Utility.SID)
		if buffactive["Copy Image (3)"] then
			send_command("@wait 0.3; input //cancel Copy Image*")
		end
		if buffactive["Copy Image (2)"] then
			send_command("@wait 0.3; input //cancel Copy Image*")
		end
		if buffactive["Copy Image (1)"] then
			send_command("@wait 0.3; input //cancel Copy Image*")
		end
		if buffactive["Copy Image"] then
			send_command("@wait 0.3; input //cancel Copy Image*")
		end
	end
	if spell.english == "Utsusemi: Ni" then
		equip(sets.Utility.SID)
	end
	if spell.english == "Flash" or spell.english == "Crusade" or spell.english == "Foil" or spell.skill == "Enfeebling Magic" or spell.skill == "Dark Magic" then
		equip(sets.Utility.Enmity)
	end
	if spell.skill == "Blue Magic" then
		equip(sets.Utility.SIRD)
		if spell.english == "Frightful Roar" then
			equip(sets.Utility.FrightfulRoar)
		end
		if spell.english == "Magic Fruit" or spell.english == "Healing Breeze" or spell.english == "Wild Carrot" then
			equip(sets.Utility.Bluhealing )
		end
	end
	if spell.english == 'Ranged' then
			equip(sets.Utility.TH)
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		if buffactive["battuta"] then
			equip(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.JA.BattutaActive))
		end
		if buffactive["doom"] or buffactive["curse"] then
			equip(sets.Utility.Doomed)
		end
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(sets.Utility.Doomed)
		end
	end
end

function status_change(new, old)
	if new == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		if buff == "doom" or buff == "curse" then
			equip(sets.Utility.Doomed)
		end
	elseif new == "Idle" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["terror"] or buffactive["stun"] or (buffactive["sleep"] or buffactive["lullaby"]) then
			equip(sets.TP.DT)
		end
		if buff == "doom" or buff == "curse" then
			equip(sets.Utility.Doomed)
		end
	end
end

function buff_change(buff, gain)
	if (buff == "terror" or buff == "stun" or (buff == "sleep" or buff == "lullaby")) then
		if gain then
			if player.status == "Engaged" then
				equip(sets.TP.DT)
			elseif player.status == "Idle" then
				equip(sets.TP.DT)
			end
		else
			if player.status == "Engaged" then
				equip(sets.TP[sets.TP.index[TP_ind]])
			elseif player.status == "Idle" then
				equip(sets.Idle[sets.Idle.index[Idle_ind]])
			end
		end
	end
	if buff == "doom" or buff == "curse" then
		if gain then
			equip(sets.Utility.Doomed)
		else
			if player.status == "Engaged" then
				equip(sets.TP[sets.TP.index[TP_ind]])
			elseif player.status == "Idle" then
				equip(sets.Idle[sets.Idle.index[Idle_ind]])
			end
		end
	end
end

function self_command(command)
	if command == "toggle TP set" then
		TP_ind = TP_ind + 1
		if TP_ind > #sets.TP.index then
			TP_ind = 1
		end
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ----->")
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "toggle Idle set" then
		Idle_ind = Idle_ind + 1
		if Idle_ind > #sets.Idle.index then
			Idle_ind = 1
		end
		send_command("@input /echo <----- Idle Set changed to " .. sets.Idle.index[Idle_ind] .. " ----->")
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	elseif command == "toggle Weapons" then
		Weapons_ind = Weapons_ind + 1
		if Weapons_ind > #sets.Weapons.Index then
			Weapons_ind = 1
		end
		send_command("@input /echo <----- Weapons Set changed to " .. sets.Weapons.Index[Weapons_ind] .. " ----->")
		equip(sets.Weapons[sets.Weapons.Index[Weapons_ind]])
	elseif command == "toggle Res set" then
		Resolution_ind = Resolution_ind + 1
		if Resolution_ind > #sets.Resolution.index then
			Resolution_ind = 1
		end
		send_command("@input /echo <----- Resolution set changed to " .. sets.Resolution.index[Resolution_ind] .. " ----->")
	elseif command == "toggle Req set" then
		Requiescat_ind = Requiescat_ind + 1
		if Requiescat_ind > #sets.Requiescat.index then
			Requiescat_ind = 1
		end
		send_command("@input /echo <----- Requiescat Set changed to " .. sets.Requiescat.index[Requiescat_ind] .. " ----->")
	elseif command == "equip TP set" then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "equip TP set" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command("@input /echo  <--- Equipped TP Set ----->")
	elseif command =="equip DT set" then
		equip (sets.TP.MevaTank)
		send_command("@input /echo  <--- Equipped DT Set ----->")
	elseif command == "equip Idle set" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end
