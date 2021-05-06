function get_sets()
	send_command("bind f9 gs c toggle TP set")
	send_command("bind f10 gs c toggle Idle set")

	function file_unload()
		send_command("unbind ^f9")
		send_command("unbind ^f10")

		send_command("unbind !f9")
		send_command("unbind !f10")

		send_command("unbind f9")
		send_command("unbind f10")
	end

	--Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard", "DT", "Cleave"}
	Idle_ind = 1

	sets.Idle.Standard = {
		ammo = "Homiliary",
		head = {name = "Valorous Mask",augments = {"INT+6", '"Dbl.Atk."+1', '"Treasure Hunter"+1', "Accuracy+6 Attack+6", 'Mag. Acc.+16 "Mag.Atk.Bns."+16'}},
		neck = "Coatl Gorget +1",
		ear1 = "Odnowa Earring +1",
		ear2 = "Infused Earring",
		body = "Reverence Surcoat +3",
		hands = "Regal Gauntlets",
		left_ring = "Moonlight Ring",
		right_ring = "Moonbeam Ring",		
		waist = "Fucho-no-obi",
		legs = "Carmine Cuisses +1",
		feet="Sakpata's Leggings",
		back = "Moonbeam Cape"
	}

	sets.Idle.DT = {
		ammo="Staunch Tathlum",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Regal Gauntlets",
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Odnowa Earring +1",
		right_ear = "Thureous Earring",
		--right_ear="Genmei Earring",
		left_ring = "Moonlight Ring",
		right_ring = "Moonbeam Ring",
		back="Rudianos's Mantle",
	}

	sets.Idle.Cleave = {
		ammo="Staunch Tathlum",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands="Regal Gauntlets",
		legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
		feet="Sakpata's Leggings",
		neck="Loricate Torque +1",
		waist="Flume Belt +1",
		left_ear="Odnowa Earring +1",
		right_ear = "Thureous Earring",
		left_ring = "Moonlight Ring",
		right_ring = "Moonbeam Ring",
		back="Rudianos's Mantle",

	}
	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Tank", "Standard",}
	--1=Tank ,2 = Standard,--

	TP_ind = 1
	sets.TP.Tank = {
		ammo="Staunch Tathlum",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Loricate Torque +1",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Odnowa Earring +1",
		right_ear = "Thureous Earring",
		left_ring = "Moonlight Ring",
		right_ring = "Moonbeam Ring",
		back="Rudianos's Mantle",

	}

	sets.TP.Standard = {
		ammo = "Coiste Bodhar",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Loricate Torque +1",
		neck = "Lissome Necklace",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear = "Telos Earring",
		right_ear = "Cessance Earring",
		left_ring = "Petrov Ring",
		right_ring = "Chirich Ring +1",
		back = "Rudianos's Mantle"
	}
	--Weaponskill Sets--
	sets.WS = {}

	sets.Requiescat = {}

	sets.Requiescat.index = {"Attack"}
	Requiescat_ind = 1

	sets.Requiescat.Attack = {
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
		back = "Rudianos's Mantle",
	}

	sets.SavageBlade = {}

	sets.SavageBlade.index = {"Attack"}
	SavageBlade_ind = 1

	sets.SavageBlade.Attack = {
		ammo = "Coiste Bodhar",
		neck = "Caro Necklace",
		ear2 = "Telos Earring",
		ear1 = "Ishvara Earring",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		ring1 = "Petrov Ring",
		ring2 = "Regal Ring",
		back = {name = "Cichol's Mantle", augments = {"VIT+20", "Accuracy+20 Attack+20", "Weapon skill damage +10%"}},
		waist = "Sailfi Belt +1",
		legs="Sakpata's Cuisses",
		feet = "Sulevia's Leggings +2"
	}

	sets.ChantDuCygne = {}

	sets.ChantDuCygne.index = {"Attack"}
	ChantDuCygne_ind = 1

	sets.ChantDuCygne.Attack = {
		ammo = "Jukukik Feather",
		head = "Flam. Zucchetto +2",
		neck = "Fotia gorget",
		ear1 = "Telos Earring",
		ear2 = "Moonshade Earring",
		body="Hjarrandi Breast.",
		hands = "Flam. Manopolas +2",
		ring2 = "Rajas ring",
		ring1 = "Petrov Ring",
		back = "Rudianos's Mantle",
		waist = "Fotia Belt",
		legs="Sakpata's Cuisses",
		feet = "Thereoid Greaves"
	}

	sets.WS.SanguineBlade = {}

	sets.WS.SanguineBlade = {
		ammo = "Ombre Tathlum",
		head = "Helios Band",
		neck = "Sanctity Necklace",
		rear = "Friomisi earring",
		ear1 = "Novio Earring",
		body = "Founder's Breastplate",
		hands = "Amalric Gages +1",
		left_ring = "Moonlight Ring",
		right_ring = "Moonbeam Ring",
		waist = "Eschan Stone",
		back = "Rudianos's Mantle",
		legs = "Hagondes Pants",
		feet = "Weatherspoon souliers +1"
	}

	sets.WS.Atonement = {
		ammo = "Sapience Orb",
		ear2 = "Friomisi Earring",
		back = "Weard Mantle",
		waist = "Fotia Belt",
		ring2 = "Supershear Ring",
		neck = "Fotia Gorget",
		hands = "Souveran Handschuhs",
		feet = "Souveran Schuhs +1",
		body = "Reverence Surcoat +3",
		ring1 = "Petrov Ring",
		legs = "Souveran Diechlings +1",
		head = "Souveran Schaller +1"
	}

	--Magic Sets--
	sets.Magic = {}

	sets.Magic.Divine = {neck = "Incanter's Torque", ring1 = "Stikini Ring"}

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
		body="Rev. Surcoat +3",
		ring1 = "Stikini Ring",
		legs = "Carmine Cuisses +1",
		head = "Carmine Mask +1"
	}
	
	sets.Magic.Phalanx ={
	    ammo="Staunch Tathlum",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body="Rev. Surcoat +3",
		hands={ name="Souv. Handschuhs", augments={'HP+50','Shield skill +10','Phys. dmg. taken -3',}},
		legs="Sakpata's Cuisses",
		feet={ name="Souveran Schuhs +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		neck="Incanter's Torque",
		waist="Olympus Sash",
		left_ear="Odnowa Earring +1",
		right_ear="Thureous Earring",
		left_ring="Moonlight Ring",
		right_ring="Stikini Ring",
		back="Moonbeam Cape",
	}

	sets.Magic.Reprisal = {
		ammo = "Sapience Orb",
		ear1 = "Odnowa Earring +1",
		ear2 = "Etiolation Earring",
		back = "Moonbeam Cape",
		waist = "Trance Belt",
		left_ring = "Moonlight Ring",
		right_ring = "Moonbeam Ring",
		neck = "Unmoving Collar +1",
		hands = "Regal Gauntlets",
		feet = "Souveran Schuhs +1",
		body = "Rev. Surcoat +3",
		ring1 = "Stikini Ring",
		legs = "Souveran Diechlings +1",
		head = "Souveran Schaller +1"
	}
	
	sets.Magic.SIRD ={
	    ammo="Staunch Tathlum",
		head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
		body="Rev. Surcoat +3",
		hands="Regal Gauntlets",
		legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
		feet="Odyssean Greaves",
		neck="Moonbeam Necklace",
		waist="Trance Belt",
		left_ear="Odnowa Earring +1",
		right_ear="Friomisi Earring",
		left_ring="Petrov Ring",
		right_ring="Supershear Ring",
		back="Moonbeam Cape",
	}

	sets.Magic.Flash = {neck = "Incanter's Torque", ring1 = "Stikini Ring"}

	sets.Magic.Healing = {
		neck = "Incanter's Torque",
		ring1 = "Ephedra Ring",
		ring2 = "Sirona's Ring",
		ear1 = "Nourish. Earring",
		back = "Solmenity Cape"
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

	sets.Utility.PDT = {
		head = "Sulevia's Mask +2",
		neck = "Loricate Torque +1",
		ear1 = "Ethereal earring",
		body = "Iuitl vest",
		hands = "Umuthi gloves",
		ring1 = "Dark ring",
		ring2 = "Dark ring",
		back = "Moonbeam Cape",
		waist = "Flume belt",
		legs = "Iuitl Tights +1",
		feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
	}

	sets.Utility.MDT = {
		head = "Sulevia's Mask +2",
		neck = "Loricate Torque +1",
		body = "Assim. jubbah +1",
		hands = "Umuthi gloves",
		ring1 = "Dark ring",
		ring2 = "Dark ring",
		back = "Moonbeam Cape",
		legs = "Quiahuiz trousers",
		feet = "Luhlaza charuqs"
	}

	sets.Utility.Enmity = {
		ammo = "Sapience Orb",
		ear2 = "Friomisi Earring",
		back = "Weard Mantle",
		waist = "Trance belt",
		ring2 = "Supershear Ring",
		neck = "Unmoving Collar +1",
		hands = "Souveran Handschuhs",
		feet = "Souveran Schuhs +1",
		body = "Reverence Surcoat +3",
		ring1 = "Petrov Ring",
		legs = "Souveran Diechlings +1",
		head = "Souveran Schaller +1"
	}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Saida Ring"}

	--Job Ability Sets--

	sets.JA = {}

	sets.JA.ShieldBash = {
		Legs = "Volte Hose",
		hands = "Valor Gauntlets",
		waist = "Chaac Belt",
		Head = {
			name = "Valorous Mask",
			augments = {"INT+6", '"Dbl.Atk."+1', '"Treasure Hunter"+1', "Accuracy+6 Attack+6", 'Mag. Acc.+16 "Mag.Atk.Bns."+16'}
		}
	}

	sets.JA.Sentinel = {feet = "Caballarius Leggings +1"}

	sets.JA.Cover = {}

	sets.JA.Rampart = {}

	--Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		ammo = "Sapience Orb",
		head = "Carmine Mask +1",
		body = "Reverence Surcoat +3",
		hands = "Souveran Handschuhs",
		legs = "Sakpata Cuisses",
		feet = "Odyssean Greaves",
		neck = "Voltsurge Torque",
		waist = "Witful Belt",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		back = "Moonbeam Cape"
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
		equip(sets.ChantDuCygne[sets.ChantDuCygne.index[ChantDuCygne_ind]])
	end

	if spell.english == "Savage Blade" then
		equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
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

	if spell.english == "Sentinel" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Sentinel))
	end

	if spell.english == "Rampart" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Rampart))
	end

	if spell.english == "Cover" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Cover))
	end
end

function midcast(spell, act)
	if spell.english == "Flash" then
		equip(set_combine(sets.Utility.Enmity, sets.Magic.Flash))
	end

	if spell.skill == "Enhancing Magic" then
		equip(sets.Magic.Enhancing)
	end

	if spell.skill == "Divine Magic" then
		equip(set_combine(sets.Utility.Enmity, sets.Magic.Divine))
	end

	if spell.skill == "Healing Magic" then
		equip(set_combine(sets.Utility.Enmity, sets.Magic.Healing))
	end

	if spell.english == "Reprisal" then
		equip(sets.Magic.Reprisal)
	end

	if spell.english == "Phalanx" then
		equip(sets.Magic.Phalanx)
	end
	if spell.skill == "Blue Magic" then
		equip(sets.Magic.SIRD)
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
	elseif command == "equip TP set" then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "equip Idle set" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end
