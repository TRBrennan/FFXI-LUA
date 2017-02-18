function get_sets()
 
        send_command('bind f9 gs c toggle TP set')
        send_command('bind f10 gs c toggle Idle set')
		send_command('bind f11 gs c toggle Weapons')
         function file_unload()
    
        send_command('unbind ^f9')
        send_command('unbind ^f10')
		send_command('unbind ^f11')

        send_command('unbind !f9')
        send_command('unbind !f10')
		send_command('unbind !f11')
		
        send_command('unbind f9')
        send_command('unbind f10')
		send_command('unbind f11')
 
        end    
		
		--Weapons--
		
		sets.Weapons = {}
		
		sets.Weapons.Index = {'GS', 'GA', 'Polearm','AxeShield', 'SwordShield', 'ClubShield'}
		Weapons_ind = 1
		
		sets.Weapons.GS = {main ="Ragnarok", sub ="Utu Grip"}
		
		sets.Weapons.GA = {main ="Aganoshe", sub ="Utu Grip"}
		
		sets.Weapons.Polearm = {main ="Blurred Lance", sub ="Utu Grip"}
		
		sets.Weapons.AxeShield = {main ="Purgation", sub ="Blurred Shield"}
		
		sets.Weapons.SwordShield = {main ="Tanmogayi +1", sub ="Blurred Shield"}
		
		sets.Weapons.ClubShield = {main ="Loxotic Mace", sub ="Blurred Shield"}
               
        --Idle Sets--  
        sets.Idle = {}
       
        sets.Idle.index = {'Standard','DT'}
        Idle_ind = 1                  
       
        sets.Idle.Standard = {ammo="Staunch Tathlum",
                                      head={ name="Valorous Mask", augments={'INT+6','"Dbl.Atk."+1','"Treasure Hunter"+1','Accuracy+6 Attack+6','Mag. Acc.+16 "Mag.Atk.Bns."+16',}},neck="Sanctity Necklace", ear1="Genmei earring", ear2="Infused Earring",
                                      body="Souveran Cuirass",hands="Sulevia's Gauntlets +1",ring1="Defending ring",ring2="Vocane Ring",
                                      waist="Flume Belt +1",legs="Sulevia's Cuisses +1",feet="Hermes' Sandals", back ="Solemnity Cape"}
                                                 
        sets.Idle.DT = { ammo="Staunch Tathlum", 
							head="Sulevia's Mask +1",neck="Loricate Torque +1", ar1="Brutal Earring",ear2="Cessance Earring",
                              body="Souveran Cuirass",hands="Sulevia's Gauntlets +1",ring1="Vocane Ring",ring2="Defending  Ring",
                              back="Solemnity Cape",waist="Flume belt +1",legs="Sulevia's Cuisses +1",feet="Sulevia's Leggings +1"}
										
							
        --TP Sets--
        sets.TP = {}
 
           sets.TP.index = {'Standard', 'AccuracyLite', 'AccuracyFull', 'DT', 'DTAccuracy'}
                --1=Standard, 2 = AccuracyLite, 3=AccuracyFull, 4=DT, 5=DTAccuracy--
				
                TP_ind = 1
				sets.TP.Standard = {ammo="Ginsen",
                                    head="Boii Mask +1", neck="Lissome necklace", ear1="Cessance Earring",ear2="Telos Earring",
                                    body="Emicho Haubert",hands="Emicho Gauntlets",ring1="Niqmaddu Ring",ring2="Chirich Ring",
                                    back="Cichol's Mantle",waist="Ioskeha Belt",legs={ name="Odyssean Cuisses", augments={'Accuracy+16 Attack+16','"Store TP"+7','DEX+2','Attack+8',}},
									feet="Valorous Greaves"}
                                                       
                                                       
                sets.TP.AccuracyLite = {ammo="Seethng bomblet +1",
                                        head="Boii Mask +1", neck="Lissome necklace", ear1="Cessance Earring",ear2="Telos Earring",
										body="Emicho Haubert",hands="Emicho Gauntlets",ring2="Petrov Ring",ring1="Niqmaddu Ring",
                                        back="Cichol's Mantle",waist="Ioskeha Belt",legs={ name="Odyssean Cuisses", augments={'Accuracy+16 Attack+16','"Store TP"+7','DEX+2','Attack+8',}},
										feet="Valorous Greaves"}
       
                sets.TP.AccuracyFull = {ammo="Seething Bomblet +1",
                                        head={ name="Valorous Mask", augments={'Accuracy+30','"Store TP"+4','AGI+10','Attack+13',}}
										,neck="Sanctity Necklace", ear1="Dignitary's Earring", ear2="Telos Earring",
                                        body="Emicho Haubert",hands="Emicho Gauntlets",ring1="Cacoethic Ring",ring2="Chirich Ring",
                                        back="Cichol's Mantle",waist="Ioskeha Belt",legs={ name="Odyssean Cuisses", augments={'Accuracy+16 Attack+16','"Store TP"+7','DEX+2','Attack+8',}},
										feet="Valorous Greaves"}
                                                       
                sets.TP.DT = {ammo="Staunch Tathlum",
                              head="Sulevia's Mask +1",neck="Loricate Torque +1", ear1="Cessance Earring",ear2="Telos Earring",
                              body="Sulevia's Platemail +1",hands="Sulevia's Gauntlets +1",ring1="Vocane Ring",ring2="Defending  Ring",
                              back="Solemnity Cape",waist="Flume belt +1",legs="Sulevia's Cuisses +1",feet="Sulevia's Leggings +1"}
                                 
                sets.TP.DTAccuracy = {ammo="Ginsen",
                                      head="Sulevia's Mask +1",neck="Lissome Necklace", ear2="Telos Earring",ear1="Cessance Earring",    
									  body="Sulevia's Platemail +1",hands="Sulevia's Gauntlets +1",ring1="Niqmaddu Ring",ring2="Rajas Ring",
                                      back="Cichol's Mantle",waist="Flume belt +1",legs="Sulevia's Cuisses +1",feet="Sulevia's Leggings +1"}
                                                         
									
       --Weaponskill Sets--
        sets.WS = {}
       
        sets.Resolution = {}
		
		sets.Resolution.Index ={'Attack'}
		
		Reso_ind= 1
		
		sets.Resolution.Attack = {ammo="Seething Bomblet +1",
                                    head="Boii Mask +1", neck="Fotia Gorget", ear1="Moonshade Earring",ear2="Telos Earring",
                                    body="Argosy Hauberk",hands="Argosy Mufflers",ring1="Niqmaddu Ring",ring2="Rufescent Ring",
                                    back="Cichol's Mantle",waist="Fotia Belt",legs="Argosy Breeches",feet="Argosy Sollerets +1"}
		
                                                           
        sets.Ukkos = {} 
		sets.Ukkos.Index ={'Attack'}
		
		Ukkos_Ind = 1
		
		sets.Ukkos.Atack = {ammo="Yetshila",
                                    head="Boii Mask +1", neck="Fotia Gorget", ear1="Moonshade Earring",ear2="Telos Earring",
                                    body="Argosy Hauberk",hands="Argosy Mufflers",ring1="Niqmaddu Ring",ring2="Begrudging Ring",
                                    back="Cichol's Mantle",waist="Grunfeld Rope",legs="Argosy Breeches",feet="Thereoid Greaves"}

		sets.KJ = {}
		sets.KJ.Index ={'Attack'}
		
		KJ_Ind= 1
		
		sets.KJ.Attack = {ammo="Seething Bomblet +1",
                                    head="Boii Mask +1", neck="Fotia Gorget", ear1="Moonshade Earring",ear2="Telos Earring",
                                    body="Argosy Hauberk",hands="Argosy Mufflers",ring1="Niqmaddu Ring",ring2="Rufescent Ring",
                                    back="Cichol's Mantle",waist="Fotia Belt",legs="Argosy Breeches",feet="Argosy Sollerets +1"}
									
    	sets.Upheavel = {}
		sets.Upheavel.Index ={'Attack'}
		Upheavel_ind= 1
		sets.Upheavel.Attack = {ammo="Brigantia Pebble", head="Sulevia's Mask +1",neck="Tjukurrpa medal", ear1="Moonshade Earring",ear2="Telos Earring",
									  body="Sulevia's Platemail +1",hands="Sulevia's Gauntlets +1",ring1="Petrov Ring",ring2="Niqmaddu Ring",
                                      back="Cichol's Mantle",waist="Fotia Belt",legs="Sulevia's Cuisses +1",feet="Sulevia's Leggings +1"}
        
		sets.SB ={}
		sets.SB.Attack = {ammo="Seething Bomblet +1",
                                    head="Boii Mask +1", neck="Caro Necklace", ear1="Ishvara Earring",ear2="Moonshade Earring",
                                    body="Argosy Hauberk",hands="Argosy Mufflers",ring1="Niqmaddu Ring",ring2="Rufescent Ring",
                                    back="Cichol's Mantle",waist="Grunfeld Rope",legs="Argosy Breeches",feet="Argosy Sollerets +1" }
        --Ninja Magic Sets--
        sets.NINMagic = {}
       				
	    sets.NINMagic.Utsusemi ={
                              head="Dampening Tam",neck="Loricate Torque +1", ear1="Brutal Earring",ear2="Cessance Earring",
                              body="Emet harness +1",hands="Sulevia's Gauntlets +1",ring1="Vocane Ring",ring2="Petrov Ring",
                              back="Solemnity Cape",waist="Flume belt +1",legs="Herculean Trousers",feet="Valorous Greaves"}
 
                                              
        --Utility Sets--
        sets.Utility = {}
       
        sets.Utility.Weather = {waist="Hachirin-no-obi",back="Twilight Cape"}
 
        sets.Utility.MB = {head="Herculean Helm",body="Amalric Doublet",ear1="Static Earring",ring1="Locus Ring",ring2="Mujin Band"}
 
       
        sets.Utility.Stoneskin = {head="Haruspex hat",neck="Stone Gorget",ear1="Loquac. earring",ear2="Earthcry earring",
                                                          body="Assim. jubbah +1",hands="Stone Mufflers",ring1="Rahab ring",
                                                          back="Swith cape",waist="Siegel sash",legs="Haven hose",feet="Valorous Greaves"}
                                                         
        sets.Utility.Phalanx = {head="Haruspex hat",neck="Colossus's torque",ear1="Loquac. earring",ear2="Augment. earring",
                                                    body="Assim. jubbah +1",hands="Ayao's gages",ring1="Rahab ring",
                                                        back="Swith cape",waist="Pythia sash +1",legs="Portent pants",feet="Valorous Greaves"}
                                                       
        sets.Utility.Steps = {ammo="Ginsen",
							head="Boii Mask +1", body="Emicho Haubert", hands="Rawhide Gloves",legs=="Odyssean Cuisses", feet="Valorous Greaves", neck="Subtlety Spec.",waist="Chaac Belt", left_ear="Heartseeker Earring",right_ear="Dignitary's Earring", left_ring="Yacuruna Ring", right_ring="Cacoethic Ring",  back="Cichol's Mantle",}
                                                 
		sets.Utility.Doomed = {waist="Gishdubar Sash", ring1 ="Saida Ring"}
		
		sets.Utility.Enmity = {ammo="Sapience Orb",
								ear2 ="Friomisi Earring", 
								back ="Weard Mantle",
								waist ="Kasiri Belt",
								ring2="Supershear Ring",
								neck = "Unmoving Collar",
								hands="Souveran Handschuhs",
								feet="Souveran Schuhs",
								body="Souveran Cuirass",
								ring1="Petrov Ring",
								legs="Odyssean Cuisses",
								head="Rabid Visor"}
		
		sets.Utility.Sleeping = {neck="Opo-Opo Necklace"}
        --Job Ability Sets--
       
        sets.JA = {}
               
		sets.JA.Berserk ={back = "Cichol's Mantle",feet = "Warrior's Calligae +2"}

		sets.JA.Aggressor = { body = "Warrior's Lorcia +2"}
		
		sets.JA.Warcry = {head = "Agoge Mask"}		
		
		sets.JA.MightyStrikes = {hands = "Warrior's Muffler +2"}
		
		sets.JA.Ret ={feet = "Ravager's Calligae +1"}
		
		sets.JA.BloodRage ={body ="Ravager's Lorica +2"}
		
		sets.JA.Tomahawk = {ammo = "Throwing Tomahawk",feet = "Warrior's Calligae +2"}

		sets.JA.Restraint ={}
        --Precast Sets--
        sets.precast = {}
       
        sets.precast.FC = {}
       
       sets.precast.FC.Standard = { ammo="Sapience Orb",
							head="Carmine Mask", 
							body="Odyssean Chestplate",
							hands="Leyline Gloves",
							legs={ name="Odyssean Cuisses", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','"Fast Cast"+3','INT+1','Mag. Acc.+9','"Mag.Atk.Bns."+3',}},
						    feet="Odyssean Greaves",
							neck="Voltsurge Torque",
							waist="Witful Belt",
							left_ear="Etiolation Earring",
						    right_ear="Loquac. Earring",
							left_ring="Rahab Ring",
							right_ring="Kishar Ring", 
							back="Swith Cape"}
       
end
 
  
function precast(spell)
        if spell.action_type == 'Magic' then
                equip(sets.precast.FC.Standard)
         end
              
        if spell.english == 'Resolution' or spell.english == 'Shockwave' or spell.english == 'Stardiver' or spell.english == 'Ruinator' then
                equip(sets.Resolution.Attack)
        end
       
        if spell.english == "Ukko's Fury" then
                equip(sets.Ukkos.Attack)
        end
		
		if spell.english == 'Savage Blade' or spell.english == 'Ground Strike' or spell.english == 'Steel Cyclone' then
			equip(sets.SB.Attack)
		end
		
		if spell.english == "King's Justice"  then
                equip(sets.KJ.Attack)
        end
		
		if spell.english == "Upheaval" or spell.english =='Scourge' then
			equip(sets.Upheavel.Attack)
		end
		
		if spell.english =='Berserk' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.Berserk))
		end
		
		if spell.english =='Aggressor' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.Aggressor))
		end
		
		if spell.english =='Warcry' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.Warcry))
		end
		
		if spell.english =='Tomahawk' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.Tomahawk))
		end
		
		if spell.english =='Bloodrage' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.BloodRage))
		end
		
		if spell.english =='Mighty Strikes' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.MightyStrikes))
		end
		if spell.english =='Provoke' then
			equip(sets.Utility.Enmity)
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
				if buffactive['doom'] then
					equip(sets.Utility.Doom)
				end
				if buffactive['terror'] or buffactive['stun'] or buffactive['sleep']	then 
					equip(sets.TP.DT)
				end

		else
                equip(sets.Idle[sets.Idle.index[Idle_ind]])					
					if buffactive['doom'] then
					equip(sets.Utility.Doom)
				end
				if buffactive['terror'] or buffactive['stun'] or buffactive['sleep']	then 
					equip(sets.TP.DT)
				end

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
		elseif command == 'toggle Weapons' then
                Weapons_ind = Weapons_ind +1
               if Weapons_ind > #sets.Weapons.Index then Weapons_ind = 1 end
                send_command('@input /echo <----- Weapons Set changed to '..sets.Weapons.Index[Weapons_ind]..' ----->')
                equip(sets.Weapons[sets.Weapons.Index[Weapons_ind]])
        elseif command == 'equip TP set' then
                equip(sets.TP[sets.TP.index[TP_ind]])
        elseif command == 'equip Idle set' then
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
        end
end
