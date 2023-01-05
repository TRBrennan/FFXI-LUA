--TP set toggle input: //gs c toggle TP set----1 Standard, 2 Solo, 3 Marches, 4 AccuracyLite, 5 AccuracyMax, 6 DT, 7 DTAccuracy--
--Idle set toggle input: //gs c toggle Idle set----1 Standard, 2 DT--
enmity_spells = S {"Provoke", "Animated Flourish"}
function get_sets()
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind f9 gs c equip TP set")
	send_command("bind f11 gs c equip DT set")
	send_command("bind f12 gs c equip Hybrid set")
	send_command("bind !f9 gs c cycle WeaponSet")
	
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
	
	--Weapon Sets--
	
	sets.Weapons = {}
	sets.Weapons.index = {'Chango','NaeglingShield', 'LoxoticShield', 'ShiningOne','Ukon', 'Farsha', 'Staff', 'FarshaDWTP', 'SwordDWTP'}
	Weapons_ind = 1
	
	sets.Weapons.Chango = {main ="Chango",sub="Utu Grip"}

	sets.Weapons.NaeglingShield = {main = "Naegling", sub ="Blurred Shield +1"}
	
	sets.Weapons.LoxoticShield ={main = "Loxotic Mace +1", sub ="Blurred Shield +1"}
	
	sets.Weapons.ShiningOne =  {main ="Shining One",sub="Utu Grip"}
	
	sets.Weapons.Ukon = {main ="Ukonvasara",sub="Utu Grip"}
	
	sets.Weapons.Farsha ={ main ="Farsha", sub = "Blurred Shield +1"}
	
	sets.Weapons.Staff = {main ="Blurred Staff", sub="Utu Grip"}
	
	sets.Weapons.FarshaDWTP = { main ="Farsha", sub = "Renaud's Axe +2", augments={'TP Bonus +1000',}}
	
	sets.Weapons.SwordDWTP = { main ="Neagling", sub = "Renaud's Axe +2", augments={'TP Bonus +1000',}}
	
	--Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard", "DT"}
	Idle_ind = 1
	Gear_Debug = 0
	Bravura = 0
	Chango = 0
	Sleeping_Mode = 0
	CurrentTP = 0
	TPBonus = 0

	DA_Back = {name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	WSD_Back = {name = "Cichol's Mantle",augments = {"VIT+20", "Accuracy+20 Attack+20", "VIT+10", "Weapon skill damage +10%"}}
	Crit_Back = {name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
	STR_Back = { name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Damage taken-5%',}}
	Acc_head = "Flam. Zucchetto +2"
	TH_Head = {name="Valorous Mask", augments={'Blood Pact Dmg.+3','Potency of "Cure" effect received+7%','"Treasure Hunter"+2','Mag. Acc.+7 "Mag.Atk.Bns."+7',}}
	WSD_Head = "Agoge Mask +3"
	TP_Body ={ name="Valorous Mail", augments={'Accuracy+30','"Dbl.Atk."+4','DEX+7',}}
	--WSD_Legs ="Sakpata's Cuisses"
	WSD_Legs ="Boii Cuisses +3"
	WSD_Hands = "Boii Mufflers +3"
	WSD_Body = "Nyame Mail"

	sets.Idle.Standard = {
		--ammo = "Staunch Tathlum +1",
		ammo ="Aurgelmir Orb +1",
		head = TH_Head,
		neck = "Bathy Choker +1",
		ear1 = "Eabani earring",
		ear2 = "Infused Earring",
		body = "Sakpata's Plate",
		hands = { name="Sakpata's Gauntlets", augments={'Path: A',}},
		ring2 = "Defending ring",
		ring1 = "Shneddick Ring",
		waist = "Carrier's Sash",
		legs = "Sakpata's Cuisses",
		feet = "Sakpata's leggings",
		back = "Moonbeam Cape"
	}

	sets.Idle.DT = {
		ammo = "Staunch Tathlum +1",
		neck = "Loricate Torque +1",
		ear1 = "Eabani earring",
		ear2 = "Hearty Earring",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		ring1 = "Moonlight Ring",
		ring2 = "Defending Ring",
		back = "Moonbeam Cape",
		waist = "Carrier's Sash",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard", "OH", "Chango", "AccuracyLite", "AccuracyFull", "DT", "DTAM", "H2H", "Zulfiqar", "DW", "Hybrid", "HybridSB","UkonAM"}
	--1=Standard, 2=One Handed, 3=Chango Set, 4=AccuracyLite, 5=AccuracyFull, 6=DT, 7=DT After Math, 8=H2H, 9=Zulfiqar, 10=DW, 11=Hybrid, 12 = HybridSB,13 = UkonAM --
	Melee_Default = 1
	TP_ind = 1
	
	sets.TP.Standard ={
		ammo ="Aurgelmir Orb +1",
		head="Hjarrandi Helm",
		 body="Boii Lorica +3",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Pumm. Cuisses +3",
		feet="Pumm. Calligae +3",
		neck={ name="War. Beads +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Schere Earring", augments={'Path: A',}},
		right_ear="Boii Earring +1",
		left_ring="Niqmaddu Ring",
		right_ring="Moonlight Ring",
		back=DA_Back
	}

	-- sets.TP.Standard = {
		-- ammo = "Coiste Bodhar",
		-- head = "Hjarrandi Helm",
		-- body = TP_Body,
		-- --hands = "Sakpata's Gauntlets",
		-- hands = "Sakpata's Gauntlets",
		-- --legs = "Pumm. Cuisses +3",
		-- legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		-- feet = "Pumm. Calligae +3",
		-- neck = "Warrior's bead necklace +2",
		-- --waist = "Ioskeha belt +1",
		-- waist = "Sailfi Belt +1",
		-- left_ear = "Telos Earring",
		-- --right_ear = "Cessance Earring",
		-- right_ear = "Schere Earring",
		-- left_ring = "Niqmaddu Ring",
		-- right_ring = "Petrov Ring",
		-- back = {name = "Cichol's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10'}}
	-- }

	sets.TP.OH = {
		ammo = "Coiste Bodhar",
		head = "Hjarrandi Helm",
		neck = "Warrior's bead necklace +2",
		ear2 = "Schere Earring",
		ear1 = "Telos earring",
		--body={ name="Valorous Mail", augments={'Accuracy+30','"Dbl.Atk."+4','DEX+7',}},
		body = TP_Body,
		hands = "Sakpata's Gauntlets",
		ring1 = "Flamma ring",
		ring2 = "Chirich Ring +1",
		back = DA_Back,
		waist = "Ioskeha belt +1",
		--legs = "Pummeler's cuisses +3",
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet = "Pummeler's calligae +3"
	}

	sets.TP.Chango ={
		--ammo = "Staunch Tathlum +1",
		ammo ="Aurgelmir Orb +1",
		head="Hjarrandi Helm",
		 body="Boii Lorica +3",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Pumm. Cuisses +3",
		feet="Pumm. Calligae +3",
		neck={ name="War. Beads +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Schere Earring", augments={'Path: A',}},
		right_ear="Boii Earring +1",
		left_ring="Niqmaddu Ring",
		right_ring="Moonlight Ring",
		back=DA_Back
	}
		
	-- sets.TP.Chango = {
		-- ammo = "Coiste Bodhar",
		-- head = "Hjarrandi Helm",
		-- --body={ name="Valorous Mail", augments={'Accuracy+30','"Dbl.Atk."+4','DEX+7',}},
		-- body = TP_Body,
		-- --hands = "Sakpata's Gauntlets",
		-- hands = "Sakpata's Gauntlets",
		-- --legs = "Pumm. Cuisses +3",
		-- legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		-- feet = "Pumm. Calligae +3",
		-- neck = "Warrior's bead necklace +2",
		-- --waist = "Ioskeha belt +1",
		-- waist = "Sailfi Belt +1",
		-- left_ear = "Telos Earring",
		-- --right_ear = "Cessance Earring",
		-- right_ear = "Schere Earring",
		-- left_ring = "Niqmaddu Ring",
		-- right_ring = "Petrov Ring",
		-- back = {name = "Cichol's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10'}}
	-- }

	sets.TP.H2H = {
		ammo = "Yetshila +1",
		head = "Hjarrandi Helm",
		neck = "Warrior's bead necklace +2",
		ear2 = "Brutal earring",
		ear1 = "Telos earring",
		body = TP_Body,
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = "Flamma ring",
		back = DA_Back,
		waist = "Ioskeha belt +1",
		--legs = "Pummeler's cuisses +3",
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet = "Pummeler's calligae +3"
	}

	sets.TP.Zulfiqar = {
		ammo = "Coiste Bodhar",
		head = "Hjarrandi Helm",
		neck = "Warrior's bead necklace +2",
		ear2 = "Brutal earring",
		ear1 = "Cessance earring",
		body={ name="Valorous Mail", augments={'Accuracy+30','"Dbl.Atk."+4','DEX+7',}},
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = "Petrov ring",
		back = DA_Back,
		waist = "Ioskeha belt +1",
		--legs = "Pummeler's cuisses +3",
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet = "Pummeler's calligae +3"
	}

	sets.TP.AccuracyLite = {
		ammo = "Coiste Bodhar",
		head = Acc_Head,
		neck = "Warrior's bead necklace +2",
		ear2 = "Schere Earring",
		ear1 = "Telos earring",
		body = TP_Body,
		hands = "Sakpata's Gauntlets",
		ring1 = {name="Moonlight Ring",bag="wardrobe3"},
		ring2 = "Chirich Ring +1",
		back = DA_Back,
		waist = "Ioskeha belt +1",
		--legs = "Pummeler's cuisses +3",
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet = "Pummeler's Calligae +3"
	}

	sets.TP.AccuracyFull = {
		ammo = "Coiste Bodhar",
		head = Acc_Head,
		neck = "Subtlety spectacles",
		ear2 = "Dignitary's earring",
		ear1 = "Telos earring",
		body = TP_Body,
		hands = "Sakpata's Gauntlets",
		ring1 = {name="Moonlight Ring",bag="wardrobe3"},
		ring2 = "Chirich Ring +1",
		back = DA_Back,
		waist = "Sailfi Belt +1",
		--legs = "Pummeler's cuisses +3",
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet = "Pummeler's Calligae +3"
	}

	sets.TP.DT = {
		ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet="Sakpata's Leggings",
		neck={ name="War. Beads +2", augments={'Path: A',}},
		waist="Ioskeha Belt +1",
		left_ear="Telos Earring",
		right_ear="Hearty Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Chirich Ring +1",
		back= DA_Back
	}

	sets.TP.DTAM = {
		ammo = "Staunch Tathlum +1",
		head = "Hjarrandi Helm",
		neck={ name="War. Beads +2", augments={'Path: A',}},
		ear2 = "Schere Earring",
		ear1 = "Telos earring",
		body = TP_Body,
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = "Moonlight Ring",
		back = DA_Back,
		waist = "Ioskeha belt +1",
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		----legs = "Pummeler's cuisses +3",
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet = "Pummeler's Calligae +3"
	}

	sets.TP.DW = {
		ammo ="Aurgelmir Orb +1",
		head={ name="Sakpata's Helm", augments={'Path: A',}},
		body={ name="Sakpata's Plate", augments={'Path: A',}},
		hands={ name="Emi. Gauntlets +1", augments={'Accuracy+25','"Dual Wield"+6','Pet: Accuracy+25',}},
		legs="Pumm. Cuisses +3",
		feet="Pumm. Calligae +3",
		neck={ name="War. Beads +2", augments={'Path: A',}},
		waist="Ioskeha Belt +1",
		left_ear="Suppanomimi",
		right_ear={ name="Schere Earring", augments={'Path: A',}},
		left_ring="Niqmaddu Ring",
		right_ring="Moonlight Ring",
		back= DA_Back
	}
	
	sets.TP.Hybrid = {
		--ammo = "Coiste Bodhar",
		ammo ="Aurgelmir Orb +1",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet="Sakpata's Leggings",
		neck={ name="War. Beads +2", augments={'Path: A',}},
		waist="Ioskeha Belt +1",
		left_ear="Telos Earring",
		right_ear="Schere Earring",
		right_ring="Moonlight Ring",
		--right_ring="Chirich Ring +1",
		left_ring = "Niqmaddu Ring",
		back= DA_Back
	}
	
	sets.TP.HybridSB = {
		--ammo = "Coiste Bodhar",
		ammo ="Aurgelmir Orb +1",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet="Sakpata's Leggings",
		neck={ name="War. Beads +2", augments={'Path: A',}},
		waist="Ioskeha Belt +1",
		left_ear="Telos Earring",
		right_ear="Schere Earring",
		--right_ring="Moonlight Ring",
		right_ring="Chirich Ring +1",
		left_ring = "Niqmaddu Ring",
		back= DA_Back
	}
	
	-- sets.TP.UkonAm ={
	    -- ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		-- head="Sakpata's Helm",
		-- body="Hjarrandi Breast.",
		-- hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		-- legs={ name="Agoge Cuisses +3", augments={'Enhances "Warrior\'s Charge" effect',}},
		-- feet="Pumm. Calligae +3",
		-- neck={ name="War. Beads +2", augments={'Path: A',}},
		-- waist="Ioskeha Belt +1",
		-- left_ear="Brutal Earring",
		-- right_ear={ name="Schere Earring", augments={'Path: A',}},
		-- left_ring="Niqmaddu Ring",
		-- right_ring="Petrov Ring",
		-- back= DA_Back
	-- }
	
	sets.TP.UkonAm ={
	    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head={ name="Sakpata's Helm", augments={'Path: A',}},
		--body={ name="Sakpata's Plate", augments={'Path: A',}},
		body="Hjarrandi Breast.",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs={ name="Agoge Cuisses +3", augments={'Enhances "Warrior\'s Charge" effect',}},
		feet={ name="Sakpata's Leggings", augments={'Path: A',}},
		neck={ name="War. Beads +2", augments={'Path: A',}},
		waist="Ioskeha Belt +1",
		--left_ear="Cessance Earring",
		left_ear="Brutal Earring",
		right_ear={ name="Schere Earring", augments={'Path: A',}},
		left_ring="Niqmaddu Ring",
		right_ring="Moonlight Ring",
		back= DA_Back
	}
	
	sets.TP.Fencer = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Hjarrandi Helm",
		body={ name="Sakpata's Plate", augments={'Path: A',}},
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Pumm. Cuisses +3",
		feet="Pumm. Calligae +3",
		neck={ name="Vim Torque +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Cessance Earring",
		right_ear={ name="Schere Earring", augments={'Path: A',}},
		left_ring="Niqmaddu Ring",
		right_ring="Moonlight Ring",
		back= DA_Back
	}

	--Weaponskill Sets--
	sets.WS = {}

	sets.UpheavalWSD = {
		ammo = "Knobkierrie",
		--head = WSD_Head,
		head = "Nyame Helm",
		neck = "Warrior's bead necklace +2",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Epaminondas's Ring",
		--ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		ring2 = "Sroda ring",
		back = WSD_Back,
		--waist = "Ioskeha Belt +1",
		waist = "Sailfi Belt +1",
		--legs = WSD_Legs,
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		--feet="Sakpata's Leggings",
	}

	sets.UpheavalDA = {
		ammo = "Knobkierrie",
		head = "Sakpata's Helm",
		neck = "Warrior's bead necklace +2",
		ear2 = "Schere Earring",
		ear1 = "Moonshade earring",
		body = WSD_Body,
		hands = "Sakpata's Gauntlets",
		ring1 = "Epaminondas's Ring",
		--ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		ring2 = "Beithir ring",
		back = WSD_Back,
		waist = "Fotia belt",
		--legs = WSD_Legs,
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet = "Pummeler's calligae +3"
	}

	sets.UF = {
		ammo = "Yetshila +1",
		head = "Blistering Sallet +1",
		neck = "Warrior's bead necklace +2",
		ear2 = "Schere Earring",
		ear1 = "Boii Earring +1",
		body = "Hjarrandi Breast.",
		hands = "Nyame Gauntlets",
		--hands = "Flamma Manopolas +2",
		ring1 = "Niqmaddu ring",
		ring2 = "Hetairoi ring",
		back = Crit_Back,
		waist = "Sailfi Belt +1",
		legs = "Boii Cuisses +3",
		feet = "Boii Calligae +3"	}

	sets.RR = {
		ammo = "Yetshila +1",
		head = "Blistering Sallet +1",
		neck = "Fotia gorget",
		ear1 = "Boii Earring +1",
		ear2 = "Schere Earring",
		body = "Hjarrandi Breast.",
		hands = "Flamma manopolas +2",
		ring1 = "Niqmaddu ring",
		ring2 = "Hetairoi ring",
		back = Crit_Back,
		waist = "Sailfi Belt +1",
		--legs = "Sakpata's Cuisses",
		legs = "Boii Cuisses +3",
		feet = "Boii Calligae +3"	}

	sets.Steelcyclone = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Moonshade earring",
		ear2 = "Schere Earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Epaminondas's Ring",
		--ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		ring2 = "Sroda ring",
		back = STR_Back,
		waist = "Fotia belt",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		--feet="Sakpata's Leggings",
	}

	sets.Break = {
		ammo = "Pemphredo Tathlum",
		head = "Sakpata's Helm",
		body="Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet="Sakpata's Leggings",
		neck = "Sanctity Necklace",
		waist = "Eschan Stone",
		left_ear = "Boii Earring +1",
		right_ear = "Crep. Earring",
		left_ring = "Stikini ring +1",
		right_ring = "Flamma Ring",
		back = "Izdubar Mantle"
	}

	sets.KingsJusticeDA = {
		ammo = "Coiste Bodhar",
		head = "Flam. Zucchetto +2",
		neck = "Warrior's bead necklace +2",
		ear1 = "Telos earring",
		ear2 = "Moonshade earring",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = DA_Back,
		waist = "Sailfi Belt +1",
		legs = "Sakpata's Cuisses",
		feet = "Flam. Gambieras +2"
	}

	sets.KingsJusticeWSD = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Warrior's bead necklace +2",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Epaminondas's Ring",
		--ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		ring2 = "Sroda ring",
		back = STR_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		--feet="Sakpata's Leggings",
	}

	sets.FellCleave = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Epaminondas's Ring",
		--ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		ring2 = "Sroda ring",
		back = STR_Back,
		waist = "Fotia belt",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		--feet="Sakpata's Leggings",
	}

	sets.MT = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia Gorget",
		ear1 = "Thrud Earring",
		ear1 = "Telos earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Epaminondas's Ring",
		--ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		ring2 = "Sroda ring",
		back = STR_Back,
		waist = "Fotia Belt",
		legs = WSD_Legs,
		--feet={ name="Nyame Sollerets", augments={'Path: B',}},
		feet="Sakpata's Leggings",
	}

	sets.Savage = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Warrior's bead necklace +2",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Epaminondas's Ring",
		--ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		ring2 = "Sroda ring",
		back = STR_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		--feet="Sakpata's Leggings",
	}

	sets.SavageCrit = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Epaminondas's Ring",
		--ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		ring2 = "Sroda ring",
		back = STR_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet = "Boii Calligae +3"	}

	sets.Sanguine = {
		ammo = "Knobkierrie",
		head = "Pixie hairpin +1",
		neck = "Sanctity Necklace",
		ear1 = "Friomisi earring",
		ear2 = "Crep. earring",
		body = "Nayame Mail",
		hands = "Nayame Gauntlets",
		ring1 = "Epaminondas's Ring",
		ring2 = "Archon ring",
		back = STR_Back,
		waist = "Eschan stone",
		legs = "Nyame Flanchard",
		feet = "Nayame Sollerets",
	}

	sets.Requiescat = {
		ammo = "Coiste Bodhar",
		head = WS_Head,
		neck = "Fotia Gorget",
		ear2 = "Schere Earring",
		ear1 = "Moonshade earring",
		body = "Sakpata's Plate",
		hands = "Valorous mitts",
		ring1 = "Niqmaddu Ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = DA_Back,
		waist = "Fotia belt",
		legs = "Sakpata's Cuisses",
		feet = "Flam. Gambieras +2"
	}

	sets.Vorpal = {
		ammo = "Yetshila +1",
		head = "Flam. Zucchetto +2",
		neck = "Fotia Gorget",
		ear2 = "Schere Earring",
		ear1 = "Boii Earring +1",
		body="Hjarrandi Breast.",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = Crit_Back,
		waist = "Fotia belt",
		Legs = "Boii Cuisses +3",
		feet = "Boii Calligae +3"	}

	sets.Rampage = {
		ammo = "Yetshila +1",
		head = "Flam. Zucchetto +2",
		neck = "Fotia Gorget",
		ear2 = "Schere Earring",
		ear1 = "Boii Earring +1",
		body = "Sakpata's Plate",
		hands = "Flam. Manopolas +2",
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = Crit_Back,
		waist = "Fotia belt",
		Legs = "Boii Cuisses +3",
		feet = "Boii Calligae +3"	}

	sets.Ruinator = {
		ammo = "Coiste Bodhar",
		head = "Flam. Zucchetto +2",
		neck = "Fotia Gorget",
		ear2 = "Brutal earring",
		ear2 = "Moonshade earring",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = DA_Back,
		waist = "Fotia belt",
		--legs = "Sakpata's Cuisses",
		Legs = "Boii Cuisses +3",
		feet = "Flam. Gambieras +2"
	}

	sets.Cloud = {
		ammo = "Knobkierrie",
		head = "Nyame Helm",
		neck = "Sanctity Necklace",
		ear1 = "Friomisi earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands="Nyame Gauntlets",
		ring1 = "Beithir ring",
		ring2 = "Epaminondas's Ring",
		back = STR_Back,
		waist="Orpheus's Sash",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets"
	}

	sets.Mistral = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia Gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Epaminondas's Ring",
		--ring1 = "Niqmaddu ring",
		--ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		ring2 = "Sroda ring",
		back = STR_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		
	}

	sets.MistralCrit = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Epaminondas's Ring",
		ring2 = "Sroda ring",
		back = STR_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet = "Boii Calligae +3"
	}

	sets.Decimation = {
		ammo = "Coiste Bodhar",
		head = "Flam. Zucchetto +2",
		neck = "Fotia gorget",
		ear2 = "Schere Earring",
		ear1 = "Moonshade earring",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = DA_Back,
		waist = "Fotia belt",
		Legs = "Boii Cuisses +3",
		feet = "Boii Calligae +3"
	}

	sets.Resolution = {
		ammo = "Coiste Bodhar",
		head = "Flam. Zucchetto +2",
		neck = "Fotia gorget",
		ear2 = "Moonshade earring",
		ear1 = "Schere Earring",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = DA_Back,
		waist = "Fotia belt",
		--legs = "Sakpata's Cuisses",
		Legs = "Boii Cuisses +3",
		feet = "Flam. Gambieras +2"
	}

	sets.Scourge = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Warrior's bead necklace +2",
		ear1 = "Telos earring",
		ear1 = "Telos earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Flamma ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = STR_Back,
		waist = "Fotia Belt",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		
	}

	sets.Shockwave = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia Gorget",
		ear2 = "Brutal earring",
		ear2 = "Moonshade earring",
		body = TP_Body,
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Sroda ring",
		back = STR_Back,
		waist = "Fotia belt",
		legs = WSD_Legs,
		feet = "Pummeler's Calligae +3"
	}

	sets.Groundstrike = {
		ammo = "Knobkierrie",
		head = WS_Head,
		neck = "Fotia Gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Sroda ring",
		back = STR_Back,
		waist = "Fotia belt",
		legs = WSD_Legs,
		--feet = "Valorous greaves"
		feet="Sakpata's Leggings",
	}

	sets.CrescentMoon = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia Gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = STR_Back,
		waist = "Fotia belt",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.Herculean = {
		ammo = "Knobkierrie",
		head = "Jumalik helm",
		neck = "Baetyl pendant",
		ear1 = "Friomisi earring",
		ear2 = "Crematio earring",
		body = "Nayame Mail",
		hands = "Nayame Gauntlets",
		ring1 = "Shiva ring +1",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = WSD_Back,
		waist = "Eschan stone",
		legs = "Eschite cuisses",
		feet = "Nayame Sollerets",
	}

	sets.Evisceration = {
		ammo = "Yetshila +1",
		head = "Blistering Sallet +1",
		neck = "Fotia Gorget",
		ear2 = "Schere Earring",
		ear1 = "Moonshade earring",
		body="Hjarrandi Breast.",
		hands = "Flamma manopolas +2",
		ring1 = "Niqmaddu ring",
		ring2 = "Begrudging ring",
		back = Crit_Back,
		waist = "Fotia belt",
		legs = "Sakpata's Cuisses",
		feet = "Pummeler's calligae +3"
	}

	sets.Truestrike = {
		ammo = "Yetshila +1",
		head = "Flam. Zucchetto +2",
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = STR_Back,
		waist = "Fotia belt",
		legs = WSD_Legs,
		feet = "Boii Calligae +3"	}

	sets.Judgment = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Warrior's bead necklace +2",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring2 = "Sroda ring",
		ring1 = "Epaminondas's Ring",
		back = STR_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		--feet="Sakpata's Leggings",
	}

	sets.BH = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = "Nyame Mail",
		hands = WSD_Hands,
		ring2 = "Sroda ring",
		ring1 = "Niqmaddu ring",
		back = STR_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		--feet="Sakpata's Leggings",
	}

	sets.Hexa = {
		ammo = "Yetshila +1",
		head = "Blistering Sallet +1",
		neck = "Fotia Gorget",
		ear2 = "Brutal earring",
		ear2 = "Moonshade earring",
		body = "Sakpata's Plate",
		hands = "Flamma manopolas +2",
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = Crit_Back,
		waist = "Fotia belt",
		--legs = "Pummeler's cuisses +3",
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet = "Pummeler's calligae +3"
	}

	sets.Penta = {
		ammo = "Coiste Bodhar",
		head = "Flam. Zucchetto +2",
		neck = "Fotia gorget",
		ear1 = "Moonshade earring",
		ear2 = "Cessance earring",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = DA_Back,
		waist = "Sailfi Belt +1",
		--legs = "Sakpata's Cuisses",
		Legs = "Boii Cuisses +3",
		feet = "Pummeler's calligae +3"
	}

	sets.StarDiver = {
		ammo = "Coiste Bodhar",
		head = "Flam. Zucchetto +2",
		neck = "Fotia gorget",
		ear1 = "Moonshade earring",
		ear2 = "Cessance earring",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = DA_Back,
		waist = "Fotia belt",
		--legs = "Sakpata's Cuisses",
		Legs = "Boii Cuisses +3",
		feet = "Pummeler's calligae +3"
	}

	sets.Sonic = {
		ammo = "Knobkierrie",
		head = "Flam. Zucchetto +2",
		neck = "Fotia gorget",
		ear1 = "Moonshade earring",
		ear2 = "Cessance earring",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = STR_Back,
		waist = "Fotia belt",
		--legs = "Sakpata's Cuisses",
		Legs = "Boii Cuisses +3",
		feet = "Pummeler's calligae +3"
	}

	sets.Wheeling = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Moonshade earring",
		ear2 = "Thrud Earring",
		body = WSD_Body,
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = STR_Back,
		waist = "Fotia belt",
		legs = WSD_Legs,
		--feet={ name="Nyame Sollerets", augments={'Path: B',}},
		feet="Sakpata's Leggings",
	}

	sets.CR = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia Gorget",
		ear1 = "Thrud Earring",
		ear1 = "Telos earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = STR_Back,
		waist = "Fotia Belt",
		legs = WSD_Legs,
		--feet={ name="Nyame Sollerets", augments={'Path: B',}},
		feet="Sakpata's Leggings",
	}

	sets.Retribution = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = STR_Back,
		waist = "Fotia belt",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.FullSwing = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = STR_Back,
		waist = "Fotia belt",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.TK = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = STR_Back,
		waist = "Fotia belt",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.DK = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = WSD_Back,
		waist = "Caudata belt",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.RF = {
		ammo = "Coiste Bodhar",
		head = "Flam. Zucchetto +2",
		neck = "Rep. Plat. Medal",
		ear1 = "Moonshade earring",
		ear2 = "Cessance earring",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = {name="Moonlight Ring",bag="wardrobe3"},
		back = DA_Back,
		waist = "Sailfi Belt +1",
		legs = "Sakpata's Cuisses",
		feet = "Pummeler's calligae +3"
	}

	sets.ID = {
		ammo = "Yetshila +1",
		head = {name = "Agoge Mask +3", augments = {'Enhances "Savagery" effect'}},
		body= "Hjarrandi Breast.",
		hands = "Flam. Manopolas +2",
		--legs = WSD_Legs,
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Boii Calligae +3",
		neck = "War. Beads +2",
		waist = "Sailfi Belt +1",
		ear2= "Schere Earring",
		ear1 = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +250"}},
		left_ring = "Niqmaddu Ring",
		right_ring="Epaminondas's Ring",
		back = {name = "Cichol's Mantle",augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}}
	}

	sets.ResoWSD = {
		ammo = "Knobkierrie",
		head = {name = "Agoge Mask +3", augments = {'Enhances "Savagery" effect'}},
		body = "Pumm. Lorica +3",
		hands = "Sakpata's Gauntlets",
		--legs = "Pummeler's cuisses +3",
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet = "Sulev. Leggings +2",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +250"}},
		right_ear = "Thrud Earring",
		left_ring = {name="Moonlight Ring",bag="wardrobe3"},
		right_ring = "Niqmaddu Ring",
		back = {name = "Cichol's Mantle",augments = {"VIT+20", "Accuracy+20 Attack+20", "VIT+10", "Weapon skill damage +10%"}}
	}
	
	sets.AE = {    
		ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Thrud Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Epaminondas's Ring",
		right_ring="Regal Ring",
		back=STR_Back,
		}
	
	sets.Cata = {    
		ammo={ name="Seeth. Bomblet +1", augments={'Path: A',}},
		head="Pixie Hairpin +1",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Orpheus's Sash",
		left_ear="Thrud Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Epaminondas's Ring",
		right_ring="Archon Ring",
		back=STR_Back,
		}

	--Job Ability Sets--

	sets.JA = {}

	sets.JA.Berserk = {main = "Conqueror", back = "Cichol's Mantle", feet = "Agoge Calligae +3", body = "Pumm. Lorica +3"}

	sets.JA.Aggressor = {body = "Agoge Lorica +3", head = "Pummeler's mask +2"}

	sets.JA.Warcry = {head = "Agoge Mask +3"}

	sets.JA.MightyStrikes = {hands = "Warrior's Muffler +2"}

	sets.JA.Ret = {feet = "Boii Calligae +2"}

	sets.JA.BloodRage = {body = "Boii lorica +3"}

	sets.JA.Tomahawk = {
		ammo = "Throwing Tomahawk",
		feet = "Agoge Calligae +3",
		Hands = "Volte Bracers",
		waist = "Chaac Belt",
		Legs ="Volte Hose",
		head = {name="Valorous Mask", augments={'Blood Pact Dmg.+3','Potency of "Cure" effect received+7%','"Treasure Hunter"+2','Mag. Acc.+7 "Mag.Atk.Bns."+7',}}
	}
	
	sets.JA.Jumps = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head = "Hjarrandi Helm",
		body= "Hjarrandi Breast.",
		hands="Sakpata Gauntlets",
		legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
		feet="Flam. Gambieras +2",
		neck={ name="Vim Torque +1", augments={'Path: A',}},
		waist="Sailfi Belt +1",
		left_ear="Telos Earring",
		right_ear="Crep. Earring",
		left_ring="Flamma Ring",
		right_ring="Chirich Ring +1",
		back = DA_Back
	}

	sets.Utility = {}
	sets.Utility.Sleeping = {neck = "Opo-Opo Necklace"}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Eshmun's Ring"}
	
	sets.Utility.Phalanx ={
	    ammo="Staunch Tathlum +1",
		head={ name="Valorous Mask", augments={'"Dbl.Atk."+2','"Snapshot"+1','Phalanx +2','Accuracy+13 Attack+13','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
		body={ name="Odyss. Chestplate", augments={'STR+8','Pet: "Mag.Atk.Bns."+2','Phalanx +5','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck="Incanter's Torque",
		waist="Olympus Sash",
		left_ear="Mimir Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		}

	sets.enmity = {
		ammo = "Sapience Orb",
		ear2 = "Trux Earring",
		back = "Weard Mantle",
		waist = "Trance belt",
		ring2 = "Supershear Ring",
		neck="Moonlight Necklace",
		hands = "Souveran Handschuhs +1",
		feet = "Souveran Schuhs +1",
		body = "Pummeler's lorica +3",
		ring1 = "Flamma Ring",
		legs = "Souveran Diechlings +1",
		head = "Souveran Schaller +1"
	}

	--Precast Sets--
	sets.precast = {}
	sets.fastcast = {
		ammo = "Staunch Tathlum +1",
		head = "Cizin helm +1",
		neck = "Loricate torque +1",
		ear1 = "Loquac. Earring",
		ear2 = "Sanare Earring",
		body = "Odyssean chestplate",
		hands = "Leyline Gloves",
		ring1 = "Weatherspoon ring",
		ring2 = "Defending ring",
		back = "Xucau mantle",
		waist = "Flume belt",
		legs = "Eschite cuisses",
		feet = "Odyssean greaves"
	}
	sets.midcast = {
		ammo = "Staunch Tathlum +1",
		head = "Sulevia's mask +1",
		neck = "Loricate torque +1",
		ear1 = "Hearty earring",
		ear2 = "Sanare earring",
		body = "Souveran cuirass +1",
		hands = "Sakpata's Gauntlets",
		ring1 = "Moonbeam ring",
		ring2 = "Defending Ring",
		back = "Agema cape",
		waist = "Ioskeha belt +1",
		legs = "Sulevia's cuisses +2",
		feet = "Amm greaves"
	}

	sets.AF1 = {main = "Bravura", body = "Pummeler's lorica +3", head = "Pummeler's Mask +3"}
	sets.AF2 = {
		main = "Ragnarok",
		sub = "Utu Grip",
		body = "Agoge Lorica +1",
		head = "Agoge mask +3",
		hands = "Agoge mufflers +1",
		feet = "Agoge Calligae +2"
	}
	sets.AF3 = {main = "Chango", ammo = "Thr. Tomahawk", body = "Boii lorica +1"}
end

function precast(spell)
	if spell.action_type == "Magic" then
		equip(sets.fastcast)
		--send_command("@input /echo Fastcast Set")
	end
	if player.equipment.main == "Chango" then
		TPBonus = 500
	else
		TPBonus = 0
	end
	if buffactive["Warcry"] then
		TPBonus = TPBonus + 700
	end

	--if player.equipment.left_ear == 'Moonshade Earring' or player.equipment.right_ear == 'Moonshade Earring' then
	--	TPBonus = TPBonus + 250
	--end

	if spell.type == "WeaponSkill" then
		---Great Axe Weapon Skills---
		if spell.english == "Upheaval" then
			if spell.target.distance <= 5.6 then
				TPBonus = TPBonus + 250
				CurrentTP = player.tp + TPBonus
				--send_command("@input /echo TP Bonus " .. TPBonus .. " CurrentTP " .. CurrentTP)
				if CurrentTP > 1500 then
					equip(sets.UpheavalWSD)
					--send_command("@input /echo Upheaval WSD Set")
				-- if buffactive["Mighty Strikes"] then
					-- equip(sets.UpheavalCrit)
					-- send_command("@input /echo Upheavel Crit Set")
					-- end
				else
					equip(sets.UpheavalDA)
				--equip(sets.UpheavalWSD)
					--send_command("@input /echo Upheaval DA Set")
				-- if buffactive["Mighty Strikes"] then
					-- equip(sets.UpheavalCrit)
					-- send_command("@input /echo Upheavel Crit Set")
					-- end
				end
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		elseif spell.english == "Impulse Drive" then
			if spell.target.distance <= 5.6 then
				TPBonus = TPBonus + 250
				CurrentTP = player.tp + TPBonus
				send_command("@input /echo TP Bonus " .. TPBonus .. " CurrentTP " .. CurrentTP)
				if CurrentTP > 1500 then
					equip(sets.UpheavalWSD)
					--send_command("@input /echo ID Crit Damage WSD Set")
				else
					equip(sets.ID)
					--equip(sets.UpheavalWSD)
					--send_command("@input /echo ID Crit Rate DA Set")
				end
			else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		elseif spell.english == "Ukko's Fury" then
			equip(sets.UF)
			--send_command("@input /echo UF Set")
		elseif spell.english == "Metatron Torment" then
			equip(sets.MT)
			--send_command("@input /echo MT Set")
		elseif spell.english == "Fell Cleave" then
			equip(sets.FellCleave)
			--send_command("@input /echo FC Set")
		elseif spell.english == "King's Justice" then
			--equip(sets.KingsJusticeDA)
			--send_command('@input /echo KJ Set')
			TPBonus = TPBonus + 250
			CurrentTP = player.tp + TPBonus
			--send_command("@input /echo TP Bonus " .. TPBonus .. " CurrentTP " .. CurrentTP)
			if CurrentTP > 1500 then
				equip(sets.KingsJusticeWSD)
				--send_command("@input /echo KJ WSD Set")
			else
				equip(sets.KingsJusticeDA)
				--send_command("@input /echo KJ DA Set")
			end
		elseif spell.english == "Steel Cyclone" then
			equip(sets.Steelcyclone)
			--send_command("@input /echo Steel Cyclone Set")
		elseif spell.english == 'Raging Rush' then
			equip(sets.RR)
			send_command('@input /echo Raging Rush Set')
		elseif
			spell.english == "Full Break" or spell.name == "Armor Break" or spell.name == "Shield Break" or
			spell.name == "Weapon Break" or	spell.name == "Leg Sweep" then
			equip(sets.Break)
			--send_command("@input /echo Break Set")		
	---Great Sword Weapon Skills---
		elseif spell.english == "Resolution" then
			if spell.target.distance <= 5.6 then	
				equip(sets.Resolution)
			--equip(sets.ResoWSD)
				--send_command("@input /echo Resolution Set")
			else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		elseif spell.english == "Scourge" then
			equip(sets.Scourge)
			--send_command("@input /echo Scourge Set")
		elseif spell.english == "Ground Strike" then
			equip(sets.Groundstrike)
			--send_command("@input /echo Ground Strike Set")
		elseif spell.english == "Crescent Moon" then
			equip(sets.CrescentMoon)
			--send_command("@input /echo CM Set")
		elseif spell.english == "Shockwave" then
			equip(sets.Shockwave)
			--send_command("@input /echo Shockwave Set")
		elseif spell.english == "Herculean Slash" then
			---Axe Weapon Skills---
			equip(sets.Herculean)
			--send_command("@input /echo Herculean Set")
		elseif spell.english == "Ruinator" then
			equip(sets.Ruinator)
			--send_command("@input /echo Ruinator Set")
		elseif spell.english == "Mistral Axe" or spell.english == "Calamity" then
			if buffactive["Sneak Attack"] then
				equip(sets.MistralCrit)
				--send_command("@input /echo Mistral Crit Set")
			else
				equip(sets.Mistral)
				--send_command("@input /echo Mistral Set")
			end
		elseif spell.english == "Cloudsplitter" or spell.english == "Red Lotus Blade" or spell.english == "Seraph Blade" or spell.english == "Earth Crusher"  then
			equip(sets.Cloud)
			--send_command("@input /echo Magic WS Set")
		elseif spell.english == "Cataclysm" then
			equip(sets.Cata)
		elseif spell.english == "Decimation" then
			equip(sets.Decimation)
			--send_command("@input /echo Decimation Set")
		elseif spell.english == "Rampage" then
			---Sword Weapon Skills---
			equip(sets.Rampage)
			--equip(sets.ResoWSD)
			--send_command("@input /echo Rampage Set")
		elseif spell.english == "Savage Blade" then
			if spell.target.distance <= 5.6 then
				if buffactive["Sneak Attack"] then
					equip(sets.SavageCrit)
					--send_command("@input /echo Savage Blade Crit Set")
				else
					equip(sets.Savage)
					--send_command("@input /echo Savage Blade Set")
				end
			else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		elseif spell.english == "Requiescat" then
			equip(sets.Requiescat)
				--send_command("@input /echo Requiescat Set")
		elseif spell.english == "Sanguine Blade" then
			equip(sets.Sanguine)
			--send_command("@input /echo Sanguine Blade Set")
		elseif spell.english == "Vorpal Blade" then
			---Club Weapon Skills---
			equip(sets.Vorpal)
			--send_command("@input /echo Vorpal Blade Set")
		elseif spell.english == "Black Halo" then
			equip(sets.BH)
			--send_command("@input /echo BH Set")
		elseif spell.english == "Judgment" then
			if spell.target.distance <= 5.6 then
				equip(sets.Judgment)
				--send_command("@input /echo Judgment Set")
			else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		elseif spell.english == "True Strike" then
			equip(sets.Truestrike)
			--send_command("@input /echo TS Set")
		elseif spell.english == "Hexa Strike" then
			---Pole Arm Weapon Skills---
			equip(sets.Hexa)
			--send_command("@input /echo Hexa Set")
		elseif spell.english == "Penta Thrust" then
			--equip(sets.Penta)
			equip(sets.ResoWSD)
			--send_command("@input /echo Penta Set")
		elseif spell.english == "Stardiver" then
			--equip(sets.StarDiver)
			equip(sets.ResoWSD)
			--send_command("@input /echo StarDiver Set")
		elseif spell.english == "Sonic Thrust" then
			equip(sets.Sonic)
			--send_command("@input /echo Sonic Thrust Set")
		elseif spell.english == "Wheeling Thrust" then
			---Scythe Weapon Skills---
			equip(sets.Wheeling)
			--send_command("@input /echo Wheeling Thrust Set")
		elseif spell.english == "Cross Reaper" then
			---Dagger Weapon Skills---
			equip(sets.CR)
			--send_command("@input /echo CR Set")
		elseif spell.english == "Evisceration" then
			---Staff Weapon Skills---
			equip(sets.Evisceration)
			--send_command("@input /echo Evisceration Set")
		elseif spell.english == "Retribution" then
			equip(sets.Retribution)
			--send_command("@input /echo Retribution Set")
		elseif spell.english == "Full Swing" then
			---H2H Weapon Skills---
			equip(sets.FullSwing)
			--send_command("@input /echo Full Swing Set")
		elseif spell.english == "Raging Fists" then
			equip(sets.RF)
			--send_command("@input /echo RF Set")
		elseif spell.english == "Tornado Kick" then
			equip(sets.TK)
			--send_command("@input /echo TK Set")
		elseif spell.english == "Dragon Kick" then
			equip(sets.DK)
			--send_command("@input /echo DK Set")
		elseif spell.english == "Aeolian Edge" then
			equip(sets.AE)
		end
	end
	--JA Sets--
	if spell.type == "JobAbility" then
		if 	spell.english == "Provoke" or spell.english == "Animated Flourish" or spell.english == "Flash" or spell.english == "stun" then
			equip(sets.enmity)
			--send_command("@input /echo Enmity Set")
		elseif spell.english == "Berserk" then
			equip(set_combine(sets.enmity, sets.JA.Berserk))
		elseif spell.english == "Aggressor" then
			equip(set_combine(sets.enmity, sets.JA.Aggressor))
		elseif spell.english == "Warcry" then
			equip(set_combine(sets.enmity, sets.JA.Warcry))
		elseif spell.english == "Tomahawk" then
			equip(set_combine(sets.enmity, sets.JA.Tomahawk))
		elseif spell.english == "Blood Rage" then
			equip(set_combine(sets.enmity, sets.JA.BloodRage))
		elseif spell.english == "Mighty Strikes" then
			equip(set_combine(sets.enmity, sets.JA.MightyStrikes))
		elseif spell.english == "Jump" or spell.english == "High Jump" or spell.english == "Super Jump" then
			equip(sets.JA.Jumps)
		end
	end
end

function midcast(spell, act)
	if spell.action_type == "Magic" then
		if spell.name == "Utsusemi: Ichi" or spell.name == "Utsusemi: Ni" then
			equip(sets.midcast)
			--send_command("@input /echo Midcast DT Set")
		else
		end
	else
	end
end
function aftercast(spell)
	if player.status == "Engaged" then
		-- if player.equipment.main == "Bravura" and buffactive["Aftermath"] then
			-- TP_ind = 7
			-- equip(sets.TP[sets.TP.index[TP_ind]])
			-- send_command("@input /echo Bravura DT Set")
			-- if buffactive["doom"] or buffactive["curse"] then
				-- equip(sets.Utility.Doomed)
			-- end
			-- if buffactive["terror"] or buffactive["stun"] or buffactive["sleep"] then
				-- equip(sets.TP.DT)
			-- end
		-- elseif buffactive['Aftermath: Lv.3'] and player.equipment.main == "Ukonvasara" then
		if buffactive['Aftermath: Lv.3'] and player.equipment.main == "Ukonvasara" then
			--TP_ind = 12
			equip(sets.TP.UkonAm)
			send_command("@input /echo Ukon AM Set")
			if buffactive["doom"] or buffactive["curse"] then
				equip(sets.Utility.Doomed)
			end
			if buffactive["terror"] or buffactive["stun"] or buffactive["sleep"] then
				equip(sets.TP.DT)
			end
		else
			equip(set_combine(sets.Weapons[sets.Weapons.index[Weapons_ind]],sets.TP[sets.TP.index[TP_ind]]))
			--send_command("@input /echo TP Set")
			if buffactive["doom"] or buffactive["curse"] then
				equip(sets.Utility.Doomed)
			end
			if buffactive["terror"] or buffactive["stun"] or buffactive["sleep"] then
				equip(sets.TP.DT)
			end
		end

	else
		if Gear_Debug == 0 then
			equip(set_combine(sets.Weapons[sets.Weapons.index[Weapons_ind]],equip(sets.Idle.Standard)))
			if Sleeping_Mode == 1 then
				equip({neck = "Opo-opo Necklace"})
			else
				equip(set_combine(sets.Weapons[sets.Weapons.index[Weapons_ind]],equip(sets.Idle.Standard)))
				--send_command("@input /echo Idle Set")
			end
		else
		end
	end
	if spell.interrupted == true then
		equip(sets.TP[sets.TP.index[TP_ind]])
		--send_command("@input /echo WS failed using Set")
	end
end

function status_change(new, old)
	if new == "Engaged" then
		equip(set_combine(sets.Weapons[sets.Weapons.index[Weapons_ind]],sets.TP[sets.TP.index[TP_ind]]))
		if buff == "doom" or buff == "curse" then
			equip(sets.Utility.Doomed)
		end
		if buffactive['Aftermath: Lv.3'] and player.equipment.main == "Ukonvasara" then
			--TP_ind = 12
			equip(sets.TP.UkonAm)
			--send_command("@input /echo Ukon AM Set")
		end						
	else
		equip(set_combine(sets.Weapons[sets.Weapons.index[Weapons_ind]],equip(sets.Idle.Standard)))
		if buff == "doom" or buff == "curse" then
			equip(sets.Utility.Doomed)
		end
	end
end

function self_command(command)
	if command == "equip TP set" then
		if 	player.equipment.main == "Chango" or player.equipment.main == "Montante +1" or
				player.equipment.main == "Raetic Algol +1" or player.equipment.main == "Ukonvasara"
		 then
			TP_ind = 3
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command("@input /echo Chango Set")
		elseif player.equipment.main == "Zulfiqar" then
			TP_ind = 9
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command("@input /echo Zulfiqar Set")
		elseif player.equipment.main == "Exalted Spear" or player.equipment.main == "Exalted Spear +1" then
			TP_ind = 3
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command("@input /echo Spear Set")
		else
			TP_ind = 1
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command("@input /echo TP Set")
		end
	elseif command == "equip Idle set" then
		equip(sets.Idle.Standard)
		--send_command("@input /echo Idle Set")
	elseif command == "equip OH set" then
		TP_ind = 2
		equip(sets.TP[sets.TP.index[TP_ind]])
		--send_command("@input /echo OH Set")
	elseif command == "equip OHAcc set" then
		TP_ind = 3
		equip(sets.TP[sets.TP.index[TP_ind]])
		--send_command("@input /echo OHAcc Set")
	elseif command == "equip H2H set" then
		TP_ind = 8
		equip(sets.TP[sets.TP.index[TP_ind]])
		--send_command("@input /echo H2H Set")
	elseif command == "equip Zulfiqar set" then
		TP_ind = 9
		equip(sets.TP[sets.TP.index[TP_ind]])
		--send_command("@input /echo Zulfiqar Set")
	elseif command == "equip DW set" then
		TP_ind = 10
		equip(sets.TP[sets.TP.index[TP_ind]])
		--send_command("@input /echo DW Set")
	elseif command == "equip DT set" then
		if player.equipment.main == "Bravura" and buffactive["Aftermath"] then
			TP_ind = 7
			equip(sets.TP[sets.TP.index[TP_ind]])
			--send_command("@input /echo Bravura DT Set")
		else
			TP_ind = 6
			equip(sets.TP[sets.TP.index[TP_ind]])
			--send_command("@input /echo DT Set")
		end
	elseif command == "equip DTAM set" then
		TP_ind = 7
		equip(sets.TP[sets.TP.index[TP_ind]])
		--send_command("@input /echo DTAM Set")
	elseif command == "equip Acc_Lite set" then
		TP_ind = 4
		equip(sets.TP[sets.TP.index[TP_ind]])
		--send_command("@input /echo Acc_lite Set")
	elseif command == "equip Acc_Full set" then
		TP_ind = 5
		equip(sets.TP[sets.TP.index[TP_ind]])
		--send_command("@input /echo Acc_Full Set")
	elseif command == "equip Hybrid set" then
		TP_ind = 11
		equip(sets.TP.Hybrid)
		send_command("@input /echo Hybrid Set")
	elseif command == "equip HybridSB set" then
		TP_ind = 12
		equip(sets.TP.HybridSB)
		send_command("@input /echo Hybrid SB Set")
	elseif command == "change debug mode" then
		if Gear_Debug == 1 then
			Gear_Debug = 0
			--send_command("@input /echo Debug Mode Set to 0")
		else
			Gear_Debug = 1
			--send_command("@input /echo Debug Mode Set to 1")
		end
	elseif command == "set weapon set" then
		if player.equipment.main =="Chango" then
			Weapons_ind = 1
		elseif player.equipment.main == "Naegling" then
			Weapons_ind = 2
		elseif player.equipment.main == "Loxotic Mace +1" then
			Weapons_ind = 3
		elseif player.equipment.main == "Shining One" then
			Weaons_ind = 4
		elseif player.equipment.main == "Ukonvasara" then
			Weapons_ind = 5
		end
	elseif command == "cycle WeaponSet" then
		Weapons_ind = Weapons_ind + 1
		if Weapons_ind > #sets.Weapons.index then
			Weapons_ind = 1
		end
		send_command("@input /echo <----- Weapon Set changed to " .. sets.Weapons.index[Weapons_ind] .. " ----->")
		equip(sets.Weapons[sets.Weapons.index[Weapons_ind]])
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
				equip(set_combine(sets.Weapons[sets.Weapons.index[Weapons_ind]],sets.TP[sets.TP.index[TP_ind]]))
				if buffactive['Aftermath: Lv.3'] and player.equipment.main == "Ukonvasara"  then
					--TP_ind = 12
					equip(sets.TP.UkonAm)
					--send_command("@input /echo Ukon AM Set")
				end				
			elseif player.status == "Idle" then
				equip(set_combine(sets.Weapons[sets.Weapons.index[Weapons_ind]],equip(sets.Idle.Standard)))
			end
		end
	end
	if buff == "doom" or buff == "curse" then
		if gain then
			equip(sets.Utility.Doomed)
		else
			if player.status == "Engaged" then
				equip(set_combine(sets.Weapons[sets.Weapons.index[Weapons_ind]],sets.TP[sets.TP.index[TP_ind]]))
			elseif player.status == "Idle" then
				equip(set_combine(sets.Weapons[sets.Weapons.index[Weapons_ind]],equip(sets.Idle.Standard)))
			end
		end
	end
end

windower.register_event(
	"zone change",
	function()
		equip(sets.Idle.Standard)
	end
)
