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

        sets.Idle.index = {"Standard", "DT", "RefreshRegen"}
        Idle_ind = 1

        sets.Idle.Standard = {
                ammo = "Staunch Tathlum +1",
				head="Malignance Chapeau",
                neck = "Sanctity Necklace",
                ear1 = "Eabani Earring",
                ear2 = "Infused Earring",
                body = "Ashera Harness",
                hands = "Malignance gloves",
                ring1 = "Defending ring",
                ring2 = "Vocane Ring",
                back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
                waist = "Carrier's Sash",
                legs="Malignance Tights",
                feet = "Turms Leggings +1"
        }

        sets.Idle.DT = {
                main = "Terra's Staff",
                sub = "Umbra strap",
                --ammo = "Staunch Tathlum +1",
				ammo = "Yamarang",
				head="Malignance Chapeau",
                neck = "Loricate Torque +1",
                ear1 = "Eabani Earring",
                ear2 = "Infused Earring",
                body = "Malignance Tabard",
                hands = "Malignance gloves",
                ring2 = "Defending ring",
                ring1 = "Moonlight Ring",
                back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
                waist = "Carrier's Sash",
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
			left_ring="Chirich Ring +1",
			right_ring="Defending Ring",
			back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
		}

        --TP Sets--
        sets.TP = {}

        sets.TP.index = {"Standard", "AccuracyMid", "AccuracyFull", "DT", "DTAccuracy", "TH", "THHybrid"}
        --1=Standard, 2 = AccuracyMid, 3=AccuracyFull, 4=DT, 5=DTAccuracy, 6 = TH, 7 = TH Hybrid

        TP_ind = 1
        sets.TP.Standard = {
                ammo = "Yamarang",
                head = "Adhemar Bonnet +1",
                neck = "Lissome necklace",
                ear1 = "Sherida Earring",
                ear2 = "Telos Earring",
                body = "Adhemar Jacket +1",
                hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
                ring1 = "Gere Ring",
                ring2 = "Epona's Ring",
                back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
                waist = "Windbuffet Belt +1",
                legs = "Samnuha Tights",
                feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
        }

        sets.TP.AccuracyMid = {
                ammo = "Yamarang",
                head = "Dampening Tam",
                neck = "Lissome necklace",
                ear1 = "Sherida Earring",
                ear2 = "Telos Earring",
                body = "Adhemar Jacket +1",
                hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
                ring1 = "Gere Ring",
                ring2 = "Epona's ring",
                back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
                waist = "Windbuffet Belt +1",
                legs = "Meg. Chausses +2",
                feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
        }

        sets.TP.AccuracyFull = {
                ammo = "Yamarang",
                head = "Adhemar Bonnet +1",
                neck = "Lissome necklace",
                ear1 = "Cessance Earring",
                ear2 = "Telos Earring",
                body = "Ashera Harness",
                hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
                ring1 = "Cacoethic Ring",
                ring2 = "Chirich Ring +1",
                back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
                waist = "Kentarch Belt +1",
                legs = "Carmine Cuisses +1",
                feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
        }

        sets.TP.DT = {
                ammo = "Staunch Tathlum +1",
				head="Malignance Chapeau",
                neck = "Loricate Torque +1",
                ear1 = "Ethereal",
                ear2 = "Eabani Earring",
                body="Malignance Tabard",
                hands = "Malignance Gloves",
                ring1 = "Moonlight Ring",
                ring2 = "Defending Ring",
                back = "Moonbeam Cape",
                waist = "Carrier's Sash",
				legs="Malignance Tights",
				feet="Malignance Boots",
        }

        sets.TP.DTAccuracy = {
                ammo = "Yamarang",
				head="Malignance Chapeau",
                neck = "Loricate Torque +1",
                ear1 = "Eabani Earring",
                ear2 = "Eabani Earring",
                body="Malignance Tabard",
                hands = "Malignance Gloves",
                ring1 = "Gere ring",
                ring2 = "Moonlight Ring",
                back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
                waist = "Carrier's Sash",
 				legs="Malignance Tights",
				feet="Malignance Boots",
        }

        sets.TP.TH = {
                ammo = "Yamarang",
                head = "Adhemar Bonnet +1",
                neck = "Lissome necklace",
                ear1 = "Suppanomimi",
                ear2 = "Telos Earring",
                body = "Ashera Harness",
                hands = "Plunderer's Armlets +1",
                ring1 = "Gere Ring",
                ring2 = "Epona's Ring",
                back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
                waist = "Chaac Belt",
                legs = "Samnuha Tights",
                feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
				
        }
		
		sets.TP.THHybrid = {
		    ammo="Yamarang",
			head="Malignance Chapeau",
			body="Malignance Tabard",
			hands = "Malignance Gloves",
			legs="Malignance Tights",
			feet="Malignance Boots",
			neck="Lissome Necklace",
			waist="Chaac Belt",
			left_ear="Eabani Earring",
			right_ear="Telos Earring",
			right_ring="Gere Ring",
			left_ring="Moonlight Ring",
			back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
		}
        --Weaponskill Sets--
        sets.WS = {}

        sets.Rudras = {
                ammo = "Yetshila",
                head = "Nyame Helm",
                neck = "Caro Necklace",
                ear1 = "Ishvara Earring",
                ear2 = "Moonshade Earring",
                body = "Nyame Mail",
                hands = "Nyame Gauntlets",
                ring1 = "Ilabrat Ring",
                ring2 = "Regal Ring",
                back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
                waist = "Sailfi Belt +1",
				legs="Nyame Flanchard",
				feet="Nyame Sollerets",
        }

        sets.Exenterator = {
                ammo = "Jukukik Feather",
                head = "Adhemar Bonnet +1",
                neck = "Fotia gorget",
                ear2 = "Moonshade Earring",
                ear1 = "Sherida Earring",
                body = "Herculean Vest",
                hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
                ring1 = "Gere Ring",
                ring2 = "Regal Ring",
                back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
                waist = "Fotia belt",
                legs = "Samnuha Tights",
                feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
        }

        sets.Evisceration = {
			ammo="Yetshila",
			head={ name="Adhemar Bonnet +1", augments={'DEX+12','AGI+12','Accuracy+20',}},
			body="Meg. Cuirie +1",
			hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},
			legs="Mummu Kecks +2",
			feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}},
			neck="Fotia Gorget",
			waist ="Fotia Belt",
			left_ear="Sherida Earring",
			right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
			left_ring="Gere Ring",
			right_ring="Regal Ring",
			back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
	}

        sets.SharkBite = {
                ammo = "Jukukik Feather",
                head = "Nyame Helm",
                neck = "Caro Necklace",
                ear1 = "Ishvara Earring",
                ear2 = "Moonshade Earring",
                body = "Nyame Mail",
                hands = "Nyame Gauntlets",
                ring1 = "Ilabrat Ring",
                ring2 = "Regal Ring",
                back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
                waist = "Sailfi Belt +1",
				legs="Nyame Flanchard",
				feet="Nyame Sollerets",
        }

        sets.AeolianEdge = {
            ammo="Pemphredo Tathlum",
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
			back="Izdubar Mantle",
        }
		
		sets.Cyclone = {
            ammo="Pemphredo Tathlum",
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
			back="Izdubar Mantle",
        }


        --Ninja Magic Sets--
        sets.NINMagic = {}


        sets.NINMagic.Utsusemi = {
				head="Malignance Chapeau",
                neck = "Loricate Torque",
                ar1 = "Brutal Earring",
                ear2 = "Cessance Earring",
                body = "Emet harness +1",
                hands = {name = "Adhemar Wrist. +1", augments = {"STR+12", "DEX+12", "Attack+20"}},
                ring1 = "Vocane Ring",
                ring2 = "Petrov Ring",
                back = "Moonbeam Cape",
                waist = "Carrier's Sash",
                legs = "Herculean Trousers",
                feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
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
                back = "Swith cape",
                waist = "Siegel sash",
                legs = "Haven hose",
                feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
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
                body = "Adhemar Jacket +1",
                hands = "Rawhide Gloves",
                legs == "Samnuha Tights",
                feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}},
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
                back = "Moonbeam Cape",
                waist = "Flume belt",
                legs = "Iuitl Tights +1",
                feet = {name = "Herculean Boots", augments = {"Accuracy+20 Attack+20", '"Triple Atk."+4'}}
        }

        sets.Utility.MDT = {
                head = "Adhemar Bonnet +1",
                neck = "Loricate Torque +1",
                body = "Assim. jubbah +1",
                hands = "Umuthi gloves",
                ring1 = "Dark ring",
                ring2 = "Dark ring",
                back = "Moonbeam Cape",
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
			back="Izdubar Mantle",
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
                back = "Swith Cape"
        }
end

function precast(spell)
        if spell.action_type == "Magic" then
                equip(sets.precast.FC.Standard)
        elseif spell.english == "Exenterator" then
                equip(sets.Exenterator)
        elseif spell.english == "Evisceration" then
                equip(sets.Evisceration)
        elseif spell.english == "Shark Bite" then
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
