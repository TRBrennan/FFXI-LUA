function get_sets()
 
        send_command('bind f9 gs c toggle TP set')
        send_command('bind f10 gs c toggle Idle set')

       
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
               
        --Idle Sets--  
        sets.Idle = {}
       
        sets.Idle.index = {'Standard','DT', 'Cleave'}
        Idle_ind = 1                  
       
        sets.Idle.Standard = {
                                      head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},
									  neck="Sanctity Necklace", ear1="Genmei Earring", ear2="Infused Earring",
                                      body="Emet Harness +1",hands="Herculean gloves",ring1="Defending ring",ring2="Vocane Ring",
                                      waist="Flume Belt +1",legs="Carmine Cuisses +1",feet="Ahosi Leggings", back ="Moonbeam Cape"}
                                                 
        sets.Idle.DT = {	          head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},
										neck="Loricate Torque +1", ear1="Etiolation earring", ear2="Handler's earring +1",
                                        body="Emet Harness +1",hands="Herculean gloves",ring1="Defending ring",ring2="Vocane Ring",
                                        back="Moonbeam Cape",waist="Flume belt +1",legs="Mummu Kecks +1",feet="Ahosi Leggings", }
										
		sets.Idle.Cleave = { 
										head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque", ear1="Etiolation earring +1", ear2="Handler's earring +1",
                                        body="Emet Hareness +1",hands="Garden Bangles",ring1="Defending ring",ring2="Vocane Ring",
                                        back="Mecistopins mantle",waist="Flume belt +1",legs="Osmium Cuisses",feet="Ahosi Leggings",}								
        --TP Sets--
        sets.TP = {}
 
           sets.TP.index = {'StandardNIN', 'DNCSub', 'AccuracyFull', 'DT', 'DTAccuracy', }
                --1=Standard, 2 = DNCSub, 3=AccuracyFull, 4=DT, 5=DTAccuracy,--
				
                TP_ind = 1
				sets.TP.StandardNIN = {  
                                    head="Adhemar Bonnet +1", neck="Lissome necklace", ear1="Cessance Earring", ear2="Telos Earring",
                                    body="Adhemar Jacket +1",hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},ring1="Chirich Ring",ring2="Epona's Ring",
                                    back="Grounded Mantle",waist="Reiki Yotai",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                       
                                                       
                sets.TP.DNCSub = { 
                                        head="Adhemar Bonnet +1", neck="Lissome necklace", ear1="Suppanomimi", ear2="Telos Earring",
                                    body="Adhemar Jacket +1",hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},ring1="Chirich Ring",ring2="Epona's Ring",
                                    back="Grounded Mantle",waist="Reiki Yotai",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
       
                sets.TP.AccuracyFull = {
                                        head="Adhemar Bonnet +1",neck="Sanctity Necklace", ear1="Cessance Earring", ear2="Telos Earring",
                                        body="Adhemar Jacket +1",hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},ring2="Chirich Ring",ring1="Cacoethic Ring",
                                        back="Lupine Cape",waist="Kentarch Belt +1",legs="Carmine Cuisses +1",feet="Carmine Greaves +1" }
                                                       
                sets.TP.DT = { 
                              head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque", ear1="Genmei Earring", ear2="Dignitary's Earring",
                              body="Emet harness +1",hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},ring1="Defending ring",ring2="Vocane Ring",
                              back="Moonbeam Cape",waist="Flume belt +1",legs ="Mummu Kecks +1",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                 
                sets.TP.DTAccuracy = { 
                                      head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque", ear1="Suppanomimi", ear2="Dignitary's Earring",     
									  body="Emet harness +1",hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},ring1="Dark ring",ring2="Mars's ring",
                                      back="Moonbeam Cape",waist="Reiki Yotai",legs ="Mummu Kecks +1",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                         				
       --Weaponskill Sets--
        sets.WS = {}
       
									  
		sets.SavageBlade = {}
       
        sets.SavageBlade.index = {'Attack'}
        SavageBlade_ind = 1
       
        sets.SavageBlade.Attack = {
                                          head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
										  neck="Caro Necklace",ear1="Ishvara Earring",ear2="Moonshade Earring",
                                          body="Laksa. Frac +3",
										  hands="Meg. Gloves +2",ring1="Regal Ring",ring2="Rajas Ring",
                                          back="Camulus's Mantle",waist="Grunfeld Rope",legs={ name="Herculean Trousers", augments={'Accuracy+12 Attack+12','Weapon skill damage +3%','DEX+9','Accuracy+13',}},
										  feet={ name="Herculean Boots", augments={'Accuracy+22 Attack+22','Weapon skill damage +4%','STR+3','Attack+8',}}, }
                                                           
                                                                                                                       
        sets.SanguineBlade = {}
       
	    sets.SanguineBlade.index = {'Attack'}
        SanguineBlade_ind = 1
        sets.SanguineBlade = {
                                 head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}},neck="Sanctity Necklace",rear="Friomisi earring", ear1="Novio Earring",
                                 body="Adhemar Jacket +1",hands="Leyline Gloves", ring1="Acumen Ring", ring2 ='Fenrir Ring', waist ="Eschan Stone",
                                 back="Buquwik cape",legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Mag. Acc.+14','"Mag.Atk.Bns."+14',}},feet="Weatherspoon souliers +1" }
								 
		sets.VorpalBlade = {}
       
	    sets.VorpalBlade.index = {'Attack'}
        VorpalBlade_ind = 1
        sets.VorpalBlade = {
                                          head="Adhemar Bonnet +1",neck="Fotia gorget",ear1="Moonshade Earring",ear2="Telos Earring",
                                          body="Adhemar Jacket +1",hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},ring1="Petrov ring",ring2="Regal Ring",
                                          back="Buquwik cape",waist="Grunfeld Rope",legs="Quiahuiz leggings",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }						 
               
	    sets.Leaden = {}
       
        sets.Leaden.index = {'Attack'}
        Leaden_ind = 1
         
		sets.Leaden ={ ammo ="Chrono Bullet", head="Pixie Hairpin +1",
							neck="Sanctity Necklace",  ear2="Friomisi earring", ear1="Moonshade Earring",
							body="Laksa. Frac +3",  hands="Carmine Finger Gauntlets +1",   ring1="Dingir Ring", ring2 ='Acumen Ring', waist ="Eschan Stone",
							back="Camulus's Mantle", legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Mag. Acc.+14','"Mag.Atk.Bns."+14',}},  
							feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+27','Weapon skill damage +4%','Quadruple Attack +1','Mag. Acc.+14 "Mag.Atk.Bns."+14',}},}
							
		sets.WildFire = {}
       
        sets.WildFire.index = {'Attack'}
        WildFire_ind = 1					
			
		sets.WildFire = {ammo ="Chrono Bullet",head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}},
							neck="Sanctity Necklace",   ear2="Friomisi earring", ear1="Moonshade Earring",
							body="Laksa. Frac +3",hands="Carmine Finger Gauntlets +1", ring1="Dingir Ring", ring2 ='Acumen Ring', waist ="Eschan Stone",
							back="Camulus's Mantle",   legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Mag. Acc.+14','"Mag.Atk.Bns."+14',}}, 
							feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+27','Weapon skill damage +4%','Quadruple Attack +1','Mag. Acc.+14 "Mag.Atk.Bns."+14',}},}
		
	    sets.LastStand = {}
       
        sets.LastStand.index = {'Attack'}
        LastStand_ind = 1					
			
		sets.LastStand = {ammo ="Chrono bullet", 
						head={ name="Herculean Helm", augments={'Rng.Acc.+23 Rng.Atk.+23','Weapon skill damage +2%','DEX+2','Rng.Acc.+12','Rng.Atk.+5',}},
						body="Laksa. Frac +3",
						hands="Meg. Gloves +2",
						legs={ name="Herculean Trousers", augments={'Rng.Acc.+24 Rng.Atk.+24','Weapon skill damage +3%','Rng.Atk.+3',}},
						feet={ name="Herculean Boots", augments={'Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +2%','STR+2','Rng.Acc.+7',}},
						neck="Iskur Gorget",
						waist="Yemaya Belt",
						left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
						right_ear="Telos Earring",
						left_ring="Dingir Ring",
						right_ring="Regal Ring",
						back={ name="Camulus's Mantle", augments={'AGI+20','Rng.Acc.+20 Rng.Atk.+20','Weapon skill damage +10%',}},
						}
										  
		--Ranged Attack ---
			sets.Ranged = {}
			sets.Ranged.PreShot = {
            head="Amini Gapette", -- 7
            body="Oshosi Vest", -- 7
			hands ="Carmine Finger Gauntlets",
            back="Lutian Cape", -- 2
            legs="Adhemar Kecks",
            waist="Impulse Belt", -- 2
            feet="Meg. Jam. +2" -- 8
        }
			
			sets.Ranged.RangedAttack =  { ammo ="Chrono bullet", head="Meghanada Visor +2",
							neck="Iskur Gorget", ear2="Telos Earring", ear1="Volley Earring",
							body="Oshosi Vest",hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
							ring1="Dingir Ring",ring2="Cacoethic Ring", waist ="Yemaya Belt",
							back="Camulus's Mantle", legs="Adhemar Kecks",feet="Meg. Jam. +2",} 
		
        --Utility Sets--1
        sets.Utility = {}
       
        sets.Utility.Weather = {waist="Hachirin-no-obi"}
 
        sets.Utility.MB = {head="Helios Band",body="Samnuha Coat",ear1="Static Earring",ring1="Locus Ring",ring2="Mujin Band"}
 
       
        sets.Utility.Stoneskin = {head="Haruspex hat",neck="Stone Gorget",ear1="Loquac. earring",ear2="Earthcry earring",
                                                          body="Assim. jubbah +1",hands="Stone Mufflers",ring1="Rahab ring",
                                                          back="Swith cape",waist="Siegel sash",legs="Haven hose",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                         
        sets.Utility.Phalanx = {head="Haruspex hat",neck="Colossus's torque",ear1="Loquac. earring",ear2="Augment. earring",
                                                    body="Assim. jubbah +1",hands="Ayao's gages",ring1="Rahab ring",
                                                        back="Swith cape",waist="Pythia sash +1",legs="Portent pants",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                       
        sets.Utility.Steps = {
							head="Adhemar Bonnet +1", body="Adhemar Jacket +1", hands="Rawhide Gloves",legs=="Samnuha Tights", feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}},  neck="Subtlety Spec.",
							waist="Chaac Belt", left_ear="Heartseeker Earring",right_ear="Dignitary's Earring",  left_ring="Yacuruna Ring",  right_ring="Epona's Ring",  back="Grounded Mantle",}
                                                 
		sets.Utility.Sleeping = {neck="Opo-Opo Necklace"}
  
        --Job Ability Sets--
		
       
        sets.JA = {}
       
        sets.JA.QuickDraw = {ammo ="Animikii Bullet",head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}},
							neck="Sanctity Necklace",   ear2="Friomisi earring", ear1="Hecate's Earring",
							body="Samnuha Coat",    hands="Carmine Finger Gauntlets +1", ring1="Acumen Ring", ring2 ='Dingir Ring', waist ="Eschan Stone",
							back="Izdubar Mantle",   legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Mag. Acc.+14','"Mag.Atk.Bns."+14',}},  
							feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+27','Weapon skill damage +4%','Quadruple Attack +1','Mag. Acc.+14 "Mag.Atk.Bns."+14',}},}
       
        sets.JA.PhantomRoll = {head="Lanun Tricorne",neck="Regal Necklace", ear1="Etiolation earring", ear2="Genmei Earring",
                              body="Emet Hareness +1",hands="Chasseur's gants",ring2="Luzaf's Ring",ring1="Defending Ring",
                              back="Camulus's Mantle",waist="Flume belt +1",legs="Desultor Tassets",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
       
        sets.JA.LightDarkShot= {ammo ="Animikii Bullet",head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}},
							neck="Sanctity Necklace",   ear2="Friomisi earring", ear1="Dignitary's Earring",
							body="Samnuha Coat",  hands="Leyline Gloves", ring1="Sangoma Ring", ring2 ='Dingir Ring', waist ="Eschan Stone",
							back="Izdubar Mantle",   legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Mag. Acc.+14','"Mag.Atk.Bns."+14',}},  
							feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+27','Weapon skill damage +4%','Quadruple Attack +1','Mag. Acc.+14 "Mag.Atk.Bns."+14',}},}
							
		sets.JA.SnakeEye = {legs =" Lanun trews"}
		
		sets.JA.RandomDeal = {body ="Lanun Frac"}
		
		sets.JA.WildCard = {Feet = "Lanun Bottes +1"}
                                                    

        --Precast Sets--
        sets.precast = {}
       
        sets.precast.FC = {}
       
       sets.precast.FC.Standard = {  
							head="Carmine Mask +1",  body="Adhemar Jacket",  hands="Leyline Gloves",   legs={ name="Herculean Trousers", augments={'Mag. Acc.+21','"Fast Cast"+5','CHR+3',}},
						    feet="Carmine Greaves +1",  neck="Voltsurge Torque", waist="Witful Belt", left_ear="Etiolation Earring",
						    right_ear="Loquac. Earring", left_ring="Rahab Ring", right_ring="Kishar Ring", back="Swith Cape"}
		--Ninja Magic Sets--
        sets.NINMagic = {}
       
								
	    sets.NINMagic.Utsusemi ={
                              head="Adhemar Bonnet +1",neck="Loricate Torque", ar1="Brutal Earring",ear2="Cessance Earring",
                              body="Emet harness +1",hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},ring1="Vocane Ring",ring2="Petrov Ring",
                              back="Moonbeam Cape",waist="Flume belt +1",legs={ name="Herculean Trousers", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','Mag. Acc.+14','"Mag.Atk.Bns."+14',}},feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
       
end
  
function precast(spell)
        if spell.type == 'Magic' then
                equip(sets.precast.FC.Standard)
		elseif spell.english == 'Ranged' then
			equip(sets.Ranged.PreShot)
		elseif spell.english == 'Savage Blade' then
                equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
		elseif spell.english == 'Vorpal Blade' then
                equip(sets.VorpalBlade)
		elseif spell.english == 'Sanguine Blade' or spell.english =='Aeolian Edge' then
                equip(sets.SanguineBlade)
                if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(sets.Utility.Weather)
                        end
        elseif spell.english == 'Leaden Salute' then
			equip(sets.Leaden)
			 if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(sets.Utility.Weather)
                        end
		elseif spell.english == 'Wildfire' then
			equip(sets.WildFire)
			 if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(sets.Utility.Weather)
                        end
		elseif spell.english == 'Last Stand' then	
			equip(sets.LastStand)
		elseif spell.english == "Corsair's Roll" or spell.english == "Ninja's Roll" or spell.english == "Hunter's Roll" or spell.english == "Chaos Roll" 
		 or spell.english == "Magus's Roll" or spell.english == "Healer's Roll" or spell.english == "Drachen Roll" or spell.english == "Choral Roll" 
		 or spell.english == "Monk's Roll" or spell.english == "Beast Roll" or spell.english == "Samurai Roll" or spell.english == "Evoker's Roll" 
		 or spell.english == "Rogue's Roll" or spell.english == "Warlock's Roll" or spell.english == "Fighter's Roll" or spell.english == "Puppet Roll"
		 or spell.english == "Gallant's Roll" or spell.english == "Wizard's Roll" or spell.english == "Dancer's Roll" or spell.english == "Scholar's Roll" 
		 or spell.english == "Bolter's Roll" or spell.english == "Allies' Roll" or spell.english == "Miser's Roll" or spell.english == "Tactician's Roll"
		 or spell.english == "Caster's Roll" or spell.english == "Companion's Roll" or spell.english == "Avenger's Roll" or spell.english == "Double Up" then
			equip(sets.JA.PhantomRoll)
		elseif spell.english == 'Fire Shot' or spell.english =='Water Shot' or spell.english =='Thunder Shot' or spell.english =='Earth Shot'
		or spell.english =='Wind Shot' or spell.english =='Ice Shot' then
			equip(sets.JA.QuickDraw)
			 if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(sets.Utility.Weather)
                        end
		elseif spell.english =='Light Shot' or spell.english == 'Dark Shot' then
			equip(sets.JA.LightDarkShot)
			 if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(sets.Utility.Weather)
                        end
		elseif spell.english == 'Box Step'  or spell.english =='Quick Step' then
                equip(sets.Utility.Steps)
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
                equip(sets.TP[sets.TP.index[TP_ind]])
				
        else
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
        end
		if buffactive['doom'] then
					equip(sets.Utility.Doom)
		
		elseif  buffactive['terror'] or buffactive['stun'] or buffactive['sleep']	then 
					equip(sets.TP.DT)
		end

       
        if spell.type == 'Weaponskill' then
                add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
        end
end
 
function status_change(new,old)
        if new == 'Engaged' then
                equip(sets.TP[sets.TP.index[TP_ind]])
        else
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
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
        elseif command == 'toggle Req set' then
                Requiescat_ind = Requiescat_ind +1
                if Requiescat_ind > #sets.Requiescat.index then Requiescat_ind = 1 end
                send_command('@input /echo <----- Requiescat Set changed to '..sets.Requiescat.index[Requiescat_ind]..' ----->')
        elseif command == 'toggle CDC set' then
                ChantDuCygne_ind = ChantDuCygne_ind +1
                if ChantDuCygne_ind > #sets.ChantDuCygne.index then ChantDuCygne_ind = 1 end
                send_command('@input /echo <----- Chant du Cygne Set changed to '..sets.ChantDuCygne.index[ChantDuCygne_ind]..' ----->')
        elseif command == 'toggle Rea set' then
                Realmrazer_ind = Realmrazer_ind +1
                if Realmrazer_ind > #sets.Realmrazer.index then Realmrazer_ind = 1 end
                send_command('@input /echo <----- Realmrazer Set changed to '..sets.Realmrazer.index[Realmrazer_ind]..' ----->')
        elseif command == 'toggle MB set' then
                Burst_ind = Burst_ind +1
                if Burst_ind > #sets.Burst.index then Burst_ind = 1 end
                send_command('@input /echo [MB Set changed to '..sets.Burst.index[Burst_ind]..']')
        elseif command == 'equip TP set' then
                equip(sets.TP[sets.TP.index[TP_ind]])
        elseif command == 'equip Idle set' then
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
        end
end