text = require('texts')
str = "Evis>SB>Rudra>Evis>Rudra/PK<>Cyclone/SB>PK>Evis>Rudra"
display = text.new()
display:text(str)
display:font("Consolas")
display:size(9)
display:pos(430,480)
display:show()

waltz = S{'Curing Waltz', 'Curing Waltz II', 'Curing Waltz III', 'Curing Waltz IV', 'Curing Waltz V', 'Healing Waltz', 'Divine Waltz', 'Divine Waltz II'}

jigs = S{'Spectral Jig', 'Chocobo Jig', 'Chocobo Jig II'}

sambas = S{'Haste Samba', 'Drain Samba', 'Drain Samba II' , 'Drain Samba III', 'Aspir Samba', 'Aspir Samba II'}


function get_sets()
        send_command("bind f9 gs c toggle TP set")
        send_command("bind f10 gs c toggle Idle set")

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

        sets.Idle.index = {"Standard", "Ami"}
		TPBonus = 0
        Idle_ind = 1

        sets.Idle.Standard = {
			ammo="Staunch Tathlum +1",
			head="Turms Cap +1",
			body="Adamantite Armor",
			hands="Nyame Gauntlets",
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

        sets.Idle.Ami = {
			ammo="Staunch Tathlum +1",
			head="Turms Cap +1",
			body={ name="Gleti's Cuirass", augments={'Path: A',}},
			hands="Regal Gloves",
			legs={ name="Gleti's Breeches", augments={'Path: A',}},
			feet="Gleti's Boots",
			neck="Rep. Plat. Medal",
			waist="Carrier's Sash",
			left_ear="Eabani Earring",
			right_ear="Etiolation Earring",
			left_ring="Roller's Ring",
			right_ring="Defending Ring",
			back="Moonbeam Cape",
        }

        --TP Sets--
        sets.TP = {}

        sets.TP.index = {"Standard", "DTAccuracy", "Ami"}
        --1=Standard, 2=DTAccuracy, 3 =Ami,

        TP_ind = 1
        sets.TP.Standard = {
			ammo={ name="Coiste Bodhar", augments={'Path: A',}},
			head="Maculele Tiara +3",
			--body={ name="Gleti's Cuirass", augments={'Path: A',}},
			body="Malignance Tabard",
			--hands="Malignance Gloves",
			hands="Gleti's Gauntlets",
			legs={ name="Gleti's Breeches", augments={'Path: A',}},
			feet="Maculele Toe Shoes +3",
			neck="Etoile Gorget +2",
			waist={ name="Sailfi Belt +1", augments={'Path: A',}},
			left_ear="Sherida Earring",
			right_ear="Telos Earring",
			left_ring="Moonlight Ring",
			right_ring="Gere Ring",
			back="Null Shawl"
        }

        sets.TP.DTAccuracy = {
			ammo="Coiste Bodhar",
			--head="Maculele Tiara +3",
			head="Malignance Chapeau",
			neck="Etoile Gorget +2",
			left_ear="Sherida Earring",
			right_ear="Telos Earring",
			body="Malignance Tabard",
			--hands="Malignance Gloves",
			hands="Gleti's Gauntlets",
			ring1="Moonlight Ring",
			ring2="Gere Ring",
			back="Null Shawl",
			waist="Sailfi Belt +1",
			legs="Gleti's Breeches",
			feet="Maculele Toe Shoes +3"
        }
		
		sets.TP.Ami = {
		    ammo="Staunch Tathlum +1",
			head="Turms Cap +1",
			body={ name="Gleti's Cuirass", augments={'Path: A',}},
			hands="Regal Gloves",
			legs={ name="Gleti's Breeches", augments={'Path: A',}},
			feet="Gleti's Boots",
			neck="Rep. Plat. Medal",
			waist="Carrier's Sash",
			left_ear="Eabani Earring",
			right_ear="Etiolation Earring",
			left_ring="Roller's Ring",
			right_ring="Defending Ring",
			back="Moonbeam Cape",
		}

        --Weaponskill Sets--
        sets.WS = {}

        sets.Rudras = {
			ammo={ name="Coiste Bodhar", augments={'Path: A',}},
			head="Maculele Tiara +3",
			body={ name="Nyame Mail", augments={'Path: B',}},
			hands={ name="Nyame Gauntlets", augments={'Path: B',}},
			legs={ name="Nyame Flanchard", augments={'Path: B',}},
			feet={ name="Nyame Sollerets", augments={'Path: B',}},
			neck="Etoile Gorget +2",
			waist="Kentarch Belt +1",
			right_ear="Maculele Earring",
			left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
			left_ring="Ephramad's Ring",
			right_ring="Epaminondas's Ring",
			back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
        }

        sets.Exenterator = {
                ammo = "Coiste Bodhar",
                head = "Adhemar Bonnet +1",
                neck = "Fotia gorget",
                ear1 = "Moonshade Earring",
                ear2 = "Sherida Earring",
                body = "Herculean Vest",
                hands = "Adhemar Wristbands +1",
                ring1 = "Ilabrat Ring",
                ring2 = "Ephramad's Ring",
                back = "Null Shawl",
                waist = "Fotia belt",
                legs={ name="Gleti's Breeches", augments={'Path: A',}},
                Feet = "Nyame Sollerets",
        }

        sets.Evisceration = {
			ammo={ name="Coiste Bodhar", augments={'Path: A',}},
			head={ name="Blistering Sallet +1", augments={'Path: A',}},
			body={ name="Gleti's Cuirass", augments={'Path: A',}},
			hands="Gleti's Gauntlets",
			legs={ name="Gleti's Breeches", augments={'Path: A',}},
			feet={ name="Nyame Sollerets", augments={'Path: B',}},
			neck="Fotia Gorget",
			waist="Fotia Belt",
			left_ear="Odr Earring",
			right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
			left_ring="Hetairoi Ring",
			right_ring="Gere Ring",
			back="Null Shawl",
        }

        sets.SharkBite = {
			ammo={ name="Coiste Bodhar", augments={'Path: A',}},
			head="Maculele Tiara +3",
			body={ name="Nyame Mail", augments={'Path: B',}},
			hands={ name="Nyame Gauntlets", augments={'Path: B',}},
			legs={ name="Nyame Flanchard", augments={'Path: B',}},
			feet={ name="Nyame Sollerets", augments={'Path: B',}},
			neck="Etoile Gorget +2",
			waist="Kentarch Belt +1",
			right_ear="Maculele Earring",
			left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
			left_ring="Ephramad's Ring",
			right_ring="Epaminondas's Ring",
			back={ name="Senuna's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Damage taken-5%',}},
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
			right_ring="Ephramad's Ring",
			back="Sacro Mantle",
        }

        --Ninja Magic Sets--
        sets.NINMagic = {}
        sets.NINMagic.Utsusemi = {
                head = "Null Masque",
                neck = "Loricate Torque",
                ar1 = "Brutal Earring",
                ear2 = "Cessance Earring",
                body = "Emet harness +1",
                hands = "Adhemar Wristbands +1",
                ring1 = "Chirich Ring +1",
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
                head = "Haruspex hat",
                neck = "Colossus's torque",
                ear1 = "Loquac. earring",
                ear2 = "Augment. earring",
                body = "Assim. jubbah +1",
                hands = "Ayao's gages",
                ring1 = "Rahab ring",
                back = "Fi follet cape +1",
                waist = "Pythia sash +1",
                legs = "Portent pants",
                Feet = "Nyame Sollerets",
        }

        sets.Utility.Steps = {		
			ammo="Yamarang",
			head="Maxixi Tiara +2",
			body={ name="Gleti's Cuirass", augments={'Path: A',}},
			hands="Maxixi Bangles +3",
			legs={ name="Gleti's Breeches", augments={'Path: A',}},
			feet="Horos T. Shoes +3",
			neck="Etoile Gorget +2",
			waist="Null Belt",
			left_ear="Crep. Earring",
			right_ear="Telos Earring",
			left_ring="Moonlight Ring",
			right_ring="Chirich Ring +1",
			back="Null Shawl"
        }

		sets.Utility.TH ={waist = "Chaac Belt", Legs = "Volte Hose", feet = "Volte Boots", Hands = "Volte Bracers"}
		
        sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Eshmun's Ring"}

        sets.Utility.Sleeping = {neck = "Opo-Opo Necklace"}

        --Job Ability Sets--

        sets.JA = {}
		
		sets.JA.Waltz = {ammo="Yamarang", body ="Maxixi Casaque +2",back ="Toetapper Mantle", leg="Dashing Subligar", neck="Etoile Gorget +2", ring2 = "Metamor. Ring +1",}
		
		sets.JA.Jigs = { back = "Senuna's Mantle", legs ="Horos Tights +2" }
		
		sets.JA.RF = {back ="Toetapper Mantle", hands = "Macu. Bangles +1"}
		
		sets.JA.VF = {    
			ammo="Yamarang",
			head="Malignance Chapeau",
			body={ name="Horos Casaque +2", augments={'Enhances "No Foot Rise" effect',}},
			hands="Malignance Gloves",
			legs="Malignance Tights",
			feet="Malignance Boots",
			neck="Null Loop",
			waist="Null Belt",
			left_ear="Digni. Earring",
			right_ear="Crep. Earring",
			left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
			right_ring="Stikini Ring +1",
			back="Null Shawl",
		}
		
		sets.JA.NoFootRise = {body = "Horos Casaque +2"}
		
		sets.JA.AF = {
			ammo="Sapience Orb",
			head="Halitus Helm",
			body={ name="Emet Harness +1", augments={'Path: A',}},
			hands="Kurys Gloves",
			legs={ name="Nyame Flanchard", augments={'Path: B',}},
			feet={ name="Nyame Sollerets", augments={'Path: B',}},
			neck="Warder's Charm +1",
			waist="Trance Belt",
			left_ear="Trux Earring",
			right_ear="Friomisi Earring",
			left_ring="Supershear Ring",
			right_ring="Petrov Ring",
			back="Moonbeam Cape",
		}
		
		sets.JA.Samba = {head = "Maxixi Tiara +2"}
		
		sets.JA.FeatherStep ={feet = "Maculele Toe Shoes +3"}
		
		sets.JA.Trance = {head = "Horos Tiara +1"}

        --Precast Sets--
        sets.precast = {}

        sets.precast.FC = {}

        sets.precast.FC.Standard = {
                ammo = "Sapience Orb",
                head = "Herculean Helm",
                body = "Vrikodara Jupon",
                hands = "Leyline Gloves",
                legs = {name = "Herculean Trousers", augments = {"Mag. Acc.+21", '"Fast Cast"+5', "CHR+3"}},
                feet = "Amalric Nails +1",
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
		if player.equipment.sub == "Fusetto +3" then
			TPBonus = 1000
		else
			TPBonus = 0
		end
        if spell.action_type == "Magic" then
                equip(sets.precast.FC.Standard)
        elseif spell.english == "Exenterator" then
                equip(sets.Exenterator)
        elseif spell.english == "Evisceration" then
                equip(sets.Evisceration)
        elseif spell.english == "Shark Bite" then
			TPBonus = TPBonus + 250
			CurrentTP = player.tp + TPBonus
			if CurrentTP > 1750 then
                equip(set_combine(sets.SharkBite, {left_ear = "Odr Earring"}))
			else
                equip(sets.SharkBite)
			end
        elseif spell.english == "Rudra's Storm" or spell.english == "Pyrrhic Kleos" then
			TPBonus = TPBonus + 250
			CurrentTP = player.tp + TPBonus
			if CurrentTP > 1750 then
                equip(set_combine(sets.Rudras, {left_ear = "Odr Earring"}))
			else 
			   equip(sets.Rudras)
			end
        elseif spell.english == "Sanguine Blade" then
                equip(sets.BlueMagic.Dark)
                if spell.element == world.day_element or spell.element == world.weather_element then
                        equip(sets.Utility.Weather)
                end
        elseif spell.english == "Aeolian Edge" or spell.english == "Cyclone" then
                equip(sets.AeolianEdge)
        elseif spell.english == "Box Step" or spell.english == "Quick Step" or spell.english == "Shutter Step" then
                equip(sets.Utility.Steps)
		elseif spell.english == "Feather Step" then
				equip(set_combine(sets.Utility.Steps, sets.JA.FeatherStep))
		elseif jigs:contains(spell.english) then
				equip(sets.JA.Jigs)
		elseif sambas:contains(spell.english) then
				equip(sets.JA.Samba)
		elseif waltz:contains(spell.english) then
				equip(sets.JA.Waltz)
		elseif spell.english == "Reverse Flourish" then
			equip(sets.JA.RF)
		elseif spell.english == "Violent Flourish" then
			equip(sets.JA.VF)
		elseif spell.english == "Animated Flourish" then
			equip(set_combine(sets.JA.AF, sets.Utility.TH))
		elseif spell.english == 'Trance' then
			equip(sets.JA.Trance)
		elseif spell.english == "No Foot Rise" then
			equip(sets.JA.NoFootRise)
        elseif spell.english == "Flash Nova" then
                equip(sets.FlashNova)
                if spell.element == world.day_element or spell.element == world.weather_element then
                        equip(sets.Utility.Weather)
                end
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
        end
		if spell.english == 'Ranged' then
			equip(sets.Utility.TH)
		end
end

function aftercast(spell)
        if player.status == "Engaged" then
                equip(sets.TP[sets.TP.index[TP_ind]])
        else
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
        end
        if buffactive["doom"] or buffactive["curse"] then
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
