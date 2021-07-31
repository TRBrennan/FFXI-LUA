--TP set toggle input: //gs c toggle TP set----1 Standard, 2 Solo, 3 Marches, 4 AccuracyLite, 5 AccuracyMax, 6 DT, 7 DTAccuracy--
--Idle set toggle input: //gs c toggle Idle set----1 Standard, 2 DT--
enmity_spells = S {"Provoke", "Animated Flourish"}
function get_sets()
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind f9 gs c equip TP set")
	send_command("bind f11 gs c equip DT set")
	send_command("bind f12 gs c equip Hybrid set")
	
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

	sets.Idle.index = {"Standard", "DT"}
	Idle_ind = 1
	Gear_Debug = 0
	Bravura = 0
	Chango = 0
	Sleeping_Mode = 0
	CurrentTP = 0
	TPBonus = 0

	DA_Back = {name = "Cichol's Mantle",augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}}
	WSD_Back = {name = "Cichol's Mantle",augments = {"VIT+20", "Accuracy+20 Attack+20", "VIT+10", "Weapon skill damage +10%"}}
	Crit_Back = {name = "Cichol's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10'}}
	STR_Back = {name = "Cichol's Mantle",augments = {"VIT+20", "Accuracy+20 Attack+20", "VIT+10", "Weapon skill damage +10%"}}
	Acc_head = "Flam. Zucchetto +2"
	TH_Head = {name = "Valorous Mask",augments = {"INT+6", '"Dbl.Atk."+1', '"Treasure Hunter"+1', "Accuracy+6 Attack+6", 'Mag. Acc.+16 "Mag.Atk.Bns."+16'}}
	WS_Head = {name = "Valorous Mask", augments = {"Accuracy+25 Attack+25", "Enmity+2", "STR+12", "Accuracy+6"}}
	WSD_Head = "Agoge Mask +3"
	TP_Legs = {name = "Odyssean Cuisses", augments = {"Accuracy+16 Attack+16", '"Store TP"+7', "DEX+2", "Attack+8"}}
	TP_Body ={ name="Valorous Mail", augments={'Accuracy+30','"Dbl.Atk."+4','DEX+7',}}
	WSD_Legs ="Sakpata's Cuisses"
	WSD_Hands = "Sakpata Gauntlets"

	sets.Idle.Standard = {
		ammo = "Staunch Tathlum +1",
		head = TH_Head,
		neck = "Sanctity Necklace",
		ear1 = "Eabani earring",
		ear2 = "Infused Earring",
		body = "Sakpata's Plate",
		hands = { name="Sakpata's Gauntlets", augments={'Path: A',}},
		ring2 = "Defending ring",
		ring1 = "Moonlight Ring",
		waist = "Carrier's Sash",
		legs = "Sakpata's Cuisses",
		feet = "Hermes' Sandals",
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
		legs="Sakpata's Cuisses",
		ring1 = "Moonlight Ring",
		ring2 = "Defending Ring",
		back = "Moonbeam Cape",
		waist = "Carrier's Sash",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard", "OH", "Chango", "AccuracyLite", "AccuracyFull", "DT", "DTAM", "H2H", "Zulfiqar", "DW", "Hybrid"}
	--1=Standard, 2=One Handed, 3=Chango Set, 4=AccuracyLite, 5=AccuracyFull, 6=DT, 7=DT After Math, 8=H2H, 9=Zulfiqar, 10=DW, 11=Hybrid --
	Melee_Default = 1
	TP_ind = 1

	sets.TP.Standard = {
		ammo = "Coiste Bodhar",
		head = "Hjarrandi Helm",
		body = TP_Body,
		--hands = "Sakpata's Gauntlets",
		hands = "Sakpata's Gauntlets",
		--legs = "Pumm. Cuisses +3",
		legs="Sakpata's Cuisses",
		feet = "Pumm. Calligae +3",
		neck = "Warrior's bead necklace +2",
		--waist = "Ioskeha belt +1",
		waist = "Sailfi Belt +1",
		left_ear = "Telos Earring",
		--right_ear = "Cessance Earring",
		right_ear = "Schere Earring",
		left_ring = "Niqmaddu Ring",
		right_ring = "Petrov Ring",
		back = {name = "Cichol's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10'}}
	}

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
		legs="Sakpata's Cuisses",
		feet = "Pummeler's calligae +3"
	}

	sets.TP.Chango = {
		ammo = "Coiste Bodhar",
		head = "Hjarrandi Helm",
		--body={ name="Valorous Mail", augments={'Accuracy+30','"Dbl.Atk."+4','DEX+7',}},
		body = TP_Body,
		--hands = "Sakpata's Gauntlets",
		hands = "Sakpata's Gauntlets",
		--legs = "Pumm. Cuisses +3",
		legs="Sakpata's Cuisses",
		feet = "Pumm. Calligae +3",
		neck = "Warrior's bead necklace +2",
		--waist = "Ioskeha belt +1",
		waist = "Sailfi Belt +1",
		left_ear = "Telos Earring",
		--right_ear = "Cessance Earring",
		right_ear = "Schere Earring",
		left_ring = "Niqmaddu Ring",
		right_ring = "Petrov Ring",
		back = {name = "Cichol's Mantle", augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10'}}
	}

	sets.TP.H2H = {
		ammo = "Yetshila",
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
		legs="Sakpata's Cuisses",
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
		legs="Sakpata's Cuisses",
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
		ring1 = "Regal Ring",
		ring2 = "Chirich Ring +1",
		back = DA_Back,
		waist = "Ioskeha belt +1",
		--legs = "Pummeler's cuisses +3",
		legs="Sakpata's Cuisses",
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
		ring1 = "Regal Ring",
		ring2 = "Chirich Ring +1",
		back = DA_Back,
		waist = "Kentarch belt +1",
		--legs = "Pummeler's cuisses +3",
		legs="Sakpata's Cuisses",
		feet = "Pummeler's Calligae +3"
	}

	sets.TP.DT = {
		ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
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
		legs="Sakpata's Cuisses",
		----legs = "Pummeler's cuisses +3",
		legs="Sakpata's Cuisses",
		feet = "Pummeler's Calligae +3"
	}

	sets.TP.DW = {
		ammo = "Coiste Bodhar",
		head = "Hjarrandi Helm",
		neck = "Warrior's bead necklace +2",
		ear1 = "Suppanomimi",
		ear2 = "Schere Earring",
		body = TP_Body,
		hands = "Emicho Gauntlets +1",
		ring1 = "Niqmaddu ring",
		ring2 = "Petrov ring",
		back = DA_Back,
		--waist = "Reiki Yotai",
		waist = "Sailfi Belt +1",
		--legs = "Pummeler's cuisses +3",
		legs="Sakpata's Cuisses",
		feet = "Pummeler's calligae +3"
	}
	
	sets.TP.Hybrid = {
		ammo = "Coiste Bodhar",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
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

	--Weaponskill Sets--
	sets.WS = {}

	sets.UpheavalWSD = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Warrior's bead necklace +2",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = WSD_Back,
		--waist = "Ioskeha Belt +1",
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.UpheavalDA = {
		ammo = "Knobkierrie",
		head = "Sakpata's Helm",
		neck = "Warrior's bead necklace +2",
		ear2 = "Schere Earring",
		ear1 = "Moonshade earring",
		body = "Pummeler's lorica +3",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = WSD_Back,
		waist = "Fotia belt",
		legs = WSD_Legs,
		feet = "Pummeler's calligae +3"
	}

	sets.UF = {
		ammo = "Yetshila",
		head = "Flam. Zucchetto +2",
		neck = "Warrior's bead necklace +2",
		ear2 = "Schere Earring",
		ear1 = "Moonshade earring",
		body = "Hjarrandi Breast.",
		hands = "Flamma Manopolas +2",
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = Crit_Back,
		waist = "Sailfi Belt +1",
		legs = "Sakpata's Cuisses",
		feet = "Boii Calligae +1"
	}

	sets.RR = {
		ammo = "Yetshila",
		head = "Blistering Sallet +1",
		neck = "Fotia gorget",
		ear1 = "Telos earring",
		ear2 = "Schere Earring",
		body = "Sakpata's Plate",
		hands = "Flamma manopolas +2",
		ring1 = "Niqmaddu ring",
		ring2 = "Begrudging ring",
		back = Crit_Back,
		waist = "Sailfi Belt +1",
		legs = "Sakpata's Cuisses",
		feet = "Pummeler's calligae +3"
	}

	sets.Steelcyclone = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Moonshade earring",
		ear2 = "Schere Earring",
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = STR_Back,
		waist = "Fotia belt",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.Break = {
		ammo = "Pemphredo Tathlum",
		head = "Flam. Zucchetto +2",
		body="Sakpata's Plate",
		hands = "Flam. Manopolas +2",
		legs="Sakpata's Cuisses",
		feet = "Flam. Gambieras +2",
		neck = "Sanctity Necklace",
		waist = "Eschan Stone",
		left_ear = "Digni. Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +250"}},
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
		ring2 = "Regal ring",
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
		body = "Pummeler's lorica +3",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = STR_Back,
		waist = "Sailfi Belt +1",
		legs = "Sakpata's Cuisses",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.FellCleave = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Ifrit ring +1",
		ring2 = "Regal ring",
		back = STR_Back,
		waist = "Fotia belt",
		legs = "Sakpata's Cuisses",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.MT = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia Gorget",
		ear1 = "Thrud Earring",
		ear1 = "Telos earring",
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = STR_Back,
		waist = "Fotia Belt",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.Savage = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Warrior's bead necklace +2",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Regal Ring",
		back = STR_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.SavageCrit = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = STR_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet = "Boii calligae +1"
	}

	sets.Sanguine = {
		ammo = "Knobkierrie",
		head = "Pixie hairpin +1",
		neck = "Sanctity Necklace",
		ear1 = "Friomisi earring",
		ear2 = "Crematio earring",
		body = "Nayame Mail",
		hands = "Nayame Gauntlets",
		ring1 = "Acumen Ring",
		ring2 = "Archon ring",
		back = STR_Back,
		waist = "Eschan stone",
		legs = "Eschite cuisses",
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
		ring2 = "Regal ring",
		back = DA_Back,
		waist = "Fotia belt",
		legs = TP_Legs,
		feet = "Flam. Gambieras +2"
	}

	sets.Vorpal = {
		ammo = "Yetshila",
		head = "Flam. Zucchetto +2",
		neck = "Fotia Gorget",
		ear2 = "Schere Earring",
		ear1 = "Moonshade earring",
		body="Hjarrandi Breast.",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = Crit_Back,
		waist = "Fotia belt",
		legs = "Sakpata's Cuisses",
		feet = "Boii Calligae +1"
	}

	sets.Rampage = {
		ammo = "Yetshila",
		head = "Flam. Zucchetto +2",
		neck = "Fotia Gorget",
		ear2 = "Schere Earring",
		ear1 = "Moonshade earring",
		body = "Sakpata's Plate",
		hands = "Flam. Manopolas +2",
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = Crit_Back,
		waist = "Fotia belt",
		legs = "Sakpata's Cuisses",
		feet = "Boii Calligae +1"
	}

	sets.Ruinator = {
		ammo = "Coiste Bodhar",
		head = "Flam. Zucchetto +2",
		neck = "Fotia Gorget",
		ear2 = "Brutal earring",
		ear2 = "Moonshade earring",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = DA_Back,
		waist = "Fotia belt",
		legs = "Sakpata's Cuisses",
		feet = "Flam. Gambieras +2"
	}

	sets.Cloud = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Sanctity Necklace",
		ear1 = "Friomisi earring",
		ear2 = "Moonshade earring",
		body = "Pummeler's lorica +3",
		hands="Nyame Gauntlets",
		ring1 = "Regal Ring",
		ring2 = "Acumen ring",
		back = STR_Back,
		waist = "Eschan stone",
		legs = WSD_Legs,
		feet = "Nyame Sollerets"
	}

	sets.Mistral = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia Gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Regal Ring",
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
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Ifrit ring +1",
		back = STR_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet = "Boii calligae +1"
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
		ring2 = "Regal ring",
		back = DA_Back,
		waist = "Fotia belt",
		legs = "Sakpata's Cuisses",
		feet = "Flam. Gambieras +2"
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
		ring2 = "Regal ring",
		back = DA_Back,
		waist = "Fotia belt",
		legs = "Sakpata's Cuisses",
		feet = "Flam. Gambieras +2"
	}

	sets.Scourge = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Warrior's bead necklace +2",
		ear1 = "Telos earring",
		ear1 = "Telos earring",
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Flamma ring",
		ring2 = "Regal ring",
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
		ring2 = "Regal ring",
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
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = STR_Back,
		waist = "Fotia belt",
		legs = WSD_Legs,
		feet = "Valorous greaves"
	}

	sets.CrescentMoon = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia Gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
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
		ring2 = "Regal ring",
		back = WSD_Back,
		waist = "Eschan stone",
		legs = "Eschite cuisses",
		feet = "Nayame Sollerets",
	}

	sets.Evisceration = {
		ammo = "Yetshila",
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
		ammo = "Yetshila",
		head = "Flam. Zucchetto +2",
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = "Pummeler's lorica +3",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = "Regal Ring",
		back = STR_Back,
		waist = "Fotia belt",
		legs = WSD_Legs,
		feet = "Boii calligae +1"
	}

	sets.Judgment = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Regal Ring",
		ring2 = "Niqmaddu ring",
		back = STR_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.BH = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = "Odyssean chestplate",
		hands = WSD_Hands,
		ring1 = "Regal Ring",
		ring2 = "Niqmaddu ring",
		back = STR_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.Hexa = {
		ammo = "Yetshila",
		head = "Blistering Sallet +1",
		neck = "Fotia Gorget",
		ear2 = "Brutal earring",
		ear2 = "Moonshade earring",
		body = "Sakpata's Plate",
		hands = "Flamma manopolas +2",
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = Crit_Back,
		waist = "Fotia belt",
		--legs = "Pummeler's cuisses +3",
		legs="Sakpata's Cuisses",
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
		ring2 = "Regal ring",
		back = DA_Back,
		waist = "Sailfi Belt +1",
		legs = "Sakpata's Cuisses",
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
		ring2 = "Regal ring",
		back = DA_Back,
		waist = "Fotia belt",
		legs = "Sakpata's Cuisses",
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
		ring2 = "Regal ring",
		back = STR_Back,
		waist = "Fotia belt",
		legs = "Sakpata's Cuisses",
		feet = "Pummeler's calligae +3"
	}

	sets.Wheeling = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Moonshade earring",
		ear2 = "Thrud Earring",
		body = "Pummeler's lorica +3",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = STR_Back,
		waist = "Fotia belt",
		legs = "Sakpata's Cuisses",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.CR = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia Gorget",
		ear1 = "Thrud Earring",
		ear1 = "Telos earring",
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = STR_Back,
		waist = "Fotia Belt",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.Retribution = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia gorget",
		ear1 = "Thrud Earring",
		ear2 = "Moonshade earring",
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Regal Ring",
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
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Regal Ring",
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
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
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
		body = "Pummeler's lorica +3",
		hands = WSD_Hands,
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = WSD_Back,
		waist = "Caudata belt",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.RF = {
		ammo = "Coiste Bodhar",
		head = "Flam. Zucchetto +2",
		neck = "Caro necklace",
		ear1 = "Moonshade earring",
		ear2 = "Cessance earring",
		body = "Sakpata's Plate",
		hands = "Sakpata's Gauntlets",
		ring1 = "Niqmaddu ring",
		ring2 = "Regal ring",
		back = DA_Back,
		waist = "Sailfi Belt +1",
		legs = "Sakpata's Cuisses",
		feet = "Pummeler's calligae +3"
	}

	sets.ID = {
		ammo = "Yetshila",
		head = "Flam. Zucchetto +2",
		body= "Hjarrandi Breast.",
		hands = "Flam. Manopolas +2",
		legs = "Sakpata's Cuisses",
		feet = "Boii Calligae +1",
		neck = "War. Beads +2",
		waist = "Ioskeha Belt +1",
		ear2= "Schere Earring",
		ear1 = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +250"}},
		left_ring = "Niqmaddu Ring",
		right_ring = "Regal Ring",
		back = {name = "Cichol's Mantle",augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}}
	}

	sets.UpheavalCrit = {
		ammo = "Yetshila",
		head = {name = "Agoge Mask +3", augments = {'Enhances "Savagery" effect'}},
		body = "Pumm. Lorica +3",
		hands = {name = "Valorous Mitts",augments = {"Accuracy+19 Attack+19", "Crit. hit damage +4%", "AGI+1", "Accuracy+14", "Attack+9"}},
		legs = {name = "Valor. Hose", augments = {"Accuracy+17", "Crit. hit damage +3%", "VIT+8", "Attack+9"}},
		feet = "Boii Calligae +1",
		neck = "War. Beads +2",
		waist = "Fotia Belt",
		left_ear = "Thrud Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +250"}},
		left_ring = "Niqmaddu Ring",
		right_ring = "Regal Ring",
		back = { name = "Cichol's Mantle", augments = {"VIT+20", "Accuracy+20 Attack+20", "VIT+10", "Weapon skill damage +10%"}}
	}

	sets.ResoWSD = {
		ammo = "Knobkierrie",
		head = {name = "Agoge Mask +3", augments = {'Enhances "Savagery" effect'}},
		body = "Pumm. Lorica +3",
		hands = "Sakpata's Gauntlets",
		--legs = "Pummeler's cuisses +3",
		legs="Sakpata's Cuisses",
		feet = "Sulev. Leggings +2",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +250"}},
		right_ear = "Thrud Earring",
		left_ring = "Regal Ring",
		right_ring = "Niqmaddu Ring",
		back = {name = "Cichol's Mantle",augments = {"VIT+20", "Accuracy+20 Attack+20", "VIT+10", "Weapon skill damage +10%"}}
	}

	--Job Ability Sets--

	sets.JA = {}

	sets.JA.Berserk = {back = "Cichol's Mantle", feet = "Agoge Calligae +3", body = "Pumm. Lorica +3"}

	sets.JA.Aggressor = {body = "Agoge Lorica +3", head = "Pummeler's mask +2"}

	sets.JA.Warcry = {head = "Agoge Mask +3"}

	sets.JA.MightyStrikes = {hands = "Warrior's Muffler +2"}

	sets.JA.Ret = {feet = "Boii Calligae +1"}

	sets.JA.BloodRage = {body = "Boii lorica"}

	sets.JA.Tomahawk = {
		ammo = "Throwing Tomahawk",
		feet = "Agoge Calligae +2",
		Hands = "Volte Bracers",
		waist = "Chaac Belt",
		Legs ="Volte Hose",
		head = {name = "Valorous Mask",augments = {"INT+6", '"Dbl.Atk."+1', '"Treasure Hunter"+1', "Accuracy+6 Attack+6", 'Mag. Acc.+16 "Mag.Atk.Bns."+16'}}
	}

	sets.Utility = {}
	sets.Utility.Sleeping = {neck = "Opo-Opo Necklace"}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Eshmun's Ring"}

	sets.enmity = {
		ammo = "Sapience Orb",
		ear2 = "Friomisi Earring",
		back = "Weard Mantle",
		waist = "Trance belt",
		ring2 = "Supershear Ring",
		neck = "Unmoving Collar +1",
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
		send_command("@input /echo Fastcast Set")
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
				send_command("@input /echo TP Bonus " .. TPBonus .. " CurrentTP " .. CurrentTP)
				if CurrentTP > 1500 then
					equip(sets.UpheavalWSD)
					send_command("@input /echo Upheaval WSD Set")
				-- if buffactive["Mighty Strikes"] then
					-- equip(sets.UpheavalCrit)
					-- send_command("@input /echo Upheavel Crit Set")
					-- end
				else
					equip(sets.UpheavalDA)
				--equip(sets.UpheavalWSD)
					send_command("@input /echo Upheaval DA Set")
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
					equip(sets.UpheavalCrit)
					send_command("@input /echo ID Crit Damage WSD Set")
				else
					equip(sets.ID)
					--equip(sets.UpheavalWSD)
					send_command("@input /echo ID Crit Rate DA Set")
				end
			else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		elseif spell.english == "Ukko's Fury" then
			equip(sets.UF)
			send_command("@input /echo UF Set")
		elseif spell.english == "Metatron Torment" then
			equip(sets.MT)
			send_command("@input /echo MT Set")
		elseif spell.english == "Fell Cleave" then
			equip(sets.FellCleave)
			send_command("@input /echo FC Set")
		elseif spell.english == "King's Justice" then
			--equip(sets.KingsJusticeDA)
			--send_command('@input /echo KJ Set')
			TPBonus = TPBonus + 250
			CurrentTP = player.tp + TPBonus
			send_command("@input /echo TP Bonus " .. TPBonus .. " CurrentTP " .. CurrentTP)

			if CurrentTP > 1500 then
				equip(sets.KingsJusticeWSD)
				send_command("@input /echo KJ WSD Set")
			else
				equip(sets.KingsJusticeDA)
				send_command("@input /echo KJ DA Set")
			end
		elseif spell.english == "Steel Cyclone" then
			equip(sets.Steelcyclone)
			send_command("@input /echo Steel Cyclone Set")
		elseif
			spell.english == "Full Break" or spell.name == "Armor Break" or spell.name == "Shield Break" or
				spell.name == "Weapon Break" or
				spell.name == "Leg Sweep"
		 then
			--			elseif spell.english == 'Raging Rush' then
			--				equip(sets.RR)
			--				send_command('@input /echo Raging Rush Set')
			---Great Sword Weapon Skills---
			equip(sets.Break)
			send_command("@input /echo Break Set")
		elseif spell.english == "Resolution" then
			if spell.target.distance <= 5.6 then	
				equip(sets.Resolution)
			--equip(sets.ResoWSD)
				send_command("@input /echo Resolution Set")
			else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		elseif spell.english == "Scourge" then
			equip(sets.Scourge)
			send_command("@input /echo Scourge Set")
		elseif spell.english == "Ground Strike" then
			equip(sets.Groundstrike)
			send_command("@input /echo Ground Strike Set")
		elseif spell.english == "Crescent Moon" then
			equip(sets.CrescentMoon)
			send_command("@input /echo CM Set")
		elseif spell.english == "Shockwave" then
			equip(sets.Shockwave)
			send_command("@input /echo Shockwave Set")
		elseif spell.english == "Herculean Slash" then
			---Axe Weapon Skills---
			equip(sets.Herculean)
			send_command("@input /echo Herculean Set")
		elseif spell.english == "Ruinator" then
			equip(sets.Ruinator)
			send_command("@input /echo Ruinator Set")
		elseif spell.english == "Mistral Axe" then
			if buffactive["Sneak Attack"] then
				equip(sets.MistralCrit)
				send_command("@input /echo Mistral Crit Set")
			else
				equip(sets.Mistral)
				send_command("@input /echo Mistral Set")
			end
		elseif spell.english == "Cloudsplitter" or spell.english == "Red Lotus Blade" or spell.english == "Seraph Blade" then
			equip(sets.Cloud)
			send_command("@input /echo Magic WS Set")
		elseif spell.english == "Decimation" then
			equip(sets.Decimation)
			send_command("@input /echo Decimation Set")
		elseif spell.english == "Rampage" then
			---Sword Weapon Skills---
			equip(sets.Rampage)
			--equip(sets.ResoWSD)
			send_command("@input /echo Rampage Set")
		elseif spell.english == "Savage Blade" then
			if spell.target.distance <= 5.6 then
				if buffactive["Sneak Attack"] then
					equip(sets.SavageCrit)
					send_command("@input /echo Savage Blade Crit Set")
				else
					equip(sets.Savage)
					send_command("@input /echo Savage Blade Set")
				end
			else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		elseif spell.english == "Requiescat" then
			equip(sets.Requiescat)
				send_command("@input /echo Requiescat Set")
		elseif spell.english == "Sanguine Blade" then
			equip(sets.Sanguine)
			send_command("@input /echo Sanguine Blade Set")
		elseif spell.english == "Vorpal Blade" then
			---Club Weapon Skills---
			equip(sets.Vorpal)
			send_command("@input /echo Vorpal Blade Set")
		elseif spell.english == "Black Halo" then
			equip(sets.BH)
			send_command("@input /echo BH Set")
		elseif spell.english == "Judgment" then
			if spell.target.distance <= 5.6 then
				equip(sets.Judgment)
				send_command("@input /echo Judgment Set")
			else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		elseif spell.english == "True Strike" then
			equip(sets.Truestrike)
			send_command("@input /echo TS Set")
		elseif spell.english == "Hexa Strike" then
			---Pole Arm Weapon Skills---
			equip(sets.Hexa)
			send_command("@input /echo Hexa Set")
		elseif spell.english == "Penta Thrust" then
			--equip(sets.Penta)
			equip(sets.ResoWSD)
			send_command("@input /echo Penta Set")
		elseif spell.english == "Stardiver" then
			--equip(sets.StarDiver)
			equip(sets.ResoWSD)
			send_command("@input /echo StarDiver Set")
		elseif spell.english == "Sonic Thrust" then
			equip(sets.Sonic)
			send_command("@input /echo Sonic Thrust Set")
		elseif spell.english == "Wheeling Thrust" then
			---Scythe Weapon Skills---
			equip(sets.Wheeling)
			send_command("@input /echo Wheeling Thrust Set")
		elseif spell.english == "Cross Reaper" then
			---Dagger Weapon Skills---
			equip(sets.CR)
			send_command("@input /echo CR Set")
		elseif spell.english == "Evisceration" then
			---Staff Weapon Skills---
			equip(sets.Evisceration)
			send_command("@input /echo Evisceration Set")
		elseif spell.english == "Retribution" then
			equip(sets.Retribution)
			send_command("@input /echo Retribution Set")
		elseif spell.english == "Full Swing" then
			---H2H Weapon Skills---
			equip(sets.FullSwing)
			send_command("@input /echo Full Swing Set")
		elseif spell.english == "Raging Fists" then
			equip(sets.RF)
			send_command("@input /echo RF Set")
		elseif spell.english == "Tornado Kick" then
			equip(sets.TK)
			send_command("@input /echo TK Set")
		elseif spell.english == "Dragon Kick" then
			equip(sets.DK)
			send_command("@input /echo DK Set")
		else
		end
	end
	--JA Sets--
	if spell.type == "JobAbility" then
		if
			spell.english == "Provoke" or spell.english == "Animated Flourish" or spell.english == "Flash" or
				spell.english == "stun"
		 then
			equip(sets.enmity)
			send_command("@input /echo Enmity Set")
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
		end
	end
end

function midcast(spell, act)
	if spell.action_type == "Magic" then
		if spell.name == "Utsusemi: Ichi" or spell.name == "Utsusemi: Ni" then
			equip(sets.midcast)
			send_command("@input /echo Midcast DT Set")
		else
		end
	else
	end
end
function aftercast(spell)
	if player.status == "Engaged" then
		if player.equipment.main == "Bravura" and buffactive["Aftermath"] then
			TP_ind = 7
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command("@input /echo Bravura DT Set")
			if buffactive["doom"] or buffactive["curse"] then
				equip(sets.Utility.Doomed)
			end
			if buffactive["terror"] or buffactive["stun"] or buffactive["sleep"] then
				equip(sets.TP.DT)
			end
		else
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command("@input /echo TP Set")
			if buffactive["doom"] or buffactive["curse"] then
				equip(sets.Utility.Doomed)
			end
			if buffactive["terror"] or buffactive["stun"] or buffactive["sleep"] then
				equip(sets.TP.DT)
			end
		end

	else
		if Gear_Debug == 0 then
			equip(sets.Idle.Standard)
			if Sleeping_Mode == 1 then
				equip({neck = "Opo-opo Necklace"})
			else
				equip(sets.Idle.Standard)
				send_command("@input /echo Idle Set")
			end
		else
		end
	end
	if spell.interrupted == true then
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command("@input /echo WS failed using Set")
	end
end
function status_change(new, old)
	if new == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		if buff == "doom" or buff == "curse" then
			equip(sets.Utility.Doomed)
		end
	else
		equip(sets.Idle.Standard)
		if buff == "doom" or buff == "curse" then
			equip(sets.Utility.Doomed)
		end
	end
end
function self_command(command)
	if command == "equip TP set" then
		if
			player.equipment.main == "Chango" or player.equipment.main == "Montante +1" or
				player.equipment.main == "Raetic Algol +1"
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
		send_command("@input /echo Idle Set")
	elseif command == "equip OH set" then
		TP_ind = 2
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command("@input /echo OH Set")
	elseif command == "equip OHAcc set" then
		TP_ind = 3
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command("@input /echo OHAcc Set")
	elseif command == "equip H2H set" then
		TP_ind = 8
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command("@input /echo H2H Set")
	elseif command == "equip Zulfiqar set" then
		TP_ind = 9
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command("@input /echo Zulfiqar Set")
	elseif command == "equip DW set" then
		TP_ind = 10
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command("@input /echo DW Set")
	elseif command == "equip DT set" then
		if player.equipment.main == "Bravura" and buffactive["Aftermath"] then
			TP_ind = 7
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command("@input /echo Bravura DT Set")
		else
			TP_ind = 6
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command("@input /echo DT Set")
		end
	elseif command == "equip DTAM set" then
		TP_ind = 7
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command("@input /echo DTAM Set")
	elseif command == "equip Acc_Lite set" then
		TP_ind = 4
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command("@input /echo Acc_lite Set")
	elseif command == "equip Acc_Full set" then
		TP_ind = 5
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command("@input /echo Acc_Full Set")
	elseif command == "equip Hybrid set" then
		TP_ind = 11
		equip(sets.TP.Hybrid)
		send_command("@input /echo Hybrid Set")
	elseif command == "change debug mode" then
		if Gear_Debug == 1 then
			Gear_Debug = 0
			send_command("@input /echo Debug Mode Set to 0")
		else
			Gear_Debug = 1
			send_command("@input /echo Debug Mode Set to 1")
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

windower.register_event(
	"zone change",
	function()
		equip(sets.Idle.Standard)
	end
)
