function get_sets()
 
        send_command('bind f9 gs c toggle TP set')
        send_command('bind f10 gs c toggle Idle set')
        send_command('bind f11 gs c toggle CDC set')
        send_command('bind f12 gs c toggle Req set')
        send_command('bind !f12 gs c toggle Rea set')
        send_command('bind ^` gs c toggle MB set')
       
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
       
        sets.Idle.index = {'Standard','DT'}
        Idle_ind = 1                  
       
        sets.Idle.Standard = {
		ammo="Staunch Tathlum",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Loricate Torque",
		waist="Carrier's Sash",
		left_ear="Eabani Earring",
		right_ear="Hearty Earring",
		left_ring="Defending Ring",
		right_ring="Shneddick Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
		}
                                                 
        sets.Idle.DT = {ammo="Staunch Tathlum",
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Loricate Torque",
		waist="Carrier's Sash",
		left_ear="Sherida Earring",
		right_ear="Hearty Earring",
		left_ring="Defending Ring",
		right_ring="Shneddick Ring",
		back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
		}
					
        --TP Sets--
        sets.TP = {}
 
           sets.TP.index = {'Standard', 'TH'}
                --1=Standard, 6 = TH
				
                TP_ind = 1
					sets.TP.Standard =  {    
						ammo="Yamarang",
						head="Nyame Helm",
						body="Nyame Mail",
						hands="Nyame Gauntlets",
						legs="Malignance Tights",
						feet="Nyame Sollerets",
						neck="Asperity Necklace",
						waist="Sailfi Belt +1",
						left_ear="Sherida Earring",
						right_ear="Suppanomimi",
						left_ring="Mummu Ring",
						right_ring="Petrov Ring",
						back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
					}
		
		
									  
				sets.TP.TH = {					
						ammo="Yamarang",
						head="Nyame Helm",
						body="Nyame Mail",
						hands = "Plunderer's Armlets +1",
						legs="Malignance Tights",
						feet="Nyame Sollerets",
						neck="Asperity Necklace",
						waist={ name="Sailfi Belt +1", augments={'Path: A',}},
						left_ear="Sherida Earring",
						right_ear="Suppanomimi",
						left_ring="Mummu Ring",
						right_ring="Petrov Ring",
						back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},
					}
                                                         
									
       --Weaponskill Sets--
        sets.WS = {}      
       
        sets.Rudras = {ammo="Yetshila",
                                head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
								neck="Rep. Plat. Medal",ear1="Moonshade Earring",ear2="Ishvara Earring",
                                body={ name="Herculean Vest", augments={'Accuracy+21 Attack+21','Weapon skill damage +4%','DEX+4','Attack+5',}},
								hands="Meg. Gloves +2",ring1="Ilabrat Ring",ring2="Regal Ring",
                                back="Canny Cape",waist="Sailfi Belt +1",legs={ name="Herculean Trousers", augments={'Accuracy+12 Attack+12','Weapon skill damage +3%','DEX+9','Accuracy+13',}},
								feet={ name="Herculean Boots", augments={'Accuracy+22 Attack+22','Weapon skill damage +4%','STR+3','Attack+8',}}, }							
               
                               
        sets.Exenterator = {ammo="Jukukik Feather",
                                          head="Adhemar Bonnet +1",neck="Fotia gorget",ear1="Moonshade Earring",ear2="Sherida Earring",
                                          body="Herculean Vest",hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},ring1="Ilabrat Ring",ring2="Regal Ring",
                                          back="Canny Cape",waist="Sailfi Belt +1",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4'}} }
                                                                          
        sets.Evisceration = {    ammo="Yamarang",
								head="Mummu Bonnet +2",
								body="Meg. Cuirie +2",
								hands="Mummu Wrists +2",
								legs="Mummu Kecks +2",
								feet="Mummu Gamash. +2",
								neck="Asperity Necklace",
								left_ear="Sherida Earring",
								right_ear="Moonshade Earring",
								left_ring="Mummu Ring",
								right_ring="Petrov Ring",
								waist="Sailfi Belt +1",
								back={ name="Toutatis's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Damage taken-5%',}},}
       
        sets.SharkBite = {ammo="Jukukik Feather",
                                          head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
										  neck="Rep. Plat. Medal",ear1="Ishvara Earring",ear2="Moonshade Earring",
                                          body="Herculean Vest",hands="Meg. Gloves +2",ring1="Ilabrat Ring",ring2="Regal Ring",
                                          back="Canny Cape",waist="Sailfi Belt +1",legs={ name="Herculean Trousers", augments={'Accuracy+12 Attack+12','Weapon skill damage +3%','DEX+9','Accuracy+13',}},
										  feet={ name="Herculean Boots", augments={'Accuracy+22 Attack+22','Weapon skill damage +4%','STR+3','Attack+8',}}, }		
										  
		sets.AeolianEdge = {        
			ammo="Pemphredo Tathlum",
			head="Nyame Helm",
			body="Nyame Mail",
			hands="Nyame Gauntlets",
			legs="Nyame Flanchard",
			feet="Nyame Sollerets",
			neck="Sanctity Necklace",
			waist="Carrier's Sash",
			left_ear="Friomisi Earring",
			right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
			left_ring="Acumen Ring",
			right_ring="Mummu Ring",
			back="Toro Cape",
        }           

	sets.Cyclone= {        
			ammo="Pemphredo Tathlum",
			head="Nyame Helm",
			body="Nyame Mail",
			hands = "Plunderer's Armlets +1",
			legs="Nyame Flanchard",
			feet="Nyame Sollerets",
			neck="Sanctity Necklace",
			waist="Carrier's Sash",
			left_ear="Friomisi Earring",
			right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +250',}},
			left_ring="Acumen Ring",
			right_ring="Mummu Ring",
			back="Toro Cape",
        } 		
																				  
        --Ninja Magic Sets--
        sets.NINMagic = {}
       
		sets.NINMagic.Nuke ={head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}}, 
							neck="Sanctity Necklace", ear2="Friomisi earring", ear1="Hecate's Earring",
							body="Samnuha Coat", hands="Leyline Gloves", ring1="Shiva Ring", ring2 ="Acumen Ring", waist ="Eschan Stone",
							back="Gunslinger's Cape", 
							legs={ name="Herculean Trousers", augments={'Mag. Acc.+16 "Mag.Atk.Bns."+16','Weapon skill damage +2%','Mag. Acc.+14','"Mag.Atk.Bns."+13',}}, 
							feet={ name="Herculean Boots", augments={'"Mag.Atk.Bns."+27','Weapon skill damage +4%','Quadruple Attack +1','Mag. Acc.+14 "Mag.Atk.Bns."+14',}},}
							
	    sets.NINMagic.Utsusemi ={
                              head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque", ar1="Brutal Earring",ear2="Cessance Earring",
                              body="Emet harness +1",hands={ name="Adhemar Wrist. +1", augments={'STR+12','DEX+12','Attack+20',}},ring1="Vocane Ring",ring2="Petrov Ring",
                              back="Moonbeam Cape",waist="Flume belt +1",legs="Herculean Trousers",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4'}}}
 
        
                                              
        --Utility Sets--
        sets.Utility = {}
       
        sets.Utility.Weather = {waist="Hachirin-no-obi",back="Twilight Cape"}
 
        sets.Utility.MB = {head="Herculean Helm",body="Amalric Doublet",ear1="Static Earring",ring1="Locus Ring",ring2="Mujin Band"}
 
       
        sets.Utility.Stoneskin = {head="Haruspex hat",neck="Stone Gorget",ear1="Loquac. earring",ear2="Earthcry earring",
                                                          body="Assim. jubbah +1",hands="Stone Mufflers",ring1="Rahab ring",
                                                          back="Swith cape",waist="Siegel sash",legs="Haven hose",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                         
        sets.Utility.Phalanx = {head="Haruspex hat",neck="Colossus's torque",ear1="Loquac. earring",ear2="Augment. earring",
                                                    body="Assim. jubbah +1",hands="Ayao's gages",ring1="Rahab ring",
                                                        back="Swith cape",waist="Pythia sash +1",legs="Portent pants",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                       
        sets.Utility.Steps = {ammo="Falcon Eye",
							head="Adhemar Bonnet +1", body="Adhemar Jacket +1", hands="Rawhide Gloves",legs=="Samnuha Tights", feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}},  neck="Subtlety Spec.",
							waist="Chaac Belt", left_ear="Heartseeker Earring",right_ear="Dignitary's Earring",  left_ring="Yacuruna Ring",  right_ring="Epona's Ring",  back="Canny Cape",}
                                                 
        sets.Utility.PDT = {head="Adhemar Bonnet +1",neck="Loricate Torque +1",ear1="Etiolation Earring",
                                                body="Iuitl vest",hands="Umuthi gloves",ring1="Dark ring",ring2="Dark ring",
                                                back="Moonbeam Cape",waist="Flume belt",legs="Iuitl Tights +1",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                               
        sets.Utility.MDT = {head="Adhemar Bonnet +1",neck="Loricate Torque +1",
                                                body="Assim. jubbah +1",hands="Umuthi gloves",ring1="Dark ring",ring2="Dark ring",
                                                back="Moonbeam Cape",legs="Quiahuiz trousers",feet="Luhlaza charuqs"}
												
		sets.Utility.Doomed = {waist="Gishdubar Sash", ring1 ="Saida Ring"}
		
		sets.Utility.Sleeping = {neck="Opo-Opo Necklace"}
  
        --Job Ability Sets--
       
        sets.JA = {}
                                                  

        --Precast Sets--
        sets.precast = {}
       
        sets.precast.FC = {}
       
       sets.precast.FC.Standard = { ammo="Sapience Orb",
							head="Herculean Helm",  body="Vrikodara Jupon",  hands="Leyline Gloves",   legs={ name="Herculean Trousers", augments={'Mag. Acc.+21','"Fast Cast"+5','CHR+3',}},
						    feet="Amalric Nails",  neck="Voltsurge Torque", waist="Witful Belt", left_ear="Etiolation Earring",
						    right_ear="Loquac. Earring", left_ring="Rahab Ring", right_ring="Kishar Ring", back="Swith Cape"}
       
end
 
  
function precast(spell)
        if spell.action_type == 'Magic' then
                equip(sets.precast.FC.Standard)
        elseif spell.english == 'Exenterator' then
                equip(sets.Exenterator)
        elseif spell.english == 'Evisceration' then
                equip(sets.Evisceration)
        elseif spell.english == 'Shark Bite' then
                equip(sets.SharkBite)
        elseif spell.english == 'Rudra\'s Storm' then
                equip(sets.Rudras)
        elseif spell.english == 'Sanguine Blade' then
                equip(sets.BlueMagic.Dark)
                if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(sets.Utility.Weather)
                        end
        elseif spell.english == "Aeolian Edge" then
                equip(sets.AeolianEdge)
		elseif spell.enlgish == "Cyclone" then
				equip(sets.Cyclone)
		elseif spell.english == 'Box Step' then
                equip(sets.Utility.Steps)
        elseif spell.english == 'Flash Nova' then
                equip(sets.FlashNova)
                if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(sets.Utility.Weather)
                        end
        end
end
       
function midcast(spell,act)
		if spell.english == 'Ranged' then
			equip(sets.TP.TH)
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
		end
		if buffactive['terror'] or buffactive['stun'] or buffactive['sleep']	then 
					equip(sets.TP.DT)
		end


end

 function status_change(new,old)
        if player.status == 'Engaged' then
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
         elseif command == 'equip TP set' then
                equip(sets.TP[sets.TP.index[TP_ind]])
        elseif command == 'equip Idle set' then
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
        end
end