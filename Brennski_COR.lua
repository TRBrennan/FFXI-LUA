PhantomRolls = S{"Corsair's Roll", "Ninja's Roll", "Hunter's Roll", "Chaos Roll", "Magus's Roll", "Healer's Roll", "Drachen Roll", "Choral Roll" , "Monk's Roll", "Beast Roll", "Samurai Roll", 
"Evoker's Roll" , "Rogue's Roll", "Warlock's Roll", "Fighter's Roll", "Puppet Roll"	, "Gallant's Roll", "Wizard's Roll", "Dancer's Roll",
 "Scholar's Roll", "Bolter's Roll", "Allies' Roll", "Miser's Roll", "Tactician's Roll", "Caster's Roll", "Companion's Roll", "Avenger's Roll"}
 
quickdraw = S{"Ice Shot", "Fire Shot", "Wind Shot", "Earth Shot", "Water Shot", "Thunder Shot"}
 
function get_sets()
 
        send_command('bind f9 gs c toggle TP set')
        send_command('bind f10 gs c toggle Idle set')
		send_command("bind ^f9 gs c equip TP set")
		send_command("bind ^f10 gs c equip DT set")
		send_command("bind !f9 gs c toggle Guns;") -- Alt F9 swap Guns
		send_command("bind !f10 gs c toggle QD;") -- Alt F10 swap QD sets
       
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
		
		--Guns--
		sets.Guns = {}
		
		sets.Guns.index ={'Fomal', 'TPBonus'}
		Guns_ind = 1
		
		sets.Guns.Fomal = {range="Fomalhaut"}
		
		sets.Guns.TPBonus = {Range ="Anarchy +2"}
               
        --Idle Sets--  
        sets.Idle = {}
       
        sets.Idle.index = {'Melee','RA'}
        Idle_ind = 1                  
       
        sets.Idle.Melee = {	main="Naegling",
							sub= "Gleti's knife",
							ammo ="Chrono bullet",
                            head="Nyame Helm",
							neck = "Bathy Choker +1", 
							ear1="Eabani Earring", 
							ear2="Infused Earring",
                            body="Nyame Mail",
							hands="Nyame Gauntlets",
							ring1="Defending ring",
							ring2="Shneddick Ring",
                            waist="Carrier's Sash",
							legs="Nyame Flanchard",
							feet="Nyame Sollerets", 
							back ="Moonbeam Cape"}
							
                                                 
        sets.Idle.RA = {	main ="Lanun Knife",
							sub="Nusku Shield",
							ammo ="Chrono bullet",
							head="Nyame Helm",
							neck = "Bathy Choker +1", 
							ear1="Eabani Earring", 
							ear2="Infused Earring",
                            body="Nyame Mail",
							hands="Nyame Gauntlets",
							ring1="Defending ring",
							ring2="Shneddick Ring",
                            waist="Carrier's Sash",
							legs="Nyame Flanchard",
							feet="Nyame Sollerets", 
							back ="Moonbeam Cape" }
							
        --TP Sets--
        sets.TP = {}
 
           sets.TP.index = {'Standard', 'DT', 'SW', 'Shooting'}
                --1=Standard, 2 = =DT, 3=SingleWeild, 4=Shooting,--
				
                TP_ind = 1
				sets.TP.Standard = { main="Naegling",
										sub= "Gleti's knife",
										ammo ="Chrono bullet",
                                        head="Malignance Chapeau",
										body="Malignance Tabard",
										hands="Malignance Gloves",
										legs="Malignance Tights",
										feet="Malignance Boots",
										neck="Lissome Necklace",
										waist={ name="Sailfi Belt +1", augments={'Path: A',}},
										left_ear="Suppanomimi",
										right_ear="Telos Earring",
										right_ring="Chirich Ring +1",
										left_ring="Epona's Ring",
										back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}}, }
                                                       
   
                                                       
                sets.TP.DT = { 
							main="Naegling",
							sub= "Gleti's knife",
							ammo ="Chrono bullet",
                              head="Malignance Chapeau",
							  neck="Loricate Torque +1", ear1="Eabani Earring", ear2="Dignitary's Earring",
                              body="Malignance Tabard",hands="Malignance Gloves",
							  ring1="Defending ring",ring2="Chirich Ring +1",
                              back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
							  waist="Carrier's Sash",										
							  legs="Malignance Tights",
							  feet="Malignance Boots", }
							  
				sets.TP.SW = {
					main="Naegling",
					sub="Nusku Shield",
					ammo="Chrono Bullet",
					head="Malignance Chapeau",
					body="Malignance Tabard",
					hands="Malignance Gloves",
					legs="Malignance Tights",
					feet="Malignance Boots",
					neck="Lissome Necklace",
					waist={ name="Sailfi Belt +1", augments={'Path: A',}},
					right_ear="Telos Earring",
					left_ear="Digni. Earring",
					left_ring="Chirich Ring +1",
					right_ring="Epona's Ring",
					back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
				}
			
				sets.TP.Shooting = {
					main ="Lanun Knife",
					sub="Nusku Shield",
					ammo="Chrono Bullet",
					head="Malignance Chapeau",
					body="Malignance Tabard",
					hands="Malignance Gloves",
					legs="Malignance Tights",
					feet="Malignance Boots",
					neck="Lissome Necklace",
					waist={ name="Sailfi Belt +1", augments={'Path: A',}},
					right_ear="Telos Earring",
					left_ear="Digni. Earring",
					left_ring="Chirich Ring +1",
					right_ring="Epona's Ring",
					back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
				}
                                                         				
       --Weaponskill Sets--
        sets.WS = {}
       
									  
		sets.SavageBlade = {}
       
        sets.SavageBlade.index = {'Attack'}
        SavageBlade_ind = 1
       
        sets.SavageBlade.Attack = {ammo ="Chrono bullet",
                                          head = "Nyame Helm",
										  neck="Rep. Plat. Medal",ear1="Ishvara Earring",ear2="Moonshade Earring",
                                          body="Nyame Mail",
										  hands="Nyame Gauntlets",ring1="Epaminondas's Ring",ring2="Sroda Ring",
                                          back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
										  waist="Sailfi Belt +1",Legs = "Nyame Flanchard",
										  feet="Nyame Sollerets" }
                                                           
                                                                                                                       
        sets.SanguineBlade = {}
       
	    sets.SanguineBlade.index = {'Attack'}
        SanguineBlade_ind = 1
        sets.SanguineBlade = {ammo ="Chrono bullet",
                                 head = "Nyame Helm",neck="Commodore Charm +1",
								 rear="Friomisi earring", ear1="Novio Earring",
                                 body="Lanun Frac +3",hands = "Nyame Gauntlets", ring1="Dignir Ring", ring2 ='Fenrir Ring', waist ="Orpheus's Sash",
                                 back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
								Legs = "Nyame Flanchard",feet="Lanun Bottes +3" }
								 
		sets.VorpalBlade = {}
       
	    sets.VorpalBlade.index = {'Attack'}
        VorpalBlade_ind = 1
        sets.VorpalBlade = {ammo ="Chrono bullet",
                                          head="Adhemar Bonnet +1",neck="Fotia gorget",ear1="Moonshade Earring",ear2="Telos Earring",
                                         body="Malignance Tabard",hands={ name="Adhemar Wristbands +1", augments={'STR+12','DEX+12','Attack+20',}},ring1="Petrov ring",ring2="Epaminondas's Ring",
                                          back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
										  waist="Sailfi Belt +1",legs="Quiahuiz leggings",feet = "Nyame Sollerets" }						 
               
	    sets.Leaden = {}
       
        sets.Leaden.index = {'Attack'}
        Leaden_ind = 1
         
		sets.Leaden ={ ammo="Orichalc. Bullet", 
						head="Pixie Hairpin +1",
							neck="Commodore Charm +1",  ear2="Friomisi earring", ear1="Moonshade Earring",
							body="Lanun Frac +3",  hands="Nyame Gauntlets", ring1="Dingir Ring", ring2 ='Archon Ring', waist ="Orpheus's Sash",
							back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
							Legs = "Nyame Flanchard", 
							feet="Lanun Bottes +3"}
							
		sets.WildFire = {}
       
        sets.WildFire.index = {'Attack'}
        WildFire_ind = 1					
			
		sets.WildFire = {ammo="Orichalc. Bullet", 
							Head = "Nyame Helm",
							neck="Commodore Charm +1",   ear2="Friomisi earring", ear1="Moonshade Earring",
							body="Lanun Frac +3",hands="Nyame Gauntlets", ring1="Dingir Ring", ring2 ="Epaminondas's Ring", waist ="Orpheus's Sash",
							back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
							Legs = "Nyame Flanchard",
							feet="Lanun Bottes +3"}
		
	    sets.LastStand = {}
       
        sets.LastStand.index = {'Attack'}
        LastStand_ind = 1					
			
		sets.LastStand = {ammo ="Chrono bullet", 
						Head = "Nyame Helm",
						body="Ikenga's Vest",
						hands="Nyame Gauntlets",
						Legs = "Nyame Flanchard",
						feet="Lanun Bottes +3",
						neck="Fotia Gorget",
						waist="Fotia Belt",
						left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
						right_ear="Telos Earring",
						left_ring="Dingir Ring",
						right_ring="Epaminondas's Ring",
						back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
						}
						
		sets.WS.HotShot = {
				ammo ="Chrono bullet", 
				Head = "Nyame Helm",
				body="Nyame Mail",
				hands="Nyame Gauntlets",
				Legs = "Nyame Flanchard",
				feet="Lanun Bottes +3",
				neck="Fotia Gorget",
				waist ="Orpheus's Sash",
				left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
				right_ear="Telos Earring",
				left_ring="Dingir Ring",
				right_ring="Epaminondas's Ring",
				back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
		}
		
										  
		--Ranged Attack ---
		sets.Ranged = {}
		sets.Ranged.PreShot = {
			ammo="Chrono Bullet",
			head={ name="Taeon Chapeau", augments={'"Snapshot"+4','"Snapshot"+4',}},
			body="Oshosi Vest",
			hands={ name="Taeon Gloves", augments={'"Snapshot"+5','"Snapshot"+5',}},
			legs="Ikenga's Trousers",
			feet="Meg. Jam. +2",
			neck={ name="Comm. Charm +1", augments={'Path: A',}},
			waist="Yemaya Belt",
			left_ear="Crep. Earring",
			right_ear="Digni. Earring",
			left_ring="Crepuscular Ring",
			right_ring="Defending Ring",
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
        }
			
		sets.Ranged.RangedAttack =  {   
			ammo="Chrono Bullet",
			head="Ikenga's Hat",
			body={ name="Ikenga's Vest", augments={'Path: A',}},
			hands="Malignance Gloves",
			legs="Chasseur's Culottes +2",
			feet="Malignance Boots",
			neck="Iskur Gorget",
			waist="Yemaya Belt",
			left_ear="Crep. Earring",
			right_ear="Telos Earring",
			left_ring="Ilabrat Ring",
			right_ring="Crepuscular Ring",
			back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
		} 
		
        --Utility Sets--1
        sets.Utility = {}
       
        sets.Utility.Weather = {waist="Hachirin-no-obi"}
 
                                                         
        sets.Utility.Phalanx = {
			ammo="Chrono Bullet",
			head="Malignance Chapeau",
			body={ name="Taeon Tabard", augments={'"Conserve MP"+5','Phalanx +3',}},
			hands="Malignance Gloves",
			legs={ name="Nyame Flanchard", augments={'Path: B',}},
			feet={ name="Herculean Boots", augments={'Magic burst dmg.+6%','"Fast Cast"+1','Phalanx +4','Accuracy+14 Attack+14','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},
			neck={ name="Bathy Choker +1", augments={'Path: A',}},
			waist="Carrier's Sash",
			left_ear="Eabani Earring",
			right_ear="Infused Earring",
			left_ring="Defending Ring",
			right_ring="Shneddick Ring",
			back="Moonbeam Cape",
		}
                                                                                                        
		sets.Utility.Sleeping = {neck="Opo-Opo Necklace"}
  
        --Job Ability Sets--
		
       
        sets.JA = {}
        
        sets.JA.PhantomRoll = {Main ="Rostam",range = "Compensator", head="Lanun Tricorne +1",neck="Regal Necklace", ear1="Etiolation earring", ear2="Eabani Earring",
                              body="Nyame Mail",hands="Chasseur's gants +2",ring2="Luzaf's Ring",ring1="Defending Ring",
                              back={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}},
							  waist="Carrier's Sash",legs="Nyame Flanchard",feet = "Nyame Sollerets" }
       
        sets.JA.LightDarkShot= {ammo ="Animikii Bullet",    
			head="Malignance Chapeau",
			body="Malignance Tabard",
			hands="Malignance Gloves",
			legs="Malignance Tights",
			feet="Chasseur's Bottes +3",
			neck={ name="Comm. Charm +1", augments={'Path: A',}},
			waist="Eschan Stone",
			left_ear="Crep. Earring",
			right_ear="Digni. Earring",
			left_ring="Stikini Ring +1",
			right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
		}
							
		sets.JA.TactsRoll={body ="Chasseur's Frac +2"}
							
		sets.JA.SnakeEye = {legs ="Lanun trews +1"}
		
		sets.JA.RandomDeal = {body ="Lanun Frac +3"}
		
		sets.JA.WildCard = {Feet = "Lanun Bottes +3"}
		
		sets.JA.TripleShot ={
			body ="Chasseur's Frac +2",
		}
		
		--- Quick Draw Sets ---
		sets.QD ={}
		
		sets.QD.index={'STP', 'Damage', 'Enhance'}
		QD_ind = 1
		
		sets.QD.STP ={
			ammo ="Animikii Bullet",
		    head="Malignance Chapeau",
			body="Malignance Tabard",
			hands="Malignance Gloves",
			legs="Malignance Tights",
			feet="Malignance Boots",
			neck="Iskur Gorget",
			waist="Reiki Yotai",
			left_ear="Crep. Earring",
			right_ear="Telos Earring",
			left_ring="Chirich Ring +1",
			right_ring="Crepuscular Ring",
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
		}
		
		sets.QD.Damage = {ammo ="Animikii Bullet", head ="Nyame Helm",
							neck="Commodore Charm +1",   ear2="Friomisi earring", ear1="Crep. Earring",
							body="Lanun Frac +3", 
							hands="Nyame Gauntlets", ring1="Acumen Ring",
							ring2 ='Dingir Ring', waist ="Orpheus's Sash",
							back={ name="Camulus's Mantle", 
							augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
							Legs = "Nyame Flanchard", 
							feet="Lanun Bottes +3"}		
		
		sets.QD.Enhance = {
			ammo ="Animikii Bullet",    
			head="Malignance Chapeau",
			body="Malignance Tabard",
			hands="Malignance Gloves",
			legs="Malignance Tights",
			feet="Chasseur's Bottes +3",
			neck={ name="Comm. Charm +1", augments={'Path: A',}},
			waist="Eschan Stone",
			left_ear="Crep. Earring",
			right_ear="Digni. Earring",
			left_ring="Stikini Ring +1",
			right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
			back={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%',}},
		}
                                                    

        --Precast Sets--
        sets.precast = {}
       
        sets.precast.FC = {}
       
       sets.precast.FC.Standard = {  
							head="Carmine Mask +1",  body="Adhemar Jacket +1",  hands="Leyline Gloves",   legs={ name="Herculean Trousers", augments={'Mag. Acc.+21','"Fast Cast"+5','CHR+3',}},
						    feet="Carmine Greaves +1",  neck="Voltsurge Torque", waist="Witful Belt", left_ear="Etiolation Earring",
						    right_ear="Loquac. Earring", left_ring="Rahab Ring", right_ring="Kishar Ring", back="Swith Cape"}
		--Ninja Magic Sets--
        sets.NINMagic = {}
       
								
	    sets.NINMagic.Utsusemi ={
                              head="Adhemar Bonnet +1",neck="Loricate Torque", ar1="Brutal Earring",ear2="Cessance Earring",
                              body="Malignance Tabard",hands={ name="Adhemar Wristbands +1", augments={'STR+12','DEX+12','Attack+20',}},ring1="Chirich Ring +1",ring2="Petrov Ring",
                              back="Moonbeam Cape",waist="Carrier's Sash",legs={ name="Herculean Trousers", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','Weapon skill damage +2%','Mag. Acc.+14','"Mag.Atk.Bns."+13',}},feet = "Nyame Sollerets" }
       
end
  
function precast(spell)
        if spell.type == 'Magic' then
                equip(sets.precast.FC.Standard)
		elseif spell.english == 'Ranged' then
			equip(sets.Ranged.PreShot)
		elseif spell.english == 'Savage Blade' then
			if spell.target.distance <= 5.6 then
                equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
			else
			cancel_spell()
			windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		elseif spell.english == 'Vorpal Blade' then
                equip(sets.VorpalBlade)
		elseif spell.english == 'Sanguine Blade' or spell.english =='Aeolian Edge' then
                equip(sets.Leaden)
        elseif spell.english == 'Leaden Salute' then
			if spell.target.distance <= 21.5 then
				equip(sets.Leaden)
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		elseif spell.english == 'Wildfire' then
			if spell.target.distance <= 21.5 then
				equip(sets.WildFire)
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		elseif spell.english == 'Last Stand' then	
			if spell.target.distance <= 21.5 then
				equip(sets.LastStand)
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		elseif spell.english == 'Hot Shot' then
			if spell.target.distance <= 21.5 then
				equip(sets.WS.HotShot)
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end
		elseif spell.type == 'WeaponSkill' then
			equip(sets.LastStand)
		elseif PhantomRolls:contains(spell.english) or spell.english == "Double Up" then
			equip(sets.JA.PhantomRoll)
			if spell.english == "Tactician's Roll" then
				equip(sets.JA.TactsRoll)
			end
		elseif quickdraw:contains(spell.english) then
			equip(sets.QD[sets.QD.index[QD_ind]])
			-- if spell.element == world.day_element or spell.element == world.weather_element then
                -- equip(sets.Utility.Weather)
            -- end
		elseif spell.english =='Light Shot' or spell.english == 'Dark Shot' then
			equip(sets.JA.LightDarkShot)
		elseif spell.english == 'Box Step'  or spell.english =='Quick Step' then
                equip(sets.TP.DTAccuracy)
		elseif spell.english == 'Wild Card' then
				equip(sets.JA.WildCard)
		elseif spell.english == 'Random deal' then
				equip(sets.JA.RandomDeal)
		elseif spell.english == 'Snake Eye' then
				equip(sets.JA.SnakeEye)		
		end       
end

function midcast(spell,act)
	if spell.english == 'Ranged' then
			equip(sets.Ranged.RangedAttack)
			if buffactive["Triple Shot"] then
				equip(sets.JA.TripleShot)
			end
		elseif spell.english == 'Utsusemi: Ichi' then
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
        elseif spell.english == 'Utsusemi: Ni'  or spell.english == 'Utsusemi: San' then
                equip(sets.NINMagic.Utsusemi)
    end 
end
       
function aftercast(spell)
     if player.status == 'Engaged' then
            equip(set_combine(sets.Guns[sets.Guns.index[Guns_ind]],sets.TP[sets.TP.index[TP_ind]]))						
        else
            equip(set_combine(sets.Guns[sets.Guns.index[Guns_ind]],sets.Idle[sets.Idle.index[Idle_ind]]))
        end
	if buffactive['doom'] then
					equip(sets.Utility.Doomed)
		
		elseif  buffactive['terror'] or buffactive['stun'] or buffactive['sleep']	then 
					equip(sets.TP.DT)
	end       
    if spell.type == 'WeaponSkill' then
        add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
	end
end
 
function status_change(new,old)
        if new == 'Engaged' then
            equip(set_combine(sets.Guns[sets.Guns.index[Guns_ind]],sets.TP[sets.TP.index[TP_ind]]))
        else
            equip(set_combine(sets.Guns[sets.Guns.index[Guns_ind]],sets.Idle[sets.Idle.index[Idle_ind]]))
        end
end
 
function self_command(command)
        if command == 'toggle TP set' then
                TP_ind = TP_ind +1
                if TP_ind > #sets.TP.index then TP_ind = 1 end
                send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ----->')
                equip(sets.TP[sets.TP.index[TP_ind]])
        elseif command == 'toggle Idle set' then
                Idle_ind = Idle_ind +1
                if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
                send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
        elseif command == 'toggle Guns' then
                Guns_ind = Guns_ind +1
                if Guns_ind > #sets.Guns.index then Guns_ind = 1 end
                send_command('@input /echo [Gun changed to '..sets.Guns.index[Guns_ind]..']')
				equip(sets.Guns[sets.Guns.index[Guns_ind]])
		elseif command == 'toggle QD' then
                QD_ind = QD_ind +1
                if QD_ind > #sets.QD.index then QD_ind = 1 end
                send_command('@input /echo [Quick Draw set changed to '..sets.QD.index[QD_ind]..']')		
		elseif command == "equip TP set" then
			equip(sets.TP[sets.TP.index[TP_ind]])
		elseif command =="equip DT set" then
			equip (sets.TP.DT)
		elseif command == "equip Idle set" then
			equip(sets.Idle[sets.Idle.index[Idle_ind]])
		end
end
