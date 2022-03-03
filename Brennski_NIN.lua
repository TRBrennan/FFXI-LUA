function get_sets()
	-- Load dressup--
	send_command('lua l dressup')
	
	--Binds--
	send_command("bind !f10 gs c toggle Haste set;") -- Alt F10 swap DW for different Haste level 0 to 25 to 15
	send_command("bind !f9 gs c toggle TP set;") -- Alt F8 swap TP Sets
	
	--Haste list--
	sets.Haste = {}
	sets.Haste.index = {"Low", "Mid", "High"}
	Haste_ind = 1
	
	--Gear--
    DA_Back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
	WSD_back ="Sacro Mantle"
	
	--Utility--
	sets.Utility ={}
	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Eshmun's Ring"}
	
	--Idle Sets--
	sets.Idle = {}
	sets.Idle.index = {"Standard", "DT"}
	Idle_ind = 1
	sets.Idle.Standard = {
		ammo="Staunch Tathlum +1",
	    head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Carrier's Sash",
		left_ear="Infused Earring",
		right_ear="Eabani Earring",
		left_ring="Defending Ring",
		right_ring="Chirich Ring +1",
		back="Moonbeam Cape",
	}
	sets.Idle.DT = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Carrier's Sash",
		left_ear="Infused Earring",
		right_ear="Eabani Earring",
		left_ring="Defending Ring",
		right_ring="Chirich Ring +1",
		back="Moonbeam Cape",
	}

	--TP Sets--
	sets.TP = {}
	sets.TP.index = {"Standard", "Hybrid"}
	TP_ind = 1

	sets.TP.Standard = {}
	sets.TP.Standard.index = {"Low", "Mid", "High"}
	sets.TP.Standard.Low = {
		ammo="Seki Shuriken",
		head={ name="Ryuo Somen", augments={'STR+10','DEX+10','Accuracy+15',}},
		body={ name="Mpaca's Doublet", augments={'Path: A',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
		feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
		neck="Sanctity Necklace",
		waist="Reiki Yotai",
		left_ear="Suppanomimi",
		right_ear="Eabani Earring",
		left_ring="Gere Ring",
		right_ring="Chirich Ring +1",
		back = DA_Back
	}
	sets.TP.Standard.Mid = {
		ammo="Seki Shuriken",
		head={ name="Ryuo Somen", augments={'STR+10','DEX+10','Accuracy+15',}},
		body={ name="Mpaca's Doublet", augments={'Path: A',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
		feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
		neck="Sanctity Necklace",
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Eabani Earring",
		left_ring="Gere Ring",
		right_ring="Chirich Ring +1",
		back = DA_Back
	}
	sets.TP.Standard.High = {
		ammo="Seki Shuriken",
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body={ name="Mpaca's Doublet", augments={'Path: A',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
		feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
		neck="Lissome Necklace",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Brutal Earring",
		left_ring="Gere Ring",
		right_ring="Ilabrat Ring",
		back = DA_Back
	}


	sets.TP.Hybrid = {}
	sets.TP.Hybrid.index = {"Low", "Mid", "High"}
	sets.TP.Hybrid.Low = {
		ammo="Seki Shuriken",
		head={ name="Ryuo Somen", augments={'STR+10','DEX+10','Accuracy+15',}},
		body={ name="Mpaca's Doublet", augments={'Path: A',}},
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Reiki Yotai",
		left_ear="Suppanomimi",
		right_ear="Eabani Earring",
		left_ring="Gere Ring",
		right_ring="Chirich Ring +1",
		back=DA_Back
	}
	sets.TP.Hybrid.Mid = {
		ammo="Seki Shuriken",
		head={ name="Ryuo Somen", augments={'STR+10','DEX+10','Accuracy+15',}},
		body={ name="Mpaca's Doublet", augments={'Path: A',}},
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Eabani Earring",
		left_ring="Gere Ring",
		right_ring="Chirich Ring +1",
		back=DA_Back
	}
	sets.TP.Hybrid.High = {
		ammo="Seki Shuriken",
		head="Malignance Chapeau",
		body={ name="Mpaca's Doublet", augments={'Path: A',}},
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Brutal Earring",
		left_ring="Gere Ring",
		right_ring="Chirich Ring +1",
		back=DA_Back
	}
	--Defence Sets--
	set.DT = {
		ammo="Seki Shuriken",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Bathy Choker +1", augments={'Path: A',}},
		waist="Carrier's Sash",
		left_ear="Hearty Earring",
		right_ear="Eabani Earring",
		left_ring="Defending Ring",
		right_ring="Chirich Ring +1",
		back="Moonbeam Cape",
	}

	--Weaponskill Sets--
	sets.WS = {}
	sets.WS.index = {"Attack"}
	WS_ind = 1

	sets.MultiHit = {}
	sets.MultiHit.Attack = {
		ammo="Crepuscular Pebble",
		head="Mpaca's Cap",
		body={ name="Mpaca's Doublet", augments={'Path: A',}},
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
		feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Brutal Earring",
		left_ring="Gere Ring",
		right_ring="Ilabrat Ring",
		back = DA_Back,		
		waist = "Fotia Belt",
		neck = "Fotia Gorget",
		
	}

	sets.OneHit = {}
	sets.OneHit.Attack = {
		ammo="Crepuscular Pebble",
		head="Mpaca's Cap",
		Body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck = "Rep. Plat. Medal",
		waist = "Sailfi Belt +1",
		left_ear = "Ishvara Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ring = "Regal Ring",
		right_ring = "Ilabrat Ring",
		back = WSD_back,
	}
	
	sets.OtherWS = {}
	sets.OtherWS.Attack = {
		ammo="Crepuscular Pebble",
		head="Mpaca's Cap",
		Body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		legs = "Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck = "Rep. Plat. Medal",
		waist = "Sailfi Belt +1",
		left_ear = "Ishvara Earring",
		right_ear = {name = "Moonshade Earring", augments = {"Accuracy+4", "TP Bonus +25"}},
		right_ring = "Regal Ring",
		right_ring = "Ilabrat Ring",
		back = WSD_back,
	}
	
	sets.AeolianEdge = {}
	sets.AeolianEdge = {
		ammo = "Seething Bomblet +1",
		head = "Nyame Helm",
		neck = "Sanctity Necklace",
		ear2 = "Friomisi earring",
		ear1 = "Moonshade Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		ring1 = "Acumen Ring",
		ring2 = "Dingir Ring",
		waist = "Orpheus's Sash",
		back = WSD_back,
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}
	
	sets.WS.Hybrid = {
		ammo = "Seething Bomblet +1",
		head = "Nyame Helm",
		neck = "Sanctity Necklace",
		ear2 = "Friomisi earring",
		ear1 = "Moonshade Earring",
		body = "Nyame Mail",
		hands = "Nyame Gauntlets",
		left_ring="Gere Ring",
		right_ring="Regal Ring",
		waist = "Orpheus's Sash",
		back = WSD_back,
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
	}
	
	sets.WS.Crit ={
		ammo = "Yetshila",
	    head={ name="Blistering Sallet +1", augments={'Path: A',}},
		body="Malignance Tabard",
		hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
		legs="Mpaca's Hose",
		feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Cessance Earring",
		right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		left_ring="Gere Ring",
		right_ring="Hetairoi Ring",
		Back = DA_Back
	}

	--Job Ability Sets--
	sets.JA = {}

	--Magic Sets---

	sets.Magic = {}

	sets.Magic.Self = {
		head = "Nyame Helm",
		body = "Ashera Harness",
		hands = "Leyline Gloves",
		legs = "Nyame Flanchard",
		neck = "Voltsurge Torque",
		waist = "Carrier's Sash",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		right_ring = "Kishar Ring",
		left_ring = "Defending Ring",
		feet = "Hattori Kyahan",
		back = "Andartia's Mantle"
	}

	sets.Magic.Nuke = {
	   ammo="Pemphredo Tathlum",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Digni. Earring",
		right_ear="Friomisi Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Acumen Ring",
		back="Izdubar Mantle",
	}

	sets.Magic.Debuff = {   
		ammo="Pemphredo Tathlum",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Sanctity Necklace",
		waist="Eschan Stone",
		left_ear="Digni. Earring",
		right_ear="Friomisi Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Acumen Ring",
		back="Izdubar Mantle",
	}
	--Low special gear--
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
		hands = "Carmine Finger Gauntlets +1", --8
		back = "Lutian Cape", -- 2
		legs = "Adhemar Kecks",
		waist = "Impulse Belt", -- 2
		feet = "Meg. Jam. +2" -- 8
	}
	sets.precast = {}
	sets.precast.FC = {
		--ammo="Staunch Tathlum +1",
		head = {name = "Herculean Helm", augments = {"Accuracy+19 Attack+19", "Damage taken-3%", "AGI+3", "Accuracy+2"}},
		body = "Adhemar Jacket",
		hands = "Leyline Gloves",
		legs = {name = "Herculean Trousers", augments = {"Mag. Acc.+21", '"Fast Cast"+5', "CHR+3"}},
		feet = "Herculean Boots",
		neck = "Voltsurge Torque",
		waist = "Carrier's Sash",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		back = "Mujin Mantle"
	}
end

function precast(spell)
	if spell.type == "Ranged Attack" then
		equip(sets.snapshot)
	elseif spell.type == "WeaponSkill" then
		if player.tp >= 1000 then
			if spell.english == "Blade: Shun" or spell.english == "Blade: Jin" or spell.english == "Blade: Ku" then
				equip(sets.MultiHit[sets.WS.index[WS_ind]])
			elseif spell.english == "Blade: Hi" or spell.english == "Blade: Ten" or spell.english == "Blade: Kamu"  then
				equip(sets.OneHit[sets.WS.index[WS_ind]])
			elseif spell.english == "Blade: Chi" or spell.english == "Blade: Teki" or spell.english == "Blade: Yu" or spell.english == "Aeolian Edge" or spell.english == "Blade: To" or spell.english == "Tachi: Jinpu"  then
				equip(sets.WS.Hybrid)				
			elseif spell.english == "Evisceration" then
				equip(sets.WS.Crit)
			elseif spell.type == "WeaponSkill" then
				equip(sets.OtherWS[sets.WS.index[WS_ind]])
			end
		else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
		end
	elseif spell.action_type =="Magic" then
		equip(sets.precast.FC)
	end
end

function midcast(spell, act)
	if
		spell.english == "Utsusemi: Ichi" or spell.english == "Utsusemi: Ni" or spell.english == "Utsusemi: San" or
			spell.english == "Migawari: Ichi" or
			spell.english == "Kakka: Ichi" or
			spell.english == "Yain: Ichi" or
			spell.english == "Ashia: Ichi" or
			spell.english == "Yurin: Ichi" or
			spell.english == "Myoshu: Ichi" or
			spell.english == "Gekka: Ichi"
	 then
		equip(sets.Magic.Self)
	elseif spell.action_type =="Magic" then
		equip(sets.Magic.Nuke)
		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(sets.Obi)
		end
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]
			)
		)
	else
		equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]]))
	end
end

function status_change(new, old)
	if new == "Engaged" then
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]
			)
		)
	else
		equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]]))
	end
end

function buff_change(buff, gain)
	if (buff == "terror" or buff == "stun" or (buff == "sleep" or buff == "lullaby")) then
		if gain then
			if player.status == "Engaged" then
				equip(sets.Idle.DT)
			elseif player.status == "Idle" then
				equip(sets.Idle.DT)
			end
		else
			if player.status == "Engaged" then
				equip(
				set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]
			)
		)
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
			equip(
				set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]],
				sets.Weapon_melee[sets.Weapon_melee.index[Wm_ind]]
			)
		)
		elseif player.status == 'Engaged' and buffactive['terror'] or buffactive['stun'] or buffactive['sleep'] then
			equip(sets.DT)
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
		send_command("@input /echo <----- Haste Set changed to " .. sets.Haste.index[Haste_ind] .. " ----->")
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]]
			)
		)
	elseif command == "toggle Haste set" then
		Haste_ind = Haste_ind + 1
		if Haste_ind > #sets.Haste.index then
			Haste_ind = 1
		end
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ----->")
		send_command("@input /echo <----- Haste Set changed to " .. sets.Haste.index[Haste_ind] .. " ----->")
		equip(
			set_combine(
				sets.TP[sets.TP.index[TP_ind]][sets.Haste.index[Haste_ind]]
			)
		)
	elseif command == "toggle idle set" then
		Idle_ind = Idle_ind + 1
		if Idle_ind > #sets.Idle.index then
			Idle_ind = 1
		end
		send_command("@input /echo <----- Idle Set changed to " .. sets.Idle.index[Idle_ind] .. " ----->")
		equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]]))
	end
end

--Unload Dressup-
function file_unload(file_name)
 
  send_command('lua u dressup')
end