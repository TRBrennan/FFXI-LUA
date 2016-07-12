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
       
        sets.Idle.Standard = {ammo="Staunch Tathlum",
                                      head="Rawhide Mask",neck="Sanctity Necklace", ear1="Genmei earring", ear2="Infused Earring",
                                      body="Emet harness +1",hands="Garden Bangles",ring1="Warden's ring",ring2="Gelatinous ring +1",
                                      waist="Flume Belt +1",legs="Herculean Trousers",feet="Valorous Greaves", back ="Solemnity Cape"}
                                                 
        sets.Idle.DT = {main="Terra's Staff",sub="Umbra strap",ammo="Amar Cluster",
                                head="Rawhide Mask",neck="Loricate Torque +1", ear1="Etiolation earring", ear2="Handler's earring +1",
                                        body="Emet harness +1",hands="Sulevia's Gauntlets +1",ring1="Dark ring",ring2="Succor ring",
                                        back="Solemnity Cape",waist="Flume belt +1",legs="Odyssean Cuisses",feet="Valorous Greaves"}
										
							
        --TP Sets--
        sets.TP = {}
 
           sets.TP.index = {'Standard', 'AccuracyLite', 'AccuracyFull', 'DT', 'DTAccuracy'}
                --1=Standard, 2 = AccuracyLite, 3=AccuracyFull, 4=DT, 5=DTAccuracy--
				
                TP_ind = 1
				sets.TP.Standard = {ammo="Ginsen",
                                    head="Boii Mask +1", neck="Lissome necklace", ear1="Brutal Earring",ear2="Cessance Earring",
                                    body="Emicho Haubert",hands="Emicho Gauntlets",ring1="Petrov Ring",ring2="Rajas Ring",
                                    back="Cichol's Mantle",waist="Ioskeha Belt",legs="Odyssean Cuisses",feet="Valorous Greaves"}
                                                       
                                                       
                sets.TP.AccuracyLite = {ammo="Seethng bomblet +1",
                                        head="Boii Mask +1", neck="Lissome necklace", ear1="Brutal Earring",ear2="Cessance Earring",
										body="Emicho Haubert",hands="Emicho Gauntlets",ring1="Petrov Ring",ring2="Cacoethic Ring",
                                        back="Cichol's Mantle",waist="Ioskeha Belt",legs="Odyssean Cuisses",feet="Valorous Greaves"}
       
                sets.TP.AccuracyFull = {ammo="Seething Bomblet +1",
                                        head="Sulevia's Mask +1",neck="Sanctity Necklace", ear1="Dignitary's Earring", ear2="Cessance Earring",
                                        body="Sulevia's Platemail +1",hands="Emicho Gauntlets",ring1="Cacoethic Ring",ring2="Etana Ring",
                                        back="Cichol's Mantle",waist="Ioskeha Belt",legs="Odyssean Cuisses",feet="Valorous Greaves"}
                                                       
                sets.TP.DT = {ammo="Ginsen",
                              head="Sulevia's Mask +1",neck="Loricate Torque +1", ar1="Brutal Earring",ear2="Cessance Earring",
                              body="Emet harness +1",hands="Sulevia's Gauntlets +1",ring1="Gelatinous Ring +1",ring2="Petrov Ring",
                              back="Solemnity Cape",waist="Flume belt +1",legs="Herculean Trousers",feet="Valorous Greaves"}
                                 
                sets.TP.DTAccuracy = {aammo="Ginsen",
                                      head="Sulevia's Mask +1",neck="Loricate Torque +1", ar1="Brutal Earring",ear2="Cessance Earring",    
									  body="Emet harness +1",hands="Sulevia's Gauntlets +1",ring1="Dark ring",ring2="Gelatinous Ring +1",
                                      back="Cichol's Mantle",waist="Flume belt +1",legs="Herculean Trousers",feet="Valorous Greaves"}
                                                         
									
       --Weaponskill Sets--
        sets.WS = {}
       
        sets.Resolution = {}
		
		sets.Resolution.Index ={'Attack'}
		
		Reso_ind= 1
		
		sets.Resolution.Attack = {ammo="Seething Bomblet +1",
                                    head="Boii Mask +1", neck="Fotia Gorget", ear1="Brutal Earring",ear2="Cessance Earring",
                                    body="Argosy Hauberk",hands="Argosy Mufflers",ring1="Petrov Ring",ring2="Rajas Ring",
                                    back="Cichol's Mantle",waist="Fotia Belt",legs="Odyssean Cuisses",feet="Valorous Greaves"}
		
                                                           
        sets.Ukkos = {} 
		sets.Ukkos.Index ={'Attack'}
		
		Ukkos_Ind = 1
		
		sets.Ukkos.Atack = {ammo="Seething Bomblet +1",
                                    head="Boii Mask +1", neck="Fotia Gorget", ear1="Brutal Earring",ear2="Cessance Earring",
                                    body="Argosy Hauberk",hands="Argosy Mufflers",ring1="Petrov Ring",ring2="Begrudging Ring",
                                    back="Cichol's Mantle",waist="Fotia Belt",legs="Odyssean Cuisses",feet="Valorous Greaves"}

		sets.KJ = {}
		sets.KJ.Index ={'Attack'}
		
		KJ_Ind= 1
		
		sets.KJ.Attack = {ammo="Seething Bomblet +1",
                                    head="Boii Mask +1", neck="Fotia Gorget", ear1="Brutal Earring",ear2="Cessance Earring",
                                    body="Argosy Hauberk",hands="Argosy Mufflers",ring1="Petrov Ring",ring2="Rajas Ring",
                                    back="Cichol's Mantle",waist="Fotia Belt",legs="Odyssean Cuisses",feet="Valorous Greaves"}
                                                                                                            
        --Ninja Magic Sets--
        sets.NINMagic = {}
       				
	    sets.NINMagic.Utsusemi ={
                              head="Dampening Tam",neck="Loricate Torque +1", ar1="Brutal Earring",ear2="Cessance Earring",
                              body="Emet harness +1",hands="Sulevia's Gauntlets +1",ring1="Gelatinous Ring +1",ring2="Petrov Ring",
                              back="Solemnity Cape",waist="Flume belt +1",legs="Herculean Trousers",feet="Valorous Greaves"}
 
                                              
        --Utility Sets--
        sets.Utility = {}
       
        sets.Utility.Weather = {waist="Hachirin-no-obi",back="Twilight Cape"}
 
        sets.Utility.MB = {head="Herculean Helm",body="Amalric Doublet",ear1="Static Earring",ring1="Locus Ring",ring2="Mujin Band"}
 
       
        sets.Utility.Stoneskin = {head="Haruspex hat",neck="Stone Gorget",ear1="Loquac. earring",ear2="Earthcry earring",
                                                          body="Assim. jubbah +1",hands="Stone Mufflers",ring1="Prolix ring",
                                                          back="Swith cape",waist="Siegel sash",legs="Haven hose",feet="Valorous Greaves"}
                                                         
        sets.Utility.Phalanx = {head="Haruspex hat",neck="Colossus's torque",ear1="Loquac. earring",ear2="Augment. earring",
                                                    body="Assim. jubbah +1",hands="Ayao's gages",ring1="Prolix ring",
                                                        back="Swith cape",waist="Pythia sash +1",legs="Portent pants",feet="Valorous Greaves"}
                                                       
        sets.Utility.Steps = {ammo="Ginsen",
							head="Boii Mask +1", body="Emicho Haubert", hands="Rawhide Gloves",legs=="Odyssean Cuisses", feet="Valorous Greaves", neck="Subtlety Spec.",waist="Chaac Belt", left_ear="Heartseeker Earring",right_ear="Dignitary's Earring", left_ring="Yacuruna Ring", right_ring="Cacoethic Ring",  back="Cichol's Mantle",}
                                                 
		sets.Utility.Doomed = {waist="Gishdubar Sash", ring1 ="Saida Ring"}
        --Job Ability Sets--
       
        sets.JA = {}
               
		sets.JA.Berserk ={back = "Cichol's Mantle",feet = "Warrior's Calligae +2"}

		sets.JA.Aggressor = { body = "Warrior's Lorcia +2"}
		
		sets.JA.Warcry = {head = "Warrior's Mask +2"}
		
		
		sets.JA.MightyStrikes = {hands = "Warrior's Muffler +2"}
		
		sets.JA.Ret ={}
		
		sets.JA.BloodRage ={body ="Ravager's Lorica +2"}
		
		sets.JA.Tomahawk = {ammo = "Throwing Tomahawk",feet = "Warrior's Calligae +2"}

		sets.JA.Restraint ={}
        --Precast Sets--
        sets.precast = {}
       
        sets.precast.FC = {}
       
       sets.precast.FC.Standard = { ammo="Sapience Orb",
							head="Herculean Helm",  body="Taeon Tabard",  hands="Leyline Gloves",   legs="Orvail Pants +1",
						    feet="Amalric Nails",  neck="Voltsurge Torque", waist="Witful Belt", left_ear="Etiolation Earring",
						    right_ear="Loquac. Earring", left_ring="Prolix Ring", right_ring="Weatherspoon ring", back="Swith Cape"}
       
end
 
  
function precast(spell)
        if spell.action_type == 'Magic' then
                equip(sets.precast.FC.Standard)
         end
              
        if spell.english == 'Resolution' or spell.english == 'Shockwave' or spell.english == 'Stardriver' then
                equip(sets.Resolution[sets.Resolution.Index[Resolution_Ind]])
        end
       
        if spell.english == "Ukko's Fury" then
                equip(sets.Ukkos[sets.Ukkos.Index[Ukkos_Ind]])
        end
		
		if spell.english == "King's Justice" then
                equip(sets.KJ[sets.KJ.Index[KJ_Ind]])
        end
		
		if spell.english =='Berserk' then
			equip(sets.JA.Berserk)
		end
		
		if spell.english =='Aggressor' then
			equip(sets.JA.Aggressor)
		end
		
		if spell.english =='Warcry' then
			equip(sets.JA.Warcry)
		end
		
		if spell.english =='Tomahawk' then
			equip(sets.JA.Tomahawk)
		end
		
		if spell.english =='Bloodrage' then
			equip(sets.JA.BloodRage)
		end
		
		if spell.english =='Mighty Strikes' then
			equip(sets.JA.MightyStrikes)
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