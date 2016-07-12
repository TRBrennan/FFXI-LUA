--To toggle gearsets:
--Main command: //gs c toggle x set       where x = set name variable. Variables are as follows: --
--Idle sets: Idle, TP sets: TP--
--Resolution sets: Res, Requiescat sets: Req--

 
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
               
                sets.Idle.index = {'Standard', 'Cleave'}
               
                Idle_ind = 1
                               
                sets.Idle.Standard = {ammo="Homiliary",
                                      head="Rawhide Mask",neck="Sanctity Necklace", ear1="Genmei earring",ear2="Infused Earring",
                                      body="Runeist coat +1",hands="Herculean gloves",ring1="Warden's ring",ring2="Gelatinous Ring +1",
                                      back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+3','Enmity+10',}},
									  waist="Fucho-no-obi",legs="Carmine Cuisses",feet={ name="Herculean Boots", augments={'CHR+6','STR+14','"Refresh"+1','Mag. Acc.+14 "Mag.Atk.Bns."+14',}}}
									  
			    sets.Idle.Cleave = { ammo ="Staunch Tathlum",
                                      head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque +1", ear1="Etiolation Earring",ear2="Infused Earring",
                                      body="Emet harness +1",hands="Runeist mitons +1",ring1="Warden's ring",ring2="Gelatinous Ring +1",
                                      back="Evasionist's cape",waist="Flume Belt +1",legs="Erilaz Leg Guards +1",feet="Erilaz Greaves +1"}
                                  
                                  
   			   --TP Sets--
                sets.TP = {}
        
                sets.TP.index = {'Standard', 'Tank', 'DT', 'DTAccuracy', 'DW'}
                --1=Standard, 2 = Tank,3=DT, 4=DTAccuracy, 5=DW,--
 			   TP_ind = 1
				sets.TP.Standard = { sub ="Nepenthe Grip",ammo="Ginsen",
                                    head="Adhemar Bonnet", neck="Lissome necklace", ear1="Brutal Earring", ear2="Cessance earring", 
                                    body="Herculean Vest",hands="Adhemar Wristbands",ring1="Cacoethic Ring",ring2="Epona's Ring",
                                    back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
									waist="Ioskeha Belt",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                       
                                                       
                sets.TP.Tank = {sub="Refined Grip +1",ammo="Staunch Tathlum",
                                        head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque +1", ear1="Genmei Earring", ear2="Etiolation Earring",                            
										body="Erilaz Surcoat +1",hands="Kurys Gloves",ring1="Warden's ring",ring2="Gelatinous Ring +1",
                                        back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+3','Enmity+10',}},
										waist="Flume Belt +1",legs="Erilaz Leg Guards +1",feet="Erilaz Greaves +1"}
                                                       
                sets.TP.DT = {ammo="Amar Cluster",
                              head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque +1", ear1="Genmei Earring", ear2="Cessance earring", 
                              body="Emet harness +1",hands="Kurys Gloves",ring1="Dark ring",ring2="Petrov Ring",
                              back="Solemnity Cape",waist="Flume belt +1",legs="Erilaz Leg Guards +1",feet="Erilaz Greaves +1"}
                                 
                sets.TP.DTAccuracy = {ammo="Amar Cluster",
                                      head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque +1", ear1="Genmei Earring", ear2="Cessance earring",    
									  body="Emet harness +1",hands="Kurys Gloves",ring1="Cacoethic ring",ring2="Gelatinous Ring +1",
                                      back="Evasionist's Cape",waist="Flume belt +1",legs="Erilaz Leg Guards +1",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                         
                 sets.TP.DW = {ammo="Honed tathlum",
                                    head="Adhemar Bonnet", neck="Lissome Necklace", ear1="Suppanomimi", ear2="Cessance earring", 
                                    body="Adhemar Jacket",hands="Adhemar Wristbands",ring1="Cacoethic Ring",ring2="Epona's Ring",
                                    back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
									waist="Ioskeha Belt",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }                                                        
                                                         
                                                         
                                                         
                --Weaponskill Sets--
                sets.WS = {}
       
                sets.Resolution = {}
       
                sets.Resolution.index = {'Attack'}
                Resolution_ind = 1
       
                sets.Resolution.Attack = {ammo="Seething Bomblet +1",
                                          head="Adhemar Bonnet",neck="Fotia gorget",ear1="Brutal Earring",ear2="Cessance Earring",
                                          body="Herculean Vest",hands="Adhemar Wristbands",ring1="Petrov Ring",ring2="Epona's ring",
                                          back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
										  waist="Fotia belt",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                                 
											
				sets.Dimidiation = {}
       
                sets.Dimidiation.index = {'Attack'}
                Dimidiation_ind = 1
                                                                        
                sets.Dimidiation.Attack = {ammo="Jukukik Feather",
                                            head="Adhemar Bonnet",neck="Caro Necklace",ear1="Brutal Earring",ear2="Cessance Earring",
                                            body="Herculean Vest",hands="Meg. Gloves +1",ring1="Petrov Ring",ring2="Epona's ring",
                                            back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
										    waist="Grunfeld Rope",legs={ name="Herculean Trousers", augments={'Attack+7','Weapon skill damage +4%','Accuracy+15',}},feet={ name="Herculean Boots", augments={'Accuracy+21','Crit.hit rate+1','DEX+14','Attack+14',}} }							
                                                         
                sets.Requiescat = {}
       
                sets.Requiescat.index = {'Attack'}
                Requiescat_ind = 1
               
                sets.Requiescat.Attack = {ammo="Seething Bomblet +1",
                                          head="Adhemar Bonnet",neck="Fotia gorget",ear1="Brutal earring",ear2="Moonshade earring",
                                          body="Wayfarer robe",hands="Wayfarer cuffs",ring1="Petrov Ring",ring2="Aquasoul ring",
                                          back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
										  waist="Fotia belt",legs="Quiahuiz leggings",feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}}}
                                                                 

                sets.FellCleave = {}
       
                sets.FellCleave.index = {'Attack'}
                FellCleave_ind = 1
       
                sets.FellCleave.Attack = {ammo="Seething Bomblet +1",
                                          head="Adhemar Bonnet",neck="Fotia gorget",ear1="Brutal Earring",ear2="Cessance Earring",
                                          body="Herculean Vest",hands="Adhemar Wristbands",ring1="Petrov Ring",ring2="Epona's ring",
                                          back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
										  waist="Fotia belt",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }                       
                                                                         
                sets.SavageBlade = {}
       
                sets.SavageBlade.index = {'Attack'}
                SavageBlade_ind = 1
       
                sets.SavageBlade.Attack = {ammo="Seething Bomblet +1",
                                          head="Adhemar Bonnet",neck="Caro Necklace",ear1="Brutal Earring",ear2="Cessance Earring",
                                          body="Herculean Vest",hands="Meg. Gloves +1",ring1="Petrov Ring",ring2="Epona's ring",
                                          back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
										  waist="Grunfeld Rope",legs={ name="Herculean Trousers", augments={'Attack+7','Weapon skill damage +4%','Accuracy+15',}},
										  feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}}            
                                                                         
                --Utility Sets--
                sets.Utility = {}
                                                                       
                sets.Utility.Phalanx = {ammo ="Sapience Orb", head="Futhark bandeau +1",neck="Incanter's Torque",ear1 ="Lifestorm Earring", ear1="Genmei earring",
                                            body="Emet harness +1",hands="Kurys Gloves", waist ="Olympus Sash", ring1='Begrudging Ring', ring2='Supershear Ring',
                                            legs="Carmine Cuisses",feet="Erilaz Greaves +1", back="Evasionist's cape"}
                                                         
                sets.Utility.Regen = {head="Runeist Bandeau",neck="Incanter's Torque",ear1="Genmei earring",ear2="Augment. earring",
                                      body="Futhark coat",hands="Runeist mitons +1",ring1="Prolix ring", ring2='Supershear Ring',
                                      back="Swith cape",waist="Pythia sash +1",legs="Futhark trousers",feet="Runeist bottes"}
                                                         
                sets.Utility.SID = {ammo ="Staunch Tathlum", head="Herculean Helm",neck="Incanter's Torque",ear1="Genmei earring", ear2 = "Halasz Earring",
                                         body="Emet Harness +1",hands="Herculean Gloves",ring1="Evanescence Ring", ring2='Supershear Ring',
                                         back="Evasionist cape",waist="Flume Belt +1",legs="Carmine Cuisses",feet="Erilaz Greaves +1" }
										 
				sets.Utility.Enmity = {ammo="Sapience Orb",head="Rapid Visor",neck="Warder's Charm",ear2 ="Friomisi Earring", ear1="Genmei earring",
                                            body="Emet harness +1",hands="Kurys Gloves", waist ="Kasiri Belt", ring1='Begrudging Ring', ring2='Supershear Ring',
                                            legs="Erilaz Leg Guards +1",feet="Erilaz Greaves +1", back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+3','Enmity+10',}}}						
				
				sets.Utility.Enhancing = {ammo="Sapience Orb",head="Erilaz Galea",neck="Incanter's Torque",ear1 ="Andoaa Earring", ear1="Genmei earring",
                                            body="Emet harness +1",hands="Kurys Gloves", waist ="Olympus Sash", ring1='Begrudging Ring', ring2='Supershear Ring',
                                            legs="Carmine Cuisses",feet="Erilaz Greaves +1", back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+3','Enmity+10',}}}	
				
				sets.Utility.Doomed = {waist="Gishdubar Sash", ring1 ="Saida Ring"}
                               
                --Job Ability Sets--
                sets.JA = {}
                sets.JA.Embolen = {ammo="Sapience Orb",head="Erilaz Galea",neck="Incanter's Torque",ear1 ="Andoaa Earring", ear1="Genmei earring",
                                            body="Emet harness +1",hands="Kurys Gloves", waist ="Olympus Sash", ring1='Begrudging Ring', ring2='Supershear Ring',
                                            legs="Carmine Cuisses",feet="Erilaz Greaves +1",back="Evasionist cape"}
               
                sets.JA.Lunge = {ammo="Seething Bomblet +1",
                                   head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}},neck="Sanctity Necklace",ear2="Friomisi earring", ear1="Hecate's Earring",
                                 body="Samnuha Coat",hands="Leyline Gloves", ring1="Acumen Ring", ring2 ='Arvina Ringlet +1', waist ="Eschan Stone",
                                 back="Evasionist's cape",legs="Herculean Trousers",feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}}}
       
                sets.JA.Vallation = {head = "Rapid Visor", body="Runeist coat +1",legs="Futhark trousers", ammo="Sapience Orb",neck="Warder's Charm",
									ear2="Friomisi Earring", ear1="Genmei earring",hands="Futhark Mitons", waist ="Kasiri Belt", ring1='Begrudging Ring', ring2='Petrov Ring',
									feet="Erilaz Greaves +1", legs="Erilaz Leg Guards +1",
									back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+3','Enmity+10',}}}
                                                         
                sets.JA.Battuta = {head="Futhark bandeau +1", ammo="Sapience Orb",neck="Warder's Charm",ear2 ="Friomisi Earring", ear1="Genmei earring",
                                            body="Emet harness +1",hands="Futhark Mitons", waist ="Kasiri Belt", ring1='Begrudging Ring', ring2='Petrov Ring',
                                            legs="Erilaz Leg Guards +1",feet="Erilaz Greaves +1",
											back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+3','Enmity+10',}}}
       
                sets.JA.Gambit = {hands="Runeist mitons +1", ammo="Sapience Orb",head="Rapid Visor",neck="Warder's Charm",ear2 ="Friomisi Earring", ear1="Genmei earring",
                                            body="Emet harness +1",waist ="Kasiri Belt", ring1='Begrudging Ring', ring2='Petrov Ring',
                                            legs="Erilaz Leg Guards +1",feet="Erilaz Greaves +1",
											back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+3','Enmity+10',}}}
       
                sets.JA.Pflug = {feet="Runeist bottes", ammo="Sapience Orb",head="Highwing Helm",neck="Warder's Charm",ear2 ="Friomisi Earring", ear1="Genmei earring",
                                            body="Emet harness +1",hands="Futhark Mitons", waist ="Kasiri Belt", ring1='Begrudging Ring', ring2='Petrov Ring',
                                            legs="Erilaz Leg Guards +1", 
											back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+3','Enmity+10',}}}
											
				sets.JA.Ryake = {feet = "Futhark Boots",ammo="Sapience Orb",head="Highwing Helm",neck="Warder's Charm",ear2 ="Friomisi Earring", ear1="Genmei earring",
                                            body="Emet harness +1",hands="Futhark Mitons", waist ="Kasiri Belt", ring1='Begrudging Ring', ring2='Petrov Ring',
                                            legs="Erilaz Leg Guards +1", 
											back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+3','Enmity+10',}}}
                        
                --Precast Sets--
                sets.precast = {}
       
                sets.precast.FC = {}
       
                sets.precast.FC.Standard = {ammo="Sapience Orb",head="Herculean Helm",neck="Warder's Charm", ear1="Loquac. Earring",ear2="Etiolation Earring",
                                            body="Vrikodara Jupon",hands="Leyline Gloves", waist ="Kasiri Belt", ring1='Begrudging Ring', ring2="Weatherspoon ring",
                                            legs="Orvail pants +1",feet="Chelona Boots", back="Swith cape"}
                                                                       
                sets.precast.FC.Enhancing = {ammo="Sapience Orb",head="Herculean Helm",neck="Jeweled Necklace", ear1="Loquac. Earring", ear2="Etiolation Earring",
                                             body="Vrikodara Jupon",hands="Leyline Gloves", ring2="Weatherspoon ring",
                                             legs="Futhark trousers",feet="Chelona Boots"}
				
				sets.precast.FC.Enmity = {ammo="Sapience Orb",head="Herculean Helm",neck="Warder's Charm", ear1="Loquac. Earring", ear2="Etiolation Earring",
                                            body="Vrikodara Jupon",hands="Leyline Gloves", waist ="Kasiri Belt", ring1='Begrudging Ring', ring2="Weatherspoon ring",
                                            legs="Orvail pants +1",feet="Chelona Boots", back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+3','Enmity+10',}}}							 
end
    
function precast(spell)
        if spell.action_type == 'Magic' then
                equip(sets.precast.FC.Standard)
				
        end
       
        if spell.skill == 'Enhancing Magic' then
                equip(sets.precast.FC.Enhancing)
				
        end
       
        if spell.action_type == 'Ninjutsu' then
                equip(sets.precast.FC.Standard)
				
        end
       
        if spell.english == 'Lunge' or spell.english == 'Swipe' then
                equip(sets.JA.Lunge)
				
        end
       
        if spell.english == 'Vallation' or spell.english == 'Valiance' then
                equip(sets.JA.Vallation)
				
        end
		if spell.english=='Flash' then	
				equip(sets.precast.FC.Enmity)
				
		end
       
        if spell.english == 'Battuta' then
                equip(sets.JA.Battuta)
				
        end
       
        if spell.english == 'Pflug' then
                equip(sets.JA.Pflug)
				
        end
       
        if spell.english == 'Gambit' then
                equip(sets.JA.Gambit)
				
        end
               
        if spell.english == 'Resolution' or spell.english == 'Shockwave' then
                equip(sets.Resolution[sets.Resolution.index[Resolution_ind]])
				
        end
		
		if spell.english == 'Dimidiation' then
                equip(sets.Dimidiation[sets.Dimidiation.index[Dimidiation_ind]])
				
        end
       
        if spell.english == 'Requiescat' then
                equip(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
				
        end
		
        if spell.english == 'Fell Cleave' then
                equip(sets.FellCleave[sets.FellCleave.index[FellCleave_ind]])
				
        end		
		
		if spell.english == 'Savage Blade' then
                equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
				
        end
end            
 
function midcast(spell,act)
	   if spell.skill == 'Enhancing Magic' then
                equip(sets.Utility.Enhancing)
				if buffactive['Embolden'] then
					equip(sets.JA.Embolen)
				end
       end       
	   if spell.english == 'Stoneskin' then
                equip(sets.Utility.SID)
                            if buffactive['Stoneskin'] then
                                send_command('@wait 0.7; input //cancel Stoneskin; input /echo Refreshing Stoneskin.')
                            end
				
        end
		
		if spell.english =='Phalanx' then
			equip(sets.Utility.Phalanx)
			
		end
             
        if spell.english == 'Regen' or spell.english == 'Regen II' or spell.english =='Regen III' or spell.english == 'Regen IV' then
                equip(sets.Utility.Regen)
				
        end
       
        if spell.english == 'Utsusemi: Ichi' then
                equip(sets.Utility.SID)
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
 
        if spell.english == 'Utsusemi: Ni' then
                equip(sets.Utility.SID)
			
        end
		
		if spell.english =='Flash' or spell.english == 'Crusade' or spell.english == 'Foil' or spell.skill =='Blue Magic' then	
				equip(sets.Utility.Enmity)
				
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
        elseif command == 'toggle Res set' then
                Resolution_ind = Resolution_ind +1
                if Resolution_ind > #sets.Resolution.index then Resolution_ind = 1 end
                send_command('@input /echo <----- Resolution set changed to '..sets.Resolution.index[Resolution_ind]..' ----->')
        elseif command == 'toggle Req set' then
                Requiescat_ind = Requiescat_ind +1
                if Requiescat_ind > #sets.Requiescat.index then Requiescat_ind = 1 end
                send_command('@input /echo <----- Requiescat Set changed to '..sets.Requiescat.index[Requiescat_ind]..' ----->')
        elseif command == 'equip TP set' then
                equip(sets.TP[sets.TP.index[TP_ind]])
        elseif command == 'equip Idle set' then
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
        end
end