physical_ready_moves = S{'Foot Kick','Whirl Claws','Sheep Charge','Lamb Chop','Head Butt','Wild Oats',
    'Leaf Dagger','Claw Cyclone','Razor Fang','Crossthrash','Nimble Snap','Cyclotail','Rhino Attack',
    'Power Attack','Mandibular Bite','Big Scissors','Grapple','Spinning Top','Double Claw','Frogkick',
    'Blockhead','Brain Crush','Tail Blow','Scythe Tail','Ripper Fang','Chomp Rush','Needleshot',
    'Recoil Dive','Sudden Lunge','Spiral Spin','Wing Slap','Beak Lunge','Suction','Back Heel',
    'Fantod','Tortoise Stomp','Sensilla Blades','Tegmina Buffet','Pentapeck','Sweeping Gouge',
    'Somersault','Tickling Tendrils','Pecking Flurry','Sickle Slash','Disembowel','Extirpating Salvo',
    'Mega Scissors','Rhinowrecker','Hoof Volley','Fluid Toss','Fluid Spread'}

magic_atk_ready_moves = S{'Dust Cloud','Cursed Sphere','Venom','Toxic Spit','Bubble Shower','Drainkiss',
    'Silence Gas','Dark Spore','Fireball','Plague Breath','Snow Cloud','Charged Whisker','Corrosive Ooze',
    'Aqua Breath','Stink Bomb','Nectarous Deluge','Nepenthic Plunge','Pestilent Plume','Foul Waters',
    'Acid Spray','Infected Leech','Gloom Spray','Venom Shower'}

magic_acc_ready_moves = S{'Sheep Song','Scream','Dream Flower','Roar','Predatory Glare','Gloeosuccus',
    'Palsy Pollen','Soporific','Geist Wall','Toxic Spit','Numbing Noise','Spoil','Hi-Freq Field',
    'Sandpit','Sandblast','Venom Spray','Filamented Hold','Queasyshroom','Numbshroom','Spore','Shakeshroom',
    'Infrasonics','Chaotic Eye','Blaster','Purulent Ooze','Intimidate','Noisome Powder','Acid Mist',
    'Choke Breath','Jettatura','Nihility Song','Molting Plumage','Swooping Frenzy','Spider Web'}

multi_hit_ready_moves = S{'Pentapeck','Tickling Tendrils','Sweeping Gouge','Chomp Rush','Wing Slap',
    'Pecking Flurry'}

tp_based_ready_moves = S{'Foot Kick','Dust Cloud','Snow Cloud','Sheep Song','Sheep Charge','Lamb Chop',
    'Head Butt','Scream','Dream Flower','Wild Oats','Leaf Dagger','Claw Cyclone','Razor Fang','Roar',
    'Gloeosuccus','Palsy Pollen','Soporific','Cursed Sphere','Somersault','Geist Wall','Numbing Noise',
    'Frogkick','Nimble Snap','Cyclotail','Spoil','Rhino Attack','Hi-Freq Field','Sandpit','Sandblast',
    'Mandibular Bite','Metallic Body','Bubble Shower','Grapple','Spinning Top','Double Claw','Spore',
    'Filamented Hold','Blockhead','Fireball','Tail Blow','Plague Breath','Brain Crush','Infrasonics',
    'Needleshot','Chaotic Eye','Blaster','Ripper Fang','Intimidate','Recoil Dive','Water Wall',
    'Sudden Lunge','Noisome Powder','Wing Slap','Beak Lunge','Suction','Drainkiss','Acid Mist',
    'TP Drainkiss','Back Heel','Jettatura','Choke Breath','Fantod','Charged Whisker','Purulent Ooze',
    'Corrosive Ooze','Tortoise Stomp','Aqua Breath','Sensilla Blades','Tegmina Buffet','Sweeping Gouge',
    'Tickling Tendrils','Pecking Flurry','Pestilent Plume','Foul Waters','Spider Web','Gloom Spray',
    'Disembowel','Extirpating Salvo','Rhinowrecker','Venom Shower','Fluid Toss','Fluid Spread','Digest'}

-- List of Pet Buffs and Ready moves exclusively modified by Pet TP Bonus gear.
pet_buff_moves = S{'Wild Carrot','Bubble Curtain','Scissor Guard','Secretion','Rage','Harden Shell',
    'TP Drainkiss','Fantod','Rhino Guard','Zealous Snort','Frenzied Rage','Digest'}


function get_sets()
	send_command("bind f9 gs c toggle TP set")
	send_command("bind f10 gs c toggle Idle set")
	send_command("bind f11 gs c toggle CDC set")
	send_command("bind f12 gs c toggle Req set")
	send_command("bind !f12 gs c toggle Rea set")
	send_command("bind ^` gs c toggle MB set")

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

	-- Idle Sets--
	sets.Idle = {}

	sets.Idle.index = {"Standard", "DT", "PetEngaged"}
	Idle_ind = 1

	sets.Idle.Standard = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body={ name="Gleti's Cuirass", augments={'Path: A',}},
		hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck = "Bathy Choker +1",
		waist="Carrier's Sash",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back="Moonbeam Cape",
	}

	sets.Idle.DT = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body= "Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Sanctity Necklace",
		waist="Carrier's Sash",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Shneddick Ring",
		right_ring="Defending Ring",
		back="Moonbeam Cape",
	}

	sets.Idle.PetEngaged = {
			ammo="Hesperiidae",
			head="Gleti's Mask",
			body={ name="Gleti's Cuirass", augments={'Path: A',}},
			hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
			legs="Gleti's Breeches",
			feet="Gleti's Boots",
			neck="Shulmanu Collar",
			waist="Incarnation Sash",
			left_ear="Enmerkar Earring",
			right_ear="Crep. Earring",
			left_ring="C. Palug Ring",
			right_ring="Tali'ah Ring",
			back="Pastoralist's Mantle"
	}

	-- TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard", "DW"}
	-- 1=Standard, 2=DW--

	TP_ind = 1
	sets.TP.Standard = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Malignance Chapeau",
		body={ name="Gleti's Cuirass", augments={'Path: A',}},
		hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Shulmanu Collar",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Epona's Ring",
		back={ name="Artio's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}

	sets.TP.DW = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Malignance Chapeau",
		body={ name="Gleti's Cuirass", augments={'Path: A',}},
		hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Shulmanu Collar",
		waist="Reiki Yotai",
		left_ear="Suppanomimi",
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Epona's Ring",
		back={ name="Artio's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}
	-- Ready Sets---

	sets.Ready = {}

	sets.Ready.Physical = {
			ammo="Hesperiidae",
			head="Gleti's Mask",
			body={ name="Valorous Mail", augments={'Pet: Accuracy+13 Pet: Rng. Acc.+13','Pet: "Dbl.Atk."+3 Pet: Crit.hit rate +3','Pet: Attack+12 Pet: Rng.Atk.+12',}},
			hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
			legs="Gleti's Breeches",
			feet="Gleti's Boots",
			neck="Shulmanu Collar",
			waist="Incarnation Sash",
			left_ear="Enmerkar Earring",
			right_ear="Crep. Earring",
			left_ring="C. Palug Ring",
			right_ring="Tali'ah Ring",
			back="Pastoralist's Mantle"
	}

	sets.Ready.MagicalAttack = {
			ammo="Hesperiidae",
			head="Gleti's Mask",
			body={ name="Gleti's Cuirass", augments={'Path: A',}},
			hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
			legs="Gleti's Breeches",
			feet="Gleti's Boots",
			neck="Bst. Collar +1",
			waist="Incarnation Sash",
			left_ear="Enmerkar Earring",
			right_ear="Crep. Earring",
			left_ring="C. Palug Ring",
			right_ring="Tali'ah Ring",
			back={ name="Artio's Mantle", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Mag. Acc.+10',}},
	}
	
	sets.Ready.MagicAcc ={
			ammo="Hesperiidae",
			head="Gleti's Mask",
			body={ name="Gleti's Cuirass", augments={'Path: A',}},
			hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
			legs="Gleti's Breeches",
			feet="Gleti's Boots",
			neck="Bst. Collar +1",
			waist="Incarnation Sash",
			left_ear="Enmerkar Earring",
			right_ear="Crep. Earring",
			left_ring="C. Palug Ring",
			right_ring="Tali'ah Ring",
			back={ name="Artio's Mantle", augments={'Pet: M.Acc.+20 Pet: M.Dmg.+20','Pet: Mag. Acc.+10',}},
	}
	

	-- WS Sets--
	sets.WS = {}
	sets.Ruinator = {}

	sets.Ruinator.index = {"Attack"}
	Ruinator_ind = 1

	sets.Ruinator.Attack = {
		ammo="Crepuscular Pebble",
		head="Gleti's Mask",
		body={ name="Gleti's Cuirass", augments={'Path: A',}},
		hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
		legs="Gleti's Breeches",
		feet="Gleti's Boots",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Ilabrat Ring",
		back={ name="Artio's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}

	sets.Rampage = {}

	sets.Rampage.index = {"Attack"}
	Rampage_ind = 1

	sets.Rampage.Attack = {
		ammo="Crepuscular Pebble",
		head="Gleti's Mask",
		body={ name="Gleti's Cuirass", augments={'Path: A',}},
		hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
		legs="Gleti's Breeches",
		feet="Gleti's Boots",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Ilabrat Ring",
		back={ name="Artio's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
	}

	sets.MistralAxe = {}

	sets.MistralAxe.index = {"Attack"}
	MistralAxe_ind = 1

	sets.MistralAxe.Attack = {
		ammo="Crepuscular Pebble",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Bst. Collar +1",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Thrud Earring",
		left_ring="Gere Ring",
		right_ring="Ilabrat Ring",
		back={ name="Artio's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
	}

	sets.Cloudsplitter ={
		ammo="Pemphredo Tathlum",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Bst. Collar +1",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
		right_ear="Thrud Earring",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Acumen Ring",
		back="Izdubar Mantle",
	}
	
	-- Utility Sets--
	sets.Utility = {}

	sets.Utility.Weather = {waist = "Hachirin-no-obi", back = "Twilight Cape"}


	sets.Utility.Phalanx = {
		ammo="Staunch Tathlum +1",
		head="Malignance Chapeau",
		body={ name="Taeon Tabard", augments={'"Conserve MP"+5','Phalanx +3',}},
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet={ name="Herculean Boots", augments={'Magic burst dmg.+6%','"Fast Cast"+1','Phalanx +4','Accuracy+14 Attack+14','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Olympus Sash",
		left_ear="Eabani Earring",
		right_ear="Mimir Earring",
		left_ring="Moonlight Ring",
		right_ring="Stikini ring +1",
		back="Moonbeam Cape",
	}

	sets.Utility.Steps = {
		ammo={ name="Coiste Bodhar", augments={'Path: A',}},
		head="Malignance Chapeau",
		body={ name="Gleti's Cuirass", augments={'Path: A',}},
		hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Shulmanu Collar",
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Telos Earring",
		right_ear="Sherida Earring",
		left_ring="Gere Ring",
		right_ring="Epona's Ring",
	}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Eshmun's Ring"}

	-- Ninja Magic Sets--
	sets.NINMagic = {}

	sets.NINMagic.Utsusemi = {
		head = "Dampening Tam",
		neck = "Loricate Torque +1",
		ar1 = "Brutal Earring",
		ear2 = "Cessance Earring",
		body = "Emet harness",
		hands = "Adhemar Wristbands",
		ring1 = "Chirich Ring +1",
		ring2 = "Petrov Ring",
		back = "Moonbeam Cape",
		waist = "Carrier's Sash",
		legs = "Herculean Trousers",
		feet = {name = "Herculean Boots",augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
	}

	-- Job Ability Sets--

	sets.JA = {}

	sets.JA.KillerInstinct = {head = "Ankusa Helm"}

	sets.JA.CB = {
		head={ name="Acro Helm", augments={'"Call Beast" ability delay -4',}},
		body={ name="Acro Surcoat", augments={'Pet: Attack+23 Pet: Rng.Atk.+23','"Call Beast" ability delay -4','CHR+4',}},
		hands={ name="Ankusa Gloves", augments={'Enhances "Beast Affinity" effect',}},
		legs={ name="Acro Breeches", augments={'"Call Beast" ability delay -4',}},
		feet={ name="Acro Leggings", augments={'"Call Beast" ability delay -4',}},
		neck={ name="Loricate Torque +1", augments={'Path: A',}},
		waist="Carrier's Sash",
		left_ear="Eabani Earring",
		right_ear="Infused Earring",
		left_ring="Chirich Ring +1",
		right_ring="Defending Ring",
		back="Moonbeam Cape",
	}

	sets.JA.Familiar = {legs = "Ankusa Trousers"}

	sets.JA.Tame = {head = "Totemic Helm +1"}

	sets.JA.Spur = {feet = "Nukumi Ocreae +1"}

	sets.JA.Reward = {
		ammo = "Pet food Theta Biscuit",
		body = "Monster Jackcoat",
		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_rin = "Sirona's Ring",
		legs = "Ankusa Trousers",
		feet = "Monster Gaiters"
	}
	
	sets.JA.FeralHowl = {
	    ammo="Pemphredo Tathlum",
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
		neck="Bst. Collar +1",
		waist="Eschan Stone",
		left_ear="Crep. Earring",
		right_ear="Digni. Earring",
		left_ring="Stikini Ring +1",
		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		back="Izdubar Mantle",
	}

	sets.JA.ReadyPre = {Legs = "Gleti's Breeches"}

	-- Precast Sets--
	sets.precast = {}
	
	sets.precast.Ready = {}

	sets.precast.FC = {}

	sets.precast.FC.Standard = {
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
		back = "Swith Cape"
	}	
end

function precast(spell)
	if spell.action_type == "Magic" then
		equip(sets.precast.FC.Standard)
	elseif spell.english == "Ruinator" then
		equip(sets.Ruinator[sets.Ruinator.index[Ruinator_ind]])
	elseif spell.english == "Mistral Axe" or spell.english == "Calamity" then
		equip(sets.MistralAxe[sets.MistralAxe.index[MistralAxe_ind]])
	elseif spell.english == "Rampage" or spell.english == "Decimation" then
		equip(sets.Rampage[sets.Rampage.index[Rampage_ind]])
	elseif spell.english == "Cloudsplitter"  or spell.english == "Primal Rend" then	
		equip(sets.Cloudsplitter)
	elseif spell.type == 'WeaponSkill' then
		equip(sets.MistralAxe[sets.MistralAxe.index[MistralAxe_ind]])
	elseif spell.english == "Box Step" then
		equip(sets.Utility.Steps)
	elseif spell.english == "Spur" then
		equip(sets.JA.Spur)
	elseif spell.english == "Tame" then
		equip(sets.JA.Tame)
	elseif spell.english == "Reward" then
		equip(sets.JA.Reward)
	elseif spell.english == "Call Beast" or spell.english == "Bestial Loyalty" then
		equip(sets.JA.CB)
	elseif spell.english == "Familiar" then
		equip(sets.JA.Familiar)
	elseif spell.english == "Ready" then
		equip(sets.Precast.Ready)
	elseif spell.english == "Feral Howl" then
		equip(sets.JA.FeralHowl)
	end
end

function midcast(spell, act)
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
	elseif spell.english == "Utsusemi: Ni" or spell.english == "Utsusemi: San" then
		equip(sets.NINMagic.Utsusemi)
	elseif magic_atk_ready_moves:contains(spell.english) then
		equip(sets.Ready.MagicalAttack)
	elseif magic_acc_ready_moves:contains(spell.english) or pet_buff_moves:contains(spell.english) then
		equip(sets.Ready.MagicAcc)
	elseif physical_ready_moves:contains(spell.english) or multi_hit_ready_moves:contains(spell.english) or tp_based_ready_moves:contains(spell.english) then
		equip(sets.Ready.Physical)
	end
end

function aftercast(spell)
    if player.status == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_ind]])
    elseif player.status == 'Engaged' and buffactive['doom'] then
        equip(set_combine(sets.TP[sets.TP.index[TP_ind]],sets.Utility.Doomed))
    elseif player.status == 'Engaged' and buffactive['terror'] or buffactive['stun'] or buffactive['sleep'] then
        equip(sets.TP.DT)
    elseif buffactive['doom'] then
        equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]],sets.Utility.Doomed))
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