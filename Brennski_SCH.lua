function get_sets()
-- Load dressup--
	send_command('lua l dressup')
	send_command('lua l sch-hud')
	
	send_command("bind f9 gs c toggle Nuke set")
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind f11 gs c toggle Enhancing set")

	function file_unload()
		send_command("unbind ^f9")
		send_command("unbind ^f10")
		send_command("unbind ^f11")

		send_command("unbind !f9")
		send_command("unbind !f10")
		self_command("unbind !f11")

		send_command("unbind f9")
		send_command("unbind f10")
		send_command("unbind f11")
	end

	--Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard", "DT"}
	--1=Standard, 2 =DT --
	Idle_ind = 1

	sets.Idle.Standard = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo = "Homiliary",
		head = "Befouled Crown",
		neck = "Loricate Torque +1",
		ear1 = "Eabani Earring",
		ear2 = "Infused Earring",
		body = "Arbatel Gown +2",
		hands = {name = "Merlinic Dastanas", augments = {"DEX+3", 'Mag. Acc.+16 "Mag.Atk.Bns."+16', '"Refresh"+1'}},
		ring1="Defending ring",
		ring2="Shneddick Ring",
		waist = "Carrier's Sash",
		legs = "Assiduity Pants +1",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		back = "Moonbeam Cape"
	}

	sets.Idle.DT = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo = "Staunch Tathlum +1",
		head = "Befouled Crown",
		neck = "Loricate Torque +1",
		ear1 = "Hearty Earring",
		ear2 = "Infused Earring",
		body = "Arbatel Gown +2",
		hands = "Nyame Gauntlets",
		ring1="Defending ring",
		ring2="Shneddick Ring",
		waist = "Carrier's Sash",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		back = "Moonbeam Cape"
	}

	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard"}
	--1=Standard--

	TP_ind = 1
	sets.TP.Standard = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo = "Staunch Tathlum +1",
		head = "Befouled Crown",
		neck = "Loricate Torque +1",
		ear1 = "Hearty Earring",
		ear2 = "Infused Earring",
		body = "Arbatel Gown +2",
		hands = "Nyame Gauntlets",
		ring1="Defending ring",
		ring2="Shneddick Ring",
		waist = "Carrier's Sash",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
		back = "Moonbeam Cape"
	}

	--WS Sets--

	sets.WS = {}

	sets.WS.Myrkr = {
		ammo = "Strobilus",
		head = "Pixie Hairpin +1",
		neck = "Sanctity Necklace",
		ear2 = "Etiolation Earring",
		ear1 = "Barkarole Earring",
		body = "Amalric Doublet",
		hands = "Amalric Gages +1",
		ring1 = "Mephitas's Ring",
		ring2 = "Rahab Ring",
		waist = "Sacro Cord",
		back = "Bane Cape",
		legs = "Amalric Slops",
		feet = "Amalric Nails +1"
	}

	--Nuke Sets---
	sets.Nuke = {}

	sets.Nuke.index = {"Standard", "MagicBurst"}
	--1=Standard, 2= Magic Burst'--
	Nuke_ind = 1

	sets.Nuke.Standard = {
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo = "Pemphredo Tathlum",
		head="Agwu's Cap",
		neck="Argute Stole +2",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		body = "Agwu's Robe",
		hands = "Agwu's Gages",
		ring1 = "Freke Ring",
		ring2 = "Acumen Ring",
		waist = "Sacro Cord",
		back = "Lugh's Cape",
		legs="Agwu's Slops",
		--feet = {name = "Merlinic Crackows",augments = {'Mag. Acc.+20 "Mag.Atk.Bns."+20', '"Fast Cast"+3', "INT+10", '"Mag.Atk.Bns."+1'}}
		feet ="Arbatel Loafers +3",
	}

	sets.Nuke.MagicBurst = {
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		--head="Agwu's Cap",
		head = "Pedagogy Mortarboard +3",
		body = "Agwu's Robe",
		hands = "Agwu's Gages",
		legs="Agwu's Slops",
		--feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
		feet ="Arbatel Loafers +3",
		neck="Argute Stole +2",
		waist="Sacro Cord",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		--left_ring="Locus Ring",
		left_ring = "Freke Ring",
		right_ring="Mujin Band",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}
	

	--Enhancing Sets--
	sets.Enhancing = {}

	sets.Enhancing.index = {"Normal", "Storms"}
	--1=Normal, 2=Storms--
	Enhancing_ind = 1

	sets.Enhancing.Normal = {
		main = "Pedagogy Staff",
		sub = "Enki Strap",
		ammo = "Pemphredo Tathlum",
		head = "Telchine Cap",
		neck = "Incanter's Torque",
		ear1 = "Andoaa Earring",
		ear2 = "Mimir Earring",
		body = "Telchine Chasuble",
		hands = "Telchine Gloves",
		ring1 = "Stikini ring +1",
		ring2 = "Stikini ring +1",
		waist = "Embla Sash",
		back = "Fi follet cape +1",
		legs = "Telchine Braconi",
		feet = "Telchine Pigaches"
	}

	sets.Enhancing.Storms = {
		main = "Pedagogy Staff",
		sub = "Enki Strap",
		ammo = "Pemphredo Tathlum",
		head = "Telchine Cap",
		neck = "Incanter's Torque",
		ear1 = "Andoaa Earring",
		ear2 = "Mimir Earring",
		body = "Telchine Chasuble",
		hands = "Telchine Gloves",
		ring1 = "Stikini ring +1",
		ring2 = "Stikini ring +1",
		waist = "Embla Sash",
		back = "Fi follet cape +1",
		legs = "Telchine Braconi",
		feet = "Pedagogy loafers"
	}

	--Magic Sets--
	sets.Magic = {}
	
	sets.Magic.Aquaveil = {
	    main={ name="Pedagogy Staff", augments={'Path: C',}},
		sub="Enki Strap",
		ammo="Staunch Tathlum +1",
		head="Chironic Hat",
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
		hands={ name="Telchine Gloves", augments={'"Fast Cast"+4','Enh. Mag. eff. dur. +10',}},
		legs={ name="Telchine Braconi", augments={'"Fast Cast"+2','Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
		neck="Incanter's Torque",
		waist="Emphatikos Rope",
		left_ear="Andoaa Earring",
		right_ear="Mimir Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Fi Follet Cape +1", augments={'Path: A',}},
	}
	
	sets.Magic.Enfeebling = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo = "Pemphredo Tathlum",
		neck = "Argute Stole +2",
		ear2 = "Vor Earring",
		ear1 = "Malignance Earring",
		--body = {name = "Merlinic Jubbah",augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}},
		body = "Cohort Cloak +1",
		hands = "Kaykaus Cuffs +1",
		ring1 = "Stikini ring +1",
		ring2 = "Stikini ring +1",
		waist = "Obstin. Sash",
		back = "Aurist's Cape +1",
		legs={ name="Chironic Hose", augments={'Mag. Acc.+30','Haste+1','MND+14','"Mag.Atk.Bns."+9',}},
		feet ="Arbatel Loafers +3",
	}
	
	sets.Magic.Impact= {
	    main={ name="Bunzi's Rod", augments={'Path: A',}},
		sub="Ammurapi Shield",
		ammo="Pemphredo Tathlum",
		body="Twilight Cloak",
		hands={ name="Kaykaus Cuffs +1", augments={'MP+80','MND+12','Mag. Acc.+20',}},
		legs={ name="Chironic Hose", augments={'Mag. Acc.+30','Haste+1','MND+14','"Mag.Atk.Bns."+9',}},
		feet="Arbatel Loafers +3",
		neck={ name="Argute Stole +2", augments={'Path: A',}},
		waist={ name="Obstin. Sash", augments={'Path: A',}},
		left_ear="Malignance Earring",
		right_ear="Crep. Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}

	sets.Magic.Healing = {
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Arbatel Gown +2",
		hands={ name="Kaykaus Cuffs +1", augments={'MP+80','MND+12','Mag. Acc.+20',}},
		legs={ name="Chironic Hose", augments={'Mag. Acc.+30','Haste+1','MND+14','"Mag.Atk.Bns."+9',}},
		feet={ name="Kaykaus Boots +1", augments={'Mag. Acc.+20','"Cure" potency +6%','"Fast Cast"+4',}},
		neck="Incanter's Torque",
		waist="Carrier's Sash",
		left_ear="Regal Earring",
		right_ear="Meili Earring",
		left_ring="Defending Ring",
		right_ring="Gelatinous Ring +1",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}

	sets.Magic.Regen = {
		main = "Pedagogy Staff",
		sub = "Enki Strap",
		ammo = "Pemphredo Tathlum",
		head = "Arbatel Bonnet +2",
		neck = "Incanter's Torque ",
		ear1 = "Regal Earring",
		ear2 = "Regal Earring",
		body = "Telchine Chasuble",
		hands = "Telchine Gloves",
		ring1 = "Stikini ring +1",
		ring2 = "Kishar Ring",
		waist = "Embla Sash",
		back = "Lugh's Cape",
		legs = "Telchine Braconi",
		feet = "Telchine Pigaches"
	}

	sets.Magic.Dark = {
		main = "Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo = "Pemphredo Tathlum",
		head = "Pixie Hairpin +1",
		neck = "Incanter's Torque",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		body = "Agwu's Robe",
		hands = "Agwu's Gages",
		ring1 = "Evanescence Ring",
		ring2 = "Archon Ring",
		waist = "Sacro Cord",
		back = "Lugh's Cape",
		legs = {name = "Merlinic Shalwar",augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "Mag. crit. hit dmg. +1%", "Mag. Acc.+11", '"Mag.Atk.Bns."+13'}},
		feet = "Merlinic Crackows"
	}

	sets.Magic.Stun = {
		main = "Bunzi's Rod",
		ammo = "Pemphredo Tathlum",
		head = {name = "Merlinic Hood", augments = {'"Fast Cast"+5', "Mag. Acc.+10"}},
		neck = "Voltsurge Torque",
		waist = "Obstin. Sash",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		feet = {name = "Merlinic Crackows",augments = {'Mag. Acc.+20 "Mag.Atk.Bns."+20', '"Fast Cast"+3', "INT+10", '"Mag.Atk.Bns."+1'}},
		body = {name = "Merlinic Jubbah",augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}},
		legs = "Psycloth Lappas",
		back = "Lugh's Cape"
	}
	
	sets.Magic.HelixMB ={
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		ammo="Ghastly Tathlum +1",
		body = "Agwu's Robe",
		head = "Pedagogy Mortarboard +3",
		hands = "Agwu's Gages",
		legs="Agwu's Slops",
		feet ="Arbatel Loafers +3",
		neck="Argute Stole +2",
		waist = "Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Freke Ring",
		right_ring="Mujin Band",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}
	
	sets.Magic.DarkHelixMB ={
		main="Bunzi's Rod",
		sub="Ammurapi Shield",
		--ammo="Pemphredo Tathlum",
		ammo="Ghastly Tathlum +1",
		head = "Pixie Hairpin +1",
		body = "Agwu's Robe",
		hands = "Agwu's Gages",
		legs="Agwu's Slops",
		feet={ name="Amalric Nails +1", augments={'Mag. Acc.+20','"Mag.Atk.Bns."+20','"Conserve MP"+7',}},
		neck="Argute Stole +2s",
		waist = "Orpheus's Sash",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring = "Archon Ring",
		right_ring="Mujin Band",
		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
		--back = "Bookworm's Cape"
	}
	
	sets.Magic.Cursna ={
	    main="Gada",
		sub="Ammurapi Shield",
		ammo="Staunch Tathlum +1",
		head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		body="Arbatel Gown +2",
		hands={ name="Kaykaus Cuffs +1", augments={'MP+80','MND+12','Mag. Acc.+20',}},
		legs="Acad. Pants +2",
		feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		neck="Malison Medallion",
		waist="Gishdubar Sash",
		left_ear="Regal Earring",
		right_ear="Meili Earring",
		left_ring={name="Ephedra Ring",bag="wardrobe2"},
		right_ring={name="Ephedra Ring",bag="wardrobe6"},
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}

	--Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		main = "Pedagogy Staff",
		sub = "Enki Strap",
		ammo="Sapience Orb",
		head={ name="Merlinic Hood", augments={'"Fast Cast"+5','Mag. Acc.+10',}},
		body={ name="Merlinic Jubbah", augments={'Accuracy+6','"Fast Cast"+6','MND+8','Mag. Acc.+15','"Mag.Atk.Bns."+5',}},
		hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+25','"Fast Cast"+7','Mag. Acc.+13',}},
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21','"Fast Cast"+6','STR+6','"Mag.Atk.Bns."+13',}},
		neck="Voltsurge Torque",
		waist="Embla Sash",
		left_ear="Malignance Earring",
		right_ear="Loquac. Earring",
		left_ring="Rahab Ring",
		right_ring="Kishar Ring",
		back = "Fi follet cape +1",
	}

	sets.precast.FC.Regen = {
		main = "Pedagogy Staff",
		sub = "Enki Strap",
		ammo = "Sapience Orb",
		head = "Telchine Cap",
		neck = "Voltsurge Torque",
		right_ear = "Loquac. Earring",
		left_ear = "Etiolation Earring",
		body = "Telchine Chasuble",
		hands = "Telchine Gloves",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		waist="Embla Sash",
		back = "Fi follet cape +1",
		legs = "Telchine Braconi",
		feet = "Telchine Pigaches"
	}

	sets.precast.FC.Storms = {
		main = "Pedagogy Staff",
		sub = "Enki Strap",
		ammo = "Sapience Orb",
		head = "Telchine Cap",
		neck = "Voltsurge Torque",
		right_ear = "Loquac. Earring",
		left_ear = "Etiolation Earring",
		body = "Telchine Chasuble",
		hands = "Telchine Gloves",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		waist="Embla Sash",
		back = "Fi follet cape +1",
		legs = "Telchine Braconi",
		feet = "Telchine Pigaches"
	}
	
	sets.precast.FC.Impact ={
	    main={ name="Pedagogy Staff", augments={'Path: C',}},
		sub="Enki Strap",
		ammo="Sapience Orb",
		body="Twilight Cloak",
		hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+25','"Fast Cast"+7','Mag. Acc.+13',}},
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21','"Fast Cast"+6','STR+6','"Mag.Atk.Bns."+13',}},
		neck="Voltsurge Torque",
		waist="Embla Sash",
		left_ear="Malignance Earring",
		right_ear="Loquac. Earring",
		left_ring="Rahab Ring",
		right_ring="Kishar Ring",
		back={ name="Fi Follet Cape +1", augments={'Path: A',}},
	}
	
	--Utility and JA Sets --
	sets.Utility = {}
	
	sets.Utility.Sub = {waist = "Embla Sash"}

	sets.Utility.Weather = {waist = "Hachirin-no-obi"}

	sets.Utility.Klima = {feet ="Arbatel Loafers +3"}

	sets.Utility.DrainAspir = {
		ammo = "Pemphredo Tathlum",
		head = "Pixie Hairpin +1",
		neck = "Sanctity Necklace",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		body = {
			name = "Merlinic Jubbah",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}
		},
		hands = "Nyame Gauntlets",
		ring1 = "Evanescence Ring",
		ring2 = "Freke Ring",
		waist = "Fucho-no-obi",
		back = "Lugh's Cape",
		legs = {
			name = "Merlinic Shalwar",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "Mag. crit. hit dmg. +1%", "Mag. Acc.+11", '"Mag.Atk.Bns."+13'}
		},
		feet = "Merlinic Crackows"
	}

	sets.Utility.Tabula = {legs = "Argute Pants +2"}

	sets.Utility.Perpetuance = {hands = "Arbatel Bracers +2"}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Eshmun's Ring"}

	--WS Sets--

	sets.WS = {}
end

function precast(spell)
	if spell.skill == "Elemental Magic" then
		equip(sets.precast.FC.Standard)
			if spell.english == "Impact" then
				equip(sets.precast.FC.Impact)
			end
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.skill == "Enhancing Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.skill == "Dark Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.skill == "Healing Magic" then
		equip(sets.precast.FC.Standard)
	elseif
		spell.english == "Regen" or spell.english == "Regen II" or spell.english == "Regen III" or spell.english == "Regen IV" or
			spell.english == "Regen V"
	 then
		equip(sets.precast.FC.Standard)
	elseif spell.english == "Tabula Rasa" then
		equip(sets.Utility.Tabula)
	elseif spell.english == "Stun" then
		equip(sets.Magic.Stun)
	elseif spell.english == "Sublimation" then
		equip(sets.Utility.Sub)
	elseif spell.english == "Impact" then
		equip(sets.precast.FC.Impact)
	end
end

function midcast(spell, act)
	if spell.skill == "Enhancing Magic" then
		equip(sets.Enhancing[sets.Enhancing.index[Enhancing_ind]])
		if buffactive["Perpetuance"] then
			equip(set_combine(sets.Enhancing[sets.Enhancing.index[Enhancing_ind]], sets.Utility.Perpetuance))
		end
		if spell.name == "Aquaveil" then
			equip(sets.Magic.Aquaveil)
			if buffactive["Perpetuance"] then
				equip(set_combine(sets.Magic.Aquaveil, sets.Utility.Perpetuance))
			end
		end
	end
	if spell.english == "Embrava" then
		equip(sets.Enhancing[sets.Enhancing.index[Enhancing_ind]])
		if buffactive["Perpetuance"] then
			equip(set_combine(sets.Enhancing[sets.Enhancing.index[Enhancing_ind]], sets.Utility.Perpetuance))
		end
	end
	if spell.english == "Stun" then
		equip(sets.Magic.Stun)
	end
	if spell.skill == "Healing Magic" then
		equip(sets.Magic.Healing)
		 if spell_element == world.weather_element or spell_element == world.day_element then
			equip(sets.Utility.Weather)
		end
		
		if spell.english =="Cursna" then
			equip(sets.Magic.Cursna)
		end
	end

	if spell.skill == "Dark Magic" then
		equip(sets.Magic.Dark)
	end

	if spell.skill == "Enfeebling Magic" then
		equip(sets.Magic.Enfeebling)
	end

	if spell.skill == "Elemental Magic" then
		equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])

		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(set_combine(sets.Nuke[sets.Nuke.index[Nuke_ind]], sets.Utility.Weather))
			-- if buffactive["Klimaform"] then
				-- equip(set_combine(sets.Nuke[sets.Nuke.index[Nuke_ind]], sets.Utility.Klima))
			-- end
		end
	
		if spell.english == "Impact" then
				equip(sets.Magic.Impact)
		end
	end

	if spell.english == "Regen" or spell.english == "Regen II" or spell.english == "Regen III" or spell.english == "Regen IV" or spell.english == "Regen V" then
		equip(sets.Magic.Regen)
		if buffactive["Perpetuance"] then
			equip(set_combine(sets.Magic.Regen, sets.Utility.Perpetuance))
		end
	end

	if
		spell.english == "Geohelix" or spell.english == "Hydrohelix" or spell.english == "Anemohelix" or
			spell.english == "Pyrohelix" or
			spell.english == "Anemohelix" or
			spell.english == "Ionohelix" or
			spell.english == "Luminohelix" or
			spell.english == "Geohelix II" or
			spell.english == "Hydrohelix II" or
			spell.english == "Anemohelix II" or
			spell.english == "Pyrohelix II" or
			spell.english == "Anemohelix II" or
			spell.english == "Ionohelix II" or
			spell.english == "Luminohelix II"
		then
			equip(sets.Magic.HelixMB)
	end

	if spell.english == "Noctohelix" or spell.english == "Noctohelix II" or spell.english == "Kastura" then
		equip(sets.Magic.DarkHelixMB)
	end

	if spell.english == "Drain" or spell.english == "Drain II" or spell.english == "Aspir II" or spell.english == "Aspir" then
		equip(sets.Utility.DrainAspir)
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.Utility.Doomed))
			status_change(player.status)
		end
		if buffactive["Terror"] then
			equip(sets.TP.DT)
			status_change(player.status)
		end
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]], sets.Utility.Doomed))
			status_change(player.status)
		end
		if buffactive["Terror"] then
			equip(sets.TP.DT)
			status_change(player.status)
		end
	end
end

function status_change(new, old)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(sets.Utility.Doom)
		end
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(sets.Utility.Doom)
		end
	end
end

function self_command(command)
	if command == "toggle Nuke set" then
		Nuke_ind = Nuke_ind + 1
		if Nuke_ind > #sets.Nuke.index then
			Nuke_ind = 1
		end
		send_command("@input /echo <----- Nuke Set changed to " .. sets.Nuke.index[Nuke_ind] .. " ----->")
		equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])
	elseif command == "toggle Idle set" then
		Idle_ind = Idle_ind + 1
		if Idle_ind > #sets.Idle.index then
			Idle_ind = 1
		end
		send_command("@input /echo <----- Idle Set changed to " .. sets.Idle.index[Idle_ind] .. " ----->")
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	elseif command == "toggle Enhancing set" then
		Enhancing_ind = Enhancing_ind + 1
		if Enhancing_ind > #sets.Enhancing.index then
			Enhancing_ind = 1
		end
		send_command("@input /echo <----- Enhancing Set changed to " .. sets.Enhancing.index[Enhancing_ind] .. " ---->")
		equip(sets.Enhancing[sets.Enhancing.index[Enhancing_ind]])
	elseif command == "equip TP set" then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "equip Idle set" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end
