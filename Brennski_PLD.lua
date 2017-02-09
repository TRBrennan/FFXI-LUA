function get_sets()
 
        send_command('bind f9 gs c toggle TP set')
        send_command('bind f10 gs c toggle Idle set')

        function file_unload()
      
        send_command('unbind ^f9')
        send_command('unbind ^f10')
       
        send_command('unbind !f9')
        send_command('unbind !f10')

        send_command('unbind f9')
        send_command('unbind f10')
 
        end    
               
        --Idle Sets--  
        sets.Idle = {}
       
        sets.Idle.index = {'Standard','DT', 'Cleave'}
        Idle_ind = 1                  
       
        sets.Idle.Standard = {ammo="Homiliary",
                                      head="Rawhide Mask",neck="Sanctity Necklace", ear1="Genmei Earring", ear2="Infused Earring",
                                      body="Souveran Cuirass",hands="Souveran Handschuhs",ring1="Defending ring",ring2="Vocane Ring",
                                      waist="Fucho-no-obi",legs="Carmine Cuisses",feet="Souveran Schuhs", back ="Kumbira Cape"}
                                                 
        sets.Idle.DT = { ammo="Staunch Tathlum",
                                    head="Sulevia's Mask +1", neck="Loricate Torque +1", ear1="Genmei Earring",ear2="Thureous Earring",
                                    body="Souveran Cuirass",hands="Souveran Handschuhs",ring1="Defending ring",ring2="Vocane Ring",
                                    back="Weard Mantle",waist="Flume Belt +1",legs="Souveran Diechlings",feet="Souveran Schuhs"}
										
		sets.Idle.Cleave = {ammo="Staunch Tathlum",
                                    head="Sulevia's Mask +1", neck="Loricate Torque +1", ear1="Genmei Earring",ear2="Thureous Earring",
                                    body="Souveran Cuirass",hands="Souveran Handschuhs",ring1="Defending ring",ring2="Vocane Ring",
                                    back="Weard Mantle",waist="Flume Belt +1",feet="Souveran Schuhs",legs="Carmine Cuisses"}								
        --TP Sets--
        sets.TP = {}
 
           sets.TP.index = { 'Tank','Standard', 'AccuracyFull', 'DW', 'CP'}
                --1=Tank ,2 = Standard, 3 = AccuracyFull, 4= DW, 5=CP--
				
                TP_ind = 1				                                                                                         
				sets.TP.Tank = { ammo="Staunch Tathlum",
                                    head="Sulevia's Mask +1",
									neck="Loricate Torque +1",
									ear1="Genmei Earring",
									ear2="Thureous Earring",
                                    body="Souveran Cuirass",
									hands="Souveran Handschuhs",
									ring1="Defending ring",
									ring2="Vocane Ring",
                                    back="Weard Mantle",
									waist="Flume Belt +1",
									legs="Souveran Diechlings",
									feet="Souveran Schuhs"}
									
				sets.TP.Standard = { ammo="Ginsen",
                                    head="Sulevia's Mask +1", 
									neck="Loricate Torque +1",
									ear1="Telos Earring",
									ear2="Cessance Earring",
                                    body="Souveran Cuirass",
									hands="Souveran Handschuhs",
									ring1="Petrov Ring",
									ring2="Chirich Ring",
                                    back="Weard Mantle",
									waist="Flume Belt +1",
									legs={ name="Odyssean Cuisses", augments={'Accuracy+16 Attack+16','"Store TP"+7','DEX+2','Attack+8',}},
									feet="Valorous Greaves"}
                                                       
	   
                sets.TP.AccuracyFull = {ammo="Ginsen",
                                        head="Sulevia's Mask +1",
										neck="Sanctity Necklace",
										ear1="Steelflash earring",
										ear2="Cessance Earring",
                                        body="Founder's Breastplate",
										hands="Leyline Gloves",
										ring1="Petrov Ring",
										ring2="Vocane Ring",
                                        back="Weard mantle",
										waist="Kentarch Belt +1",
										legs={ name="Odyssean Cuisses", augments={'Accuracy+16 Attack+16','"Store TP"+7','DEX+2','Attack+8',}},
										feet="Valorous Greaves"}
                                                       
                                                         
                 sets.TP.DW = {ammo="Ginsen",
                                    head="Sulevia's Mask +1",
									neck="Sanctity Necklace",
									ear1="Dudgeon earring", 
									ear2="Heartseeker earring",
                                    body="Founder's Breastplate",
									hands="Leyline Gloves",
									ring1="Petrov Ring",
									ring2="Rajas Ring",
                                    back="Weard mantle",
									waist="windbuffet belt +1",
									legs="Founder's Hose",
									feet="Odyssean Greaves"}                                                        
									
       --Weaponskill Sets--
        sets.WS = {}
       
        sets.Requiescat = {}
       
        sets.Requiescat.index = {'Attack'}
        Requiescat_ind = 1
       
        sets.Requiescat.Attack = {head="Carmine Mask",
								 neck="Fotia Gorget",
								 ear2="Moondshade earring",
								 ear1="Telos Earring",
                                 body="Sulevia's Platemail +1",
								 hands="Sulevia's Gauntlets +1", 
								 ring2="Rufescent Ring",
								 ring1="Petrov Ring",
								 waist ="Fotia Belt",
                                 back="Grounded Mantle",
								 legs="Carmine Cuisses",
								 feet="Carmine Greaves"}
										  
		sets.SavageBlade = {}
       
        sets.SavageBlade.index = {'Attack'}
        SavageBlade_ind = 1
       
           
		 sets.SavageBlade.Attack = {ammo="Sapience Orb",
                                          head="Sulevia's Mask +1",
										  neck="Caro Necklace",
										  ear1="Telos Earring",
										  ear2="Moondshade Earring",
                                          body="Sulevia's Platemail +1",
										  hands="Sulevia's Gauntlets +1",
										  ring2="Rufescent Ring",
										  ring1="Petrov Ring",
                                          back="Buquwik cape",
										  waist="Grunfield Rope",
										  legs="Odyssean Cuisses",
										  feet="Sulevia's Leggings +1"}
                                                           
        sets.ChantDuCygne = {}
       
        sets.ChantDuCygne.index = {'Attack'}
        ChantDuCygne_ind = 1
       
         sets.ChantDuCygne.Attack = {ammo="Jukukik Feather",
                                            head="Sulevia's Mask +1",
											neck="Fotia gorget",
											ear1="Telos Earring",
											ear2="Moonshade Earring",
                                            body="Sulevia's Platemail +1",
											hands="Leyline Glvoes",
											ring2="Rajas ring",
											ring1="Petrov Ring",
                                            back="Grounded Mantle",
											waist="Fotia Belt",
											legs="Odyssean Cuisses",
											feet="Thereoid Greaves"}		

                                                                                                                   
        sets.WS.SanguineBlade = {}
       
        sets.WS.SanguineBlade = {ammo="Ombre Tathlum",
                                 head="Helios Band",neck="Sanctity Necklace",rear="Friomisi earring", ear1="Novio Earring",
                                 body="Founder's Breastplate",hands="Amalric Gages", ring1="Acumen Ring", ring2 ='Fenrir Ring', waist ="Eschan Stone",
                                 back="Grounded Mantle",legs="Hagondes Pants",feet="Weatherspoon souliers +1" }

		sets.WS.Atonement = {ammo="Amar Cluster",
                                    head="Sulevia's Mask +1", neck="Asperity necklace", ear1="Brutal Earring",ear2="Cessance Earring",
                                    body="Souveran Cuirass",hands="Souveran Handschuhs",ring1="Petrov Ring",ring2="Rajas Ring",
                                    back="Weard Mantle",waist="windbuffet belt +1",legs="Founder's Hose",feet="Souveran Schuhs"}
                                                                                       
        --Magic Sets--
        sets.Magic = {}
       
	    sets.Magic.Divine = {neck = "Incanter's Torque", ring1 = "Stikini Ring"}
		
		sets.Magic.Phalanx ={head="Carmine Mask", legs ="Carmine Cuisses",neck = "Incanter's Torque", body ="Shabti Cruissas",hands="Souveran Handschuhs",feet="Souveran Schuhs",
							ring1 = "Stikini Ring",ear2 ="Andoaa Earring", waist ="Olympus Sash"}
		
		sets.Magic.Enhancing ={head="Carmine Mask", legs ="Carmine Cuisses",neck = "Incanter's Torque", body ="Shabti Cruissas", ring1 = "Stikini Ring",
								ear2 ="Andoaa Earring", waist ="Olympus Sash"}
		
		sets.Magic.Reprisal ={ring2="Supershear Ring", ring1 = "Stikini Ring", ear2 ="Andoaa Earring", waist ="Olympus Sash"}
		
		sets.Magic.Flash ={neck = "Incanter's Torque", ring1 = "Stikini Ring"}
		
		sets.Magic.Healing = {neck = "Incanter's Torque",ring1="Ephedra Ring", ring2 ="Sirona's Ring",ear1="Nourish. Earring", back ="Solmenity Cape"}
                               
							   
        --Utility Sets--
        sets.Utility = {}
       
        sets.Utility.Weather = {waist="Hachirin-no-obi",back="Twilight Cape"}
 
        sets.Utility.MB = {head="Helios Band",body="Samnuha Coat",ear1="Static Earring",ring1="Locus Ring",ring2="Mujin Band"}
 
                                                            
        sets.Utility.Steps = {ammo="Falcon Eye",
							head="Dampening Tam", body="Adhemar Jacket", hands="Rawhide Gloves",legs=="Founder's Hose", feet="Odyssean Greaves",  neck="Subtlety Spec.",
							waist="Chaac Belt", left_ear="Heartseeker Earring",right_ear="Steelflash Earring",  left_ring="Yacuruna Ring",  right_ring="Rajas Ring",  back="Grounded Mantle",}
                                                 
        sets.Utility.PDT = {head="Sulevia's Mask +1",neck="Loricate Torque +1",ear1="Ethereal earring",
                                                body="Iuitl vest",hands="Umuthi gloves",ring1="Dark ring",ring2="Dark ring",
                                                back="Solemnity Cape",waist="Flume belt",legs="Iuitl Tights +1",feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} }
                                               
        sets.Utility.MDT = {head="Sulevia's Mask +1",neck="Loricate Torque +1",
                                                body="Assim. jubbah +1",hands="Umuthi gloves",ring1="Dark ring",ring2="Dark ring",
                                                back="Solemnity Cape",legs="Quiahuiz trousers",feet="Luhlaza charuqs"}
												
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
								
		sets.Utility.Doomed = {waist="Gishdubar Sash", ring1 ="Saida Ring"}
  
        --Job Ability Sets--
       
        sets.JA = {}
       
        sets.JA.ShieldBash = {ring1 ="Fenin Ring",
							  hands ="Valor Gauntlets"}

		sets.JA.Sentinel = {feet ="Valor Leggings"}
		
		sets.JA.Cover = {}
		
		sets.JA.Rampart = {}

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
             
        if spell.english == 'Requiescat' then
                equip(sets.Requiescat[sets.Requiescat.index[Requiescat_ind]])
        end
       
        if spell.english == 'Chant du Cygne' then
                equip(sets.ChantDuCygne[sets.ChantDuCygne.index[ChantDuCygne_ind]])
        end
		
		if spell.english == 'Savage Blade' then
                equip(sets.SavageBlade[sets.SavageBlade.index[SavageBlade_ind]])
        end
        
        if spell.english == 'Sanguine Blade' then
                equip(sets.WS.SanguineBlade)
                if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(sets.Utility.Weather)
                        end
        end
       
        if spell.english == 'Box Step' then
                equip(sets.Utility.Steps)
        end
       

	    
		if spell.english =='Shield Bash' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.ShieldBash))
		end
		
		if spell.english == 'Sentinel' then	
			equip(set_combine(sets.Utility.Enmity,sets.JA.Sentinel))
		end
		
		if spell.english == 'Ramprt' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.Rampart))
		end
		
		if spell.english == 'Cover' then
			equip(set_combine(sets.Utility.Enmity,sets.JA.Cover))
		end
		
end
       
function midcast(spell,act)
        
		if spell.english == 'Flash' then
		 equip(set_combine(sets.Utility.Enmity,sets.Magic.Flash))
		 end
		
		if spell.skill =='Enhancing Magic' then
			equip(set_combine(sets.Utility.Enmity,sets.Magic.Enhancing))
		end
		
		if spell.skill =='Divine Magic' then
			equip(set_combine(sets.Utility.Enmity,sets.Magic.Divine))
		end
		
		if spell.skill =='Healing Magic' then
			equip(set_combine(sets.Utility.Enmity,sets.Magic.Healing))
		end
		
		if spell.english == 'Reprisal' then
			equip(set_combine(sets.Utility.Enmity,sets.Magic.Reprisal))
		end
		
		if spell.english == 'Phalanx' then
			equip(set_combine(sets.Utility.Enmity,sets.Magic.Phalanx))
		end
		if spell.skill =='Blue Magic' then
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
