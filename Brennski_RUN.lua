--To toggle gearsets:
--Main command: //gs c toggle x set       where x = set name variable. Variables are as follows: --
--Idle sets: Idle, TP sets: TP--
--Resolution sets: Res, Requiescat sets: Req--

 
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
 
                --Idle Sets--
                sets.Idle = {}
               
                sets.Idle.index = {'Standard', 'DT','Cleave'}
               
                Idle_ind = 1
                               
                sets.Idle.Standard = {ammo="Homiliary",
                                      head={ name="Herculean Helm", augments={'Pet: CHR+2','Potency of "Cure" effect received+3%','"Refresh"+2','Mag. Acc.+1 "Mag.Atk.Bns."+1',}},neck="Sanctity Necklace", ear1="Genmei earring",ear2="Infused Earring",
                                      body="Runeist's Coat +3",hands="Regal Gauntlets",
									  ring1="Defending ring",right_ring="Vocane Ring",
                                      back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}},
									  waist="Fucho-no-obi",legs="Carmine Cuisses +1",feet={ name="Herculean Boots", augments={'CHR+6','STR+14','"Refresh"+1','Mag. Acc.+14 "Mag.Atk.Bns."+14',}}}
				
				sets.Idle.DT = { ammo ="Staunch Tathlum",
                                      head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque +1", left_ear="Odnowa Earring +1",
									  right_ear="Hearty Earring", body="Ashera Harness",hands="Regal Gauntlets",ring1="Defending ring",right_ring="Vocane Ring",
                                      back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}},
									  waist="Flume Belt +1",legs="Eri. Leg Guards +1",feet="Erilaz Greaves +1"}
                
				
			    sets.Idle.Cleave = { ammo ="Staunch Tathlum",
                                      head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},neck="Loricate Torque +1", left_ear="Odnowa Earring +1",
									  right_ear="Etiolation Earring", body="Ashera Harness",hands="Regal Gauntlets",ring1="Defending ring",right_ring="Vocane Ring",
                                      back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}},
									  waist="Flume Belt +1",legs="Carmine Cuisses +1",feet="Erilaz Greaves +1"}
                                  
								  
			
				--Weapons--
		
				sets.Weapons = {}
		
				sets.Weapons.Index = {'Lionheart','Aettir','Epeolatry', 'Fettering'}
				Weapons_ind = 1
		
				sets.Weapons.Lionheart = {main ="Lionheart", sub ="Utu Grip"}
		
				sets.Weapons.Aettir = {main={ name="Aettir", augments={'Accuracy+70','Mag. Evasion+50','System: 2 ID: 114 Val: 9',}},sub="Refined Grip +1"}
		
				sets.Weapons.Epeolatry = {main ="Epeolatry", sub ="Utu Grip"}
				
				sets.Weapons.Fettering = {main ="Fettering Blade"}
		
			   --TP Sets--
                sets.TP = {}
        
                sets.TP.index = {'Standard', 'TankTP','MDTank','HPB','StatusResist'}
                --1=Standard,2=DT, 3=MDTtank, 4=HPB, 5=StatusResist--
 			   TP_ind = 1
				sets.TP.Standard = {ammo="Yamarang",
                                    head="Dampening Tam", 
									neck="Lissome necklace", 
									ear2="Telos Earring", 
									ear1="Sherida earring", 
                                    body="Ashera Harness",
									hands="Adhemar Wristbands",
									left_ring="Epona's Ring",
									right_ring="Niqmaddu Ring",
                                    back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
									waist="Ioskeha Belt",
									legs="Samnuha Tights",
									feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
									
				sets.TP.TankTP = { ammo="Yamarang",
                                    head="Dampening Tam", 
									neck="Lissome necklace", 
									ear2="Telos Earring", 
									ear1="Sherida earring", 
                                    body="Ashera Harness",
									hands="Adhemar Wristbands",
									left_ring="Ilabrat Ring",
									right_ring="Niqmaddu Ring",
                                    back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
									waist="Ioskeha Belt",
									legs="Samnuha Tights",
									feet="Turms Leggings"}                                                       
		
				sets.TP.MDTank = {
								ammo="Staunch Tathlum",
								head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},
								body="Ashera Harness",
								--hands="Regal Gauntlets",
								hands ="Kurys Gloves",
								legs="Eri. Leg Guards +1",
								feet="Turms Leggings",
								neck="Loricate Torque +1",
								waist="Flume Belt +1",
								left_ear="Odnowa Earring +1",
								right_ear="Etiolation Earring",
								left_ring="Defending Ring",
								right_ring="Vocane Ring",
								back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}}
							}
				sets.TP.HPB = {	ammo="Staunch Tathlum",
							head="Aya. Zucchetto +1",
							body="Ashera Harness",
							hands="Regal Gauntlets",
							legs="Eri. Leg Guards +1",
							feet="Turms Leggings",
							neck="Loricate Torque +1",
							waist="Flume Belt +1",
							left_ear="Odnowa Earring +1",
							right_ear="Odnowa Earring",
							left_ring="Defending Ring",
							right_ring="Vocane Ring",
							back="Moonbeam Cape",
						}						
                                                                                      
                sets.TP.StatusResist = {ammo="Staunch Tathlum",
							head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},
							body="Ashera Harness",
							hands="Erilaz Gauntlets +1",
							legs="Rune. Trousers +3",
							feet="Erilaz Greaves +1",
							neck="Loricate Torque +1",
							waist="Flume Belt +1",
							right_ear="Hearty Earring",
							left_ear="Odnowa Earring +1",
							left_ring="Vocane Ring",
							right_ring="Defending Ring",
							back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}},
							}
                                                    
                                                         
                                                         
                                                         
                --Weaponskill Sets--
                sets.WS = {}
       
                sets.Resolution = {}
       
                sets.Resolution.index = {'Attack'}
                Resolution_ind = 1
       
                sets.Resolution.Attack = {  ammo="Seeth. Bomblet +1",
											head="Adhemar Bonnet",
											body={ name="Herculean Vest", augments={'Accuracy+25 Attack+25','"Triple Atk."+2','STR+8','Attack+15',}},
											hands={ name="Herculean Gloves", augments={'Accuracy+21 Attack+21','"Triple Atk."+2','STR+11','Accuracy+9',}},
											legs="Samnuha Tights",
											feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','"Dual Wield"+2','STR+13','Accuracy+6',}},
											neck="Fotia Gorget",
											waist="Fotia Belt",
											left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
											right_ear="Sherida Earring",
											right_ring="Niqmaddu Ring",
											left_ring="Regal Ring",
											back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
											}
                                                                 
											
				sets.Dimidiation = {}
       
                sets.Dimidiation.index = {'Attack'}
                Dimidiation_ind = 1
                                                                        
                sets.Dimidiation.Attack = {    ammo="Knobkierrie",
												head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
												body={ name="Herculean Vest", augments={'Accuracy+25 Attack+25','Weapon skill damage +2%','STR+1','Attack+4',}},
												hands="Meg. Gloves +2",
												legs={ name="Herculean Trousers", augments={'Accuracy+12 Attack+12','Weapon skill damage +3%','DEX+9','Accuracy+13',}},
												feet={ name="Herculean Boots", augments={'Accuracy+21','Weapon skill damage +4%','Attack+12',}},
												neck="Caro Necklace",
												waist="Grunfeld Rope",
												left_ear="Ishvara Earring",
												right_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
												right_ring="Regal Ring",	
												right_ring="Ilabrat Ring",
												back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}}, }							
                                                 												 
                sets.Requiescat = {}
       
                sets.Requiescat.index = {'Attack'}
                Requiescat_ind = 1
               
                sets.Requiescat.Attack = {ammo="Seething Bomblet +1",
                                          head="Adhemar Bonnet",neck="Fotia gorget",ear1="Brutal earring",ear2="Moonshade earring",
                                          body="Adhemar Jacket",hands={ name="Herculean Gloves", augments={'Accuracy+21 Attack+21','"Triple Atk."+2','STR+11','Accuracy+9',}},right_ring="Niqmaddu Ring",left_ring="Regal ring",
                                          back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
										  waist="Fotia belt",legs="Samnunha Tights",feet={ name="Herculean Boots", augments={'Attack+30','"Counter"+1','STR+8','Accuracy+10',}}}
                                                                 

                sets.FellCleave = {}
       
                sets.FellCleave.index = {'Attack'}
                FellCleave_ind = 1
       
                sets.FellCleave.Attack = {   ammo="Seeth. Bomblet +1",
											head={ name="Adhemar Bonnet", augments={'DEX+10','AGI+10','Accuracy+15',}},
											body={ name="Herculean Vest", augments={'Accuracy+25 Attack+25','"Triple Atk."+2','STR+8','Attack+15',}},
											hands={ name="Herculean Gloves", augments={'Accuracy+21 Attack+21','"Triple Atk."+2','STR+11','Accuracy+9',}},
											legs={ name="Samnuha Tights", augments={'STR+9','DEX+8','"Dbl.Atk."+2','"Triple Atk."+2',}},
											feet={ name="Herculean Boots", augments={'Accuracy+25 Attack+25','"Dual Wield"+2','STR+13','Accuracy+6',}},
											neck="Fotia Gorget",
											waist="Fotia Belt",
											left_ear={ name="Moonshade Earring", augments={'Accuracy+4','TP Bonus +25',}},
											right_ear="Telos Earring",
											right_ring="Niqmaddu Ring",left_ring="Regal ring",
											back={ name="Ogma's cape", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}}
										}                     
                                                                         
                sets.SavageBlade = {}
       
                sets.SavageBlade.index = {'Attack'}
                SavageBlade_ind = 1
       
                sets.SavageBlade.Attack = {ammo="Knobkierrie",
                                          head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
										  neck="Caro Necklace",ear1="Ishvara Earring",ear2="Moonshade Earring",
                                          body={ name="Herculean Vest", augments={'Accuracy+25 Attack+25','Weapon skill damage +2%','STR+1','Attack+4',}},
										  hands="Meg. Gloves +2",right_ring="Niqmaddu Ring",left_ring="Regal Ring",
                                            back={ name="Ogma's cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
										  waist="Grunfeld Rope",legs={ name="Herculean Trousers", augments={'Accuracy+12 Attack+12','Weapon skill damage +3%','DEX+9','Accuracy+13',}},
										  feet={ name="Herculean Boots", augments={'Attack+29','Weapon skill damage +2%','STR+2','Accuracy+10',}}}            
                                                                         
                --Utility Sets--
                sets.Utility = {}
                                                                       
                sets.Utility.Phalanx = {ammo ="Sapience Orb", head="Futhark bandeau +1",neck="Incanter's Torque",ear2 ="Andoaa Earring", ear1="Genmei earring",
                                            body="Emet harness +1",hands="Regal Gauntlets", waist ="Olympus Sash", ring1="Stikini Ring", right_ring='Supershear Ring',
                                            legs="Carmine Cuisses +1",feet="Erilaz Greaves +1", back="Evasionist's cape"}
                                                         
                sets.Utility.Regen = {head="Runeist Bandeau",neck="Incanter's Torque",ear1="Genmei earring",ear2="Augment. earring",
                                      body="Futhark coat +1",hands="Runeist's Mitons +3",ring1="Rahab ring", right_ring='Supershear Ring',
                                      back="Moonbeam Cape",waist="Pythia sash +1",legs="Futhark trousers",feet="Runeist bottes"}
                                                         
                sets.Utility.SID = {ammo ="Staunch Tathlum", head="Herculean Helm",neck="Incanter's Torque",ear1="Genmei earring", ear2 = "Halasz Earring",
                                         body="Emet Harness +1",hands="Herculean Gloves",ring1="Evanescence Ring", right_ring='Supershear Ring',
                                         back="Evasionist cape",waist="Flume Belt +1",legs="Carmine Cuisses +1",feet="Erilaz Greaves +1" }
										 
				sets.Utility.Enmity = {ammo="Sapience Orb",head="Rabid Visor",neck="Unmoving Collar",right_ear ="Friomisi Earring", left_ear="Odnowa Earring +1",
                                            body="Emet harness +1",hands="Kurys Gloves", waist ="Trance belt", ring1='Supershear Ring', right_ring='Petrov Ring',
                                            legs="Erilaz Leg Guards +1",feet="Erilaz Greaves +1", back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}}}						
				
				sets.Utility.Enhancing = {ammo="Sapience Orb",head="Erilaz Galea +1",neck="Incanter's Torque",ear1 ="Andoaa Earring", ear1="Genmei earring",
                                            body="Emet harness +1",hands="Regal Gauntlets", waist ="Olympus Sash", ring1='"Stikini Ring"', right_ring='Supershear Ring',
                                            legs="Carmine Cuisses +1",feet="Erilaz Greaves +1", back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}}}	
				
				sets.Utility.Refresh =	{ammo="Sapience Orb",head="Erilaz Galea +1",neck="Incanter's Torque",ear1 ="Andoaa Earring", ear1="Genmei earring",
                                            body="Emet harness +1",hands="Regal Gauntlets", waist ="Gishdubar Sash", ring1='"Stikini Ring"', right_ring='Supershear Ring',
                                            legs="Carmine Cuisses +1",feet="Erilaz Greaves +1", back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}}}
				
				sets.Utility.Doomed = {waist="Gishdubar Sash", ring1 ="Saida Ring"}
		
                               
                --Job Ability Sets--
                sets.JA = {}
				sets.JA.VP = {legs = "Rune. Trousers +3",ring1="Stikini Ring",neck="Incanter's Torque",head ="Erilaz Galea +1"}	
				
				sets.JA.Leiment ={body = "Futhark Coat +1"}
				
                sets.JA.Embolen = {back="Evasionist cape"}
               
                sets.JA.Lunge = {ammo="Seething Bomblet +1",
                                 head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}},
								 neck="Sanctity Necklace",
								 ear2="Friomisi earring", 
								 ear1="Hecate's Earring",
                                 body="Samnuha Coat",
								 hands="Leyline Gloves",
								 ring1="Acumen Ring", 
								 right_ring ='Arvina Ringlet +1', 
								 waist ="Eschan Stone",
                                 back="Evasionist's cape",
								 legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}},
								 feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}}}
       
                sets.JA.Vallation = {body="Runeist's Coat +3",																
									back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}}}
                                                         
                sets.JA.Battuta = {head="Futhark bandeau +1"}
       
                sets.JA.Gambit = {hands="Runeist's Mitons +3", waist ="Chaac Belt"}
       
                sets.JA.Pflug = {feet="Runeist's Boots +3",}
											
				sets.JA.Ryake = {feet = "Futhark Boots", waist ="Chaac Belt"}
				
				
                        
                --Precast Sets--
                sets.precast = {}
       
                sets.precast.FC = {}
       
                sets.precast.FC.Standard = {ammo="Sapience Orb",head="Carmine Mask +1",neck="Voltsurge Torque", ear1="Loquac. Earring",ear2="Etiolation Earring",
                                            body="Ashera Harness",hands="Regal Gauntlets", waist ="Flume Belt +1",left_ring="Defending Ring",right_ring="Vocane Ring",
                                            legs={ name="Herculean Trousers", augments={'Mag. Acc.+21','"Fast Cast"+5','CHR+3',}},feet="Carmine Greaves +1", 
											back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}}}
                                                                       
                sets.precast.FC.Enhancing = {ammo="Carmine Mask +1",head="Herculean Helm",neck="Jeweled Necklace", ear1="Loquac. Earring", ear2="Etiolation Earring",
                                             body="Ashera Harness",hands="Regal Gauntlets", waist ="Flume Belt +1",left_ring="Defending Ring",right_ring="Vocane Ring",
                                             legs="Futhark trousers",feet="Carmine Greaves +1",
											 back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}}}
				
				sets.precast.FC.Enmity = {ammo="Sapience Orb",head="Carmine Mask +1",neck="Unmoving Collar", ear1="Loquac. Earring", ear2="Etiolation Earring",
                                            body="Ashera Harness",hands="Regal Gauntlets", waist ="Flume Belt +1",left_ring="Defending Ring",right_ring="Vocane Ring",
                                            legs={ name="Herculean Trousers", augments={'Mag. Acc.+21','"Fast Cast"+5','CHR+3',}},feet="Carmine Greaves +1", 
											back={ name="Ogma's cape", augments={'HP+60','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','Enmity+10',}}}							 
end
    
function precast(spell)       
        if spell.skill == 'Enhancing Magic' then
                equip(sets.precast.FC.Enhancing)				
        end
       
        if spell.skill == 'Ninjutsu' then
                equip(sets.precast.FC.Standard)				
        end
		
		if spell.action_type == 'Magic' then
                equip(sets.precast.FC.Standard)	
        end
		
		if spell.english =='Vivacious Pulse' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.VP))
		end
       
        if spell.english == 'Lunge' or spell.english == 'Swipe' or spell.english == "Herculean Slash" then
                equip(sets.JA.Lunge)				
        end
       
        if spell.english == 'Vallation' or spell.english == 'Valiance' then
                equip(set_combine(sets.Utility.Enmity,sets.JA.Vallation))
        end
		
		if spell.english=='Flash'  or spell.skill == 'Enfeebling Magic' or spell.english == 'Foil' or spell.skill =='Dark Magic' or spell.skill =="Blue Magic" then	
				equip(sets.precast.FC.Enmity)				
		end
       
        if spell.english == 'Battuta' then
                equip(set_combine(sets.Utility.Enmity,sets.JA.Battuta))			
        end
       
	     if spell.english == 'Leiment' or spell.english == 'Elemental Sforzo' then
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
                equip(sets.Utility.Enhancing)
				if buffactive['Embolden'] then
					equip(set_combine(sets.Utility.Enhancing,sets.JA.Embolen))
				end
				if string.find(spell.name,'Bar') or spell.name=="Temper" then
                    equip({hands="Runeist Mitons +2"})
                end
       end       
	   if spell.english == 'Stoneskin' then
                equip(sets.Utility.SID)
                            if buffactive['Stoneskin'] then
                                send_command('@wait 0.7; input //cancel Stoneskin; input /echo Refreshing Stoneskin.')
                            end
				
        end
		if spell.english =="Refresh" then
			equip(sets.Utility.Refresh)
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
		
		if spell.english =='Flash' or spell.english == 'Crusade' or spell.english == 'Foil' or spell.skill =='Blue Magic' or spell.skill == 'Enfeebling Magic' or spell.skill == 'Dark Magic' then	
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
		elseif command == 'toggle Weapons' then
                Weapons_ind = Weapons_ind +1
               if Weapons_ind > #sets.Weapons.Index then Weapons_ind = 1 end
                send_command('@input /echo <----- Weapons Set changed to '..sets.Weapons.Index[Weapons_ind]..' ----->')
                equip(sets.Weapons[sets.Weapons.Index[Weapons_ind]])        
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