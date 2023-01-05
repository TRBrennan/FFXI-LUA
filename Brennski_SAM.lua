function get_sets()
	send_command("bind f9 gs c toggle TP set")
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind f11 gs c toggle Weapons")
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

	--TP_Body = { name="Valorous Mail", augments={'Accuracy+30','"Dbl.Atk."+4','DEX+7',}}
	--TP_Body = "Ken. Samue"
	TP_Body ={ name="Valorous Mail", augments={'Accuracy+30','"Dbl.Atk."+4','DEX+7',}}
	--WSD_Legs = "Wakido Haidate +3"
	WSD_Legs = "Nyame Flanchard"
	WSD_Hands = "Kasuga Kote +3"
	--WSD_Body = "Sakonji Domaru +3"
	WSD_Body = "Nyame Mail"
	WSD_Head = "Nyame Helm"
	TP_Bonus_Head = "Mpaca's Cap"
	WSD_Feet={ name="Nyame Sollerets", augments={'Path: B',}}
	TP_Cape ={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}}
	WSD_Cape ={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}


	--Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard", "DT"}
	Idle_ind = 1

	sets.Idle.Standard = {
	    ammo="Aurgelmir Orb +1",
		--head={ name="Valorous Mask", augments={'Blood Pact Dmg.+3','Potency of "Cure" effect received+7%','"Treasure Hunter"+2','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
		head = "Wakido Kabuto +3",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck = "Bathy Choker +1",
		waist="Carrier's Sash",
		left_ear="Infused Earring",
		right_ear="Eabani Earring",
		left_ring="Defending Ring",
		right_ring="Shneddick Ring",
		back="Moonbeam Cape",
	}

	sets.Idle.DT = {
		ammo="Staunch Tathlum +1",
		--head={ name="Valorous Mask", augments={'Blood Pact Dmg.+3','Potency of "Cure" effect received+7%','"Treasure Hunter"+2','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
		head = "Wakido Kabuto +3",
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Carrier's Sash",
		left_ear="Infused Earring",
		right_ear="Eabani Earring",
		left_ring="Defending Ring",
		right_ring="Shneddick Ring",
		back="Moonbeam Cape",
	}

	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard", "DTTP",}
	--1=Standard, 2 =Hybrid, 3 =HybridZanshin --

	TP_ind = 1
	sets.TP.Standard = {
		ammo="Aurgelmir Orb +1",
		head="Flam. Zucchetto +2",
		body="Kasuga Domaru +2",
		--hands="Mpaca's Gloves",
		hands = "Tatenashi Gote +1",
		legs="Kasuga Haidate +2",
		feet={ name="Ryuo Sune-Ate +1", augments={'HP+65','"Store TP"+5','"Subtle Blow"+8',}},
		neck={ name="Sam. Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Kasuga Earring +1",
		left_ring="Niqmaddu Ring",
		right_ring="Chirich Ring +1",
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}


	sets.TP.DTTP = {
		ammo="Aurgelmir Orb +1",
		--head="Flam. Zucchetto +2",
		head = "Kasuga Kabuto +2",
		body="Kasuga Domaru +2",
		--hands="Mpaca's Gloves",
		hands = "Tatenashi Gote +1",
		legs="Kasuga Haidate +2",
		feet={ name="Ryuo Sune-Ate +1", augments={'HP+65','"Store TP"+5','"Subtle Blow"+8',}},
		neck={ name="Sam. Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Kasuga Earring +1",
		left_ring="Niqmaddu Ring",
		right_ring="Chirich Ring +1",
		back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Store TP"+10','Phys. dmg. taken-10%',}},
	}


	--Weaponskill Sets--
	sets.WS = {}

	sets.OneHit = {}

	sets.OneHit.Attack = {
		ammo = "Knobkierrie",
		head = TP_Bonus_Head,
		body = WSD_Body,
		hands = WSD_Hands,
		legs = WSD_Legs,
		feet = WSD_Feet,
		neck = "Samurai's nodowa +2",
		waist = "Sailfi Belt +1",
		left_ear = "Thrud Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		left_ring="Epaminondas's Ring",
		right_ring = "Sroda ring",
		back = WSD_Cape
	}

	sets.MultiHit = {}

	sets.MultiHit.Attack = {
		ammo = "Knobkierrie",
		head = TP_Bonus_Head,
		body = TP_Body,
		hands = WSD_Hands,
		legs="Mpaca's Hose",
		feet = "Flam. Gambieras +2",
		neck = "Samurai's nodowa +2",
		waist = "Sailfi Belt +1",
		left_ear = "Telos Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ring = "Epaminondas's Ring",
		left_ring = "Niqmaddu Ring",
		back = TP_Cape
	}

	sets.HybridWS = {}

	sets.HybridWS.Attack = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet = WSD_Feet,
		neck = "Fotia Gorget",
		waist="Orpheus's Sash",
		left_ear = "Friomisi earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ring = "Sroda ring",
		left_ring = "Epaminondas's Ring",
		back={ name="Smertrios's Mantle", augments={'STR+20','Mag. Acc+20 /Mag. Dmg.+20','STR+10','Weapon skill damage +10%',}},
	}
	
	sets.WS.Ageha ={
	    ammo="Pemphredo Tathlum",
		head={ name="Blistering Sallet +1", augments={'Path: A',}},
		body=TP_Body,
		hands = "Flam. Manopolas +2",
		legs="Mpaca's Hose",
		feet = "Flam. Gambieras +2",
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Digni. Earring",
		right_ear="Crep. Earring",
		left_ring="Stikini Ring +1",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Smertrios's Mantle", augments={'STR+20','Mag. Acc+20 /Mag. Dmg.+20','STR+10','Weapon skill damage +10%',}},
	}

	--Ninja Magic Sets--
	sets.NINMagic = {}

	sets.NINMagic.Utsusemi = {
		head = "Dampening Tam",
		neck = "Loricate Torque +1",
		ear1 = "Brutal Earring",
		ear2 = "Schere Earring",
		body = "Emet harness +1",
		hands = "Sulev. Gauntlets +2",
		right_ring = "Chirich Ring +1",
		left_ring = "Petrov Ring",
		back = "Moonbeam Cape",
		waist = "Carrier's Sash",
		legs = "Herculean Trousers",
		feet = "Valorous Greaves"
	}

	--Utility Sets--
	sets.Utility = {}

	sets.Utility.Weather = {waist = "Hachirin-no-obi", back = "Twilight Cape"}


	sets.Utility.Phalanx = {
		head = "Haruspex hat",
		neck = "Colossus's torque",
		ear1 = "Loquac. earring",
		ear2 = "Augment. earring",
		body = "Assim. jubbah +1",
		hands = "Ayao's gages",
		right_ring = "Rahab ring",
		back = "Fi follet cape +1",
		waist = "Pythia sash +1",
		legs = "Portent pants",
		feet = "Valorous Greaves"
	}


	sets.Utility.Doomed = {waist = "Gishdubar Sash", right_ring = "Eshmun's Ring"}

	sets.Utility.Enmity = {
		ammo = "Sapience Orb",
		ear2 = "Trux Earring",
		back = "Weard Mantle",
		waist = "Trance belt",
		left_ring = "Supershear Ring",
		neck = "Unmoving Collar +1",
		hands = "Souveran Handschuhs",
		feet = "Souveran Schuhs +1",
		body = "Souveran Cuirass",
		right_ring = "Petrov Ring",
		legs = "Souveran Diechlings +1",
		head = "Souveran Schaller"
	}

	sets.Utility.Sleeping = {neck = "Opo-Opo Necklace"}
	--Job Ability Sets--

	sets.JA = {}

	sets.JA.Meditate = {back = TP_Cape, hands ="Sakonji Kote +1", Head ="Wakido Kabuto +3"}

	sets.JA.Hasso = {}

	sets.JA.BladeBash = {
		waist = "Chaac Belt",
		Hands = "Volte Bracers",
		legs = "Volte Hose",
		head = {name="Valorous Mask", augments={'Blood Pact Dmg.+3','Potency of "Cure" effect received+7%','"Treasure Hunter"+2','Mag. Acc.+7 "Mag.Atk.Bns."+7',}}
	}

	sets.JA.Sekkanoki = {}

	sets.JA.Seigan = {}
	
	sets.JA.Jumps ={
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Flam. Zucchetto +2",
		body="Mpaca's Doublet",
		hands="Wakido Kote +3",
		legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
		feet="Flam. Gambieras +2",
		neck = "Samurai's nodowa +2",
		waist="Sailfi Belt +1",
		left_ear="Telos Earring",
		right_ear="Crep. Earring",
		left_ring="Flamma Ring",
		right_ring="Chirich Ring +1",
		back = TP_Back
	}
	
	sets.JA.WardingCircle = { Head ="Wakido Kabuto +2"}
	
	


	sets.JA.Restraint = {}
	--Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		ammo = "Sapience Orb",
		head = "Carmine Mask +1",
		body = "Odyssean Chestplate",
		hands = "Leyline Gloves",
		legs = {
			name = "Odyssean Cuisses",
			augments = {'Mag. Acc.+15 "Mag.Atk.Bns."+15', '"Fast Cast"+3', "INT+1", "Mag. Acc.+9", '"Mag.Atk.Bns."+3'}
		},
		feet = "Odyssean Greaves",
		neck = "Voltsurge Torque",
		waist = "Witful Belt",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		back = "Fi follet cape +1",
	}
end

function precast(spell)
	if spell.action_type =="Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.english == "Tachi: Fudo" or spell.english == "Tachi: Kasha" or spell.english == "Tachi: Shoha" or spell.english == "Sonic Thrust" or spell.english == "Impulse Drive" then
		if spell.target.distance <= 5.6 then
			equip(sets.OneHit.Attack)
		else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
		end
	elseif spell.english == "Tachi: Jinpu" or spell.english == "Tachi: Kagero" then
		if spell.target.distance <= 5.6 then
			equip(sets.HybridWS.Attack)
		else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
		end
	elseif spell.english == "Stardiver" or spell.english == "Tachi: Rana" then
		if spell.target.distance <= 5.6 then
			equip(sets.MultiHit.Attack)
		else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
		end
	elseif spell.english == "Tachi: Ageha" then
		equip(sets.WS.Ageha)
	elseif spell.english == "Meditate" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Meditate))
	elseif spell.english == "Hasso" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Hasso))
	elseif spell.english == "Blade Bash" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.BladeBash))
	elseif spell.english == "Sekkanoki" then
		equip(set_combine(sets.Utility.Enmity, sets.JA.Sekkanoki))
	elseif spell.english == "Provoke" then
		equip(sets.Utility.Enmity)
	elseif spell.english == "Box Step" then
		equip(sets.Utility.Steps)
	elseif spell.english == "Jump" or spell.english == "High Jump" or spell.english == "Super Jump" then
		equip(sets.JA.Jumps)
	elseif spell.english == "Warding Circle" then
		equip(sets.JA.WardingCircle)
	elseif spell.type == "Weapon Skill" then
		equip(sets.OneHit.Attack)
	end
end

function midcast(spell, act)
	if spell.skill == "Ninjutsu" then
		equip(sets.NINMagic.Nuke)
		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(set_combine(sets.NINMagic.Nuke, sets.Utility.Weather))
		end
	end

	if spell.english == "Utsusemi: Ichi" then
		equip(sets.NINMagic.Utsusemi)
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

	if spell.english == "Utsusemi: Ni" or spell.english == "Utsusemi: San" then
		equip(sets.NINMagic.Utsusemi)
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(sets.Utility.Doom)
		end
		if buffactive["terror"] or buffactive["stun"] or buffactive["sleep"] then
			equip(sets.TP.DT)
		end
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(sets.Utility.Doom)
		end
		if buffactive["terror"] or buffactive["stun"] or buffactive["sleep"] then
			equip(sets.TP.DT)
		end
	end
end

function status_change(new, old)
	if player.status == "Engaged" then
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
