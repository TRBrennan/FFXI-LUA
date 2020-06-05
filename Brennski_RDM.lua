function get_sets()
	send_command("bind f9 gs c toggle Nuke set")
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind f11 gs c toggle TP set")
	send_command("bind f12 gs c toggle Enfeebling Set")

	function file_unload()
		send_command("unbind ^f9")
		send_command("unbind ^f10")
		send_command("unbind ^f11")
		send_command("unbind ^f12")

		send_command("unbind !f9")
		send_command("unbind !f10")
		self_command("unbind !f11")
		send_command("unbind !f12")

		send_command("unbind f9")
		send_command("unbind f10")
		send_command("unbind f11")
		send_command("unbind f12")
	end

	--Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard", "DT"}
	--1=Standard, 2 =DT --
	Idle_ind = 1

	sets.Idle.Standard = {
		main = "Bolelabunga",
		sub = "Genmei Shield",
		ammo = "Homiliary",
		head = {name = "Viti. Chapeau +1", augments = {'Enhances "Dia III" effect', 'Enhances "Slow II" effect'}},
		neck = "Sanctity Necklace",
		ear1 = "Genmei Earring",
		ear2 = "Infused Earring",
		body = "Jhakri Robe +2",
		hands = {name = "Merlinic Dastanas", augments = {"DEX+3", 'Mag. Acc.+16 "Mag.Atk.Bns."+16', '"Refresh"+1'}},
		ring1 = "Defending ring",
		ring2 = "Vocane Ring",
		waist = "Fucho-no-obi",
		legs = "Carmine Cuisses +1",
		feet = "Chironic Slippers",
		back = "Moonbeam Cape"
	}

	sets.Idle.DT = {
		main = "Bolelabunga",
		sub = "Genmei Shield",
		ammo = "Staunch Tathlum",
		neck = "Loricate Torque +1",
		ear1 = "Etiolation Earring",
		ear2 = "Infused Earring",
		head = "Ayanmo Zucchetto +1",
		body = "Ayanmo Corazza +1",
		hands = "Ayanmo Manopolas +1",
		ring2 = "Vocane Ring",
		ring1 = "Defending ring",
		waist = "Fucho-no-obi",
		legs = "Aya. Cosciales +2",
		feet = "Ayanmo Gambieras +1",
		back = "Moonbeam Cape"
	}

	--TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard", "EnSpell"}
	--1=Standard, 2=EnSpell--

	TP_ind = 1
	sets.TP.Standard = {
    ammo="Ginsen",
    head={ name="Taeon Chapeau", augments={'Accuracy+22','"Triple Atk."+1','AGI+4',}},
     body="Ayanmo Corazza +2",
    hands="Aya. Manopolas +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Lissome Necklace",
    waist="Kentarch Belt +1",
    left_ear="Cessance Earring",
    right_ear="Telos Earring",
    left_ring="Ilabrat Ring",
    right_ring="Chirich Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}

	sets.TP.EnSpell = {
	ammo="Ginsen",
    head={ name="Taeon Chapeau", augments={'Accuracy+22','"Triple Atk."+1','AGI+4',}},
    body="Ayanmo Corazza +2",
    hands="Aya. Manopolas +2",
    legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
    feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
    neck="Lissome Necklace",
    waist="Kentarch Belt +1",
    left_ear="Sherida Earring",
    right_ear="Hollow Earring",
    left_ring="Ilabrat Ring",
    right_ring="Chirich Ring",
    back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}

	sets.MeleeMode = {}
	sets.MeleeMode.Index = {"NotMelee", "Melee"}
	MeleeMode_ind = 1

	--Nuke Sets---
	sets.Nuke = {}

	sets.Nuke.index = {"Standard", "MagicBurst"}
	--1=Standard, 2= Magic Burst'--
	Nuke_ind = 1

	sets.Nuke.Standard = {
		main = "Grioavolr",
		sub = "Enki Strap",
		ammo = "Pemphredo Tathlum",
		head = {
			name = "Merlinic Hood",
			augments = {'Mag. Acc.+18 "Mag.Atk.Bns."+18', "Magic burst mdg.+7%", "CHR+7", "Mag. Acc.+12"}
		},
		neck = "Sanctity Necklace",
		ear2 = "Friomisi earring",
		ear1 = "Regal Earring",
		body = {
			name = "Merlinic Jubbah",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}
		},
		hands = "Jhakri Cuffs +2",
		ring1 = "Shiva Ring",
		ring2 = "Acumen Ring",
		waist = "Refoccilation Stone",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
		legs = {
			name = "Merlinic Shalwar",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "Mag. crit. hit dmg. +1%", "Mag. Acc.+11", '"Mag.Atk.Bns."+13'}
		},
		feet = {
			name = "Merlinic Crackows",
			augments = {'Mag. Acc.+20 "Mag.Atk.Bns."+20', '"Fast Cast"+3', "INT+10", '"Mag.Atk.Bns."+1'}
		}
	}

	sets.Nuke.MagicBurst = {
		main = "Grioavolr",
		sub = "Enki Strap",
		ammo = "Pemphredo Tathlum",
		neck = "Mizukage-no-Kubikazari",
		ear2 = "Friomisi earring",
		ear1 = "Regal Earring",
		ring1 = "Locus Ring",
		ring2 = "Mujin Band",
		waist = "Refoccilation Stone",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
		head = {
			name = "Merlinic Hood",
			augments = {'Mag. Acc.+18 "Mag.Atk.Bns."+18', "Magic burst dmg.+7%", "CHR+7", "Mag. Acc.+12"}
		},
		body = {
			name = "Merlinic Jubbah",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}
		},
		hands = "Amalric Gages +1",
		legs = {
			name = "Merlinic Shalwar",
			augments = {'Mag. Acc.+12 "Mag.Atk.Bns."+12', "Magic burst dmg.+8%", "MND+5", '"Mag.Atk.Bns."+12'}
		},
		feet = {
			name = "Merlinic Crackows",
			augments = {'Mag. Acc.+19 "Mag.Atk.Bns."+19', "Magic burst dmg.+9%", "MND+9", "Mag. Acc.+15"}
		}
	}

	--Enhancing Sets--
	sets.Enhancing = {}

	sets.Enhancing.Duration = {
		main = "Oranyan",
		sub = "Enki Strap",
		ammo = "Regal Gem",
		head = "Telchine Cap",
		neck = "Incanter's Torque",
		ear1 = "Andoaa Earring",
		ear2 = "Regal Earring",
		body = "Telchine Chasuble",
		hands = "Atrophy Gloves +1",
		ring1 = "Stikini Ring",
		ring2 = "Sirona's Ring",
		waist = "Olympus Sash",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
		legs = "Telchine Braconi",
		feet = "Lethargy Houseaux +1"
	}
	
	sets.Enhancing.Pot ={		
		ammo="Regal Gem",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
		hands={ name="Vitiation Gloves", augments={'Enhancing Magic duration',}},
		legs={ name="Telchine Braconi", augments={'"Fast Cast"+2','Enh. Mag. eff. dur. +8',}},
		feet="Leth. Houseaux +1",
		neck="Incanter's Torque",
		waist="Olympus Sash",
		left_ear="Andoaa Earring",
		right_ear="Etiolation Earring",
		right_ring="Stikini Ring",
		left_ring="Defending Ring",
		back={ name="Sucellos's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dual Wield"+10','Phys. dmg. taken-10%',}},
	}

	--Enfeebling Sets--
	sets.Enfeebling = {}

	sets.Enfeebling.index = {"Acc", "Pot"}
	--1=Acc, 2= Pot'--
	Enfeebling_ind = 1

	sets.Enfeebling.Acc = {
		main = "Grioavolr",
		sub = "Enki Strap",
		ammo = "Regal Gem",
		head = "Carmine Mask +1",
		neck = "Incanter's Torque",
		ear2 = "Dignitary's Earring",
		ear1 = "Regal Earring",
		body = "Atrophy Tabard +2",
		hands = "Kaykaus Cuffs",
		ring1 = "Stikini Ring",
		ring2 = "Kishar Ring",
		waist = "Luminary Sash",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
		legs = "Chironic Hose",
		feet = "Skaoi Boots"
	}

	sets.Enfeebling.Pot = {
		main = "Grioavolr",
		sub = "Enki Strap",
		ammo = "Regal Gem",
		head = "Carmine Mask +1",
		neck = "Imbodla Necklace",
		ear2 = "Dignitary's Earring",
		ear1 = "Regal Earring",
		body = "Lethargy Sayon +1",
		hands = "Lethargy Gantherots +1",
		ring1 = "Stikini Ring",
		ring2 = "Kishar Ring",
		waist = "Luminary Sash",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
		legs = "Psycloth Lappas",
		feet = "Skaoi Boots"
	}

	--Magic Sets--
	sets.Magic = {}

	sets.Magic.Healing = {
		main = "Oranyan",
		sub = "Enki Strap",
		ammo = "Regal Gem",
		head = "Vanya Hood",
		neck = "Incanter's Torque",
		ear1 = "Regal Earring",
		ear2 = "Mendi. Earring",
		body = "Vrikodara Jupon",
		hands = "Kaykaus Cuffs",
		ring1 = "Ephedra Ring",
		ring2 = "Sirona's Ring",
		waist = "Luminary Sash",
		back = "Solemnity Cape",
		legs = "Chironic Hose",
		feet = "Vanya Clogs"
	}

	sets.Magic.Regen = {
		main = "Bolelabunga",
		ammo = "Savant's Treatise",
		head = "Telchine Cap",
		neck = "Incanter's Torque ",
		ear1 = "Regal Earring",
		ear2 = "Regal Earring",
		body = "Telchine Chasuble",
		hands = "Kaykaus Cuffs",
		ring1 = "Stikini Ring",
		ring2 = "Kishar Ring",
		waist = "Luminary Sash",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
		legs = "Telchine Braconi",
		feet = "Telchine Pigaches"
	}

	sets.Magic.Dark = {
		main = "Grioavolr",
		sub = "Enki Strap",
		ammo = "Pemphredo Tathlum",
		head = "Pixie Hairpin +1",
		neck = "Incanter's Torque",
		ear2 = "Friomisi earring",
		ear1 = "Hecate's Earring",
		body = {
			name = "Merlinic Jubbah",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}
		},
		hands = "Amalric Gages +1",
		ring1 = "Evanescence Ring",
		ring2 = "Shiva Ring",
		waist = "Refoccilation Stone",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
		legs = {
			name = "Merlinic Shalwar",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "Mag. crit. hit dmg. +1%", "Mag. Acc.+11", '"Mag.Atk.Bns."+13'}
		},
		feet = "Merlinic Crackows"
	}

	sets.Magic.Stun = {
		main = "Grioavolr",
		sub = "Enki Strap",
		ammo = "Pemphredo Tathlum",
		head = {name = "Merlinic Hood", augments = {'"Fast Cast"+5', "Mag. Acc.+10"}},
		neck = "Voltsurge Torque",
		waist = "Luminary Sash",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		feet = {
			name = "Merlinic Crackows",
			augments = {'Mag. Acc.+20 "Mag.Atk.Bns."+20', '"Fast Cast"+3', "INT+10", '"Mag.Atk.Bns."+1'}
		},
		body = {
			name = "Merlinic Jubbah",
			augments = {"Accuracy+6", '"Fast Cast"+6', "MND+8", "Mag. Acc.+15", '"Mag.Atk.Bns."+5'}
		},
		legs = "Psycloth Lappas",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
	}

	sets.Magic.Refresh = {legs = "Lethargy Fuseau", waist = "Gishdubar Sash", head = "", body = "Atrophy Tabard +2"}

	--Precast Sets--
	sets.precast = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
		ammo = "Sapience Orb",
		head = "Carmine Mask +1",
		body = {
			name = "Merlinic Jubbah",
			augments = {"Accuracy+6", '"Fast Cast"+6', "MND+8", "Mag. Acc.+15", '"Mag.Atk.Bns."+5'}
		},
		hands = {name = "Merlinic Dastanas", augments = {'"Mag.Atk.Bns."+25', '"Fast Cast"+7', "Mag. Acc.+13"}},
		legs = "Psycloth Lappas",
		feet = "Carmine Greaves +1",
		neck = "Voltsurge Torque",
		waist = "Witful Belt",
		left_ear = "Etiolation Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		back = "Swith Cape"
	}

	sets.precast.FC.Regen = {
		ammo = "Sapience Orb",
		head = "Telchine Cap",
		neck = "Voltsurge Torque",
		right_ear = "Loquac. Earring",
		left_ear = "Etiolation Earring",
		body = "Telchine Chasuble",
		hands = "Telchine Gloves",
		left_ring = "Rahab Ring",
		right_ring = "Kishar Ring",
		waist = "Witful Belt",
		back = "Izdubar Mantle",
		legs = "Telchine Braconi",
		feet = "Telchine Pigaches"
	}

	--Utility and JA Sets --
	sets.Utility = {}

	sets.Utility.Weather = {waist = "Hachirin-no-obi"}
	
	sets.Utility.TH = {waist = "Chaac Belt", Hands = "Volte Bracers"}

	sets.Utility.DrainAspir = {
		main = "Grioavolr",
		ammo = "Pemphredo Tathlum",
		sub = "Enki Strap",
		head = "Pixie Hairpin +1",
		neck = "Erra Pendant",
		ear2 = "Friomisi earring",
		ear1 = "Hecate's Earring",
		body = {
			name = "Merlinic Jubbah",
			augments = {'Mag. Acc.+23 "Mag.Atk.Bns."+23', "INT+7", "Mag. Acc.+14", '"Mag.Atk.Bns."+14'}
		},
		hands = "Amalric Gages +1",
		ring1 = "Evanescence Ring",
		ring2 = "Kishar Ring",
		waist = "Fucho-no-obi",
		back={ name="Sucellos's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
		legs = "Merlinic Shalwar",
		feet = "Merlinic Crackows"
	}

	sets.Utility.Dia = {
		head = {name = "Viti. Chapeau +1", augments = {'Enhances "Dia III" effect', 'Enhances "Slow II" effect'}}
	}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Saida Ring"}

	sets.JA = {}

	sets.JA.CS = {body = "Vitiation Tabard"}

	sets.JA.Sab = {hands = "Lethargy Gantherots +1"}

	sets.JA.Composure = {
		Feet = "Lethargy Houseaux +1",
		body = "Lethargy Sayon +1",
		legs = "Lethargy Fuseau",
		head = "Lethargy Chappel"
	}

	--WS Sets--

	sets.WS = {}

	sets.WS.CDC = {
		ammo = "Yetshila ",
		head = "Taeon Chapeau",
		neck = "Fotia gorget",
		right_ear = "Moonshade Earring",
		left_ear = "Sherida Earring",
		body = "Ayanmo Corazza +1",
		hands = "Jhakri Cuffs +2",
		ring1 = "Begrudging Ring",
		ring2 = "Epona's Ring",
		back = "Lupine Cape",
		waist = "Fotia belt",
		legs = "Jhakri Slops +1",
		feet = "Thereoid Greaves"
	}

	sets.WS.Savage = {
		ammo = "Floestone",
		head = "Jhakri Coronal +1",
		neck = "Caro Necklace",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		body = "Jhakri Robe +2",
		hands = "Jhakri Cuffs +2",
		ring1 = "Petrov Ring",
		ring2 = "Ilabrat Ring",
		back = "Lupine Cape",
		waist = "Grunfeld Rope",
		legs = "Jhakri Slops +1",
		feet = "Thereoid Greaves"
	}

	sets.WS.Vorpal = {
		ammo = "Floestone",
		head = "Jhakri Coronal +1",
		neck = "Caro Necklace",
		ear1 = "Ishvara Earring",
		ear2 = "Moonshade Earring",
		body = "Jhakri Robe +2",
		hands = "Jhakri Cuffs +2",
		ring1 = "Begrudging Ring",
		ring2 = "Ilabrat Ring",
		back = "Lupine Cape",
		waist = "Grunfeld Rope",
		legs = "Jhakri Slops +1",
		feet = "Thereoid Greaves"
	}

	sets.WS.Req = {
		ammo = "Floestone",
		head = "Adhemar Bonnet +1",
		neck = "Fotia gorget",
		ear1 = "Moonshade Earring",
		ear2 = "Telos Earring",
		body = "Adhemar Jacket +1",
		hands = "Jhakri Cuffs +2",
		ring1 = "Petrov Ring",
		ring2 = "Epona's Ring",
		back = "Lupine Cape",
		waist = "Fotia belt",
		legs = "Carmine Cuisses +1",
		feet = "Carmine Greaves +1"
	}
end

function precast(spell)
	if spell.skill == "Elemental Magic" then
		equip(sets.precast.FC.Standard)
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
		equip(sets.precast.FC.Regen)
		send_command("@input /echo Regen FC Set")
	elseif spell.english == "Chainspell" then
		equip(sets.JA.CS)
		send_command("@input /echo Chainspell Set")
	elseif spell.english == "Stun" then
		equip(sets.magic.Stun)
		send_command("@input /echo Stun Set")
	elseif spell.english == "Chant du Cygne" then
		equip(sets.WS.CDC)
		send_command("@input /echo CDC Set")
	elseif spell.english == "Savage Blade" then
		equip(sets.WS.Savage)
		send_command("@input /echo Savage Blade Set")
	elseif spell.english == "Vorpal Blade" then
		equip(sets.WS.Vorpal)
		send_command("@input /echo Vorpal Blade Set")
	elseif spell.english == "Requiescat" then
		equip(sets.WS.Req)
		send_command("@input /echo Requisecat Set")
	elseif spell.english == "Sanguine Blade" then
		equip(sets.Magic.Dark)
		send_command("@input /echo Sanguine Blade Set")
	elseif spell.english == "Composure" then
		equip(sets.JA.Composure)
		send_command("@input /echo Composure Set")
	end
end

function midcast(spell, act)
	if spell.skill == "Enhancing Magic" then
		equip(sets.Enhancing.Normal)
		if buffactive["Composure"] and spell.target.type == "PLAYER" then
			equip(set_combine(sets.Enhancing.Duration, sets.JA.Composure))
			send_command("@input /echo Enhancing Duration + Composure Set")
		end
		if buffactive.Composure and spell.target.type == "PLAYER" then
			equip(set_combine(sets.Enhancing.Duration, sets.JA.Composure))
			send_command("@input /echo Enhancing Duration + Composure Set")
		end
		if
		spell.english == "Regen" or spell.english == "Regen II" or spell.english == "Regen III" or spell.english == "Regen IV" or
			spell.english == "Regen V"
		then
		equip(set_combine(sets.Enhancing.Duration, sets.Magic.Regen))
		send_command("@input /echo Enhancing Duration + Regen Set")
		end
		
		if spell.english == "Refresh" or spell.english == "Refresh II" or spell.english == "Refresh III" then
			equip(set_combine(sets.Enhancing.Duration, sets.Magic.Refresh))
			send_command("@input /echo Enhancing Duration + Refresh Set")
		end
	
		if spell.english == "Temper" or spell.english == "Temper II" or spell.english == "Phalanx" or spell.english == "Phalanx II" or spell.english =="Enblizzard" or spell.english =="Enfire" 
		or spell.english =="Enaero" or spell.english =="Enthunder" or spell.english =="Enstone" or spell.english =="Enwater" or spell.english =="Enblizzard II" or spell.english =="Enfire II" 
		or spell.english =="Enaero II" or spell.english =="Enthunder II" or spell.english =="Enstone II" or spell.english =="Enwater II" then
			equip(sets.Enhancing.Pot)
			send_command("@input /echo Enhancing Potency Set")
		end
		
	end
	
	if spell.english == "Stun" then
		equip(sets.Magic.Stun)
		send_command("@input /echo Stun MidCast Set")
	end
	if spell.skill == "Healing Magic" then
		equip(sets.Magic.Healing)
		send_command("@input /echo Healing Set")
	end

	if spell.skill == "Dark Magic" then
		equip(sets.Magic.Dark)
		send_command("@input /echo Dark Set")
	end

	if spell.skill == "Enfeebling Magic" then
		equip(sets.Enfeebling[sets.Enfeebling.index[Enfeebling_ind]])
		if buffactive["Saboteur"] then
			equip(set_combine(sets.Enfeebling.Pot, sets.JA.Sab))
		end
		if spell.english == "Dia III" or spell.english == "Slow II" then
		equip(set_combine(sets.Enfeebling[sets.Enfeebling.index[Enfeebling_ind]], sets.Utility.Dia))
		end
	end	

	if spell.skill == "Elemental Magic" then
		equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])
		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(set_combine(sets.Nuke[sets.Nuke.index[Nuke_ind]], sets.Utility.Weather))
		end
		if spell.english == "Aero" then
			equip(set_combine(sets.Nuke[sets.Nuke.index[Nuke_ind]], sets.Utility.TH))
		end
	end

	if spell.english == "Drain" or spell.english == "Drain II" or spell.english == "Aspir II" or spell.english == "Aspir" then
		equip(sets.Utility.DrainAspir)
		send_command("@input /echo DarinAspir Set")
	end
end

function aftercast(spell)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command("@input /echo TP Set")
		if buffactive["doom"] or buffactive["curse"] then
			equip(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.Utility.Doomed))
			status_change(player.status)
			send_command("@input /echo TP + Doomed Set")
		end
		if buffactive["Terror"] then
			equip(sets.TP.DT)
			status_change(player.status)
			send_command("@input /echo TPDT Set")
		end
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]], sets.Utility.Doomed))
			status_change(player.status)
			send_command("@input /echo Idle + Doomed Set")
		end
		if buffactive["Terror"] then
			equip(sets.TP.DT)
			status_change(player.status)
			send_command("@input /echo TSet")
		end
	end
end

function status_change(new, old)
	if player.status == "Engaged" then
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command("@input /echo TP Set")
		if buffactive["doom"] or buffactive["curse"] then
			equip(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.Utility.Doomed))
			status_change(player.status)
			send_command("@input /echo TP + Doomed Set")
		end
		if buffactive["Terror"] then
			equip(sets.TP.DT)
			status_change(player.status)
			send_command("@input /echo TPDT Set")
		end
	else
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive["doom"] or buffactive["curse"] then
			equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]], sets.Utility.Doomed))
			status_change(player.status)
			send_command("@input /echo Idle + Doomed Set")
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
	elseif command == "toggle TP set" then
		TP_ind = TP_ind + 1
		if TP_ind > #sets.TP.index then
			TP_ind = 1
		end
		send_command("@input /echo <----- TP Set changed to " .. sets.TP.index[TP_ind] .. " ---->")
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "toggle Enfeebling Set" then
		Enfeebling_ind = Enfeebling_ind + 1
		if Enfeebling_ind > #sets.Enfeebling.index then
			Enfeebling_ind = 1
		end
		send_command("@input /echo <----- Enfeebling Set changed to " .. sets.Enfeebling.index[Enfeebling_ind] .. " ---->")
		equip(sets.Enfeebling[sets.Enfeebling.index[Enfeebling_ind]])
	elseif command == "equip TP set" then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command == "equip Idle set" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end