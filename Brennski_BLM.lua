function get_sets()

    send_command('bind f9 gs c toggle Nuke set')
    send_command('bind f10 gs c toggle Idle set')
    send_command('bind f11 gs c toggle Enhancing set')

    function file_unload()

        send_command('unbind ^f9')
        send_command('unbind ^f10')
        send_command('unbind ^f11')

        send_command('unbind !f9')
        send_command('unbind !f10')
        self_command('unbind !f11')

        send_command('unbind f9')
        send_command('unbind f10')
        send_command('unbind f11')

    end

	Nuke_Back ={ name="Taranus's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}}
		
    -- Idle Sets--  
    sets.Idle = {}

    sets.Idle.index = {'Standard', 'DT', 'Death'}
    -- 1=Standard, 2 =DT , 3 = Death--
    Idle_ind = 1

    sets.Idle.Standard = {
       	main = "Marin Staff +1",
		sub="Enki Strap",
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		body={ name="Agwu's Robe", augments={'Path: A',}},
		hands={ name="Merlinic Dastanas", augments={'DEX+3','Mag. Acc.+16 "Mag.Atk.Bns."+16','"Refresh"+1',}},
		legs="Assid. Pants +1",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Incanter's Torque",
		waist="Carrier's Sash",
		left_ear="Hearty Earring",
		right_ear="Infused Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back = Nuke_Back,

    }

    sets.Idle.DT = {
        main = "Marin Staff +1",
		sub="Enki Strap",
		ammo="Staunch Tathlum +1",
		head="Nyame Helm",
		body={ name="Agwu's Robe", augments={'Path: A',}},
		hands="Nyame Gauntlets",
		legs="Assid. Pants +1",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Incanter's Torque",
		waist="Carrier's Sash",
		left_ear="Hearty Earring",
		right_ear="Infused Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back = Nuke_Back,

    }

    sets.Idle.Death = {
        ammo = "Strobilus",
        main = "Lathi",
        sub = "Enki Strap",
        head = "Pixie Hairpin +1",
        neck = "Sanctity Necklace",
        ear2 = "Etiolation Earring",
        ear1 = "Barkarole Earring",
        body = "Amalric Doublet",
        hands = "Amalric Gages +1",
        ring1 = "Mephitas's Ring",
        ring2 = "Defending Ring",
        waist = "Fucho-no-obi",
        back = "Taranus's Cape",
        legs = "Amalric Slops",
        feet = "Amalric Nails"
    }

    -- TP Sets--
    sets.TP = {}

    sets.TP.index = {'Standard'}
    -- 1=Standard--

    TP_ind = 1
    sets.TP.Standard = {
		main = "Marin Staff +1",
		sub="Enki Strap",
		ammo="Staunch Tathlum +1",
		head="Befouled Crown",
		body={ name="Agwu's Robe", augments={'Path: A',}},
		hands={ name="Merlinic Dastanas", augments={'DEX+3','Mag. Acc.+16 "Mag.Atk.Bns."+16','"Refresh"+1',}},
		legs="Assid. Pants +1",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Incanter's Torque",
		waist="Carrier's Sash",
		left_ear="Hearty Earring",
		right_ear="Infused Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back = Nuke_Back,
    }

    -- WS Sets--

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
        ring2 = "Rahab Ringd",
        waist = "Acuity Belt +1",
        back = "Taranus's Cape",
        legs = "Amalric Slops",
        feet = "Amalric Nails"
    }

    -- Nuke Sets---
    sets.Nuke = {}

    sets.Nuke.index = {'Standard', 'MagicBurst'}
    -- 1=Standard, 2= Magic Burst'--
    Nuke_ind = 1

    sets.Nuke.Standard = {
        main = "Marin Staff +1",
		sub="Enki Strap",
		ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
		head={ name="Agwu's Cap", augments={'Path: A',}},
		body={ name="Agwu's Robe", augments={'Path: A',}},
		hands={ name="Agwu's Gages", augments={'Path: A',}},
		legs={ name="Agwu's Slops", augments={'Path: A',}},
		feet="Agwu's Pigaches",
		neck="Mizu. Kubikazari",
		waist="Acuity Belt +1",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Freke Ring",
		back = Nuke_Back,
    }

    sets.Nuke.MagicBurst = {     
		main = "Marin Staff +1",
		sub="Enki Strap",
		ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
		head={ name="Agwu's Cap", augments={'Path: A',}},
		body={ name="Agwu's Robe", augments={'Path: A',}},
		hands={ name="Agwu's Gages", augments={'Path: A',}},
		legs={ name="Agwu's Slops", augments={'Path: A',}},
		feet="Agwu's Pigaches",
		neck="Mizu. Kubikazari",
		waist="Acuity Belt +1",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Freke Ring",
		back = Nuke_Back,
    }

    -- Enhancing Sets--					
    sets.Enhancing = {}

    sets.Enhancing.index = {'Normal',}
    -- 1=Normal--
    Enhancing_ind = 1

    sets.Enhancing.Normal = {
		ammo="Staunch Tathlum +1",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
		hands={ name="Telchine Gloves", augments={'"Fast Cast"+4','Enh. Mag. eff. dur. +10',}},
		legs={ name="Telchine Braconi", augments={'"Fast Cast"+2','Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Andoaa Earring",
		right_ear="Mimir Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Fi Follet Cape +1", augments={'Path: A',}},
    }

    -- Magic Sets--
    sets.Magic = {}

    sets.Magic.Enfeebling = {
        main = "Marin Staff +1",
		sub="Enki Strap",
		ammo="Pemphredo Tathlum",
		body = "Cohort Cloak +1",
		hands={ name="Agwu's Gages", augments={'Path: A',}},
		legs={ name="Agwu's Slops", augments={'Path: A',}},
		feet="Agwu's Pigaches",
		neck="Incanter's Torque",
		waist = "Acuity Belt +1",
		left_ear="Crep. Earring",
		right_ear="Malignance Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Stikini Ring +1",
		back = Nuke_Back,
    }

    sets.Magic.Healing = {
        main = "Marin Staff +1",
		sub="Enki Strap",
		ammo="Staunch Tathlum +1",
		head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		body="Vrikodara Jupon",
		hands={ name="Telchine Gloves", augments={'"Fast Cast"+4','Enh. Mag. eff. dur. +10',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Regal Earring",
		right_ear="Mendi. Earring",
		left_ring="Ephedra Ring",
		right_ring="Defending Ring",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
    }

    sets.Magic.Regen = {
		ammo="Staunch Tathlum +1",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
		hands={ name="Telchine Gloves", augments={'"Fast Cast"+4','Enh. Mag. eff. dur. +10',}},
		legs={ name="Telchine Braconi", augments={'"Fast Cast"+2','Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Andoaa Earring",
		right_ear="Mimir Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back={ name="Fi Follet Cape +1", augments={'Path: A',}},
    }

    sets.Magic.Dark = {
        main = "Marin Staff +1",
		sub="Enki Strap",
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Agwu's Robe", augments={'Path: A',}},
		hands={ name="Agwu's Gages", augments={'Path: A',}},
		legs={ name="Agwu's Slops", augments={'Path: A',}},
		feet="Agwu's Pigaches",
		neck="Incanter's Torque",
		waist="Acuity Belt +1",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Evanescence Ring",
		right_ring="Archon Ring",
		back = Nuke_Back,
    }

    sets.Magic.Death = {
        main = "Marin Staff +1",
		sub="Enki Strap",
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Agwu's Robe", augments={'Path: A',}},
		hands={ name="Agwu's Gages", augments={'Path: A',}},
		legs={ name="Agwu's Slops", augments={'Path: A',}},
		feet="Agwu's Pigaches",
		neck="Mizu. Kubikazari",
		waist="Acuity Belt +1",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Rahab Ring",
		right_ring="Mujin Band",
		back = Nuke_Back,
    }

    sets.Magic.Stun = {
        main = "Marin Staff +1",
		sub="Enki Strap",
		ammo="Pemphredo Tathlum",
		head="Agwu's Cap",
		body={ name="Agwu's Robe", augments={'Path: A',}},
		hands={ name="Agwu's Gages", augments={'Path: A',}},
		legs={ name="Agwu's Slops", augments={'Path: A',}},
		feet="Agwu's Pigaches",
		neck="Voltsurge Torque",
		waist="Acuity Belt +1",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Rahab Ring",
		right_ring="Kishar Ring",
		back = Nuke_Back,
    }

    -- Precast Sets--
    sets.precast = {}

    sets.precast.FC = {}
	
	sets.precast.FC.Standard = {
		ammo="Sapience Orb",
		head="Agwu's Cap",
		body={ name="Merlinic Jubbah", augments={'Accuracy+6','"Fast Cast"+6','MND+8','Mag. Acc.+15','"Mag.Atk.Bns."+5',}},
		hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+25','"Fast Cast"+7','Mag. Acc.+13',}},
		legs={ name="Agwu's Slops", augments={'Path: A',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21','"Fast Cast"+6','STR+6','"Mag.Atk.Bns."+13',}},
		neck="Voltsurge Torque",
		waist="Embla Sash",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Rahab Ring",
		right_ring="Kishar Ring",
		back = "Fi follet cape +1",
	}


    sets.precast.FC.Impact ={
		ammo="Sapience Orb",
		body="Twilight Cloak",
		hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+25','"Fast Cast"+7','Mag. Acc.+13',}},
		legs={ name="Agwu's Slops", augments={'Path: A',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21','"Fast Cast"+6','STR+6','"Mag.Atk.Bns."+13',}},
		neck="Voltsurge Torque",
		waist="Embla Sash",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Rahab Ring",
		right_ring="Kishar Ring",
		back={ name="Fi Follet Cape +1", augments={'Path: A',}},
	}
	
	sets.precast.FC.Dispelga ={
		main="Daybreak",
		sub="Ammurapi Shield",
		ammo="Sapience Orb",
		head="Agwu's Cap",
		body={ name="Merlinic Jubbah", augments={'Accuracy+6','"Fast Cast"+6','MND+8','Mag. Acc.+15','"Mag.Atk.Bns."+5',}},
		hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+25','"Fast Cast"+7','Mag. Acc.+13',}},
		legs={ name="Agwu's Slops", augments={'Path: A',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21','"Fast Cast"+6','STR+6','"Mag.Atk.Bns."+13',}},
		neck="Voltsurge Torque",
		waist="Embla Sash",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Rahab Ring",
		right_ring="Kishar Ring",
		back = "Fi follet cape +1",
	}

    sets.precast.FC.Death = {
        ammo="Sapience Orb",
		head="Agwu's Cap",
		body={ name="Merlinic Jubbah", augments={'Accuracy+6','"Fast Cast"+6','MND+8','Mag. Acc.+15','"Mag.Atk.Bns."+5',}},
		hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+25','"Fast Cast"+7','Mag. Acc.+13',}},
		legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
		feet={ name="Merlinic Crackows", augments={'Mag. Acc.+21','"Fast Cast"+6','STR+6','"Mag.Atk.Bns."+13',}},
		neck="Voltsurge Torque",
		waist="Embla Sash",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Rahab Ring",
		right_ring="Kishar Ring",
		back = "Fi follet cape +1",
    }

    -- Utility and JA Sets --					
    sets.Utility = {}

    sets.Utility.Weather = {waist = "Hachirin-no-obi"}

    sets.Utility.Klima = {feet = "Arbatel Loafers +1"}

    sets.Utility.DrainAspir = {
        main = "Marin Staff +1",
		sub="Enki Strap",
		ammo="Pemphredo Tathlum",
		head="Pixie Hairpin +1",
		body={ name="Agwu's Robe", augments={'Path: A',}},
		hands={ name="Agwu's Gages", augments={'Path: A',}},
		legs={ name="Agwu's Slops", augments={'Path: A',}},
		feet="Agwu's Pigaches",
		neck="Incanter's Torque",
		waist="Acuity Belt +1",
		left_ear="Regal Earring",
		right_ear="Malignance Earring",
		left_ring="Evanescence Ring",
		right_ring="Archon Ring",
		back = Nuke_Back,
    }

    sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Eshmun's Ring"}
    -- WS Sets--

    sets.WS = {}
end

function precast(spell)

    if spell.skill == 'Elemental Magic' then
        equip(sets.precast.FC.Standard)
    elseif spell.skill == 'Enfeebling Magic' then
        equip(sets.precast.FC.Standard)
    elseif spell.skill == 'Enhancing Magic' then
        equip(sets.precast.FC.Standard)
    elseif spell.skill == 'Dark Magic' then
        equip(sets.precast.FC.Standard)
    elseif spell.skill == 'Healing Magic' then
        equip(sets.precast.FC.Standard)
    elseif spell.english == 'Stun' then
        equip(sets.Magic.Stun)
    elseif spell.english == 'Death' then
        equip(sets.precast.FC.Death)
    elseif spell.type == 'Magic' then
        equip(sets.precast.FC.Standard)
    elseif spell.english == 'Myrkr' then
        equip(sets.WS.Myrkr)
    end

end

function midcast(spell, act)

    if spell.english == 'Stun' then 
		equip(sets.Magic.Stun) 
	end

    if spell.skill == 'Enhancing Magic' then
        equip(sets.Enhancing[sets.Enhancing.index[Enhancing_ind]])
    end

    if spell.skill == 'Healing Magic' then 
		equip(sets.Magic.Healing) 
	end

    if spell.skill == 'Dark Magic' then 
		equip(sets.Magic.Dark) 
	end

    if spell.skill == 'Enfeebling Magic' then equip(sets.Magic.Enfeebling) end

    if spell.english == 'Death' then
        equip(sets.Magic.Death)
        if spell.element == world.day_element or spell.element == world.weather_element then
            equip(set_combine(sets.Magic.Death, sets.Utility.Weather))
        end
    end

    if spell.skill == 'Elemental Magic' then
        equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])
        if spell.element == world.day_element or spell.element == world.weather_element then
            equip(set_combine(
                sets.Nuke[sets.Nuke.index[Nuke_ind]],
                sets.Utility.Weather
            ))
        end
    end

    if spell.english == 'Regen' or spell.english == 'Regen II' or spell.english == 'Regen III' or spell.english == 'Regen IV' or spell.english == 'Regen V' then 
		equip(sets.Magic.Regen) 
	end

    if spell.english == 'Drain' or spell.english == 'Drain II' or spell.english == 'Aspir II' or spell.english == 'Aspir' then 
		equip(sets.Utility.DrainAspir) 
	end
end

function aftercast(spell)
    if player.status == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_ind]])

    else
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
    end
    if buffactive['doom'] then equip(sets.Utility.Doom) end
    if buffactive['terror'] or buffactive['stun'] or buffactive['sleep'] then equip(sets.TP.DT) end

end

function status_change(new, old)
    if player.status == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_ind]])

    else
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
    end
end

function self_command(command)
    if command == 'toggle Nuke set' then
        Nuke_ind = Nuke_ind + 1
        if Nuke_ind > #sets.Nuke.index then Nuke_ind = 1 end
        send_command('@input /echo <----- Nuke Set changed to ' .. sets.Nuke.index[Nuke_ind] .. ' ----->')
        equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])
    elseif command == 'toggle Idle set' then
        Idle_ind = Idle_ind + 1
        if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
        send_command('@input /echo <----- Idle Set changed to ' .. sets.Idle.index[Idle_ind] .. ' ----->')
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
    elseif command == 'toggle Enhancing set' then
        Enhancing_ind = Enhancing_ind + 1
        if Enhancing_ind > #sets.Enhancing.index then Enhancing_ind = 1 end
        send_command('@input /echo <----- Enhancing Set changed to ' .. sets.Enhancing.index[Enhancing_ind] .. ' ---->')
        equip(sets.Enhancing[sets.Enhancing.index[Enhancing_ind]])
    elseif command == 'equip TP set' then
        equip(sets.TP[sets.TP.index[TP_ind]])
    elseif command == 'equip Idle set' then
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
    end
end
