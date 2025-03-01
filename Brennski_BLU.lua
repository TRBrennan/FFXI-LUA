Phsyical_Blue_Spells = S{'Vertical Cleave','Death Scissors','Empty Thrash','Dimensional Death','Quadrastrike','Bloodrake','Disseverment','Hysteric Barrage',
'Frenetic Rip','Seedspray','Vanity Dive','Goblin Rush','Paralyzing Triad','Thrashing Assault','Benthic Typhoon','Final Sting','Spiral Spin','Whirl of Rage','Quad. Continuum','Cannonball','Heavy Strike','Sinker Drill','Glutinous Dart'}

Magic_Blue_Spells = S{'Gates of Hades','Lunge','Swipe','Leafstorm','Firespit','Acrid Stream','Regurgitation','Corrosive Ooze','Thermal Pulse','Magic Hammer','Evryone. Grudge','Water Bomb','Dark Orb','Thunderbolt',
'Tem. Upheaval','Embalming Earth','Foul Waters','Rending Deluge','Droning Whirlwind','Anvil Lightning','Blinding Fulgor','Entomb',
'Palling Salvo','Scouring Spate','Searing Tempest','Silent Storm','Spectral Floe','Blazing Bound','Frightful Roar','Infrasonics','Chaotic Eye','Auroral Drape',
'Barbed Crescent','Tourbillion','Cimicine Discharge','Sub-zero smash','Filamented Hold','Mind Blast','Sandspin','Hecatomb Wave','Cold Wave','Terror Touch','Charged Whisker', 'Subduction', 'Diffusion Ray'}

Debuff_Blue_Spells = S{'Sheep Song','Delta Thrust','Blood Drain','Soporific','Soud Blast','Chaotic Eye','Digest','Blank Gaze','Venom Shell','MP Drainkiss','Stinking Gas','Awful Eye','Blood Saber','Jettatura','Frightful Roar',
'Filamented Hold','Cold Wave','Light of Penance','1000 Needles','Feather Tickle','Yawn','Voracious Trunk','Infrasonics','Sandspray','Corrosive Ooze','Enervation',
'Lowing','Triumphant Roar','Osmosis','Cimicine Discharge','Demoralizing Roar','Auroral Drape','Reaving Wind','Mortal Ray','Absolute Terror','Blistering Roar','Dream Flower'}

PhysStun_Blue_Spells = S{'Head Butt','Sudden Lunge','Tourbillion','Saurian Slide','Sweeping Gouge','Frypan'}

Cure_Blue_Spells = S{'Magic Fruit','Plenilune Embrace','Wild Carrot','Pollen','Cure III','Cure IV','White Wind','Restoral'}

Skill_Blue_Spells = S{'MP Drainkiss','Digest','Blood Saber','Blood Drain','Osmosis','Magic Barrier','Diamondhide','Metallic Body',
'Cocoon','Mighty Guard','Harden Shell','Animating Wail','Battery Charge','Nat. Meditation','Carcharian Verve','O. Counterstance','Barrier Tusk','Saline Coat','Regeneration','Erratic Flutter',
'Nat. Meditation','Uproot','Saline Coat','Barrier Tusk','Metallic Body','Diamondhide','Reactor Cool','Plasma Charge','Magic Barrier','Orcish Counterstance','Pyric Bulwark','Carcharian Verve','Battery Charge','Refresh','Occultation'}

Enmity_Blue_Spells = S{'Fantod','Wind Breath','Exuviation','Geist Wall','Actinic Burst'}

Breath_Blue_Spells = S{'Poison Breath','Magnetite Cloud','Self Destruct','Hecatomb Wave','Radiant Breath','Flying Hip Press','Bad Breath','Frost Breath','Heat Breath','Final Sting','Thunder Breath','Wind Breath'}


function get_sets()
	
    send_command('bind !` gs c toggle OdyEva')
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

    sets.Idle.index = {'Standard', 'DT', 'Cleave' ,'Eva', 'RefreshRegain'}
    Idle_ind = 1

    sets.Idle.Standard = {
        ammo = "Staunch Tathlum +1",
        head="Null Masque",
        neck = "Warder's Charm +1",
        ear1 = "Eabani Earring",
        ear2 = "Infused Earring",
        body = "Hashishin Mintan +2",
        --hands = { name = "Herculean Gloves",augments = {'DEX+9', 'Magic dmg. taken -3%', '"Refresh"+1',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
        ring1 = "Defending ring",
        ring2 = "Shneddick Ring",
		waist = "Null Belt",
        legs = "Gleti's Breeches",
        feet="Malignance Boots",
        back="Null Shawl"
    }

    sets.Idle.DT = {
        ammo = "Staunch Tathlum +1",
        head="Null Masque",
        neck = "Warder's Charm +1",
        ear1 = "Eabani Earring",
        ear2 = "Infused Earring",
        body="Hashishin Mintan +2",
        hands="Malignance Gloves",
        ring1 = "Defending ring",
        ring2 = "Shneddick Ring",
        back="Null Shawl",
        waist = "Null Belt",
        legs = "Malignance Tights",
		feet="Malignance Boots",	
    }

    sets.Idle.Cleave = {
        ammo = "Staunch Tathlum +1",
		head="Null Masque",
		neck = "Warder's Charm +1",
        ear1 = "Eabani Earring",
        ear2 = "Infused Earring",
        body="Hashishin Mintan +2",
		hands="Malignance Gloves",
        ring1 = "Defending ring",
        ring2 = "Shneddick Ring",
        back="Null Shawl",
        waist = "Null Belt",
        legs = "Nyame Flanchard",
        feet="Malignance Boots",
    }
	
	sets.Idle.Eva ={
		ammo="Amar Cluster",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Nyame Flanchard",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Warder's Charm +1", augments={'Path: A',}},
		waist="Carrier's Sash",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Shneddick Ring",
		back="Null Shawl",
	}
	
	sets.Idle.RefreshRegain = {
	    ammo="Staunch Tathlum +1",
		head={ name="Herculean Helm", augments={'Pet: CHR+2','Potency of "Cure" effect received+3%','"Refresh"+2','Mag. Acc.+1 "Mag.Atk.Bns."+1',}},
		body="Hashishin Mintan +2",
		hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
		legs={ name="Gleti's Breeches", augments={'Path: A',}},
		feet={ name="Herculean Boots", augments={'CHR+6','STR+14','"Refresh"+1','Mag. Acc.+14 "Mag.Atk.Bns."+14',}},
		neck="Rep. Plat. Medal",
		waist="Fucho-no-Obi",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Shneddick Ring",
		back="Null Shawl",
	}

    -- TP Sets--
    sets.TP = {}

    sets.TP.index = {'Standard', 'DT','DTAccuracy','DTSB','EvaTank', 'Counter'}
    -- 1=Standard, 2 =DT, 3=DTAccuracy,4=DTSubtleBlow, 5=Evatank--

    TP_ind = 1
    sets.TP.Standard = {
        ammo = "Coiste Bodhar",
        head = "Adhemar Bonnet +1",
        neck = "Mirage Stole +2",
        ear1 = "Telos Earring",
        ear2 = "Suppanomimi",
        body = "Gleti's Cuirass",
        hands ="Adhemar Wristbands +1",
		left_ring="Ilabrat Ring",
		right_ring="Epona's Ring",
        back="Null Shawl",
        waist = "Reiki Yotai",
        legs = "Samnuha Tights",
		Feet = "Nyame Sollerets",
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
		left_ring="Chirich Ring +1",
		right_ring="Defending Ring",
		back="Null Shawl",
	}
    

    sets.TP.DTAccuracy = {
        ammo="Aurgelmir Orb +1",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Mirage Stole +2", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Telos Earring",
		right_ear="Suppanomimi",
		right_ring="Ilabrat Ring",
		left_ring="Chirich Ring +1",
		back="Null Shawl",
    }
	
	sets.TP.DTSB = {
	    ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
		body="Malignance Tabard",
		hands="Adhemar Wristbands +1",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Mirage Stole +2", augments={'Path: A',}},
		waist="Reiki Yotai",
		left_ear="Digni. Earring",
		right_ear="Telos Earring",
		left_ring="Chirich Ring +1",
		right_ring="Chirich Ring",
		back="Null Shawl",
	}

	sets.TP.EvaTank ={
			ammo="Amar Cluster",
			head={ name="Nyame Helm", augments={'Path: B',}},
			body={ name="Nyame Mail", augments={'Path: B',}},
			hands={ name="Nyame Gauntlets", augments={'Path: B',}},
			legs="Malignance Tights",
			feet={ name="Nyame Sollerets", augments={'Path: B',}},
			neck={ name="Warder's Charm +1", augments={'Path: A',}},
			waist="Carrier's Sash",
			left_ear="Eabani Earring",
			right_ear="Infused Earring",
			left_ring="Chirich Ring +1",
			right_ring="Ilabrat Ring",
			back="Null Shawl",
	}
	
	sets.TP.Counter ={
		ammo="Amar Cluster",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck={ name="Warder's Charm +1", augments={'Path: A',}},
		waist="Cornelia's Belt",
		left_ear="Telos Earring",
		right_ear="Genmei Earring",
		left_ring="Chirich Ring +1",
		right_ring="Ilabrat Ring",
		back="Null Shawl",
	}
	
    -- Weaponskill Sets--
    sets.WS = {}

    sets.Requiescat = {}

    sets.Requiescat.index = {'Attack'}
    Requiescat_ind = 1

    sets.Requiescat.Attack = {
        ammo = "Coiste Bodhar",
        head = "Carmine Mask +1",
        neck = "Fotia gorget",
        ear1 = "Telos Earring",
        ear2 = "Moonshade Earring",
        body = "Gleti's Cuirass",
        hands = "Adhemar Wristbands +1",
        ring1 = "Ilabrat Ring",
        ring2 = "Epona's ring",
        back="Null Shawl",
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
        neck = "Mirage Stole +2",
        ear1 = "Ishvara Earring",
        ear2 = "Moonshade Earring",
        body = "Nyame Mail",
        hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
        ring1 = "Epaminondas's Ring",
        ring2 = "Beithir ring",
        back = {name = "Rosmerta's Cape",augments = {'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        waist = "Sailfi Belt +1",
        legs="Nyame Flanchard",
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
    }

    sets.ChantDuCygne = {}

    sets.ChantDuCygne.index = {'Attack'}
    ChantDuCygne_ind = 1

    sets.ChantDuCygne.Attack = {
        ammo = "Coiste Bodhar",
        head = "Adhemar Bonnet +1",
        neck = "Mirage Stole +2",
        ear2 = "Moonshade Earring",
        ear1 = "Telos Earring",
        body = "Gleti's Cuirass",
		hands = "Adhemar Wristbands +1",
        ring1 = "Hetairoi Ring",
        ring2 = "Epona's Ring",
        back="Null Shawl",
        waist = "Fotia belt",
        legs = "Samnuha Tights",
        feet = "Thereoid Greaves"
    }

    sets.SanguineBlade = {
        ammo = "Pemphredo Tathlum",
        head = "Pixie Hairpin +1",
        neck = "Mirage Stole +2",
        ear2 = "Friomisi earring",
        ear1 = "Regal Earring",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        ring1 = "Epaminondas's Ring",
        ring2 = 'Archon Ring',
        waist="Orpheus's Sash",
        back = {name = "Rosmerta's Cape",augments = {'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        legs="Luhlaza Shalwar +3",
        feet = "Amarlic Nails +1"
    }

    sets.CircleBlade = {
        ammo = "Coiste Bodhar",
		Head = "Nyame Helm",
        neck = "Mirage Stole +2",
        ear1 = "Moonshade Earring",
        ear2 = "Ishvara Earring",
        body = "Nyame Mail",
		hands = "Nyame Gauntlets",
        ring1 = "Ilabrat Ring",
        ring2 = "Beithir ring",
        back = {name = "Rosmerta's Cape",augments = {'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        waist = "Sailfi Belt +1",
        legs="Nyame Flanchard",
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

    sets.Expiacion = {
        ammo = "Coiste Bodhar",
		Head = "Nyame Helm",
        neck = "Mirage Stole +2",
        ear1 = "Moonshade Earring",
        ear2 = "Ishvara Earring",
        body = "Nyame Mail",
		hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
        ring1 = "Epaminondas's Ring",
        ring2 = "Beithir ring",
        back = {name = "Rosmerta's Cape",augments = {'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        waist = "Sailfi Belt +1",
        legs="Nyame Flanchard",
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
    }

    sets.Realmrazer = {}

    sets.Realmrazer.index = {'Attack'}
    Realmrazer_ind = 1

    sets.Realmrazer.Attack = {
        ammo = "Coiste Bodhar",
        head = "Dampening Tam",
        neck = "Fotia gorget",
        ear1 = "Brutal Earring",
        ear2 = "Cessance Earring",
        body = "Gleti's Cuirass",
        hands = "Nyame Gauntlets",
        ring1 = "Ilabrat Ring",
        ring2 = "Epona's ring",
		back = {name = "Rosmerta's Cape",augments = {'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
        waist = "Fotia belt",
		legs="Nyame Flanchard",
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
    }

    sets.FlashNova = {
        ammo = "Pemphredo Tathlum",
        Head = "Jhakri Coronal +1",
        neck = "Mirage Stole +2",
        rear = "Friomisi earring",
        ear1 = "Novio Earring",
        body = "Gleti's Cuirass",
        hands = "Amalric Gages +1",
        ring1 = "Shiva Ring",
        ring2 = 'Shiva Ring',
        waist = "Sacro Cord",
        back="Null Shawl",
        legs="Nyame Flanchard",
        feet={ name="Nyame Sollerets", augments={'Path: B',}},
    }


    -- Blue Magic Sets--
    sets.BlueMagic = {}

    sets.BlueMagic.Physical = {
        ammo = "Coiste Bodhar",
        head = "Nyame Helm",
        body = "Gelti's Cuirass",
        hands = "Hashishin bazubands +3",
        legs = "Hashishin tayt +3",
		feet="Hashishin Basmak +2",
        neck = "Mirage Stole +2",
        waist = "Sailfi Belt +1",
        left_ear = "Digni. Earring",
        right_ear = "Crep. Earring",
        ring1 = "Ilabrat Ring",
        ring2 = "Petrov Ring",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
    }

    sets.BlueMagic.BlueMagic = {
        ammo = "Pemphredo Tathlum",
		body={ name="Cohort Cloak +1", augments={'Path: A',}},
        hands = "Hashishin bazubands +3",
        legs = "Hashishin tayt +3",
        feet = "Hashishin Basmak +2",
        neck = "Mirage Stole +2",
        waist="Orpheus's Sash",
        left_ear = "Regal Earring",
        right_ear = "Friomisi Earring",
        left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
        right_ring = "Acumen Ring",
		back={ name="Rosmerta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Mag.Atk.Bns."+10',}},
    }

    sets.BlueMagic.PhysStun = {
		head="Malignance Chapeau",
        ammo = "Coiste Bodhar",
        right_ear = "Hashi. Earring +1",
        left_ear = "Crep. Earring",
        ring2 = "Stikini ring +1",
        Ring1 = "Kishar Ring",
		legs="Luhlaza Shalwar +3",
        back={ name="Aurist's Cape +1", augments={'Path: A',}},
        hands = "Hashishin bazubands +3",
		feet="Hashishin Basmak +2",
        neck = "Mirage Stole +2"
    }

    sets.BlueMagic.Debuff = {
	    ammo="Pemphredo Tathlum",
		head="Assim. Keffiyeh +3",
		body="Hashishin Mintan +2",
		hands="Hashishin bazubands +3",
		--legs="Assim. Shalwar +3",
		legs = "Hashishin tayt +3",
		--feet="Hashishin Basmak +2",
		feet = "Malignance Boots",
		neck={ name="Mirage Stole +2", augments={'Path: A',}},
		waist="Acuity Belt +1",
		right_ear = "Hashi. Earring +1",
		left_ear="Regal Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Stikini Ring +1",
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
    }

    sets.BlueMagic.BuffSkill = {
        ammo = "Mavi Tathlum",
        head = "Luhlaza Keffiyeh +1",
        body = "Assimilator's Jubbah +3",
		hands = "Rawhide Gloves",
        neck = "Mirage Stole +2",
        legs = "Hashishin tayt +3",
        back = "Cornflower Cape",
		right_ear = "Hashi. Earring +1",
        left_ear = "Infused Earring",
        ring2 = "Stikini ring +1",
		ring1 = "Stikini Ring +1",
		feet = "Luhlaza Charuqs +1"
    }

    sets.BlueMagic.Breath = {
        head = "Luhlaza Keffiyeh",
        ear1 = "Moonshade Earring",
        ear2 = "Mavi Earring",
        body = "Assimilator's Jubbah +3",
        hands = "Espial Bracers",
        ring1 = "Bomb Queen Ring",
        ring2 = "Meridian Ring",
        back = "Gigant Mantle",
        waist = "Lieutenant's Sash",
        legs = "Hashishin tayt +3",
        Feet = "Nyame Sollerets",
    }

    sets.BlueMagic.BlueCure = {
        ammo = "Coiste Bodhar",
        head = "Telchine Cap",
        body = "Vrikodara Jupon",
        hands = "Telchine Gloves",
        legs = "Hashishin tayt +3",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
        neck = "Incanter's Torque",
        waist="Sacro Cord",
        left_ear = "Regal Earring",
        right_ear = "Mendi. Earring",
        ring1 = "Stikini ring +1",
        ring2 = "Sirona's Ring",
        back = "Aurist's Cape +1",
    }
	
	sets.BlueMagic.Macc = {
	    ammo="Pemphredo Tathlum",
		head="Assim. Keffiyeh +3",
		body="Hashishin Mintan +2",
		hands="Hashishin bazubands +3",
		legs = "Hashishin tayt +3",
		feet="Hashishin Basmak +2",
		neck={ name="Mirage Stole +2", augments={'Path: A',}},
		waist="Sacro Cord",
		left_ear="Regal Earring",
		right_ear = "Hashi. Earring +1",
		right_ring="Stikini ring +1",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
	}

    sets.BlueMagic.Enmity = {
		ammo="Sapience Orb",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Emet Harness +1",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Nyame Sollerets",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Trance Belt",
		left_ear="Eabani Earring",
		right_ear="Friomisi Earring",
		left_ring="Petrov Ring",
		right_ring="Supershear Ring",
		back="Null Shawl",
    }

    sets.BlueMagic.Dark = {
        ammo = "Pemphredo Tathlum",
        head = "Pixie Hairpin +1",
        neck = "Mirage Stole +2",
        ear2 = "Friomisi earring",
        ear1 = "Regal Earring",
        body = "Jhakri Robe +2",
        hands = "Hashishin bazubands +3",
        left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
        right_ring = "Acumen Ring",
        waist="Orpheus's Sash",
        back = "Cornflower cape",
        legs="Luhlaza Shalwar +3",
       feet = "Hashishin Basmak +2",
    }
	
	sets.BlueMagic.OdyDF ={
	    ammo="Staunch Tathlum +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs = "Hashishin tayt +3",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Mirage Stole +2", augments={'Path: A',}},
		waist="Sacro Cord",
		left_ear="Crep. Earring",
		right_ear="Digni. Earring",
		left_ring="Defending Ring",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back={ name="Aurist's Cape +1", augments={'Path: A',}},
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

	sets.Utility.Phalanx ={
	    ammo="Amar Cluster",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Taeon Tabard", augments={'"Conserve MP"+5','Phalanx +3',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Telchine Braconi", augments={'"Fast Cast"+2','Enh. Mag. eff. dur. +8',}},
		feet={ name="Herculean Boots", augments={'Magic burst dmg.+6%','"Fast Cast"+1','Phalanx +4','Accuracy+14 Attack+14','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
		neck={ name="Warder's Charm +1", augments={'Path: A',}},
		waist="Olympus Sash",
		left_ear="Mimir Earring",
		right_ear="Infused Earring",
		left_ring="Defending Ring",
		right_ring="Stikini Ring +1",
		back="Fi Follet Cape +1",
	}

	sets.Utility.TH = {hands = "Volte Bracers", waist = "Chaac Belt", legs = "Volte Hose"}
	
    sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Eshmun's Ring"}

    sets.Utility.Sleeping = {neck = "Opo-Opo Necklace"}
	
	sets.Utility.Phalanx = {}

    -- Job Ability Sets--

    sets.JA = {}

    sets.JA.ChainAffinity = {feet = "Assim. charuqs +1"}

    sets.JA.BurstAffinity = {feet = "Hashishin Basmak +1"}

    sets.JA.Efflux = {legs = "Hashishin tayt +2"}

    sets.JA.AzureLore = {hands = "Luh. bazubands +1"}

    sets.JA.Diffusion = {feet = "Luhlaza Charuqs +1"}

    -- Precast Sets--
    sets.precast = {}

    sets.precast.FC = {}

    sets.precast.FC.Standard = {
        ammo = "Sapience Orb",
        head = "Carmine Mask +1",
        --body = "Adhemar Jacket +1",
		body ="Hashishin Mintan +2",
        hands = "Leyline Gloves",
        legs = "Aya. Cosciales +2",
        feet = "Carmine Greaves +1",
        neck = "Voltsurge Torque",
        waist = "Witful Belt",
        left_ear = "Etiolation Earring",
        right_ear = "Loquac. Earring",
        ring1 = "Rahab Ring",
        ring2 = "Kishar Ring",
        back = "Fi follet cape +1",
    }
	
	sets.precast.FC.DT ={
	    ammo="Sapience Orb",
		head={ name="Carmine Mask +1", augments={'Accuracy+20','Mag. Acc.+12','"Fast Cast"+4',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Aya. Cosciales +2",
		feet={ name="Carmine Greaves +1", augments={'Accuracy+12','DEX+12','MND+20',}},
		neck="Voltsurge Torque",
		waist="Witful Belt",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Rahab Ring",
		right_ring="Kishar Ring",
		back="Moonbeam Cape",
	}
end


function precast(spell)
    if spell.action_type == 'Magic' then
        equip(sets.precast.FC.Standard)
		if spell.english =='Tenebral Crush' or spell.english =='White Wind' or spell.english == 'Silent Storm' or spell.english == 'Cocoon' then
			equip(sets.precast.FC.DT)
		end
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
        equip(SanguineBlade)
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
    if Phsyical_Blue_Spells:contains(spell.english) then 
        equip(sets.BlueMagic.Physical)
        if buffactive['Chain Affinity'] then equip(sets.JA.ChainAffinity) end
        if buffactive['Efflux'] then equip(sets.JA.Efflux) end
		if spell.english == 'Glutinous Dart' then
			equip(set_combine(sets.BlueMagic.Physical, sets.Utility.TH))
		end
    end
	if Magic_Blue_Spells:contains(spell.english) then
		equip(sets.BlueMagic.BlueMagic)
		if spell.english == 'Cruel Joke' then
			equip(sets.BlueMagic.MAcc)
		end
		if spell.english =='Subduction' then
		  equip(set_combine(sets.BlueMagic.BlueMagic, sets.Utility.TH))
		end
		if spell.element == world.day_element or spell.element == world.weather_element then
			equip(set_combine(sets.BlueMagic.BlueMagic, sets.Utility.Weather))
		end
		if spell.english == 'Silent Storm' then
			equip(sets.BlueMagic.Debuff)
		end
	end	
	
	if spell.english == 'Tenebral Crush' then
        equip(sets.BlueMagic.Dark)
        if spell.element == world.day_element or spell.element == world.weather_element then
            equip(set_combine(sets.BlueMagic.Dark, sets.Utility.Weather))
        end
	end
    if Debuff_Blue_Spells:contains(spell.english) then
        equip(sets.BlueMagic.Debuff)
		if spell.english == 'Dream Flower' then
			if Idle_ind == 4 then
				equip(sets.BlueMagic.OdyDF)
			else
				equip(set_combine(sets.BlueMagic.Debuff, sets.Utility.TH))
			end
		end
	end
    if Cure_Blue_Spells:contains(spell.english) then
        equip(sets.BlueMagic.BlueCure)
        if spell.target.name == player.name and string.find(spell.english, 'Magic Fruit') or string.find(spell.english, 'Plenilune Embrace') or string.find(spell.english, 'Wild Carrot') or string.find(spell.english, 'Cure III') or string.find(spell.english, 'Cure IV') 
			then equip(sets.BlueMagic.BlueCure) 
		end
	end
    if PhysStun_Blue_Spells:contains(spell.english) then
        equip(sets.BlueMagic.PhysStun)
	end
    if Enmity_Blue_Spells:contains(spell.english) then
        equip(sets.BlueMagic.Enmity)
	end
    if Breath_Blue_Spells:contains(spell.english) then
        equip(sets.BlueMagic.Breath)
	end
    if Skill_Blue_Spells:contains(spell.english) then
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
	if spell.skill == "Elemental Magic" then
		equip(sets.BlueMagic.BlueMagic)
	end
	if spell.skill == "Healing Magic" then
		equip(sets.BlueMagic.BlueCure)
	end
	if spell.skill == "Enfeebling Magic" then
		equip(sets.BlueMagic.MAcc)
	end
	if spell.english == 'Phalanx' then
		equip(sets.Utility.Phalanx)
	end
 end


function aftercast(spell)
    if player.status == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_ind]])
		if buffactive['Aftermath: Lv.3'] and player.equipment.main == "Tizona" then
			equip(sets.TP.DTAccuracy)
		end
    elseif player.status == 'Engaged' and buffactive['doom'] then
        equip(set_combine(sets.TP[sets.TP.index[TP_ind]],sets.Utility.Doomed))
		if buffactive['Aftermath: Lv.3'] and player.equipment.main == "Tizona" then
			equip(sets_combine(sets.TP.DTAccuracy, sets.Utility.Doomed))
		end

    elseif player.status == 'Engaged' and buffactive['terror'] or buffactive['stun'] or buffactive['sleep'] then
        equip(sets.TP.DT)

    elseif buffactive['doom'] then
        equip(set_combine( sets.Idle[sets.Idle.index[Idle_ind]],sets.Utility.Doomed))
    else
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
    end
end

function status_change(new, old)
    if player.status == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_ind]])
		if buffactive['Aftermath: Lv.3'] and player.equipment.main == "Tizona" then
			equip(sets.TP.DTAccuracy)
		end
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