function get_sets()
	send_command("bind f9 gs c toggle TP set")
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind !f9 gs c cycle WeaponSet")

	function file_unload()
		send_command("unbind ^f9")
		send_command("unbind ^f10")

		send_command("unbind !f9")
		send_command("unbind !f10")

		send_command("unbind f9")
		send_command("unbind f10")
	end

		--Weapon Sets--
	
	sets.Weapons = {}
	sets.Weapons.index = {'Aegis', 'Srivatsa', 'Duban'}
	Weapons_ind = 1
	
	sets.Weapons.Aegis = {sub="Aegis"}

	sets.Weapons.Srivatsa = {sub ="Srivatsa"}
	
	sets.Weapons.Duban = {sub="Duban"}

	--Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard", "DT", "Cleave"}
	Idle_ind = 1

	sets.Idle.Standard = {
		ammo = "Homiliary",
		head="Null Masque",
		neck = "Coatl Gorget +1",
		ear1 = "Odnowa Earring +1",
		ear2 = "Infused Earring",
		body = "Reverence Surcoat +3",
		hands = "Regal Gauntlets",
		left_ring={name="Moonlight Ring",bag="wardrobe2"},
		right_ring = "Shneddick Ring",		
		waist = "Fucho-no-obi",
		legs = "Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		back="Null Shawl"
	}

	sets.Idle.DT = {
		ammo="Staunch Tathlum +1",
		head="Null Masque",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck = "Unmoving Collar +1",
		waist= "Carrier's Sash",
		left_ear="Odnowa Earring +1",
		right_ear = "Tuisto Earring",
		left_ring={name="Moonlight Ring",bag="wardrobe2"},
		right_ring={name="Moonlight Ring",bag="wardrobe3"},
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Enmity+10','Mag. Evasion+15',}},
	}

	sets.Idle.Cleave = {
		ammo="Staunch Tathlum +1",
		head="Null Masque",
		body="Sakpata's Plate",
		--hands="Regal Gauntlets",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Loricate Torque +1",
		waist="Carrier's Sash",
		left_ear="Odnowa Earring +1",
		right_ear = "Tuisto Earring",
		left_ring	=	{name="Moonlight Ring",bag="wardrobe2"},
		right_ring = "Shneddick Ring",
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Enmity+10','Mag. Evasion+15',}},
	}
		
	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Tank", "Turtle", "DD"}
	--1=Tank ,2 = Turtle, 3="DD"-

	TP_ind = 1
	sets.TP.Tank = {
		 right_ring	=	{name="Moonlight Ring",bag="wardrobe3"},
		ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Unmoving Collar +1",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Odnowa Earring +1",
		right_ear = "Tuisto Earring",
		back="Null Shawl",
		left_ring	=	{name="Moonlight Ring",bag="wardrobe2"},
	}

	sets.TP.Turtle = {
		 right_ring	=	{name="Moonlight Ring",bag="wardrobe3"},
		ammo="Staunch Tathlum +1",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck = "Unmoving Collar +1",
		waist= "Carrier's Sash",
		left_ear="Odnowa Earring +1",
		right_ear = "Tuisto Earring",
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Enmity+10','Mag. Evasion+15',}},
		left_ring	=	{name="Moonlight Ring",bag="wardrobe2"},
	}
	
		sets.TP.DD = {
		 right_ring	=	{name="Moonlight Ring",bag="wardrobe3"},
		ammo = "Coiste Bodhar",
		head="Hjarrandi Helm",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Lissome Necklace",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear = "Cessance Earring",
		back="Null Shawl",
		left_ring	=	{name="Moonlight Ring",bag="wardrobe2"},
	}
	
	
	--Weaponskill Sets--
	sets.WS = {}

	sets.Requiescat = {}

	sets.Requiescat.index = {"Attack"}
	Requiescat_ind = 1

	sets.Requiescat.Attack = {
		ammo = "Oshasha's Treatise",
		neck = "Fotia Gorget",
		ear2 = "Moondshade earring",
		ear1 = "Telos Earring",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		ring2 = "Regal Ring",
		ring1 = "Petrov Ring",
		waist = "Fotia Belt",
		back="Null Shawl",
	}

	sets.SavageBlade = {}

	sets.SavageBlade.index = {"Attack"}
	SavageBlade_ind = 1

	sets.SavageBlade.Attack = {
		ammo="Oshasha's Treatise",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Thrud Earring",
		right_ear={ name="Chev. Earring +2", augments={'System: 1 ID: 1676 Val: 0','Accuracy+16','Mag. Acc.+16','Damage taken-6%','STR+7 VIT+7',}},
		left_ring="Epaminondas's Ring",
		right_ring="Ephramad's Ring",
		back="Null Shawl",
	}

	sets.ChantDuCygne = {}

	sets.ChantDuCygne.index = {"Attack"}
	ChantDuCygne_ind = 1

	sets.ChantDuCygne.Attack = {
		ammo = "Oshasha's Treatise",
		head = "Flam. Zucchetto +2",
		neck = "Fotia gorget",
		ear1 = "Telos Earring",
		ear2 = "Moonshade Earring",
		body="Hjarrandi Breast.",
		hands = "Flam. Manopolas +2",
		ring2 = "Rajas ring",
		ring1 = "Petrov Ring",
		back="Null Shawl",
		waist = "Fotia Belt",
		legs="Sakpata's Cuisses",
		feet = "Thereoid Greaves"
	}


	sets.WS.SanguineBlade = {
		ammo = "Oshasha's Treatise",
		head = "Pixie Hairpin +1",
		neck = "Sanctity Necklace",
		rear = "Friomisi earring",
		ear1 = "Novio Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring	=	{name="Moonlight Ring",bag="wardrobe2"},
		 right_ring	=	"Archon Ring",
		waist = "Eschan Stone",
		back="Null Shawl",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets"
	}

	sets.WS.Atonement = {
		ammo = "Sapience Orb",
		ear2 = "Thrud Earring",
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Enmity+10','Mag. Evasion+15',}},
		waist = "Fotia Belt",
		ring2 = "Supershear Ring",
		neck = "Fotia Gorget",
		hands = "Souveran Handschuhs +1",
		feet = "Souveran Schuhs +1",
		body="Souveran Cuirass +1",
		ring1 = "Moonlight Ring",
		legs = "Souveran Diechlings +1",
		head = "Souveran Schaller +1"
	}

	--Magic Sets--
	sets.Magic = {}

	sets.Magic.Divine = {neck = "Incanter's Torque", ring2 = "Stikini ring +1"}

	sets.Magic.Enhancing = {
		ear2 = "Andoaa Earring",
		waist = "Olympus Sash",
		ammo = "Sapience Orb",
		ear2 = "Andoaa Earring",
		back = "Weard Mantle",
		waist = "Olympus Sash",
		ring2 = "Supershear Ring",
		neck = "Incanter's Torque",
		hands = "Regal Gauntlets",
		feet = "Souveran Schuhs +1",
		body="Shabti Cuirass +1",
		ring1 = "Stikini ring +1",
		legs = "Carmine Cuisses +1",
		head = "Carmine Mask +1"
	}
	
	sets.Magic.Phalanx ={
	    ammo="Staunch Tathlum +1",
		head={ name="Valorous Mask", augments={'Mag. Acc.+5','AGI+3','Phalanx +3','Accuracy+16 Attack+16','Mag. Acc.+1 "Mag.Atk.Bns."+1',}},
		body={ name="Odyss. Chestplate", augments={'STR+8','Pet: "Mag.Atk.Bns."+2','Phalanx +5','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck="Incanter's Torque",
		waist="Olympus Sash",
		left_ear="Mimir Earring",
		right_ear="Tuisto Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back = "Weard Mantle"
		}

	sets.Magic.Reprisal = {
		ammo = "Sapience Orb",
		ear1 = "Odnowa Earring +1",
		ear2 = "Etiolation Earring",
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Enmity+10','Mag. Evasion+15',}},
		waist = "Trance Belt",
		left_ring	=	{name="Moonlight Ring",bag="wardrobe2"},
		right_ring = "Moonbeam Ring",
		neck = "Unmoving Collar +1",
		hands = "Regal Gauntlets",
		feet = "Souveran Schuhs +1",
		body="Shabti Cuirass +1",
		ring1 = "Stikini ring +1",
		legs = "Souveran Diechlings +1",
		head = "Souveran Schaller +1"
	}
	
	sets.Magic.SIRD ={
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		body="Chev. Cuirass +3",
		hands={ name="Souv. Handsch. +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		legs={ name="Cab. Breeches +3", augments={'Enhances "Invincible" effect',}},
		feet={ name="Odyssean Greaves", augments={'Enmity+7','VIT+9','Accuracy+14','Attack+12',}},
		neck="Moonlight Necklace",
		waist="Audumbla Sash",
		left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		right_ear="Trux Earring",
		left_ring="Defending Ring",
		right_ring="Supershear Ring",
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Enmity+10','Mag. Evasion+15',}},
	}
	
	sets.Magic.SIRDCure ={
		ammo="Staunch Tathlum +1",
		head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		--body="Souveran Cuirass +1",
		body="Chev. Cuirass +3",
		hands = "Macabre Gauntlets +1",
		--legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
		legs={ name="Cab. Breeches +3", augments={'Enhances "Invincible" effect',}},
		feet={ name="Odyssean Greaves", augments={'Enmity+7','VIT+9','Accuracy+14','Attack+12',}},
		neck="Sacro Gorget",
		waist="Audumbla Sash",
		right_ear="Chevalier's Earring +2",
		left_ear="Nourish. Earring +1",
		right_ring="Defending Ring",
		left_ring="Moonlight Ring",
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Enmity+10','Mag. Evasion+15',}},
	}

	sets.Magic.Flash = {neck = "Incanter's Torque", ring1 = "Stikini ring +1"}

	sets.Magic.Healing = {
		neck = "Incanter's Torque",
		ring1 = "Ephedra Ring",
		ring2 = "Sirona's Ring",
		ear1 = "Nourish. Earring +1",
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Enmity+10','Mag. Evasion+15',}}
	}

	--Utility Sets--
	sets.Utility = {}

	sets.Utility.Steps = {
		ammo = "Falcon Eye",
		head = "Dampening Tam",
		body = "Adhemar Jacket +1",
		hands = "Rawhide Gloves",
		legs == "Founder's Hose",
		feet = "Odyssean Greaves",
		neck = "Subtlety Spec.",
		waist = "Chaac Belt",
		left_ear = "Heartseeker Earring",
		right_ear = "Steelflash Earring",
		left_ring = "Yacuruna Ring",
		right_ring = "Rajas Ring",
		back = "Rudianos's Mantle"
	}

	sets.Utility.Enmity = {
		ammo = "Sapience Orb",
		ear2 = "Trux Earring",
		back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+5','Enmity+10','Mag. Evasion+15',}},
		waist = "Trance belt",
		ring2 = "Supershear Ring",
		neck = "Unmoving Collar +1",
		hands = "Souveran Handschuhs +1",
		feet = "Chevalier's sabatons +3",
		body = "Souveran Cuirass +1",
		ring1 = "Petrov Ring",
		legs = "Souveran Diechlings +1",
		head = "Loess Barbuta +1"
	}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Eshmun's Ring"}
	
	sets.Utility.FrightfulRoar ={
		ammo="Pemphredo Tathlum",
		head={ name="Sakpata's Helm", augments={'Path: A',}},
		body={ name="Sakpata's Plate", augments={'Path: A',}},
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet="Chevalier's sabatons +3",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Crep. Earring",
		right_ear="Digni. Earring",
		left_ring="Stikini Ring +1",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back="Izdubar Mantle",
	}

	--Job Ability Sets--

	sets.JA = {}

	sets.JA.ShieldBash = {
		Legs = "Volte Hose",
		hands = "Caballarius Gauntlets +2",
		waist = "Chaac Belt",
		head = {name="Valorous Mask", augments={'Blood Pact Dmg.+3','Potency of "Cure" effect received+7%','"Treasure Hunter"+2','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
	}
	

	sets.JA.Sentinel = {feet = "Caballarius Leggings +3"}

	sets.JA.Cover = {}

	sets.JA.Rampart = { head = "Caballarius Coronet +2"}
	
	sets.JA.Chivalry ={hands = "Caballarius Gauntlets +2"}
	
	sets.JA.DE = {feet="Chevalier's sabatons +3"}
	
	sets.JA.Invc = {legs={ name="Cab. Breeches +3", augments={'Enhances "Invincible" effect',}},}

	--Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Rev. Surcoat +3",
		hands={ name="Leyline Gloves", augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}},
		legs={ name="Sakpata's Cuisses", augments={'Path: A',}},
		feet="Chevalier's sabatons +3",
		neck="Voltsurge Torque",
		waist="Carrier's Sash",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Rahab Ring",
		right_ring="Kishar Ring",
		back="Moonbeam Cape",
	}
end

function precast(spell)
	if spell.action_type == "Magic" then
		equip(sets.precast.FC.Standard)
	end

	if spell.english == "Requiescat" then
		equip(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
	end

	if spell.english == "Chant du Cygne" or spell.english == "Resolution" then
		if spell.target.distance <= 5.6 then
			equip(sets.ChantDuCygne[sets.ChantDuCygne.index[ChantDuCygne_ind]])
		else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
		end
	end

	if spell.english == "Savage Blade" or spell.english == "Knights of Round" or spell.english == "Torcleaver" then
		--equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
		if spell.target.distance <= 5.6 then
			equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
		else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
		end
	end
	
	if spell.english == "Atonement" then
		--equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
		equip(sets.WS.Atonement)
		-- if spell.target.distance <= 5.6 then
			-- equip(sets.WS.Atonement)
		-- else
			-- cancel_spell()
			-- windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
		-- end
	end

	if spell.english == "Sanguine Blade" then
		equip(sets.WS.SanguineBlade)
		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(sets.Utility.Weather)
		end
	end

	if spell.english == "Box Step" then
		equip(sets.Utility.Steps)
	end

	if spell.english == "Shield Bash" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.ShieldBash))
	end
	
	if spell.english == "Chivalry" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Chivalry))
	end

	if spell.english == "Sentinel" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Sentinel))
	end

	if spell.english == "Rampart" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Rampart))
	end

	if spell.english == "Cover" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Cover))
	end
	
	if spell.english == "Invincible" then
		equip(sets.JA.Invc)
	end
	
	if spell.english == "Tellus" or spell.english == "Lux" or spell.english == "Gelus" or spell.english == "Tenebrae" or
		spell.english == "Sulpor" or spell.english == "Ignis" or spell.english == "Unda" or
		spell.english == "Flabra" or spell.english == "Vallation" or spell.english == "Swordplay" or spell.english == "Valiance" or spell.english == "Pflug" then
			equip(sets.Utility.Enmity)
	end
end

function midcast(spell, act)
	if spell.english == "Flash" then
		equip(set_combine(sets.Utility.Enmity, sets.Magic.Flash))
	end
	
	if spell.english == "Foil" then 
		equip(sets.Utility.Enmity)
	end

	if spell.skill == "Enhancing Magic" then
		equip(sets.Magic.Enhancing)
	end

	if spell.skill == "Divine Magic" then
		equip(set_combine(sets.Utility.Enmity, sets.Magic.Divine))
			if buffactive['Divine Emblem'] then
				equip(sets.JA.DE)
			end
	end

	if spell.skill == "Healing Magic" then
		equip(sets.Magic.SIRDCure)
	end

	if spell.english == "Reprisal" then
		equip(sets.Magic.Reprisal)
	end

	if spell.english == "Phalanx" then
		equip(sets.Magic.Phalanx)
	end
	if spell.skill == "Blue Magic" or spell.skill == "Ninjutsu" then
		equip(sets.Magic.SIRD)
		if spell.english == "Frightful Roar" then
			equip(sets.Utility.FrightfulRoar)
		end
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
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
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
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
	elseif command == "cycle WeaponSet" then
		Weapons_ind = Weapons_ind + 1
		if Weapons_ind > #sets.Weapons.index then
			Weapons_ind = 1
		end
		send_command("@input /echo <----- Weapon Set changed to " .. sets.Weapons.index[Weapons_ind] .. " ----->")
		equip(sets.Weapons[sets.Weapons.index[Weapons_ind]])
	elseif command == "equip TP set" then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "equip Idle set" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end
