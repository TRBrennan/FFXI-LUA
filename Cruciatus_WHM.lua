-- Local Settings, setting the zones prior to use
naSpells = S {"Paralyna", "Silena", "Viruna", "Erase", "Stona", "Blindna", "Poisona"}

resSpells =
    S {
    "Barstonra",
    "Barwatera",
    "Baraera",
    "Barfira",
    "Barblizzara",
    "Barthundra",
    "Barstone",
    "Barwater",
    "Baraero",
    "Barfire",
    "Barblizzard",
    "Barthunder"
}
ST_Cure_Spells = S {"Cure", "Cure II", "Cure III", "Cure IV", "Cure V", "Cure VI"}
MT_Cure_Spells = S {"Curaga", "Curaga II", "Curaga III", "Curaga IV", "Curaga V", "Cura", "Cura II", "Cura III"}
FC_Spells = S {"Haste", "Utsusemi: Ichi", "Utsusemi: Ni", "Refresh", "Flurry", "Aurorastorm"}
Regen_Spells = S {"Regen", "Regen II", "Regen III", "Regen IV"}
Holy_Spells = S {"Banish", "Banish II", "Banish III", "Banishga", "Banishga II", "Holy", "Holy II"}
Gear_Debug = 0

-- Start Functions here
-- Gear Sets
function get_sets()
    sets.aftercast_Idle_refresh = {
		main="Daybreak",
		sub="Genmei Shield",
		ammo="Homiliary",
		--head="Befouled Crown",
		head ="Nyame Helm",
		--body="Inyanga Jubbah +2",
		body = "Ebers Bliaut +2",
		hands="Nyame Gauntlets",
		legs="Assid. Pants +1",
		--legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Carrier's Sash",
		left_ear="Eabani Earring",
		right_ear="Hearty Earring",
		left_ring="Defending Ring",
		right_ring="Shneddick Ring",
		--back="Alaunus's Cape",
		back = "Null shawl"
	}

    sets.aftercast_Move = sets.aftercast_Idle_refresh

    sets.aftercast_Idle = sets.aftercast_Idle_refresh
	
	sets.aftercast_engaged = {
		--head="Befouled Crown",
		head ="Nyame Helm",
		--body="Inyanga Jubbah +2",
		body="Ayanmo Corazza +2",
		hands="Bunzi's Gloves",
		legs={ name="Telchine Braconi", augments={'Accuracy+20','"Store TP"+6','Enh. Mag. eff. dur. +9',}},
		--legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Asperity Necklace",
		waist="Cetl Belt",
		left_ear="Bladeborn Earring",
		right_ear="Steelflash Earring",
		left_ring="Chirich Ring +1",
		right_ring="Petrov Ring",
		--back="Alaunus's Cape",
		back = "Null Shawl"
	}

    sets.precast_Cure = {
        main = { name = "Queller Rod", augments = {"Healing magic skill +15", '"Cure" potency +10%', '"Cure" spellcasting time -7%'}},
        sub = "Sors Shield",
        ammo = "Incantor Stone",
        head = "Nahtirah Hat",
        body = "Inyanga Jubbah +2",
        hands = {name = "Telchine Gloves", augments = {'"Fast Cast"+3'}},
        legs = "Ebers Pant. +2",
        feet = "Volte Gaiters",
        neck = "Voltsurge Torque",
        waist = "Embla Sash",
        left_ear = "Mendicant's Earring",
        right_ear = "Malignance Earring",
        left_ring = "Prolix Ring",
        right_ring = "Kishar Ring",
        back = {name = "Alaunus's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", '"Fast Cast"+10'}}
    }

    sets.precast_FastCafcurest = {
        ammo = "Incantor Stone",
        head = "Nahtirah Hat",
        body = "Inyanga Jubbah +2",
        hands = {name = "Telchine Gloves", augments = {'"Fast Cast"+3'}},
        legs = "Assid. Pants +1",
        feet = "Volte Gaiters",
        neck = "Voltsurge Torque",
        waist = "Embla Sash",
        left_ear = "Malignance Earring",
        right_ear = "Spellbr. Earring",
        left_ring = "Prolix Ring",
        right_ring = "Kishar Ring",
        back = {name = "Alaunus's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", '"Fast Cast"+10'}}
    }

    sets.precast_Haste = {
        main = {name = "Gada", augments = {"Enh. Mag. eff. dur. +4", "VIT+5", "Mag. Acc.+18", '"Mag.Atk.Bns."+4'}},
        sub = "Ammurapi Shield",
        ammo = "Impatiens",
        head = "Vanya Hood",
        body = "Inyanga Jubbah +2",
        hands = { name = "Fanatic Gloves", augments = {"MP+50", "Healing magic skill +10", '"Conserve MP"+7', '"Fast Cast"+7'}},
        legs = "Aya. Cosciales +1",
        feet = "Chelona Boots",
        neck = "Voltsurge Torque",
        waist = "Embla Sash",
        left_ear = "Loquac. Earring",
        right_ear = "Malignance Earring",
        left_ring = "Prolix Ring",
        right_ring = "Kishar Ring",
        back = {name = "Alaunus's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", '"Fast Cast"+10'}}
    }
	
	sets.precast_WS={
		neck = "Rep. Plat. Medal",
        right_ear = "Ishvara earring",
        left_ear = "Moonshade Earring",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
		right_ring="Petrov Ring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
       -- back = "Lifestream Cape",
	   back = "Null Shawl",
        waist = "Sailfi Belt +1"
    }

    sets.midcast_Haste = {
        main = {name = "Gada", augments = {"Enh. Mag. eff. dur. +4", "VIT+5", "Mag. Acc.+18", '"Mag.Atk.Bns."+4'}},
        sub = "Ammurapi Shield",
        ammo = "Homiliary",
        head = {name = "Telchine Cap", augments = {"Enh. Mag. eff. dur. +9"}},
        body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +9',}},
        hands = {name = "Telchine Gloves", augments = {"Enh. Mag. eff. dur. +10"}},
        legs = {name = "Telchine Braconi", augments = {"Enh. Mag. eff. dur. +9"}},
        feet = {name = "Telchine Pigaches", augments = {"Enh. Mag. eff. dur. +9"}},
        neck = "Voltsurge Torque",
        waist = "Embla Sash",
        left_ear = "Loquac. Earring",
        right_ear = "Enchntr. Earring +1",
        left_ring = "Sangoma Ring",
        right_ring = "Kishar Ring",
        back = "Fi Follet Cape +1"
    }

    sets.precast_Devotion = {}

    sets.Resting = {
        main = "Queller rod",
        sub = "Genmei Shield",
        ammo = "Incantor Stone",
        head = "Befouled crown",
        neck = "Loricate torque +1",
        ear1 = "Sanare earring",
        ear2 = "Spellbreaker Earring",
        body = "Piety briault +1",
        hands = "Gendewitha gages +1",
        ring1 = "Patricius Ring",
        ring2 = "Defending ring",
        back = "Solemnity cape",
        waist = "Fucho-no-obi",
        legs = "Lengo pants",
        feet = "Inspirited boots"
    }

    sets.midcast_EnfeeblingMagic = {
        main = "Daybreak",
        sub = "Ammurapi Shield",
        ammo = "Hydrocera",
        head = "Befouled crown",
        --neck = "Imbodla necklace",
		neck = "Null Loop",
        ear1 = "Lifestorm Earring",
        ear2 = "Regal Earring",
        body = "Theo. Bliaut +3",
        hands="Inyan. Dastanas +2",
        ring1 = "Stikini Ring +1",
        ring2 = "Metamor. Ring +1",
        back = {name = "Alaunus's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", '"Fast Cast"+10'}},
        waist = "Ovate Rope",
        legs={ name="Chironic Hose", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Cure" potency +1%','MND+14','Mag. Acc.+15',}},
        feet = "Medium's sabots"
    }

    sets.midcast_BarSpells_Solace = {
        main = "Beneficus",
        sub = "Ammurapi Shield",
        ammo = "Homiliary",
        head = "Ebers Cap",
        body="Ebers Bliaut +2",
        hands = "Ebers Mitts",
        legs = "Piety Pantaloons +3",
        feet = "Ebers Duckbills +2",
        neck = "Incanter's Torque",
        waist = "Embla Sash",
        left_ear = "Andoaa Earring",
        right_ear = "Mimir Earring",
        left_ring = "Stinki Ring",
        right_ring = "Kishar Ring",
        back = "Fi Follet Cape +1"
    }

    sets.midcast_Barspells_noSolace = sets.midcast_BarSpells_Solace

    sets.midcast_EnhancingMagic = {
        main = {name = "Gada", augments = {"Enh. Mag. eff. dur. +4", "VIT+5", "Mag. Acc.+18", '"Mag.Atk.Bns."+4'}},
        sub = "Ammurapi Shield",
        ammo = "Homiliary",
        head = {name = "Telchine Cap", augments = {"Enh. Mag. eff. dur. +9"}},
        body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +9',}},
        hands = {name = "Telchine Gloves", augments = {"Enh. Mag. eff. dur. +10"}},
        legs = {name = "Telchine Braconi", augments = {"Enh. Mag. eff. dur. +9"}},
        feet = {name = "Telchine Pigaches", augments = {"Enh. Mag. eff. dur. +9"}},
        neck = "Incanter's Torque",
        waist = "Embla Sash",
        left_ear = "Andoaa Earring",
        right_ear = "Mimir Earring",
        left_ring = "Stinki Ring",
        right_ring = "Kishar Ring",
        back = "Fi Follet Cape +1"
    }
	
	sets.midcast_Aquaveil ={
	    main = "Vadose Rod",
        sub = "Ammurapi Shield",
        ammo = "Homiliary",
        head = {name = "Telchine Cap", augments = {"Enh. Mag. eff. dur. +9"}},
        body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +9',}},
        hands = {name = "Telchine Gloves", augments = {"Enh. Mag. eff. dur. +10"}},
		legs ="Shedir Seraweels",
        feet = {name = "Telchine Pigaches", augments = {"Enh. Mag. eff. dur. +9"}},
        neck = "Incanter's Torque",
        waist = "Emphatikos Rope",
        left_ear = "Andoaa Earring",
        right_ear = "Mimir Earring",
        left_ring = "Stinki Ring",
        right_ring = "Kishar Ring",
        back = "Fi Follet Cape +1"
	}
	
    set.midcast_Shellra = {
        main = {name = "Gada", augments = {"Enh. Mag. eff. dur. +4", "VIT+5", "Mag. Acc.+18", '"Mag.Atk.Bns."+4'}},
        sub = "Ammurapi Shield",
        ammo = "Homiliary",
        head = {name = "Telchine Cap", augments = {"Enh. Mag. eff. dur. +9"}},
        body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +9',}},
        hands = {name = "Telchine Gloves", augments = {"Enh. Mag. eff. dur. +10"}},
        legs = {name = "Telchine Braconi", augments = {"Enh. Mag. eff. dur. +9"}},
        feet = {name = "Telchine Pigaches", augments = {"Enh. Mag. eff. dur. +9"}},
        neck = "Incanter's Torque",
        waist = "Embla Sash",
        left_ear = "Andoaa Earring",
        right_ear = "Mimir Earring",
        left_ring = "Stinki Ring",
        right_ring = "Kishar Ring",
        back = "Fi Follet Cape +1"
    }

    sets.midcast_MAB = {
        main = "Daybreak",
        sub = "Ammurapi Shield",
        ammo = "Pemphredo tathlum",
        head = "Helios band",
        neck = "Sanctity necklace",
        ear1 = "Malignance Earring",
        ear2 = "Regal Earring",
        body = "Vedic coat",
        hands = "Helios gloves",
        ring1 = "Weatherspoon ring",
        ring2 = "Acumen ring",
        back = "Toro cape",
        waist = "Eschan stone",
        legs={ name="Chironic Hose", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Cure" potency +1%','MND+14','Mag. Acc.+15',}},
        feet = "Navon crackows"
    }

    sets.midcast_Impact = {
        main = "Daybreak",
        sub = "Ammurapi Shield",
        ammo = "Pemphredo tathlum",
        neck = "Sanctity necklace",
        ear1 = "Malignance Earring",
        ear2 = "Regal Earring",
        body = "Twilight cloak",
        hands = "Chironic gloves",
        ring1 = "Weatherspoon ring",
        ring2 = "Archon ring",
        back = "Toro cape",
        waist = "Eschan stone",
        legs={ name="Chironic Hose", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Cure" potency +1%','MND+14','Mag. Acc.+15',}},
        feet = "Helios boots"
    }

    sets.midcast_Regen = {
        main = "Bolelabunga",
        sub = "Ammurapi Shield",
        ammo = "Homiliary",
        head = "Inyanga Tiara +2",
        body="Piety Bliaut +1",
        hands = "Ebers Mitts",
        legs = "Theophany Pantaloons +2",
        feet = {name = "Telchine Pigaches", augments = {"Enh. Mag. eff. dur. +9"}},
        neck = "Incanter's Torque",
        waist = "Embla Sash",
        left_ear = "Andoaa Earring",
        right_ear = "Enchntr. Earring +1",
        left_ring = "Sangoma Ring",
        right_ring = "Kishar Ring",
        back = "Fi Follet Cape +1"
    }
	
    sets.midcast_Auspice = {
		main = {name = "Gada", augments = {"Enh. Mag. eff. dur. +4", "VIT+5", "Mag. Acc.+18", '"Mag.Atk.Bns."+4'}},
        sub = "Ammurapi Shield",
        ammo = "Homiliary",
        head = {name = "Telchine Cap", augments = {"Enh. Mag. eff. dur. +9"}},
        body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +9',}},
        hands = {name = "Telchine Gloves", augments = {"Enh. Mag. eff. dur. +10"}},
        legs = {name = "Telchine Braconi", augments = {"Enh. Mag. eff. dur. +9"}},
        feet = "Ebers Duckbills +2",
        neck = "Incanter's Torque",
        waist = "Embla Sash",
        left_ear = "Andoaa Earring",
        right_ear = "Mimir Earring",
        left_ring = "Stinki Ring",
        right_ring = "Kishar Ring",
        back = "Fi Follet Cape +1"
		}

    sets.midcast_Cure = {
		main = { name = "Queller Rod",augments = {"Healing magic skill +15", '"Cure" potency +10%', '"Cure" spellcasting time -7%'}},
        sub = "Sors Shield",
        ammo = "Esper Stone",
        head = "Vanya Hood",
        body="Ebers Bliaut +2",
        hands = "Theophany Mitts +3",
        legs = "Ebers Pant. +2",
        feet = "Kaykaus Boots",
        neck = "Cleric's Torque",
        waist = "Channeler's Stone",
        left_ear = "Nourish. Earring +1",
        right_ear = "Glorious Earring",
        left_ring = "Lebeche Ring",
        right_ring = "Sirona's Ring",
        back = {name = "Alaunus's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", '"Fast Cast"+10'}}
    }

    sets.midcast_Curaga = {
        main = { name = "Queller Rod",augments = {"Healing magic skill +15", '"Cure" potency +10%', '"Cure" spellcasting time -7%'}},
        sub = "Sors Shield",
        ammo = "Esper Stone",
        head = "Vanya Hood",
        body = "Theo. Bliaut +3",
        hands = "Theophany Mitts +3",
        legs = "Ebers Pant. +2",
        feet = "Kaykaus Boots",
        neck = "Nodens Gorget",
        waist = "Channeler's Stone",
        left_ear = "Nourish. Earring +1",
        right_ear = "Glorious Earring",
        left_ring = "Lebeche Ring",
        right_ring = "Sirona's Ring",
        back = {name = "Alaunus's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", '"Fast Cast"+10'}}
    }

    sets.midcast_Stoneskin = sets.midcast_EnhancingMagic

    sets.midcast_DebuffRemoval = {
        main = "Yagrush",
        sub = "Sors Shield",
        ammo = "Esper Stone",
        head = "Ebers Cap",
        body="Ebers Bliaut +2",
        hands = { name = "Fanatic Gloves",augments = {"MP+50", "Healing magic skill +10", '"Conserve MP"+7', '"Fast Cast"+7'}},
        legs = "Theophany Pantaloons +2",
        feet = "Vanya Clogs",
        neck = "Cleric's Torque",
        waist = "Channeler's Stone",
        left_ear = "Nourish. Earring +1",
        right_ear = "Loquac. Earring",
        left_ring = "Ephedra Ring",
        right_ring = "Ephedra Ring",
        back = {name = "Alaunus's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", '"Fast Cast"+10'}}
    }

    sets.midcast_Cursna = {
        main = "Yagrush",
        sub = "Sors Shield",
        ammo = "Esper Stone",
        head = "Ebers Cap",
        body="Ebers Bliaut +2",
		hands = { name = "Fanatic Gloves",augments = {"MP+50", "Healing magic skill +10", '"Conserve MP"+7', '"Fast Cast"+7'}},
        legs = "Theophany Pantaloons +2",
        feet = "Gende. Galosh. +1",
        neck = "Malison Medallion",
        waist = "Channeler's Stone",
        left_ear = "Nourish. Earring +1",
        right_ear = "Loquac. Earring",
        left_ring = "Ephedra Ring",
        right_ring = "Ephedra Ring",
        back = {name = "Alaunus's Cape", augments = {"MND+20", "Mag. Acc+20 /Mag. Dmg.+20", '"Fast Cast"+10'}}
    }
end

-- --- Precast ---

function precast(spell)
    if ST_Cure_Spells:contains(spell.name) then
        --send_command('@input /echo Cure Precast Set')
        equip(sets.precast_Cure)
    elseif MT_Cure_Spells:contains(spell.name) then
        --send_command('@input /echo Cure Precast Set')
        equip(sets.precast_Cure)
    elseif naSpells:contains(spell.name) then
        --send_command('@input /echo NA Precast Set')
        equip(sets.precast_FastCast)
    elseif FC_Spells:contains(spell.name) then
        --send_command('@input /echo Haste Precast Set')
        equip(sets.precast_Haste)
    elseif spell.english == "Impact" then
        equip({body = "Twilight cloak"})
	elseif spell.type == 'WeaponSkill' then
		equip(sets.precast_WS)
	else
        --send_command('@input /echo Precast Set')
        equip(sets.precast_FastCast)
	end
end
-- --- MidCast ---
function midcast(spell)
    if ST_Cure_Spells:contains(spell.name) then
        equip(sets.midcast_Cure)
        --weathercheck(spell.element)
        --send_command("@input /echo ST Cure Set")
        if spell_element == world.weather_element or spell_element == world.day_element then
            equip({waist = "Korin Obi"})
            --send_command("@input /echo Using Element Obi")
        end
    elseif MT_Cure_Spells:contains(spell.name) then
        equip(sets.midcast_Curaga)
        --weathercheck(spell.element)
        --send_command("@input /echo MT Cure Set")
        if spell_element == world.weather_element or spell_element == world.day_element then
            equip({waist = "Korin Obi"})
            --send_command("@input /echo Using Element Obi")
        end
    elseif naSpells:contains(spell.name) then
        equip(sets.midcast_DebuffRemoval)
        --send_command("@input /echo NA Cure Set")
    elseif Regen_Spells:contains(spell.name) then
        equip(sets.midcast_Regen)
        --send_command("@input /echo Regen Set")
    elseif spell.name == "Cursna" then
        equip(sets.midcast_Cursna)
		--send_command("@input /echo Cursna Cure Set")
    elseif spell.skill == "Enfeebling Magic" then
        equip(sets.midcast_EnfeeblingMagic)
        --send_command("@input /echo Enfeebling Set")
    elseif spell.skill == "Enhancing Magic" then
        if resSpells:contains(spell.name) then
            equip(sets.midcast_BarSpells_Solace)
            --send_command("@input /echo Barspell Set")
        elseif FC_Spells:contains(spell.name) then
            equip(sets.midcast_Haste)
            --send_command("@input /echo Enhancing Duration Set")
        elseif spell.name == "Shellra V" then
            equip(set.midcast_Shellra)
            --send_command("@input /echo Shellra 5 Set")
		elseif spell.name == "Auspice" then
			equip(sets.midcast_Auspice)
        elseif spell.name == "Auqaveil" then
			equip(sets.midcast_Aquaveil)
		else
            equip(sets.midcast_EnhancingMagic)
            --send_command("@input /echo Enhancing Set")
        end
    elseif Holy_Spells:contains(spell.name) then
        equip(sets.midcast_MAB)
        weathercheck(spell.element)
        --send_command("@input /echo Holy Nuke Set")
    elseif spell.skill == "Elemental Magic" then
        if spell.name == "Impact" then
            equip(sets.midcast_Impact)
            weathercheck(spell.element)
            --send_command("@input /echo Impact Set")
        else
            equip(sets.midcast_MAB)
            weathercheck(spell.element)
            --send_command("@input /echo Elemental Set")
        end
    else
        equip(sets.midcast_Haste)
    end
end

-- --- Aftercast ---

function aftercast(spell)
    if player.status == "Engaged" then
        equip(sets.aftercast_engaged)
    elseif Gear_Debug == 0 then
        equip(sets.aftercast_Idle)
        --send_command("@input /echo Idle Set")
    else
		equip(sets.aftercast_Idle)
        --send_command("@input /echo Idle Set")
    end
end

-- Status Change - ie. Resting

function status_change(new, tab)
    if player.status == "Engaged" then
        equip(sets["sets.aftercast_engaged"])
    elseif new == "Resting" then
        equip(sets["Resting"])
    else
        equip(sets["aftercast_Idle"])
    end
end

-- Self Commands -- ie. Defender

function self_command(command)
    if command == "equip Idle set" then
        equip(sets.aftercast_Idle_refresh)
    elseif command == "change debug mode" then
        if Gear_Debug == 1 then
            Gear_Debug = 0
            --send_command("@input /echo Debug Mode Set to 0")
        else
            Gear_Debug = 1
            --send_command("@input /echo Debug Mode Set to 1")
        end
    end
end

-- This function is user defined, but never called by GearSwap itself. It's just a user function that's only called from user functions. I wanted to check the weather and equip a weather-based set for some spells, so it made sense to make a function for it instead of replicating the conditional in multiple places.

function weathercheck(spell_element)
    if spell_element == world.weather_element or spell_element == world.day_element then
        equip({waist = "Hachirin-no-Obi"})
        --send_command("@input /echo Using Element Obi")
    end
end
