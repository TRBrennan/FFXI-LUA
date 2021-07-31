function get_sets()

    send_command('bind f9 gs c toggle TP set')
    send_command('bind f10 gs c toggle Idle set')
	send_command("bind f11 gs c equip TP set")
	send_command("bind f12 gs c equip DT set")

    function file_unload()

        send_command('unbind ^f9')
        send_command('unbind ^f10')
        send_command('unbind ^f11')
        send_command('unbind ^f12')
        send_command('unbind ^`')

        send_command('unbind !f9')
        send_command('unbind !f10')
        send_command('unbind !f11')
        send_command('unbind !f12')

        send_command('unbind f9')
        send_command('unbind f10')
        send_command('unbind f11')
        send_command('unbind f12')

    end

    -- Idle Sets--  
    sets.Idle = {}

    sets.Idle.index = {'Standard', 'DT', 'Cleave'}
    Idle_ind = 1

    sets.Idle.Standard = {
        ammo = "Staunch Tathlum +1",
        head = { name = "Herculean Helm", augments = { 'Pet: CHR+2','Potency of "Cure" effect received+3%','"Refresh"+2','Mag. Acc.+1 "Mag.Atk.Bns."+1',}},
        neck = "Sanctity Necklace",
        ear1 = "Eabani Earring",
        ear2 = "Infused Earring",
        body = "Jhakri Robe +2",
        hands = { name = "Herculean Gloves",augments = {'DEX+9', 'Magic dmg. taken -3%', '"Refresh"+1',}},
        ring1 = "Defending ring",
        ring2 = "Vocane Ring",
        waist = "Fucho-no-obi",
        legs = "Carmine Cuisses +1",
        feet = {name = "Herculean Boots",augments = {'CHR+6','STR+14','"Refresh"+1','Mag. Acc.+14 "Mag.Atk.Bns."+14',}},
        back = "Moonbeam Cape"
    }

    sets.Idle.DT = {
        ammo = "Staunch Tathlum +1",
         head="Malignance Chapeau",
        neck = "Loricate Torque +1",
        ear1 = "Eabani Earring",
        ear2 = "Infused Earring",
        body="Malignance Tabard",
        hands="Malignance Gloves",
        ring1 = "Defending ring",
        ring2 = "Vocane Ring",
        back = "Moonbeam Cape",
        waist = "Carrier's Sash",
        legs = "Malignance Tights",
		feet="Malignance Boots",	
    }

    sets.Idle.Cleave = {
        main = "Terra's Staff",
        sub = "Umbra strap",
        ammo = "Staunch Tathlum +1",
        head="Malignance Chapeau",
		neck = "Loricate Torque +1",
        ear1 = "Eabani Earring",
        ear2 = "Infused Earring",
        body="Malignance Tabard",
		hands="Malignance Gloves",
        ring1 = "Defending ring",
        ring2 = "Vocane Ring",
        back = "Moonbeam Cape",
        waist = "Carrier's Sash",
        legs = "Carmine Cuisses +1",
        feet="Malignance Boots",
    }

    -- TP Sets--
    sets.TP = {}

    sets.TP.index = {
        'Standard',
        'AccuracyMid',
        'AccuracyFull',
        'DT',
        'DTAccuracy',
		'DTSB'
    }
    -- 1=Standard, 2 = AccuracyMid, 3=AccuracyFull, 4=DT, 5=DTAccuracy,6=DTSubtleBlow--

    TP_ind = 1
    sets.TP.Standard = {
        ammo = "Coiste Bodhar",
        head = "Adhemar Bonnet +1",
        neck = "Mirage Stole +1",
        ear1 = "Telos Earring",
        ear2 = "Brutal Earring",
        body = "Adhemar Jacket +1",
        hands = { name = "Adhemar Wrist. +1", augments = {'STR+12', 'DEX+12', 'Attack+20',}},
        ring1 = "Ilabrat Ring",
        ring2 = "Epona's Ring",
        back = { name = "Rosmerta's Cape",augments = {'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10', 'Phys. dmg. taken-10%', }},
        waist = "Reiki Yotai",
        legs = "Samnuha Tights",
		feet = {name = "Herculean Boots",augments = {'Accuracy+20 Attack+20', '"Triple Atk."+4',}}
    }

    sets.TP.AccuracyMid = {
        ammo = "Coiste Bodhar",
        head = "Carmine Mask +1",
        neck = "Mirage Stole +1",
        ear1 = "Telos Earring",
        ear2 = "Cessance Earring",
        body = "Adhemar Jacket +1",
		hands = { name = "Adhemar Wrist. +1", augments = {'STR+12', 'DEX+12', 'Attack+20',}},
        ring1 = "Ilabrat Ring",
        ring2 = "Epona's ring",
		back = { name = "Rosmerta's Cape",augments = {'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10', 'Phys. dmg. taken-10%', }},
        waist = "Reiki Yotai",
        legs = "Samnuha Tights",
        feet = {name = "Herculean Boots",augments = {'Accuracy+20 Attack+20', '"Triple Atk."+4',}}
    }

    sets.TP.AccuracyFull = {
        ammo = "Coiste Bodhar",
        head = "Carmine Mask +1",
        ear1 = "Dignitary's Earring",
        ear2 = "Telos Earring",
        body = "Adhemar Jacket +1",
        neck = "Mirage Stole +1",
        hands = { name = "Adhemar Wrist. +1", augments = {'STR+12', 'DEX+12', 'Attack+20',}},
        ring1 = "Cacoethic Ring",
        ring2 = "Ilabrat Ring",
		back = { name = "Rosmerta's Cape",augments = {'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10', 'Phys. dmg. taken-10%', }},
        waist = "Kentarch Belt +1",
        legs = "Carmine Cuisses +1",
        feet = "Carmine Greaves +1"
    }

    sets.TP.DT = {
        ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Loricate Torque +1",
		waist="Carrier's Sash",
		left_ear="Odnowa Earring +1",
		right_ear="Eabani Earring",
		left_ring="Vocane Ring",
		right_ring="Defending Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
    

    sets.TP.DTAccuracy = {
        ammo="Coiste Bodhar",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Mirage Stole +1", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Brutal Earring",
		left_ring="Ilabrat Ring",
		right_ring="Epona's Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
    }
	
	sets.TP.DTSB = {
	    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Mirage Stole +1", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Digni. Earring",
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring",
		back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}

    -- Weaponskill Sets--
    sets.WS = {}

    sets.Requiescat = {}

    sets.Requiescat.index = {'Attack'}
    Requiescat_ind = 1

    sets.Requiescat.Attack = {
        ammo = "Seeth. Bomblet +1",
        head = "Carmine Mask +1",
        neck = "Fotia gorget",
        ear1 = "Telos Earring",
        ear2 = "Moonshade Earring",
        body = "Adhemar Jacket +1",
        hands = "Adhemar Wristbands +1",
        ring1 = "Ilabrat Ring",
        ring2 = "Epona's ring",
        back = {name = "Rosmerta's Cape", augments = {'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
        waist = "Fotia belt",
        legs = "Samnuha Tights",
        feet = "Carmine Greaves +1"
    }

    sets.SavageBlade = {}

    sets.SavageBlade.index = {'Attack'}
    SavageBlade_ind = 1

    sets.SavageBlade.Attack = {
        ammo = "Coiste Bodhar",
		Head = "Nyame Helm",
        neck = "Mirage Stole +1",
        ear1 = "Ishvara Earring",
        ear2 = "Moonshade Earring",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        ring1 = "Ilabrat Ring",
        ring2 = "Petrov Ring",
        back = {name = "Rosmerta's Cape",augments = {'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        waist = "Sailfi Belt +1",
        legs="Luhlaza Shalwar +3",
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
    }

    sets.ChantDuCygne = {}

    sets.ChantDuCygne.index = {'Attack'}
    ChantDuCygne_ind = 1

    sets.ChantDuCygne.Attack = {
        ammo = "Jukukik Feather",
        head = "Adhemar Bonnet +1",
        neck = "Mirage Stole +1",
        ear2 = "Moonshade Earring",
        ear1 = "Telos Earring",
        body = "Adhemar Jacket +1",
        hands = { name = "Adhemar Wrist. +1", augments = {'STR+12', 'DEX+12', 'Attack+20',}},
        ring1 = "Hetairoi Ring",
        ring2 = "Epona's Ring",
        back = { name = "Rosmerta's Cape",augments = {'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10', 'Phys. dmg. taken-10%', }},
        waist = "Fotia belt",
        legs = "Samnuha Tights",
        feet = "Thereoid Greaves"
    }

    sets.SanguineBlade = {
        ammo = "Pemphredo Tathlum",
        head = "Pixie Hairpin +1",
        neck = "Mirage Stole +1",
        ear2 = "Friomisi earring",
        ear1 = "Regal Earring",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        ring1 = "Shiva Ring",
        ring2 = 'Archon Ring',
        waist = "Sacro Cord",
        back = {name = "Rosmerta's Cape",augments = {'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        legs="Luhlaza Shalwar +3",
        feet = "Amarlic Nails +1"
    }

    sets.CircleBlade = {
        ammo = "Coiste Bodhar",
        head = "Adhemar Bonnet +1",
        neck = "Fotia gorget",
        ear2 = "Moonshade Earring",
        ear1 = "Telos Earring",
        body = "Adhemar Jacket +1",
        hands = { name = "Adhemar Wrist. +1", augments = {'STR+12', 'DEX+12', 'Attack+20',}},
        ring1 = "Ilabrat Ring",
        ring2 = "Epona's Ring",
        back = { name = "Rosmerta's Cape",   augments = {'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
        waist = "Fotia belt",
        legs="Luhlaza Shalwar +3",
        feet = {name = "Herculean Boots",augments = {'Accuracy+20 Attack+20', '"Triple Atk."+4',}} 
	}

    sets.Expiacion = {
        ammo = "Coiste Bodhar",
		Head = "Nyame Helm",
        neck = "Mirage Stole +1",
        ear1 = "Moonshade Earring",
        ear2 = "Ishvara Earring",
        body = "Nyame Mail",
		hands = "Nyame Gauntlets",
        ring1 = "Ilabrat Ring",
        ring2 = "Petrov Ring",
        back = {name = "Rosmerta's Cape",augments = {'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        waist = "Sailfi Belt +1",
        legs="Luhlaza Shalwar +3",
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
    }

    sets.Realmrazer = {}

    sets.Realmrazer.index = {'Attack'}
    Realmrazer_ind = 1

    sets.Realmrazer.Attack = {
        ammo = "Hydrocera",
        head = "Dampening Tam",
        neck = "Fotia gorget",
        ear1 = "Brutal Earring",
        ear2 = "Cessance Earring",
        body = "Adhemar Jacket +1",
        hands = "Nyame Gauntlets",
        ring1 = "Ilabrat Ring",
        ring2 = "Epona's ring",
		back = {name = "Rosmerta's Cape",augments = {'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        waist = "Fotia belt",
		legs="Luhlaza Shalwar +3",
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
    }

    sets.FlashNova = {
        ammo = "Pemphredo Tathlum",
        Head = "Jhakri Coronal +1",
        neck = "Mirage Stole +1",
        rear = "Friomisi earring",
        ear1 = "Novio Earring",
        body = "Adhemar Jacket +1",
        hands = "Amalric Gages +1",
        ring1 = "Shiva Ring",
        ring2 = 'Shiva Ring',
        waist = "Sacro Cord",
        back = "Cornflower cape",
        legs="Luhlaza Shalwar +3",
        feet = "Jhakri Pigaches +1"
    }

    -- Magic Burst Sets--

    sets.Burst = {}
    sets.Burst.index = {'BA', 'MB'}
    Burst_ind = 1

    -- Blue Magic Sets--
    sets.BlueMagic = {}

    sets.BlueMagic.Physical = {
        ammo = "Coiste Bodhar",
        head = "Jhakri Coronal +2",
        body = {name = "Adhemar Jacket +1",augments = {'STR+12', 'DEX+12', 'Attack+20',}},
        hands = "Nyame Gauntlets",
        legs = {name = "Samnuha Tights",augments = {'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
        feet = "Jhakri Pigaches +2",
        neck = "Mirage Stole +1",
        waist = "Sailfi Belt +1",
        left_ear = "Digni. Earring",
        right_ear = "Telos Earring",
        ring1 = "Ilabrat Ring",
        ring2 = "Petrov Ring",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
    }

    sets.BlueMagic.Dart = {
        ammo = "Coiste Bodhar",
		head="Malignance Chapeau",
        neck = "Mirage Stole +1",
        ear1 = "Corybant Pearl",
        ear2 = "Kemas Earring",
        body = "Adhemar Jacket +1",
        Hands = "Volte Bracers",
        ring1 = "Ilabrat Ring",
        ring2 = "Petrov Ring",
        back = "Cornflower Cape",
        waist = "Chaac Belt",
        legs = "Volte Hose",
        feet="Malignance Boots",
    }

    sets.BlueMagic.BlueMagic = {
        ammo = "Pemphredo Tathlum",
        head = "Jhakri Coronal +2",
        body = {name = "Amalric Doublet",augments = {'MP+60', 'Mag. Acc.+15', '"Mag.Atk.Bns."+15',}},
        hands = "Amalric Gages +1",
        legs="Luhlaza Shalwar +3",
        feet = "Amalric Nails +1",
        neck = "Mirage Stole +1",
        waist = "Sacro Cord",
        left_ear = "Regal Earring",
        right_ear = "Friomisi Earring",
        ring1 = "Stikini ring +1",
        ring2 = "Acumen Ring",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
    }

    sets.BlueMagic.PhysStun = {
		head="Malignance Chapeau",
        ammo = "Coiste Bodhar",
        ear1 = "Moonshade Earring",
        ear2 = "Mavi Earring",
        ring2 = "Stikini ring +1",
        Ring1 = "Kishar Ring",
		legs="Luhlaza Shalwar +3",
        back={ name="Aurist's Cape +1", augments={'Path: A',}},
        hands = "Nyame Gauntlets",
		feet="Malignance Boots",
        neck = "Mirage Stole +1"
    }

    sets.BlueMagic.Debuff = {
		ammo="Pemphredo Tathlum",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Mirage Stole +1", augments={'Path: A',}},
		waist="Sacro Cord",
		left_ear="Digni. Earring",
		right_ear="Regal Earring",
		left_ring="Rahab Ring",
		right_ring="Stikini ring +1",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
    }

    sets.BlueMagic.BuffSkill = {
        ammo = "Mavi Tathlum",
        head = "Mirage Keffiyeh",
        body = "Assimilator's Jubbah +3",
        neck = "Mirage Stole +1",
        legs = "Mavi Tayt +2",
        back = "Cornflower Cape",
        ring1 = "Stikini ring +1"
    }

    sets.BlueMagic.Breath = {
        head = "Mirage Keffiyeh",
        ear1 = "Moonshade Earring",
        ear2 = "Mavi Earring",
        body = "Assimilator's Jubbah +3",
        hands = "Espial Bracers",
        ring1 = "Bomb Queen Ring",
        ring2 = "Meridian Ring",
        back = "Gigant Mantle",
        waist = "Lieutenant's Sash",
        legs = "Mavi Tayt +2",
        feet = {name = "Herculean Boots",augments = {'Accuracy+20 Attack+20', '"Triple Atk."+4',}}
    }

    sets.BlueMagic.BlueCure = {
        ammo = "Coiste Bodhar",
        head = "Telchine Cap",
        body = "Vrikodara Jupon",
        hands = "Telchine Gloves",
        legs = {name = "Telchine Braconi",augments = {'"Fast Cast"+2', 'Enh. Mag. eff. dur. +8',}},
        feet = "Jhakri Pigaches +2",
        neck = "Incanter's Torque",
        waist = "Luminary Sash",
        left_ear = "Regal Earring",
        right_ear = "Mendi. Earring",
        ring1 = "Stikini ring +1",
        ring2 = "Sirona's Ring",
        back = "Solemnity Cape",
    }

    sets.BlueMagic.Sub = {
        ammo = "Pemphredo Tathlum",
        head = "Jhakri Coronal +2",
        body = {name = "Amalric Doublet",augments = {'MP+60', 'Mag. Acc.+15', '"Mag.Atk.Bns."+15',}},
        hands = "Volte Bracers",
        legs="Luhlaza Shalwar +3",
        feet = "Amarlic Nails +1",
        neck = "Mirage Stole +1",
        waist = "Chaac Belt",
        left_ear = "Regal Earring",
        right_ear = "Friomisi Earring",
        ring1 = "Shiva Ring",
        ring2 = "Acumen Ring",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
    }
	
	sets.BlueMagic.Macc = {
	    ammo="Pemphredo Tathlum",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Sacro Cord",
		left_ear="Regal Earring",
		right_ear="Digni. Earring",
		left_ring="Stikini ring +1",
		right_ring="Rahab Ring",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}

    sets.BlueMagic.HeavyStrike = {
        ammo = "Falcon Eye",
        head = "Adhemar Bonnet +1",
        body = "Adhemar Jacket +1",
        hands = {name = "Adhemar Wristbands",augments = {'DEX+10', 'AGI+10', 'Accuracy+15',}},
        legs="Luhlaza Shalwar +3",
        feet = "Rawhide Boots",
        neck = "Mirage Stole +1",
        waist = "Chuq'aba Belt",
        left_ear = "Heartseeker Earring",
        right_ear = "Dignitary's Earring",
        ring1 = "Dark Ring",
        ring2 = "Epona's Ring",
        back = "Cornflower cape"
    }

    sets.BlueMagic.Enmity = {
        ammo = "Iron Gobbet",
        head = "Rabid Visor",
        body = "Emet harness +1",
        hands = "Leyline Gloves",
        legs = "Obatala Subligar",
        feet = "Dux Greaves",
        neck = "Atzintli Necklace",
        waist = "Trance belt",
        left_ear = "Friomisi Earring",
        right_ear = "Cryptic Earring",
        ring1 = 'Supershear Ring',
        ring2 = "Begrudging Ring",
        back = "Cornflower Cape"
    }

    sets.BlueMagic.Dark = {
        ammo = "Pemphredo Tathlum",
        head = "Pixie Hairpin +1",
        neck = "Mirage Stole +1",
        ear2 = "Friomisi earring",
        ear1 = "Regal Earring",
        body = "Jhakri Robe +2",
        hands = "Amalric Gages +1",
        ring1 = "Shiva Ring",
        ring2 = 'Shiva Ring',
        waist = "Sacro Cord",
        back = "Cornflower cape",
        legs = "Jhakri Slops +1",
        feet = "Jhakri Pigaches +1"
    }

    -- Ninja Magic Sets--
    sets.NINMagic = {}

    sets.NINMagic.Nuke = {
        Head = "Jhakri Coronal +1",
        neck = "Mirage Stole +1",
        ear2 = "Friomisi earring",
        ear1 = "Regal Earring",
        body = "Samnuha Coat",
        hands = "Leyline Gloves",
        ring1 = "Shiva Ring",
        ring2 = "Acumen Ring",
        waist = "Sacro Cord",
        back = "Gunslinger's Cape",
        legs = "Herculean Trousers",
        feet = {
            name = "Herculean Boots",
            augments = {
                '"Mag.Atk.Bns."+27',
                'Weapon skill damage +4%',
                'Quadruple Attack +1',
                'Mag. Acc.+14 "Mag.Atk.Bns."+14',
            }
        },
    }

    sets.NINMagic.Utsusemi = {
        head = {name = "Herculean Helm",augments = {'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},
        neck = "Loricate Torque",
        ar1 = "Brutal Earring",
        ear2 = "Cessance Earring",
        body = "Emet harness +1",
		hands = {name = "Adhemar Wrist. +1",augments = {'STR+12', 'DEX+12', 'Attack+20',}},
        ring1 = "Vocane Ring",
        ring2 = "Petrov Ring",
        back = "Moonbeam Cape",
        waist = "Carrier's Sash",
        legs = "Herculean Trousers",
        feet = {name = "Herculean Boots",augments = {'Accuracy+20 Attack+20', '"Triple Atk."+4',}  }
    }

    -- Utility Sets--
    sets.Utility = {}

    sets.Utility.Weather = {waist = "Hachirin-no-obi", back = "Twilight Cape"}

    sets.Utility.MB = {
        head = "Herculean Helm",
        body = "Jhakri Robe +2",
        ear1 = "Static Earring",
        ring1 = "Locus Ring",
        ring2 = "Mujin Band"
    }

     sets.Utility.Steps = {
        ammo = "Falcon Eye",
        head = "Adhemar Bonnet +1",
        body = "Adhemar Jacket +1",
        hands = "Rawhide Gloves",
        legs == "Samnuha Tights",
        feet = {name = "Herculean Boots",augments = {'Accuracy+20 Attack+20', '"Triple Atk."+4',}},
        neck = "Subtlety Spec.",
        waist = "Chaac Belt",
        left_ear = "Heartseeker Earring",
        right_ear = "Dignitary's Earring",
        ring1 = "Yacuruna Ring",
        ring2 = "Epona's Ring",
        back = "Grounded Mantle",
    }

    sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Eshmun's Ring"}

    sets.Utility.Sleeping = {neck = "Opo-Opo Necklace"}

    -- Job Ability Sets--

    sets.JA = {}

    sets.JA.ChainAffinity = {feet = "Assim. charuqs +1"}

    sets.JA.BurstAffinity = {feet = "Hashishin Basmak +1"}

    sets.JA.Efflux = {legs = "Mavi tayt +2"}

    sets.JA.AzureLore = {hands = "Luh. bazubands +1"}

    sets.JA.Diffusion = {feet = "Luhlaza Charuqs"}

    -- Precast Sets--
    sets.precast = {}

    sets.precast.FC = {}

    sets.precast.FC.Standard = {
        ammo = "Sapience Orb",
        head = "Carmine Mask +1",
        body = "Adhemar Jacket",
        hands = "Leyline Gloves",
        legs = "Aya. Cosciales +2",
        feet = "Carmine Greaves +1",
        neck = "Voltsurge Torque",
        waist = "Witful Belt",
        left_ear = "Etiolation Earring",
        right_ear = "Loquac. Earring",
        ring1 = "Rahab Ring",
        ring2 = "Kishar Ring",
        back = "Swith Cape"
    }

end

function precast(spell)
    if spell.action_type == 'Magic' then
        equip(sets.precast.FC.Standard)
    elseif spell.english == 'Azure Lore' then
        equip(sets.JA.AzureLore)
    elseif spell.english == 'Requiescat' then
        equip(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
    elseif spell.english == 'Chant du Cygne' then
        equip(sets.ChantDuCygne[sets.ChantDuCygne.index[ChantDuCygne_ind]])
    elseif spell.english == 'Savage Blade' then
        equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
    elseif spell.english == 'Circle Blade' then
        equip(sets.CircleBlade)
    elseif spell.english == 'Expiacion' then
        equip(sets.Expiacion)
    elseif spell.english == 'Vorpal Blade' then
        equip(sets.ChantDuCygne[sets.ChantDuCygne.index[ChantDuCygne_ind]])
    elseif spell.english == 'Sanguine Blade' then
        equip(sets.BlueMagic.Dark)
        if spell.element == world.day_element or spell.element == world.weather_element then equip(sets.Utility.Weather) end
    elseif spell.english == 'Box Step' then
        equip(sets.Utility.Steps)
    elseif spell.english == 'Realmrazer' then
        equip(sets.Realmrazer[sets.Realmrazer.index[Realmrazer_ind]])
    elseif spell.english == 'Flash Nova' then
        equip(sets.FlashNova)
        if spell.element == world.day_element or spell.element == world.weather_element then equip(sets.Utility.Weather) end
    elseif spell.type == 'WeaponSkill' then
        equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
    end
end

function midcast(spell, act)
    if spell.english == 'Vertical Cleave' or spell.english == 'Death Scissors' or spell.english == 'Empty Thrash' or spell.english == 'Dimensional Death' or spell.english == 'Quadrastrike' or spell.english == 'Bloodrake' or spell.english == 'Disseverment' or spell.english == 'Hysteric Barrage' or spell.english == 'Frenetic Rip' or spell.english == 'Seedspray' or spell.english == 'Vanity Dive' or spell.english == 'Goblin Rush' or spell.english == 'Paralyzing Triad' or spell.english == 'Thrashing Assault' or spell.english == 'Benthic Typhoon' or spell.english == 'Final Sting' or spell.english == 'Spiral Spin' or spell.english == 'Whirl of Rage' or spell.english == 'Quad. Continuum'  or spell.english == 'Cannonball' or spell.english == 'Heavy Strike' or spell.english == 'Sinker Drill' then
        equip(sets.BlueMagic.Physical)
        if buffactive['Chain Affinity'] then equip(sets.JA.ChainAffinity) end
        if buffactive['Efflux'] then equip(sets.JA.Efflux) end
    end
	if spell.english == 'Gates of Hades' or spell.english == 'Lunge' or spell.english == 'Swipe' or spell.english == 'Leafstorm' or spell.english == 'Firespit' or spell.english == 'Acrid Stream' or spell.english == 'Regurgitation' or spell.english == 'Corrosive Ooze' or spell.english == 'Thermal Pulse' or spell.english == 'Magic Hammer' or spell.english == 'Evryone. Grudge' or spell.english == 'Water Bomb' or spell.english == 'Dark Orb' or spell.english == 'Thunderbolt' or spell.english == 'Tem. Upheaval' or spell.english == 'Embalming Earth' or spell.english == 'Foul Waters' or spell.english == 'Rending Deluge' or spell.english == 'Droning Whirlwind' or spell.english == 'Anvil Lightning' or spell.english == 'Blinding Fulgor' or spell.english == 'Entomb' or spell.english == 'Palling Salvo' or spell.english == 'Scouring Spate' or spell.english == 'Searing Tempest' or spell.english == 'Silent Storm' or spell.english == 'Spectral Floe' or spell.english == 'Blazing Bound' or spell.english == 'Frightful Roar' or spell.english == 'Infrasonics' or spell.english == 'Chaotic Eye' or spell.english == 'Auroral Drape' or spell.english == 'Barbed Crescent' or spell.english == 'Tourbillion' or spell.english == 'Cimicine Discharge' or spell.english == 'Sub-zero smash' or spell.english == 'Filamented Hold' or spell.english == 'Mind Blast' or spell.english == 'Sandspin' or spell.english == 'Hecatomb Wave' or spell.english == 'Cold Wave' or spell.english == 'Terror Touch' or spell.english == 'Charged Whisker' then
		equip(sets.BlueMagic.BlueMagic)
		if spell.english == 'Cruel Joke' then
			equip(sets.BlueMagic.MAcc)
		end
        if spell.element == world.day_element or spell.element == world.weather_element then
            equip(set_combine(sets.BlueMagic.BlueMagic, sets.Utility.Weather))
        end
        if buffactive['Burst Affinity'] then
            if Burst_ind == 1 then
                equip(sets.JA.BurstAffinity)
            elseif Burst_ind == 2 then
                equip(sets.Utility.MB)
            end
        end
    end
	if spell.english == 'Tenebral Crush' then
        equip(sets.BlueMagic.Dark)
        if spell.element == world.day_element or spell.element == world.weather_element then
            equip(set_combine(sets.BlueMagic.Dark, sets.Utility.Weather))
        end
	end
    if spell.english == 'Subduction' or spell.english == 'Dream Flower' then
        equip(sets.BlueMagic.Sub)
	end
    if spell.english == 'Sheep Song' or  spell.english == 'Delta Thrust' or spell.english == 'Blood Drain' or spell.english == 'Soporific' or spell.english == 'Soud Blast' or spell.english == 'Chaotic Eye' or spell.english == 'Digest' or spell.english == 'Blank Gaze' or spell.english == 'Venom Shell' or spell.english == 'MP Drainkiss' or spell.english == 'Stinking Gas' or spell.english == 'Geist Wall' or spell.english == 'Awful Eye' or spell.english == 'Blood Saber' or spell.english == 'Jettatura' or spell.english == 'Frightful Roar' or spell.english == 'Filamented Hold' or spell.english == 'Cold Wave' or spell.english == 'Light of Penance' or spell.english == '1000 Needles' or spell.english == 'Feather Tickle' or spell.english == 'Yawn' or spell.english == 'Voracious Trunk' or spell.english == 'Infrasonics' or spell.english == 'Sandspray' or spell.english == 'Corrosive Ooze' or spell.english == 'Enervation' or spell.english == 'Lowing' or spell.english == 'Triumphant Roar' or spell.english == 'Actinic Burst' or spell.english == 'Osmosis' or spell.english == 'Cimicine Discharge' or spell.english == 'Demoralizing Roar' or spell.english == 'Auroral Drape' or spell.english == 'Reaving Wind' or spell.english == 'Mortal Ray' or spell.english == 'Absolute Terror' or spell.english == 'Blistering Roar' then
        equip(sets.BlueMagic.Debuff)
	end
    if spell.english == 'Magic Fruit' or spell.english == 'Plenilune Embrace' or spell.english == 'Wild Carrot' or spell.english == 'Pollen' or spell.english == 'Cure III' or spell.english == 'Cure IV' or spell.english == 'White Wind' then
        equip(sets.BlueMagic.BlueCure)
        if spell.target.name == player.name and string.find(spell.english, 'Magic Fruit') or string.find(spell.english, 'Plenilune Embrace') or string.find(spell.english, 'Wild Carrot') or string.find(spell.english, 'Cure III') or string.find(spell.english, 'Cure IV') 
			then equip(sets.BlueMagic.BlueCure) 
		end
	end
    if spell.english == 'Head Butt' or spell.english == 'Sudden Lunge' or spell.english == 'Tourbillion' or spell.english == 'Saurian Slide' or spell.english == 'Sweeping Gouge' or spell.english == 'Frypan' then
        equip(sets.BlueMagic.PhysStun)
	end
    if spell.english == 'MP Drainkiss' or spell.english == 'Digest' or spell.english == 'Blood Saber' or spell.english == 'Blood Drain' or spell.english == 'Osmosis' or spell.english == 'Magic Barrier' or spell.english == 'Diamondhide' or spell.english == 'Metallic Body' then
        equip(sets.BlueMagic.BuffSkill)
        if buffactive['Diffusion'] then equip(sets.JA.Diffusion) end
	end
    if spell.english == 'Fantod' or spell.english == 'Wind Breath' or spell.english == 'Exuviation' then
        equip(sets.BlueMagic.Enmity)
	end
    if spell.english == 'Erratic Flutter' or spell.english == 'Nat. Meditation' or spell.english == 'Uproot' or spell.english == 'Saline Coat' or spell.english == 'Barrier Tusk' or spell.english == 'Metallic Body' or spell.english == 'Diamondhide' or spell.english == 'Reactor Cool' or spell.english == 'Plasma Charge' or spell.english == 'Magic Barrier' or spell.english == 'Orcish Counterstance' or spell.english == 'Pyric Bulwark' or spell.english == 'Carcharian Verve' or spell.english == 'Battery Charge' or spell.engligh == 'Refresh' or spell.english == 'Occultation' then
        equip(sets.BlueMagic.BuffSkill)
	end
    if spell.english == 'Poison Breath' or spell.english == 'Magnetite Cloud' or spell.english == 'Self Destruct' or spell.english == 'Hecatomb Wave' or spell.english == 'Radiant Breath' or spell.english == 'Flying Hip Press' or spell.english == 'Bad Breath' or spell.english == 'Frost Breath' or spell.english == 'Heat Breath' or spell.english == 'Final Sting' or spell.english == 'Thunder Breath' or spell.english == 'Wind Breath' then
        equip(sets.BlueMagic.Breath)
	end
    if spell.english == 'Cocoon' or spell.english == 'Mighty Guard' or spell.english == 'Harden Shell' or spell.english == 'Animating Wail' or spell.english == 'Battery Charge' or spell.english == 'Nat. Meditation' or spell.english == 'Carcharian Verve' or spell.english == 'O. Counterstance' or spell.english == 'Barrier Tusk' or spell.english == 'Saline Coat' or spell.english == 'Regeneration' or spell.english == 'Erratic Flutter' then
	equip(sets.BlueMagic.BuffSkill)
        if buffactive['Diffusion'] then equip(sets.JA.Diffusion) end
	end
    if spell.english == 'Utsusemi: Ichi' then
        equip(sets.NINMagic.Utsusemi)
        if buffactive['Copy Image (3)'] then
            send_command('@wait 0.3; input //cancel Copy Image*')
        end
        if buffactive['Copy Image (2)'] then
            send_command('@wait 0.3; input //cancel Copy Image*')
        end
        if buffactive['Copy Image (1)'] then
            send_command('@wait 0.3; input //cancel Copy Image*')
        end
        if buffactive['Copy Image'] then
            send_command('@wait 0.3; input //cancel Copy Image*')
        end
    elseif spell.english == 'Utsusemi: Ni' or spell.english == 'Utsusemi: San' then
        equip(sets.NINMagic.Utsusemi)
	end
    if spell.english == 'Glutinous Dart' then
        equip(sets.BlueMagic.Dart)
    end
	if spell.skill == "Elemental Magic" then
		equip(sets.BlueMagic.BlueMagic)
	end
	if spell.skill == "Healing Magic" then
		equip(sets.BlueMagic.BlueCure)
	end
	if spell.skill == "Enfeebling Magic" then
		equip(sets.BlueMagic.MAcc)
	end
 end

function aftercast(spell)
    if player.status == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_ind]])

    elseif player.status == 'Engaged' and buffactive['doom'] then
        equip(set_combine(
            sets.TP[sets.TP.index[TP_ind]],
            sets.Utility.Doomed
        ))

    elseif player.status == 'Engaged' and buffactive['terror'] or buffactive['stun'] or buffactive['sleep'] then
        equip(sets.TP.DT)

    elseif buffactive['doom'] then
        equip(set_combine(
            sets.Idle[sets.Idle.index[Idle_ind]],
            sets.Utility.Doomed
        ))
    else
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
    end
end

function status_change(new, old)
    if player.status == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_ind]])
    else
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
    end
end

function self_command(command)
    if command == 'toggle TP set' then
        TP_ind = TP_ind + 1
        if TP_ind > #sets.TP.index then TP_ind = 1 end
        send_command('@input /echo <----- TP Set changed to ' .. sets.TP.index[TP_ind] .. ' ----->')
        equip(sets.TP[sets.TP.index[TP_ind]])
    elseif command == 'toggle Idle set' then
        Idle_ind = Idle_ind + 1
        if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
        send_command('@input /echo <----- Idle Set changed to ' .. sets.Idle.index[Idle_ind] .. ' ----->')
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
	elseif command == "equip TP set" then
		equip(sets.TP[sets.TP.index[TP_ind]])
	elseif command =="equip DT set" then
		equip (sets.TP.DT)
	elseif command == "equip Idle set" then
		equip(sets.Idle[sets.Idle.index[Idle_ind]])
	end
end
