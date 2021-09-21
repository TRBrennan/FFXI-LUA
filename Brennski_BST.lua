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
		ammo = "Demonry Core",
		head = {
			name = "Herculean Helm",
			augments = {
				"Pet: CHR+2",
				'Potency of "Cure" effect received+3%',
				'"Refresh"+2',
				'Mag. Acc.+1 "Mag.Atk.Bns."+1'
			}
		},
		neck = "Sanctity Necklace",
		ear1 = "Eabani earring",
		ear2 = "Handler's earring",
		body = "Emet Harness +1",
		hands = "Ankusa Gloves",
		ring1 = "Chirich Ring +1",
		ring2 = "Defending ring",
		waist = "Carrier's Sash",
		legs = "Herculean Trousers",
		feet = "Amm Greaves",
		back = "Mecistopins mantle"
	}

	sets.Idle.DT = {
		main = "Terra's Staff",
		sub = "Umbra strap",
		ammo = "Amar Cluster",
		head = {
			name = "Herculean Helm",
			augments = {
				"Pet: CHR+2",
				'Potency of "Cure" effect received+3%',
				'"Refresh"+2',
				'Mag. Acc.+1 "Mag.Atk.Bns."+1'
			}
		},
		neck = "Loricate Torque +1",
		ear1 = "Etiolation earring",
		ear2 = "Handler's earring +1",
		body = "Emet Harness +1",
		hands = "Adhemar Wristbands",
		ring1 = "Defending ring",
		ring2 = "Succor ring",
		back = "Cornflower Cape",
		waist = "Carrier's Sash",
		legs = "Samnuha Tights",
		feet = "Amm Greaves"
	}

	sets.Idle.PetEngaged = {
		ammo = "Demonry Core",
		head = "Awing Salade",
		body = "Emicho Haubert +1",
		legs = {
			name = "Valor. Hose",
			augments = {
				"Pet: Accuracy+30 Pet: Rng. Acc.+30",
				'"Dbl.Atk."+1',
				"Pet: INT+6",
				"Pet: Attack+11 Pet: Rng.Atk.+11"
			}
		},
		feet = "Emicho Gambieras",
		hands = "Regimen Mittens",
		legs = "Taeon Tights",
		back = "Pastoralist's Mantle",
		neck = "Shulmanu Collar",
		left_ear = "Sabong Earring",
		right_ear = "Enmerkar Earring",
		waist = "Isa Belt"
	}

	-- TP Sets--
	sets.TP = {}

	sets.TP.index = {"Standard", "DW"}
	-- 1=Standard, 2=DW--

	TP_ind = 1
	sets.TP.Standard = {
		ammo = "Demonry Core",
		head = "Meghanada Visor +2",
		body = {
			name = "Emicho Haubert +1",
			augments = {"HP+65", "DEX+12", "Accuracy+20"}
		},
		hands = "Emicho Gauntlets +1",
		legs = {
			name = "Valor. Hose",
			augments = {
				"Accuracy+23 Attack+23",
				'"Dbl.Atk."+3',
				"VIT+4",
				"Attack+5"
			}
		},
		feet = {
			name = "Valorous Greaves",
			augments = {
				"Accuracy+25 Attack+25",
				'"Dbl.Atk."+4',
				"CHR+8",
				"Attack+6"
			}
		},
		neck = "Shulmanu Collar",
		waist = "Kentarch Belt +1",
		left_ear = "Telos Earring",
		right_ear = "Cessance Earring",
		left_ring = "Ilabrat Ring",
		right_ring = "Epona's Ring"
	}

	sets.TP.DW = {
		ammo = "Demonry Core",
		head = "Meghanada Visor +2",
		body = {
			name = "Emicho Haubert +1",
			augments = {"HP+65", "DEX+12", "Accuracy+20"}
		},
		hands = {
			name = "Emicho Gauntlets",
			augments = {
				"Accuracy+20",
				'"Dual Wield"+5',
				"Pet: Accuracy+20"
			}
		},
		legs = {
			name = "Valor. Hose",
			augments = {
				"Accuracy+23 Attack+23",
				'"Dbl.Atk."+3',
				"VIT+4",
				"Attack+5"
			}
		},
		feet = {
			name = "Valorous Greaves",
			augments = {
				"Accuracy+25 Attack+25",
				'"Dbl.Atk."+4',
				"CHR+8",
				"Attack+6"
			}
		},
		neck = "Shulmanu Collar",
		waist = "Reiki Yotai",
		left_ear = "Telos Earring",
		right_ear = "Cessance Earring",
		left_ring = "Ilabrat Ring",
		right_ring = "Epona's Ring"
	}
	-- Ready Sets---

	sets.Ready = {}

	sets.Ready.Physical = {
		main = {
			name = "Digirbalag",
			augments = {
				"Pet: VIT+8",
				"Pet: Accuracy+20 Pet: Rng. Acc.+20",
				"Pet: Attack+20 Pet: Rng.Atk.+20"
			}
		},
		sub = "Arktoi",
		ammo = "Demonry Core",
		head = {
			name = "Valorous Mask",
			augments = {
				"Pet: Mag. Acc.+11",
				'Pet: "Dbl.Atk."+2 Pet: Crit.hit rate +2',
				"Pet: Accuracy+14 Pet: Rng. Acc.+14"
			}
		},
		body = {
			name = "Acro Surcoat",
			augments = {
				"Pet: Attack+23 Pet: Rng.Atk.+23",
				'Pet: "Store TP"+4',
				"CHR+4"
			}
		},
		hands = "Regimen Mittens",
		legs = {
			name = "Valor. Hose",
			augments = {
				"Pet: Accuracy+30 Pet: Rng. Acc.+30",
				'"Dbl.Atk."+1',
				"Pet: INT+6",
				"Pet: Attack+11 Pet: Rng.Atk.+11"
			}
		},
		feet = {
			name = "Emicho Gambieras",
			augments = {
				"Pet: Accuracy+15",
				"Pet: Attack+15",
				'Pet: "Dbl. Atk."+3'
			}
		},
		neck = "Shulmanu Collar",
		waist = "Carrier's Sash",
		left_ear = "Sabong Earring",
		right_ear = "Enmerkar Earring"
	}

	sets.Ready.MagicalAttack = {
		main = "Mdomo Axe",
		sub = "Arktoi",
		ammo = "Demonry Core",
		head = {
			name = "Valorous Mask",
			augments = {
				"Pet: Mag. Acc.+11",
				'Pet: "Dbl.Atk."+2 Pet: Crit.hit rate +2',
				"Pet: Accuracy+14 Pet: Rng. Acc.+14"
			}
		},
		body = "Valorous Mail",
		legs = "Valorous Hose",
		feet = "Emicho Gambieras",
		hands = "Regimen Mittens",
		back = "Pastoralist's Mantle",
		neck = "Deino Collar",
		ear1 = "Hija Earring",
		ear2 = "Sabong Earring",
		waist = "Incarnation Sash"
	}
	
	sets.Ready.MagicAcc ={}

	-- WS Sets--
	sets.WS = {}
	sets.Ruinator = {}

	sets.Ruinator.index = {"Attack"}
	Ruinator_ind = 1

	sets.Ruinator.Attack = {
		head = "Argosy Celata +1",
		body = "Argosy Hauberk +1",
		hands = {
			name = "Argosy Mufflers +1",
			augments = {"STR+12", "DEX+12", "Attack+20"}
		},
		legs = {
			name = "Argosy Breeches +1",
			augments = {"STR+12", "DEX+12", "Attack+20"}
		},
		feet = "Argosy Sollerets +1",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = "Telos Earring",
		right_ear = "Moonshade Earring",
		left_ring = "Ilabrat Ring",
		right_ring = "Regal Ring"
	}

	sets.Rampage = {}

	sets.Rampage.index = {"Attack"}
	Rampage_ind = 1

	sets.Rampage.Attack = {
		head = "Argosy Celata +1",
		body = "Argosy Hauberk +1",
		hands = {
			name = "Argosy Mufflers +1",
			augments = {"STR+12", "DEX+12", "Attack+20"}
		},
		legs = {
			name = "Argosy Breeches +1",
			augments = {"STR+12", "DEX+12", "Attack+20"}
		},
		feet = "Argosy Sollerets +1",
		neck = "Fotia Gorget",
		waist = "Fotia Belt",
		left_ear = "Telos Earring",
		right_ear = "Moonshade Earring",
		left_ring = "Ilabrat Ring",
		right_ring = "Regal Ring"
	}

	sets.MistralAxe = {}

	sets.MistralAxe.index = {"Attack"}
	MistralAxe_ind = 1

	sets.MistralAxe.Attack = {
		head = {
			name = "Valorous Mask",
			augments = {
				"Accuracy+18",
				"Weapon skill damage +3%",
				"STR+4",
				"Attack+11"
			}
		},
		body = {
			name = "Valorous Mail",
			augments = {
				"Accuracy+25",
				"Weapon skill damage +4%",
				"DEX+8",
				"Attack+5"
			}
		},
		hands = "Nyame Gauntlets",
		legs = {
			name = "Valor. Hose",
			augments = {
				"Attack+27",
				"Weapon skill damage +5%",
				"DEX+8",
				"Accuracy+15"
			}
		},
		feet = {
			name = "Valorous Greaves",
			augments = {"Attack+21", "Weapon skill damage +5%"}
		},
		neck = "Caro Necklace",
		waist = "Sailfi Belt +1",
		left_ear = "Ishvara Earring",
		right_ear = {
			name = "Moonshade Earring",
			augments = {"Accuracy+4", "TP Bonus +25"}
		},
		left_ring = "Ilabrat Ring",
		right_ring = "Regal Ring"
	}

	-- Utility Sets--
	sets.Utility = {}

	sets.Utility.Weather = {waist = "Hachirin-no-obi", back = "Twilight Cape"}

	sets.Utility.MB = {
		head = "Helios Band",
		body = "Samnuha Coat",
		ear1 = "Static Earring",
		ring1 = "Locus Ring",
		ring2 = "Mujin Band"
	}

	sets.Utility.Stoneskin = {
		head = "Haruspex hat",
		neck = "Stone Gorget",
		ear1 = "Loquac. earring",
		ear2 = "Earthcry earring",
		body = "Assim. jubbah +1",
		hands = "Stone Mufflers",
		ring1 = "Rahab ring",
		back = "Swith cape",
		waist = "Siegel sash",
		legs = "Haven hose",
		feet = {name = "Herculean Boots",augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
	}

	sets.Utility.Phalanx = {
		head = "Haruspex hat",
		neck = "Colossus's torque",
		ear1 = "Loquac. earring",
		ear2 = "Augment. earring",
		body = "Assim. jubbah +1",
		hands = "Ayao's gages",
		ring1 = "Rahab ring",
		back = "Swith cape",
		waist = "Pythia sash +1",
		legs = "Portent pants",
		feet = {
			name = "Herculean Boots",
			augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}
		}
	}

	sets.Utility.Steps = {
		ammo = "Falcon Eye",
		head = "Dampening Tam",
		body = "Adhemar Jacket",
		hands = "Rawhide Gloves",
		legs == "Samnuha Tights",
		feet = {
			name = "Herculean Boots",
			augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}
		},
		neck = "Subtlety Spec.",
		waist = "Chaac Belt",
		left_ear = "Heartseeker Earring",
		right_ear = "Steelflash Earring",
		left_ring = "Yacuruna Ring",
		right_ring = "Epona's Ring",
		back = "Grounded Mantle"
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

	sets.JA.KillerInstinct = {head = "Ankusa Helm +1"}

	sets.JA.CB = {hands = "Ankusa Gloves", body = "Mirke Wardecors"}

	sets.JA.Familiar = {legs = "Ankusa Trousers"}

	sets.JA.Tame = {head = "Totemic Helm +1"}

	sets.JA.Spur = {feet = "Nukumi Ocreae +1"}

	sets.JA.Reward = {
		ammo = "Pet food Theta Biscuit",
		body = "Monster Jackcoat",
		ring1 = "Metamorph Ring",
		ring2 = "Sirona's Ring",
		feet = "Monster Gaiters"
	}

	sets.JA.ReadyPre = {sub = "Charmer's Merlin", Legs = "Desultor Tassets"}

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
	elseif spell.english == "Mistral Axe" or spell.english == "Cloudsplitter" then
		equip(sets.MistralAxe[sets.MistralAxe.index[MistralAxe_ind]])
	elseif spell.english == "Rampage" or spell.english == "Decimation" then
		equip(sets.Rampage[sets.Rampage.index[Rampage_ind]])
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
	elseif magic_acc_ready_moves:contain(spell.english) or pet_buff_moves:contains(spell.english) then
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