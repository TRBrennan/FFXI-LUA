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
                                      body="Runeist coat +1",hands={ name="Herculean Gloves", augments={'DEX+9','Magic dmg. taken -3%','"Refresh"+1',}},ring1="Defending ring",ring2="Gelatinous Ring +1",
                                      back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+4','Enmity+10',}},
									  waist="Fucho-no-obi",legs="Carmine Cuisses",feet={ name="Herculean Boots", augments={'CHR+6','STR+14','"Refresh"+1','Mag. Acc.+14 "Mag.Atk.Bns."+14',}}}
									  
			    sets.Idle.Cleave = { ammo ="Staunch Tathlum",
                                      head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque +1", left_ear="Genmei Earring",
								right_ear="Etiolation Earring", body="Emet harness +1",hands="Kurys Gloves",ring1="Defending ring",ring2="Warden's Ring",
                                      back="Evasionist's cape",waist="Flume Belt +1",legs="Eri. Leg Guards +1",feet="Erilaz Greaves +1"}
                                  
                                  
   			   --TP Sets--
                sets.TP = {}
        
                sets.TP.index = {'Standard', 'Tank', 'DT', 'DTAccuracy'}
                --1=Standard, 2 = Tank,3=DT, 4=DTAccuracy--
 			   TP_ind = 1
				sets.TP.Standard = { main ="Lionheart",sub ="Nepenthe Grip",ammo="Ginsen",
                                    head="Skormoth Mask", neck="Lissome necklace", ear2="Telos Earring", ear1="Cessance earring", 
                                    body="Herculean Vest",hands="Adhemar Wristbands",ring1="Chirich Ring",ring2="Epona's Ring",
                                    back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
									waist="Ioskeha Belt",legs="Samnuha Tights",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                       
                                                       
                sets.TP.Tank = {main={ name="Aettir", augments={'Accuracy+70','Mag. Evasion+50','System: 2 ID: 114 Val: 9',}},
								sub="Refined Grip +1",
								ammo="Staunch Tathlum",
								head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},
								body="Erilaz Surcoat +1",
								hands="Kurys Gloves",
								legs="Eri. Leg Guards +1",
								feet="Erilaz Greaves +1",
								neck="Loricate Torque +1",
								waist="Flume Belt +1",
								left_ear="Genmei Earring",
								right_ear="Etiolation Earring",
								left_ring="Defending Ring",
								right_ring="Warden's Ring",
								back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+4','Enmity+10',}},
							}	
                                                       
                sets.TP.DT = {main ="Lionheart", ammo="Amar Cluster",
                              head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque +1", ear1="Genmei Earring", ear2="Cessance earring", 
                              body="Emet harness +1",hands="Kurys Gloves",ring1="Warden's ring",ring2="Defending Ring",
                              back="Solemnity Cape",waist="Flume belt +1",legs="Erilaz Leg Guards +1",feet="Erilaz Greaves +1"}
                                 
                sets.TP.DTAccuracy = {main ="Lionheart",ammo="Amar Cluster",
                                      head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque +1", ear1="Genmei Earring", ear2="Cessance earring",    
									  body="Emet harness +1",hands="Kurys Gloves",ring1="Cacoethic ring",ring2="Defending Ring",
                                      back="Evasionist's Cape",waist="Flume belt +1",legs="Erilaz Leg Guards +1",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                                         
                                                    
                                                         
                                                         
                                                         
                --Weaponskill Sets--
                sets.WS = {}
       
                sets.Resolution = {}
       
                sets.Resolution.index = {'Attack'}
                Resolution_ind = 1
       
                sets.Resolution.Attack = {  ammo="Seeth. Bomblet +1",
											head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
											body={ name="Herculean Vest", augments={'Accuracy+25 Attack+25','"Triple Atk."+2','STR+8','Attack+15',}},
											hands={ name="Herculean Gloves", augments={'Accuracy+21 Attack+21','"Triple Atk."+2','STR+11','Accuracy+9',}},
											legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
											feet={ name="Herculean Boots", augments={'Attack+30','"Counter"+1','STR+8','Accuracy+10',}},
											neck="Fotia Gorget",
											waist="Fotia Belt",
											left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
											right_ear="Telos Earring",
											left_ring="Petrov Ring",
											right_ring="Rufescent Ring",
											back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
											}
                                                                 
											
				sets.Dimidiation = {}
       
                sets.Dimidiation.index = {'Attack'}
                Dimidiation_ind = 1
                                                                        
                sets.Dimidiation.Attack = {ammo="Jukukik Feather",
                                            head="Adhemar Bonnet",neck="Caro Necklace",ear1="Telos Earring",ear2="Moonshade Earring",
                                            body="Herculean Vest",hands="Meg. Gloves +1",ring1="Petrov Ring",ring2="Epona's ring",
                                            back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
										    waist="Grunfeld Rope",legs={ name="Herculean Trousers", augments={'Attack+23','Weapon skill damage +2%','STR+3','Accuracy+6',}},feet={ name="Herculean Boots", augments={'Accuracy+21','Crit.hit rate+1','DEX+14','Attack+14',}} }							
                                                         
                sets.Requiescat = {}
       
                sets.Requiescat.index = {'Attack'}
                Requiescat_ind = 1
               
                sets.Requiescat.Attack = {ammo="Seething Bomblet +1",
                                          head="Adhemar Bonnet",neck="Fotia gorget",ear1="Brutal earring",ear2="Moonshade earring",
                                          body="Adhemar Jacket",hands={ name="Herculean Gloves", augments={'Accuracy+21 Attack+21','"Triple Atk."+2','STR+11','Accuracy+9',}},ring1="Petrov Ring",ring2="Epona's ring",
                                          back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
										  waist="Fotia belt",legs="Samnunha Tights",feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}}}
                                                                 

                sets.FellCleave = {}
       
                sets.FellCleave.index = {'Attack'}
                FellCleave_ind = 1
       
                sets.FellCleave.Attack = {   ammo="Seeth. Bomblet +1",
											head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
											body={ name="Herculean Vest", augments={'Accuracy+25 Attack+25','"Triple Atk."+2','STR+8','Attack+15',}},
											hands={ name="Herculean Gloves", augments={'Accuracy+21 Attack+21','"Triple Atk."+2','STR+11','Accuracy+9',}},
											legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
											feet={ name="Herculean Boots", augments={'Attack+30','"Counter"+1','STR+8','Accuracy+10',}},
											neck="Fotia Gorget",
											waist="Fotia Belt",
											left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
											right_ear="Telos Earring",
											left_ring="Petrov Ring",
											right_ring="Rufescent Ring",
											back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
										}                     
                                                                         
                sets.SavageBlade = {}
       
                sets.SavageBlade.index = {'Attack'}
                SavageBlade_ind = 1
       
                sets.SavageBlade.Attack = {ammo="Seething Bomblet +1",
                                          head="Adhemar Bonnet",neck="Caro Necklace",ear1="Ishvara Earring",ear2="Moonshade Earring",
                                          body="Herculean Vest",hands="Meg. Gloves +1",ring1="Petrov Ring",ring2="Rufescent Ring",
                                          back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
										  waist="Grunfeld Rope",legs={ name="Herculean Trousers", augments={'Attack+23','Weapon skill damage +2%','STR+3','Accuracy+6',}},
										  feet={ name="Herculean Boots", augments={'Attack+30','"Counter"+1','STR+8','Accuracy+10',}}}            
                                                                         
                --Utility Sets--
                sets.Utility = {}
                                                                       
                sets.Utility.Phalanx = {ammo ="Sapience Orb", head="Futhark bandeau +1",neck="Incanter's Torque",ear2 ="Andoaa Earring", ear1="Genmei earring",
                                            body="Emet harness +1",hands="Kurys Gloves", waist ="Olympus Sash", ring1="Stikini Ring", ring2='Supershear Ring',
                                            legs="Carmine Cuisses",feet="Erilaz Greaves +1", back="Evasionist's cape"}
                                                         
                sets.Utility.Regen = {head="Runeist Bandeau",neck="Incanter's Torque",ear1="Genmei earring",ear2="Augment. earring",
                                      body="Futhark coat",hands="Runeist mitons +1",ring1="Rahab ring", ring2='Supershear Ring',
                                      back="Swith cape",waist="Pythia sash +1",legs="Futhark trousers",feet="Runeist bottes"}
                                                         
                sets.Utility.SID = {ammo ="Staunch Tathlum", head="Herculean Helm",neck="Incanter's Torque",ear1="Genmei earring", ear2 = "Halasz Earring",
                                         body="Emet Harness +1",hands="Herculean Gloves",ring1="Evanescence Ring", ring2='Supershear Ring',
                                         back="Evasionist cape",waist="Flume Belt +1",legs="Carmine Cuisses",feet="Erilaz Greaves +1" }
										 
				sets.Utility.Enmity = {ammo="Sapience Orb",head="Rapid Visor",neck="Warder's Charm",ear2 ="Friomisi Earring", ear1="Genmei earring",
                                            body="Emet harness +1",hands="Kurys Gloves", waist ="Kasiri Belt", ring1='Supershear Ring', ring2='Petrov Ring',
                                            legs="Erilaz Leg Guards +1",feet="Erilaz Greaves +1", back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+4','Enmity+10',}}}						
				
				sets.Utility.Enhancing = {ammo="Sapience Orb",head="Erilaz Galea",neck="Incanter's Torque",ear1 ="Andoaa Earring", ear1="Genmei earring",
                                            body="Emet harness +1",hands="Kurys Gloves", waist ="Olympus Sash", ring1='"Stikini Ring"', ring2='Supershear Ring',
                                            legs="Carmine Cuisses",feet="Erilaz Greaves +1", back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+4','Enmity+10',}}}	
											
				sets.Utility.Doomed = {waist="Gishdubar Sash", ring1 ="Saida Ring"}
                               
                --Job Ability Sets--
                sets.JA = {}
				sets.JA.VP = {}	
				
				sets.JA.Leiment ={body = "Futhark Coat"}
				
                sets.JA.Embolen = {back="Evasionist cape"}
               
                sets.JA.Lunge = {ammo="Seething Bomblet +1",
                                 head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}},
								 neck="Sanctity Necklace",
								 ear2="Friomisi earring", 
								 ear1="Hecate's Earring",
                                 body="Samnuha Coat",
								 hands="Leyline Gloves",
								 ring1="Acumen Ring", 
								 ring2 ='Arvina Ringlet +1', 
								 waist ="Eschan Stone",
                                 back="Evasionist's cape",
								 legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}},
								 feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}}}
       
                sets.JA.Vallation = {body="Runeist coat +1",																
									back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+4','Enmity+10',}}}
                                                         
                sets.JA.Battuta = {head="Futhark bandeau +1"}
       
                sets.JA.Gambit = {hands="Runeist mitons +1", waist ="Chaac Belt"}
       
                sets.JA.Pflug = {feet="Runeist bottes",}
											
				sets.JA.Ryake = {feet = "Futhark Boots", waist ="Chaac Belt"}
                        
                --Precast Sets--
                sets.precast = {}
       
                sets.precast.FC = {}
       
                sets.precast.FC.Standard = {ammo="Sapience Orb",head="Carmine Mask",neck="Warder's Charm", ear1="Loquac. Earring",ear2="Etiolation Earring",
                                            body="Vrikodara Jupon",hands="Leyline Gloves", waist ="Kasiri Belt",left_ring="Rahab Ring", right_ring="Weatherspoon ring",
                                            legs="Orvail pants +1",feet="Carmine Greaves", back="Swith cape"}
                                                                       
                sets.precast.FC.Enhancing = {ammo="Carmine Mask",head="Herculean Helm",neck="Jeweled Necklace", ear1="Loquac. Earring", ear2="Etiolation Earring",
                                             body="Vrikodara Jupon",hands="Leyline Gloves", left_ring="Rahab Ring", right_ring="Weatherspoon ring",
                                             legs="Futhark trousers",feet="Carmine Greaves"}
				
				sets.precast.FC.Enmity = {ammo="Sapience Orb",head="Carmine Mask",neck="Warder's Charm", ear1="Loquac. Earring", ear2="Etiolation Earring",
                                            body="Vrikodara Jupon",hands="Leyline Gloves", waist ="Kasiri Belt", left_ring="Rahab Ring", right_ring="Weatherspoon ring",
                                            legs="Orvail pants +1",feet="Carmine Greaves", back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+4','Enmity+10',}}}							 
end
    
function precast(spell)       
        if spell.skill == 'Enhancing Magic' then
                equip(sets.precast.FC.Enhancing)				
        end
       
        if spell.action_type == 'Ninjutsu' then
                equip(sets.precast.FC.Standard)				
        end
		
		if spell.action_type == 'Magic' then
                equip(sets.precast.FC.Standard)	
        end
		
		if spell.english =='Vivacious Pulse' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.VP))
		end
       
        if spell.english == 'Lunge' or spell.english == 'Swipe' then
                equip(sets.JA.Lunge)				
        end
       
        if spell.english == 'Vallation' or spell.english == 'Valiance' then
                equip(set_combine(sets.Utility.Enmity,sets.JA.Vallation))
        end
		
		if spell.english=='Flash' then	
				equip(sets.precast.FC.Enmity)				
		end
       
        if spell.english == 'Battuta' then
                equip(set_combine(sets.Utility.Enmity,sets.JA.Battuta))			
        end
       
	     if spell.english == 'Leiment' then
                equip(set_combine(sets.Utility.Enmity,sets.JA.Leiment))			
        end
		
        if spell.english == 'Pflug' then
                equip(set_combine(sets.Utility.Enmity,sets.JA.Pflug))				
        end
       
        if spell.english == 'Gambit' then
                equip(set_combine(sets.Utility.Enmity,sets.JA.Gambit))				
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
		
		if spell.english == 'Savage Blade' or  spell.english == 'Ground Strike' then
                equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])				
        end
end            
 
function midcast(spell,act)
	   if spell.skill == 'Enhancing Magic' then
                equip(set_combine(sets.Utility.Enmity,sets.Utility.Enhancing))
				if buffactive['Embolden'] then
					equip(set_combine(sets.Utility.Enmity,sets.JA.Embolen))
				end
				if string.find(spell.name,'Bar') or spell.name=="Temper" then
                    equip({hands="Runeist Mitons +1"})
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
		if buffactive['doom'] then
				equip(sets.Utility.Doomed)
			end
    else
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
		if buffactive['doom'] then
				equip(sets.Utility.Doomed)
			end
    end
end
   
function status_change(new,old)
    if new == 'Engaged' then
        equip(sets.TP[sets.TP.index[TP_ind]])
    elseif new == 'Idle' then
        equip(sets.Idle[sets.Idle.index[Idle_ind]])
        if buffactive['terror'] or buffactive['stun'] or (buffactive['sleep'] or buffactive['lullaby']) then
            equip(sets.TP.DT)
        end	
    end
end
 
function buff_change(buff, gain)
    if (buff == "terror" or buff == "stun" or (buff == 'sleep' or buff == 'lullaby')) then
        if gain then
            if player.status == 'Engaged' then
                equip(sets.TP.DT)
            elseif player.status == 'Idle' then
                equip(sets.TP.DT)               
            end
        else 
            if player.status == 'Engaged' then
                equip(sets.TP[sets.TP.index[TP_ind]])
            elseif player.status == 'Idle' then
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
            end
        end
    end
    if buff == "doom" then
        if gain then
            equip(sets.Utility.Doomed)
        else 
            if player.status == 'Engaged' then
                equip(sets.TP[sets.TP.index[TP_ind]])
            elseif player.status == 'Idle' then
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
            end
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
