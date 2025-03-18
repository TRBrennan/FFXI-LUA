function get_sets()
	send_command("bind f9 gs c toggle TP set")
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind ^f11 gs c equip TP set")
	send_command("bind ^f10 gs c equip DT set")
	send_command("bind f12 gs c equip TP set")
	send_command("bind !f10 gs c equip DT set")

	function file_unload()
		send_command("unbind ^f9")
		send_command("unbind ^f10")
		send_command("unbind ^f11")
		send_command("unbind ^f12")
		send_command("unbind ^`")

		send_command("unbind !f9")
		send_command("unbind !f10")
		send_command("unbind !f11")
		send_command("unbind !f12")

		send_command("unbind f9")
		send_command("unbind f10")
		send_command("unbind f11")
		send_command("unbind f12")
	end

	--TP_Body = "Emicho Haubert +1"
	TP_Back = "Null Shawl"
	WSD_Back = { name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}}
	--WSD_Legs = "Vishap Brais +3"
	--WSD_Hands = "Pteroslaver Finger Gauntlets +3"
	WSD_Legs = "Nyame Flanchard"
	WSD_Hands = "Gleti's Gauntlets"
	WSD_Body = "Nyame Mail"
	WSD_Head = "Nyame Helm"
	--Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard"}
	Idle_ind = 1

	sets.Idle.Standard = {
		ammo = "Staunch Tathlum +1",
		head = {name="Valorous Mask", augments={'Blood Pact Dmg.+3','Potency of "Cure" effect received+7%','"Treasure Hunter"+2','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
		neck = "Warder's Charm +1",
		ear1 = "Eabani earring",
		ear2 = "Infused Earring",
		--body="Nyame Mail",
		--hands = "Nyame Gauntlets",
		body={ name="Gleti's Cuirass", augments={'Path: A',}},
		hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
		ring1 = "Defending ring",
		ring2 = "Shneddick Ring",
		waist = "Null Belt",
		legs = "Nyame Flanchard",
		feet="Nyame Sollerets",
		back="Null Shawl"
	}


	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard", "Hybrid", "DT"}
	--1=Standard, 2 =AccuracyFull, 3=Hybrid, 4=DT--

	TP_ind = 1
	sets.TP.Standard = {
		--ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		ammo="Aurgelmir Orb +1",
		head="Flam. Zucchetto +2",
		body={ name="Gleti's Cuirass", augments={'Path: A',}},
		--hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
		hands = "Pel. Vambraces +2",
		legs = "Pteroslaver Brais +3",
		feet="Flam. Gambieras +2",
		neck={ name="Dgn. Collar +2", augments={'Path: A',}},
		--waist="Ioskeha Belt +1",
		waist = "Sailfi Belt +1",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Moonlight Ring",
		back=TP_Back
	}

	
	sets.TP.Hybrid = {
		   ammo="Aurgelmir Orb +1",
			head="Flam. Zucchetto +2",
			body={ name="Gleti's Cuirass", augments={'Path: A',}},
			hands="Pel. Vambraces +2",
			legs={ name="Gleti's Breeches", augments={'Path: A',}},
			feet={ name="Nyame Sollerets", augments={'Path: B',}},
			neck={ name="Dgn. Collar +2", augments={'Path: A',}},
			waist={ name="Sailfi Belt +1", augments={'Path: A',}},
			left_ear="Sherida Earring",
			right_ear="Telos Earring",
			left_ring="Niqmaddu Ring",
			right_ring="Moonlight Ring",
			back=TP_Back
	}

	sets.TP.DT = {
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body="Nyame Mail",
		--hands="Nyame Gauntlets",
		hands = "Pel. Vambraces +2",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Dragoon's collar +2",
		waist="Ioskeha Belt +1",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		right_ring="Moonlight Ring",
		left_ring="Niqmaddu Ring",
		back = TP_Back
	}

	--Weaponskill Sets--
	sets.WS = {}

	sets.Stardiver = {}

	sets.Stardiver.Index = {"Attack"}

	Stardiver_ind = 1

	sets.Stardiver.Attack = {
		neck = "Fotia Gorget",
		back = TP_Back,
		waist = "Fotia Belt",
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Hjarrandi Helm",
		body={ name="Gleti's Cuirass", augments={'Path: A',}},
		--hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
		hands = "Pel. Vambraces +2",
		legs="Pteroslaver Brais +2",
		feet="Flam. Gambieras +2",
		left_ear="Sherida Earring",
		right_ear="Moonshade Earring",
		left_ring="Niqmaddu Ring",
		right_ring="Petrov Ring",
	}

	sets.ImpulseDrive = {}

	sets.ImpulseDrive.Index = {"Attack"}

	ImpulseDrive_ind = 1

	sets.ImpulseDrive.Attack = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia Gorget",
		left_ear = "Moonshade Earring",
		right_ear = "Peltast's Earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Epaminondas's Ring",
		ring2 = "Niqmaddu Ring",
		back = WSD_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.CT = {}

	sets.CT.Index = {"Attack"}

	CT_ind = 1

	sets.CT.Attack = {
		ammo = "Knobkierrie",
		head = WSD_Head,
		neck = "Fotia Gorget",
		left_ear = "Moonshade Earring",
		right_ear = "Peltast's Earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Epaminondas's Ring",
		ring2 = "Niqmaddu Ring",
		back = WSD_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.Drakesbane = {}

	sets.Drakesbane.Index = {"Attack"}

	Drakesbane = 1

	sets.Drakesbane.Attack = {
		ammo = "Coiste Bodhar",
		head = "Flam. Zucchetto +2",
		neck = "Dragoon's collar +2",
		ear2 = "Moonshade Earring",
		ear1 = "Sherida Earring",
		body = WSD_Body,
		hands = WSD_Hands,
		ring1 = "Niqmaddu Ring",
		ring2 = "Epaminondas's Ring",
		back = WSD_Back,
		waist = "Sailfi Belt +1",
		legs = WSD_Legs,
		feet = "Thereoid Greaves"
	}
	
	sets.WS.LegSweep ={
	    ammo="Pemphredo Tathlum",
		head="Flam. Zucchetto +2",
		body="Gleti's Cuirass",
		hands="Gleti's Gauntlets",
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Flam. Gambieras +2",
		neck="Null Loop",
		waist="Null Belt",
		left_ear = "Moonshade Earring",
		right_ear = "Peltast's Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Stikini ring +1",
		back= WSD_Back
	}
	
	sets.WS.SavageBlade ={
		ammo="Knobkierrie",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Dgn. Collar +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear = "Moonshade Earring",
		right_ear = "Peltast's Earring",
		left_ring="Epaminondas's Ring",
		right_ring = "Ephramad's Ring",
		back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
	}
	
	sets.WS.OneHit ={
		ammo="Knobkierrie",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Dgn. Collar +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear = "Moonshade Earring",
		right_ear = "Peltast's Earring",
		left_ring="Epaminondas's Ring",
		right_ring = "Ephramad's Ring",
		back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
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
		back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
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
		back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
		}
	--Ninja Magic Sets--
	sets.NINMagic = {}

	sets.NINMagic.Utsusemi = {
		head = "Dampening Tam",
		neck = "Loricate Torque +1",
		ar1 = "Brutal Earring",
		ear2 = "Cessance Earring",
		body = "Emet harness +1",
		hands = "Sulev. Gauntlets +2",
		ring1 = "Chirich Ring +1",
		ring2 = "Petrov Ring",
		back="Null Shawl",
		waist = "Null Belt",
		legs = "Herculean Trousers",
		feet = "Valorous Greaves"
	}

	--Utility Sets--
	sets.Utility = {}

	sets.Utility.Weather = {waist = "Hachirin-no-obi", back = "Twilight Cape"}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Eshmun's Ring"}

	sets.Utility.Sleeping = {neck = "Opo-Opo Necklace"}
	--Job Ability Sets--

	sets.JA = {}
	sets.JA.Jump = {
		ammo="Aurgelmir Orb +1",
		head="Hjarrandi Helm",
		body="Hjarrandi Breast.",
		hands="Vis. Fng. Gaunt. +2",
		legs={ name="Ptero. Brais +3", augments={'Enhances "Strafe" effect',}},
		feet="Ostro Greaves",
		neck={ name="Vim Torque +1", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		right_ring="Petrov Ring",
		left_ring="Niqmaddu Ring",
		back={ name="Brigantia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	
	sets.JA.SpiritJump = {
		feet = "Pelt. Schyn. +2",	
	}
	
	sets.JA.Angon = {
		head = {name="Valorous Mask", augments={'Blood Pact Dmg.+3','Potency of "Cure" effect received+7%','"Treasure Hunter"+2','Mag. Acc.+7 "Mag.Atk.Bns."+7',}},
		ammo = "Angon",
		ear1 = "Dragoon's Earring",
		legs = "Volte Hose",
		waist = "Chaac Belt",
		Hands = "Pteroslaver Finger Gauntlets +3",
	} -- Angon, Relic Hands, and that dumb earring in Mamook if you feel like it
	
	sets.JA.AncientCircle = {legs = "Vishap Brais +3"} -- Artifact Legs

	sets.JA.SpiritLink = {
		head = "Vishap Armet +1",
		ear1 = "Pratik Earring",
		hands = "Pel. Vambraces +2",
		feet = "Ptero. Greaves +1"
	} -- Spirit Link/Empathy gear go here
	
	sets.JA.SpiritSurge = {
		neck = "Chanoix's Gorget",
		ear1 = "Anastasi Earring",
		ear2 = "Lancer's Earring",
		body = "Ptero. Mail +1",
		hands = "Despair Fin. Gaunt.",
		back = TP_Back,
		legs = "Vishap Brais +3",
		feet = "Ptero. Greaves +1"
	} -- Relic Body and Wyvern HP go here
	sets.JA.SteadyWing = sets.JA.SpiritSurge -- Wyvern HP
	sets.JA.SteadyWing["Body"] = "Valorous Mail" -- Path D Valorous Mail
	sets.JA.CallWyvern ={ feet = "Gelti's Boots"}
	
	--Precast Sets--
	
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		ammo = "Sapience Orb",
		head = "Herculean Helm",
		body = "Taeon Tabard",
		hands = "Leyline Gloves",
		legs = "Orvail Pants +1",
		feet = "Amalric Nails +1",
		neck = "Voltsurge Torque",
		waist = "Witful Belt",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		back = "Fi follet cape +1",
	}

	sets.Breath = {
		ammo = "Staunch Tathlum +1",
		head = "Ptero. Armet +1",
		neck = "Lancer's Torque",
		ear1 = "Anastasi Earring",
		ear2 = "Lancer's Earring",
		body = TP_Body,
		hands = "Despair Fin. Gaunt.",
		back = TP_Back,
		waist = "Glassblower's Belt",
		legs = "Vishap Brais +1",
		feet = "Ptero. Greaves +1"
	}
end

function precast(spell)
	if spell.action_type =="Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.english == "Stardiver" then
		equip(sets.Stardiver.Attack)
	elseif spell.english == "Impulse Drive" then
		equip(sets.ImpulseDrive.Attack)
	elseif spell.english == "Drakesbane" then
		equip(sets.Drakesbane.Attack)
	elseif spell.english == "Camlann's Torment" then
		equip(sets.CT.Attack)
	elseif spell.english == "Savage Blade" then
		equip(sets.WS.SavageBlade)
	elseif spell.english == "Cataclysm" then
		equip(sets.WS.Cata)
	elseif spell.english =="Earth Crusher" then 
		equip(sets.WS.AE)
	elseif spell.english == "Box Step" then
		equip(sets.Utility.Steps)
	elseif spell.name == "Dismiss" and pet.hpp < 100 then
		cancel_spell()
		windower.add_to_chat(50, "  " .. pet.name .. " is below full HP (<pethpp>), cancelling Dismiss!")
	elseif spell.name == "Call Wyvern" then
		equip(sets.JA.CallWyvern)
		if pet.isvalid then
			cancel_spell()
			send_command('input /ja "Spirit Link" <me>')
		else
			equip(sets.JA.SpiritSurge) -- Relic Body goes here; can just use Spirit Surge set if you have it augmented
		end
	elseif spell.name == "Spirit Surge" then
		equip(sets.JA.SpiritSurge)
	elseif spell.name == "Steady Wing" then
		equip(sets.JA.SteadyWing)
	elseif spell.name == "Angon" then
		equip(sets.JA.Angon)
	elseif spell.name == "Ancient Circle" then
		equip(sets.JA.AncientCircle)
	elseif spell.name == "Spirit Link" then
		if pet.isvalid then
			equip(sets.JA.SpiritLink)
		else
			cancel_spell()
			send_command('input /ja "Call Wyvern" <me>')
		end
	elseif spell.name == "Jump" or spell.name == "High Jump" or spell.name == "Soul Jump" then
		equip(sets.JA.Jump)
	elseif spell.name == "Spirit Jump" then
		equip(set_combine(sets.JA.Jump, sets.JA.SpiritJump))
	elseif spell.name == "Restoring Breath" then
		equip(sets.Breath)
	elseif spell.english == "Leg Sweep" or spell.english == "Flat Blade" then
		equip(sets.WS.LegSweep)
	elseif spell.type == "WeaponSkill" then
		equip(sets.WS.OneHit)
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

-- Pet Change: Occurs when your Pet is summoned or killed.
function pet_change(pet, gain)
	if gain == false and pet.name then
		-- General announcement for when your Wyvern is killed, Dimissed, or eaten by Spirit Surge
		windower.add_to_chat(50, " *** Ruh Roh! " .. string.upper(pet.name) .. " has died.***")
	end
end

-- Pet Midcast: If GearSwap sees your pet readying a WS, this occurs
function pet_midcast(spell)
	if string.find(spell.name, " Breath") then
		equip(sets.Breath)
		windower.send_command("wait 1.2;gs c petcast")
	-- Wyvern Breath Delay: 1.25s http://forum.square-enix.com/ffxi/threads/47481
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(sets.Utility.Doomed)
		end
		if buffactive["terror"] or buffactive["stun"] or buffactive["sleep"] then
			equip(sets.TP.DT)
		end
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(sets.Utility.Doomed)
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
	elseif command == "equip TP set" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command("@input /echo  <--- Equipped TP Set ----->")
	elseif command =="equip DT set" then
		equip (sets.TP.DT)
		send_command("@input /echo  <--- Equipped DT Set ----->")	
	end
end
