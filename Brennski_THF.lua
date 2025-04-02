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

        --Idle Sets--
        sets.Idle = {}

        sets.Idle.index = {"Standard", "DT", "RefreshRegen", "Eva"}
        Idle_ind = 1

        sets.Idle.Standard = {
			ammo="Staunch Tathlum +1",
			head="Turms Cap +1",
			body="Adamantite Armor",
			hands="Malignance Gloves",
			legs={ name="Nyame Flanchard", augments={'Path: B',}},
			feet={ name="Nyame Sollerets", augments={'Path: B',}},
			neck="Warder's Charm +1",
			waist="Null Belt",
			left_ear="Eabani Earring",
			right_ear="Infused Earring",
			left_ring="Defending Ring",
			right_ring="Shneddick Ring",
			back="Null Shawl",
        }

        sets.Idle.DT = {
                --ammo = "Staunch Tathlum +1",
				ammo = "Yamarang",
				head="Malignance Chapeau",
                neck = "Loricate Torque +1",
                ear1 = "Eabani Earring",
                ear2 = "Infused Earring",
                body = "Malignance Tabard",
                hands = "Malignance gloves",
                ring2 = "Defending ring",
                ring1 = "Shneddick Ring",
                back="Null Shawl",
                waist = "Null Belt",
				legs="Malignance Tights",
				feet="Malignance Boots",
        }
		
		sets.Idle.RefreshRegen ={    
			ammo="Staunch Tathlum +1",
			head={ name="Herculean Helm", augments={'Pet: CHR+2','Potency of "Cure" effect received+3%','"Refresh"+2','Mag. Acc.+1 "Mag.Atk.Bns."+1',}},
			body="Ashera Harness",
			hands={ name="Herculean Gloves", augments={'DEX+9','Magic dmg. taken -3%','"Refresh"+1',}},
			legs="Malignance Tights",
			feet="Turms Leggings +1",
			neck="Loricate Torque +1",
			waist="Carrier's Sash",
			left_ear="Eabani Earring",
			right_ear="Infused Earring",
			left_ring="Shneddick Ring",
			right_ring="Defending Ring",
			back="Null Shawl",
		}
		
		sets.Idle.Eva = {

				ammo = "Yamarang",
				head="Malignance Chapeau",
                neck = "Warder's Charm +1",
                ear1 = "Eabani Earring",
                ear2 = "Infused Earring",
                body = "Malignance Tabard",
                hands = "Malignance gloves",
                ring2 = "Defending ring",
                ring1 = "Shneddick Ring",
                back="Null Shawl",
                waist = "Null Belt",
				legs="Malignance Tights",
				feet="Malignance Boots",
        }

        --TP Sets--
        sets.TP = {}

        sets.TP.index = {"Standard", "DTAccuracy", "THHybrid"}
        --1=Standard, 2 = DTAccuracy, 3 = TH Hybrid

        TP_ind = 1
        sets.TP.Standard = {
                ammo = "Yamarang",
                head="Malignance Chapeau",
                neck = "Lissome necklace",
                left_ear = "Sherida Earring",
                right_ear = "Skulker's Earring +1",
                body = "Gleti's Cuirass",
                hands={ name="Gleti's Gauntlets", augments={'Path: A',}},
                ring1 = "Gere Ring",
                ring2 = "Epona's Ring",
                back="Null Shawl",
                waist={ name="Sailfi Belt +1", augments={'Path: A',}},
                legs={ name="Gleti's Breeches", augments={'Path: A',}},
                feet="Malignance Boots",
        }

        sets.TP.DTAccuracy = {
                ammo = "Yamarang",
				head="Malignance Chapeau",
                neck = "Lissome necklace",
                left_ear = "Sherida Earring",
                right_ear = "Skulker's Earring +1",
                body="Malignance Tabard",
                hands="Gleti's Gauntlets",
                ring1 = "Gere ring",
                ring2 = "Moonlight Ring",
                back="Null Shawl",
                waist = "Sailfi Belt +1",
 				legs={ name="Gleti's Breeches", augments={'Path: A',}},
				feet="Malignance Boots",
        }

		
		sets.TP.THHybrid = {
		    ammo="Yamarang",
			head="Malignance Chapeau",
			body="Malignance Tabard",
			hands="Gleti's Gauntlets",
			legs={ name="Gleti's Breeches", augments={'Path: A',}},
			feet="Malignance Boots",
			neck = "Lissome necklace",
			waist="Chaac Belt",
            left_ear = "Sherida Earring",
            right_ear = "Skulker's Earring +1",
			right_ring="Gere Ring",
			left_ring="Moonlight Ring",
			back="Null Shawl",
		}
        --Weaponskill Sets--
        sets.WS = {}

        sets.Rudras = {
                ammo = "Yetshila +1",
                head = "Nyame Helm",
                neck = "Rep. Plat. Medal",
                ear1 = "Ishvara Earring",
                ear2 = "Moonshade Earring",
                body = "Nyame Mail",
                hands = "Nyame Gauntlets",
				left_ring="Ephramad's Ring",
				right_ring="Epaminondas's Ring",
                back="Sacro Mantle",
                waist = "Kentarch Belt +1",
				legs="Nyame Flanchard",
				feet="Nyame Sollerets",
        }

        sets.Exenterator = {
                ammo = "Coiste Bodhar",
                head = "Adhemar Bonnet +1",
                neck = "Fotia gorget",
                ear2 = "Moonshade Earring",
                ear1 = "Sherida Earring",
                body = "Herculean Vest",
                hands = "Adhemar Wristbands +1",
                ring1 = "Gere Ring",
                ring2 = "Regal Ring",
                back="Null Shawl",
                waist = "Fotia belt",
                legs={ name="Gleti's Breeches", augments={'Path: A',}},
                Feet = "Nyame Sollerets",
        }

        sets.Evisceration = {
			ammo="Yetshila +1",
			head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			body="Meg. Cuirie +2",
			hands={ name="Adhemar Wristbands +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs="Mummu Kecks +2",
			feet="Nyame Sollerets",
			neck="Fotia Gorget",
			waist ="Fotia Belt",
			left_ear="Odr Earring",
			right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
			left_ring="Gere Ring",
			right_ring="Regal Ring",
			back="Null Shawl",
	}

        sets.SharkBite = {
                ammo = "Coiste Bodhar",
                head = "Nyame Helm",
                neck = "Rep. Plat. Medal",
                ear1 = "Ishvara Earring",
                ear2 = "Moonshade Earring",
                body = "Nyame Mail",
                hands = "Nyame Gauntlets",
				left_ring="Ephramad's Ring",
				right_ring="Epaminondas's Ring",
                back="Sacro Mantle",
                waist = "Kentarch Belt +1",
				legs="Nyame Flanchard",
				feet="Nyame Sollerets",
        }

        sets.AeolianEdge = {
            ammo="Seething bomblet +1",
			head="Nyame Helm",
			body="Nyame Mail",
			hands="Nyame Gauntlets",
			legs="Nyame Flanchard",
			feet="Nyame Sollerets",
			neck="Sanctity Necklace",
			waist="Orpheus's Sash",
			left_ear="Friomisi Earring",
			right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
			left_ring="Acumen Ring",
			right_ring="Dingir Ring",
			back="Sacro Mantle",
        }
		
		sets.Cyclone = {
            ammo="Seething bomblet +1",
			head="Nyame Helm",
			body="Nyame Mail",
			hands = "Plunderer's Armlets +1",
			legs="Nyame Flanchard",
			feet="Nyame Sollerets",
			neck="Sanctity Necklace",
			waist="Orpheus's Sash",
			left_ear="Friomisi Earring",
			right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
			left_ring="Acumen Ring",
			right_ring="Dingir Ring",
			back="Sacro Mantle",
        }


        --Ninja Magic Sets--
        sets.NINMagic = {}


        sets.NINMagic.Utsusemi = {
				head="Malignance Chapeau",
                neck = "Loricate Torque",
                ar1 = "Brutal Earring",
                ear2 = "Cessance Earring",
                body = "Emet harness +1",
                hands = "Adhemar Wristbands +1",
                ring1 = "Moonlight Ring",
                ring2 = "Petrov Ring",
                back="Null Shawl",
                waist = "Null Belt",
                legs = "Herculean Trousers",
                Feet = "Nyame Sollerets",
        }

        --Utility Sets--
        sets.Utility = {}

        sets.Utility.Weather = {waist = "Hachirin-no-obi", back = "Twilight Cape"}

        sets.Utility.MB = {
                head = "Herculean Helm",
                body = "Amalric Doublet",
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
                back = "Fi follet cape +1",
                waist = "Siegel sash",
                legs = "Haven hose",
                Feet = "Nyame Sollerets",
        }

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
                ammo = "Falcon Eye",
                head = "Adhemar Bonnet +1",
                body = "Gleti's Cuirass",
                hands = "Rawhide Gloves",
                legs == "Samnuha Tights",
                feet="Nyame Sollerets",
                neck = "Subtlety Spec.",
                waist = "Chaac Belt",
                left_ear = "Heartseeker Earring",
                right_ear = "Dignitary's Earring",
                left_ring = "Yacuruna Ring",
                right_ring = "Epona's Ring",
                back = "Canny Cape"
        }

        sets.Utility.PDT = {
                head = "Adhemar Bonnet +1",
                neck = "Loricate Torque +1",
                ear1 = "Etiolation Earring",
                body = "Iuitl vest",
                hands = "Umuthi gloves",
                ring1 = "Dark ring",
                ring2 = "Dark ring",
                back="Null Shawl",
                waist = "Flume belt",
                legs = "Iuitl Tights +1",
                Feet = "Nyame Sollerets",
        }

        sets.Utility.MDT = {
                head = "Adhemar Bonnet +1",
                neck = "Loricate Torque +1",
                body = "Assim. jubbah +1",
                hands = "Umuthi gloves",
                ring1 = "Dark ring",
                ring2 = "Dark ring",
                back="Null Shawl",
                legs = "Quiahuiz trousers",
                feet = "Luhlaza charuqs"
        }	
		
		sets.Utility.Macc = {
		    ammo="Pemphredo Tathlum",
			head="Malignance Chapeau",
			body="Malignance Tabard",
			hands="Malignance Gloves",
			legs="Malignance Tights",
			feet="Malignance Boots",
			neck="Sanctity Necklace",
			waist="Eschan Stone",
			left_ear="Vor Earring",
			right_ear="Digni. Earring",
			left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
			right_ring="Stikini Ring +1",
			back="Sacro Mantle",
			}

        sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Eshmun's Ring"}

        sets.Utility.Sleeping = {neck = "Opo-Opo Necklace"}

        --Job Ability Sets--

        sets.JA = {}

        --Precast Sets--
        sets.precast = {}

        sets.precast.FC = {}

        sets.precast.FC.Standard = {
                ammo = "Sapience Orb",
                head = "Herculean Helm",
                body = "Vrikodara Jupon",
                hands = "Leyline Gloves",
                legs = {name = "Herculean Trousers", augments = {"Mag. Acc.+21", '"Fast Cast"+5', "CHR+3"}},
                feet = "Amalric Nails",
                neck = "Voltsurge Torque",
                waist = "Witful Belt",
                left_ear = "Etiolation Earring",
                right_ear = "Loquac. Earring",
                left_ring = "Rahab Ring",
                right_ring = "Kishar Ring",
                back = "Fi follet cape +1",
        }
end

function precast(spell)
        if spell.action_type == "Magic" then
                equip(sets.precast.FC.Standard)
        elseif spell.english == "Exenterator" then
                equip(sets.Exenterator)
        elseif spell.english == "Evisceration" then
                equip(sets.Evisceration)
        elseif spell.english == "Shark Bite" or spell.english == "Savage Blade" then
                equip(sets.SharkBite)
        elseif spell.english == "Rudra's Storm" then
                equip(sets.Rudras)
        elseif spell.english == "Sanguine Blade" then
                equip(sets.BlueMagic.Dark)
                if spell.element == world.day_element or spell.element == world.weather_element then
                        equip(sets.Utility.Weather)
                end
        elseif spell.english == "Aeolian Edge" then
                equip(sets.AeolianEdge)
		elseif spell.english == "Cyclone" then
				equip(sets.Cyclone)
        elseif spell.english == "Box Step" then
                equip(sets.Utility.Steps)
        elseif spell.english == "Flash Nova" then
                equip(sets.FlashNova)
                if spell.element == world.day_element or spell.element == world.weather_element then
                        equip(sets.Utility.Weather)
                end
		elseif spell.type == 'WeaponSkill' then
			equip(sets.SharkBite)
        end
end

function midcast(spell, act)
		if spell.english == 'Ranged' then
			equip(sets.TP.TH)
        elseif spell.english == "Utsusemi: Ichi" then
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
		elseif spell.action_type =="Magic" then
			equip(sets.TP.TH)
			if spell.english == "Phalanx" then
				equip(sets.Utility.Phalanx)
			end	
			if spell.enlgish == "Silence" then
				equip(sets.Utility.Macc)
			end
        end
end

function aftercast(spell)
        if player.status == "Engaged" then
                equip(sets.TP[sets.TP.index[TP_ind]])
        else
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
        end
        if buffactive["doom"] then
                equip(sets.Utility.Doom)
        end
        if buffactive["terror"] or buffactive["stun"] or buffactive["sleep"] then
                equip(sets.TP.DT)
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
        end
end
