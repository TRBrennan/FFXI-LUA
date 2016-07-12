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
       
        sets.Idle.Standard = {ammo="Happo Shuriken",
                                      head="Rawhide Mask",neck="Sanctity Necklace", ear1="Genmei earring", ear2="Infused Earring",
                                      body="Emet harness +1",hands="Herculean Gloves",ring1="Warden's ring",ring2="Gelatinous Ring +1",
                                      waist="Flume Belt +1",legs="Herculean Trousers",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}, back ="Solemnity Cape"}
                                                 
        sets.Idle.DT = {main="Terra's Staff",sub="Umbra strap",ammo="Amar Cluster",
                                head="Rawhide Mask",neck="Loricate Torque +1", ear1="Etiolation earring", ear2="Handler's earring +1",
                                        body="Emet harness +1",hands="Herculean Gloves",ring1="Warden's ring",ring2="Gelatinous Ring +1",
                                        back="Solemnity Cape",waist="Flume belt +1",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
										
							
        --TP Sets--
        sets.TP = {}
 
           sets.TP.index = {'Standard', 'AccuracyLite', 'AccuracyFull', 'DT', 'DTAccuracy'}
                --1=Standard, 2 = AccuracyLite, 3=AccuracyFull, 4=DT, 5=DTAccuracy--
				
                TP_ind = 1
				sets.TP.Standard = { ammo="Happo Shuriken",
                                    head="Adhemar Bonnet", neck="Yarak Torque", ear1="Brutal Earring",ear2="Cessance Earring",
                                    body="Adhemar Jacket",hands="Adhemar Wristbands",ring1="Petrov Ring",ring2="Epona's Ring",
                                    back="Yokaze mantle",waist="windbuffet belt +1",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                       
                                                       
                sets.TP.AccuracyLite = {ammo="Happo Shuriken",
                                        head="Adhemar Bonnet",neck="Yarak Torque", ear1="Suppanomimi", ear2="Cessance Earring",                            
										body="Thaumas coat",hands="Adhemar Wristbands",ring1="Petrov Ring",ring2="Epona's ring",
                                        back="Yokaze mantle",waist="windbuffet belt +1",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}}
       
                sets.TP.AccuracyFull = {ammo="Happo Shuriken",
                                        head="Dampening Tam",neck="Sanctity Necklace", ear1="Dignitary's Earring", ear2="Cessance Earring",
                                        body="Adhemar Jacket",hands="Adhemar Wristbands",ring1="Cacoethic Ring",ring2="Gelatinous Ring +1",
                                        back="Yokaze mantle",waist="Kentarch Belt +1",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}}
                                                       
                sets.TP.DT = {ammo="Happo Shuriken",
                              head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque", ar1="Brutal Earring",ear2="Cessance Earring",
                              body="Emet harness +1",hands="Adhemar Wristbands",ring1="Gelatinous Ring +1",ring2="Petrov Ring",
                              back="Solemnity Cape",waist="Flume belt +1",legs="Herculean Trousers",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}}
                                 
                sets.TP.DTAccuracy = {aammo="Happo Shuriken",
                                      head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque", ar1="Brutal Earring",ear2="Cessance Earring",    
									  body="Emet harness +1",hands="Adhemar Wristbands",ring1="Dark ring",ring2="Gelatinous Ring +1",
                                      back="Yokaze mantle",waist="Flume belt +1",legs="Herculean Trousers",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}}
                                                         
									
       --Weaponskill Sets--
        sets.WS = {}
       
        sets.BladeHi = {}
       
        sets.BladeHi.index = {'Attack'}
        BladeHi_ind = 1
       
        sets.BladeHi.Attack = { ammo="Happo Shuriken",
								head="Adhemar Bonnet",neck="Yarak Torque",ear1="Brutal Earring",ear2="Cessance Earring",
                                            body="Adhemar Jacket",hands="Adhemar Wristbands",ring1="Petrov Ring",ring2="Epona's Ring",
                                            back="Yokaze mantle",waist="Windbuffet Belt+1",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}}	
										  
                                                           
        sets.BladeShun = {}
       
        sets.BladeShun.index = {'Attack'}
        BladeShun_ind = 1
       
                sets.BladeShun.Attack = {ammo="Happo Shuriken",
                                            head="Adhemar Bonnet",neck="Fotia gorget",ear1="Brutal Earring",ear2="Cessance Earring",
                                            body="Adhemar Jacket",hands="Adhemar Wristbands",ring1="Petrov Ring",ring2="Epona's Ring",
                                            back="Yokaze mantle",waist="Fotia belt",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+21','Crit.hit rate+1','DEX+14','Attack+14',}}}		
                                                               
                                                               
        --Magic Burst Sets--
 
        sets.Burst = {}
        sets.Burst.index = {'BA', 'MB'}
        Burst_ind = 1                                                      
                                                               
                                                               
        --Ninja Magic Sets--
        sets.NINMagic = {}
       
		sets.NINMagic.Nuke ={head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}}, neck="Sanctity Necklace", ear2="Friomisi earring", ear1="Hecate's Earring",
							body="Samnuha Coat", hands="Leyline Gloves", ring1="Shiva Ring", ring2 ="Acumen Ring", waist ="Eschan Stone",
							back="Gunslinger's Cape",   legs="Herculean Trousers",  feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}}}
							
	    sets.NINMagic.Utsusemi ={
                              head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque", ar1="Brutal Earring",ear2="Cessance Earring",
                              body="Emet harness +1",hands="Adhemar Wristbands",ring1="Gelatinous Ring +1",ring2="Petrov Ring",
                              back="Solemnity Cape",waist="Flume belt +1",legs="Herculean Trousers",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}}
 
                                              
        --Utility Sets--
        sets.Utility = {}
       
        sets.Utility.Weather = {waist="Hachirin-no-obi",back="Twilight Cape"}
 
        sets.Utility.MB = {head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}},body="Amalric Doublet",ear1="Static Earring",ring1="Locus Ring",ring2="Mujin Band"}
 
       
        sets.Utility.Stoneskin = {head="Haruspex hat",neck="Stone Gorget",ear1="Loquac. earring",ear2="Earthcry earring",
                                                          body="Assim. jubbah +1",hands="Stone Mufflers",ring1="Prolix ring",
                                                          back="Swith cape",waist="Siegel sash",legs="Haven hose",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                         
        sets.Utility.Phalanx = {head="Haruspex hat",neck="Colossus's torque",ear1="Loquac. earring",ear2="Augment. earring",
                                                    body="Assim. jubbah +1",hands="Ayao's gages",ring1="Prolix ring",
                                                        back="Swith cape",waist="Pythia sash +1",legs="Portent pants",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                       
        sets.Utility.Steps = {ammo="Happo Shuriken",
							head="Adhemar Bonnet", body="Adhemar Jacket", hands="Rawhide Gloves",legs=="Samnuha Tights", feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}},  neck="Subtlety Spec.",
							waist="Chaac Belt", left_ear="Heartseeker Earring",right_ear="Dignitary's Earring",  left_ring="Yacuruna Ring",  right_ring="Epona's Ring",  back="Grounded Mantle",}
                                                 
                                                 
        sets.Utility.PDT = {head="Adhemar Bonnet",neck="Loricate Torque",ear1="Etiolation Earring",
                                                body="Iuitl vest",hands="Umuthi gloves",ring1="Dark ring",ring2="Dark ring",
                                                back="Solemnity Cape",waist="Flume belt",legs="Iuitl Tights +1",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                               
        sets.Utility.MDT = {head="Adhemar Bonnet",neck="Loricate Torque",
                                                body="Assim. jubbah +1",hands="Umuthi gloves",ring1="Dark ring",ring2="Dark ring",
                                                back="Solemnity Cape",legs="Quiahuiz trousers",feet="Luhlaza charuqs"}
  
		sets.Utility.Doomed = {waist="Gishdubar Sash", ring1 ="Saida Ring"}
        --Job Ability Sets--
       
        sets.JA = {}
                                                   

        --Precast Sets--
        sets.precast = {}
       
        sets.precast.FC = {}
       
       sets.precast.FC.Standard = { ammo="Happo Shuriken",
							head="Herculean Helm",  body="Taeon Tabard",  hands="Leyline Gloves",   legs="Orvail Pants +1",
						    feet="Amalric Nails",  neck="Voltsurge Torque", waist="Witful Belt", left_ear="Etiolation Earring",
						    right_ear="Loquac. Earring", left_ring="Prolix Ring", right_ring="Weatherspoon ring", back="Swith Cape"}
       
end
 
  
function precast(spell)
        if spell.action_type == 'Magic' then
                equip(sets.precast.FC.Standard)
         end
       
       
        if spell.english == 'Blade: Hi' then
                equip(sets.BladeHi[sets.BladeHi.index[BladeHi_ind]])
        end
       
        if spell.english == 'Blade: Shun' then
                equip(sets.BladeShun[sets.BladeShun.index[BladeShun_ind]])
        end
		
        if spell.english == 'Box Step' then
                equip(sets.Utility.Steps)
        end
       
end
       
function midcast(spell,act)
		if spell.skill =='Ninjutsu' then
			equip(sets.NINMagic.Nuke)
			 if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(set_combine(sets.NINMagic.Nuke,sets.Utility.Weather))
                        end
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
        end
 
        if spell.english == 'Utsusemi: Ni'  or spell.english == 'Utsusemi: San' then
                equip(sets.NINMagic.Utsusemi)
        end
end	
 
function aftercast(spell)
        if player.status == 'Engaged' then
                equip(sets.TP[sets.TP.index[TP_ind]])
				if buffactive['Doom'] then
					equip(set_combine(sets.TP[sets.TP.index[TP_ind]],sets.Utility.Doomed))
					status_change(player.status)
				end
				if buffactive['Terror']	then 
					equip(sets.TP.DT)
					status_change(player.status)
				end
		else
                equip(sets.Idle[sets.Idle.index[Idle_ind]])					
				if buffactive['Doom'] then
					equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]],sets.Utility.Doomed))
					status_change(player.status)
				end
				if buffactive['Terror']	then 
					equip(sets.TP.DT)
					status_change(player.status)
				end
        end
end

 
function status_change(new,old)
        if player.status == 'Engaged' then
                equip(sets.TP[sets.TP.index[TP_ind]])
				if buffactive['Doom'] then
					equip(set_combine(sets.TP[sets.TP.index[TP_ind]],sets.Utility.Doomed))
					status_change(player.status)
				end
				if buffactive['Terror']	then 
					equip(sets.TP.DT)
					status_change(player.status)
				end
        else
                equip(sets.Idle[sets.Idle.index[Idle_ind]])					
				if buffactive['Doom'] then
					equip(set_combine(sets.Idle[sets.Idle.index[Idle_ind]],sets.Utility.Doomed))
					status_change(player.status)
				end
				if buffactive['Terror']	then 
					equip(sets.TP.DT)
					status_change(player.status)
				end
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