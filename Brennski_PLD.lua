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
       
        sets.Idle.index = {'Standard','DT', 'Cleave'}
        Idle_ind = 1                  
       
        sets.Idle.Standard = {ammo="Homiliary",
                                      head="Rawhide Mask",neck="Sanctity Necklace", ear1="Genmei Earring", ear2="Infused Earring",
                                      body="Souveran Cuirass",hands="Souveran Handschuhs",ring1="Defending ring",ring2="Warden's Ring",
                                      waist="Fucho-no-obi",legs="Carmine Cuisses",feet="Souveran Schuhs", back ="Kumbira Cape"}
                                                 
        sets.Idle.DT = { ammo="Staunch Tathlum",
                                    head="Sulevia's Mask +1", neck="Loricate Torque +1", ear1="Genmei Earring",ear2="Thureous Earring",
                                    body="Souveran Cuirass",hands="Souveran Handschuhs",ring1="Defending ring",ring2="Warden's Ring",
                                    back="Weard Mantle",waist="Flume Belt +1",legs="Souveran Diechlings",feet="Souveran Schuhs"}
										
		sets.Idle.Cleave = {ammo="Staunch Tathlum",
                                    head="Sulevia's Mask +1", neck="Loricate Torque +1", ear1="Genmei Earring",ear2="Thureous Earring",
                                    body="Souveran Cuirass",hands="Souveran Handschuhs",ring1="Defending ring",ring2="Warden's Ring",
                                    back="Weard Mantle",waist="Flume Belt +1",feet="Souveran Schuhs",legs="Carmine Cuisses"}								
        --TP Sets--
        sets.TP = {}
 
           sets.TP.index = {'Standard', 'Tank', 'AccuracyFull', 'DW', 'CP'}
                --1=Standard,2 = Tank, 3 = AccuracyFull, 4= DW, 5=CP--
				
                TP_ind = 1
				sets.TP.Standard = { ammo="Amar Cluster",
                                    head="Sulevia's Mask +1", neck="Loricate Torque +1", ear1="Genmei Earring",ear2="Cessance Earring",
                                    body="Souveran Cuirass",hands="Souveran Handschuhs",ring1="Petrov Ring",ring2="Warden's Ring",
                                    back="Weard Mantle",waist="Flume Belt +1",legs="Souveran Diechlings",feet="Odyssean Greaves"}
                                                       
                                                       
				sets.TP.Tank = { ammo="Staunch Tathlum",
                                    head="Sulevia's Mask +1", neck="Loricate Torque +1", ear1="Genmei Earring",ear2="Thureous Earring",
                                    body="Souveran Cuirass",hands="Souveran Handschuhs",ring1="Defending ring",ring2="Warden's Ring",
                                    back="Weard Mantle",waist="Flume Belt +1",legs="Souveran Diechlings",feet="Souveran Schuhs"}
                                                       
	   
                sets.TP.AccuracyFull = {ammo="Amar Cluster",
                                        head="Sulevia's Mask +1",neck="Sanctity Necklace", ear1="Steelflash earring", ear2="Cessance Earring",
                                        body="Founder's Breastplate",hands="Leyline Gloves",ring1="Petrov Ring",ring2="Warden's Ring",
                                        back="Weard mantle",waist="Kentarch Belt +1",legs="Founder's Hose",feet="Odyssean Greaves"}
                                                       
                                                         
                 sets.TP.DW = {ammo="Amar Cluster",
                                    head="Sulevia's Mask +1", neck="Sanctity Necklace", ear1="Dudgeon earring", ear2="Heartseeker earring",
                                    body="Founder's Breastplate",hands="Leyline Gloves",ring1="Petrov Ring",ring2="Rajas Ring",
                                    back="Weard mantle",waist="windbuffet belt +1",legs="Founder's Hose",feet="Odyssean Greaves"}                                                        
                                                         
				sets.TP.CP = {ammo="Amar Cluster",
                                    head="Sulevia's Mask +1", neck="Sanctity Necklace", ear1="Steelflash Earring", ear2="Cessance Earring",
                                    body="Founder's Breastplate",hands="Leyline Gloves",ring1="Petrov Ring",ring2="Rajas Ring",
                                    back="Mecistopins mantle",waist="Kentarch Belt +1",legs="Founder's Hose",feet="Odyssean Greaves"}  


									
       --Weaponskill Sets--
        sets.WS = {}
       
        sets.Requiescat = {}
       
        sets.Requiescat.index = {'Attack'}
        Requiescat_ind = 1
       
        sets.Requiescat.Attack = {head="Helios Band",neck="Sanctity Necklace",rear="Friomisi earring", ear1="Novio Earring",
                                 body="Founder's Breastplate",hands="Amalric Gages", ring1="Acumen Ring", ring2 ='Fenrir Ring', waist ="Eschan Stone",
                                 back="Grounded Mantle",legs="Hagondes Pants",feet="Weatherspoon souliers +1"}
										  
		sets.SavageBlade = {}
       
        sets.SavageBlade.index = {'Attack'}
        SavageBlade_ind = 1
       
           
		 sets.SavageBlade.Attack = {ammo="Sapience Orb",
                                          head="Sulevia's Mask +1",neck="Fotia gorget",ear1="Brutal Earring",ear2="Cessance Earring",
                                          body="Founder's Breastplate",hands="Leyline Glvoes",ring1="Epona's ring",ring2="Rajas Ring",
                                          back="Buquwik cape",waist="Dynamic belt",legs="Quiahuiz leggings",feet="Odyssean Greaves"}
                                                           
        sets.ChantDuCygne = {}
       
        sets.ChantDuCygne.index = {'Attack'}
        ChantDuCygne_ind = 1
       
         sets.ChantDuCygne.Attack = {ammo="Jukukik Feather",
                                            head="Sulevia's Mask +1",neck="Fotia gorget",ear1="Brutal Earring",ear2="Cessance Earring",
                                            body="Founder's Breastplate",hands="Leyline Glvoes",ring1="Epona's ring",ring2="Rajas Ring",
                                            back="Grounded Mantle",waist="Light Belt",legs="Founder's Hose",feet="Thereoid Greaves"}		

                                                                                                                   
        sets.WS.SanguineBlade = {}
       
        sets.WS.SanguineBlade = {ammo="Ombre Tathlum",
                                 head="Helios Band",neck="Sanctity Necklace",rear="Friomisi earring", ear1="Novio Earring",
                                 body="Founder's Breastplate",hands="Amalric Gages", ring1="Acumen Ring", ring2 ='Fenrir Ring', waist ="Eschan Stone",
                                 back="Grounded Mantle",legs="Hagondes Pants",feet="Weatherspoon souliers +1" }
               
        sets.WS.CircleBlade = {}              
                       
        sets.WS.CircleBlade = {ammo="Sapience Orb",
                                          head="Sulevia's Mask +1",neck="Fotia gorget",ear1="Brutal Earring",ear2="Cessance Earring",
                                          body="Founder's Breastplate",hands="Manibozho gloves",ring1="Epona's ring",ring2="Rajas Ring",
                                          back="Buquwik cape",waist="Dynamic belt",legs="Quiahuiz leggings",feet="Odyssean Greaves"}
                                                   
   
 
        sets.WS.VorpalBlade = {}
       
        sets.WS.VorpalBlade = {ammo="Sapience Orb",
                                          head="Sulevia's Mask +1",neck="Fotia gorget",ear1="Brutal Earring",ear2="Cessance Earring",
                                          body="Founder's Breastplate",hands="Manibozho gloves",ring1="Epona's ring",ring2="Rajas Ring",
                                          back="Buquwik cape",waist="Dynamic belt",legs="Quiahuiz leggings",feet="Odyssean Greaves"}
                                                 
        sets.Realmrazer = {}
       
        sets.Realmrazer.index = {'Attack'}
        Realmrazer_ind = 1
       
        sets.Realmrazer.Attack = {ammo="Hydrocera",
                                                      head="Dampening Tam",neck="Fotia gorget",ear1="Brutal Earring",ear2="Cessance Earring",
                                                          body="Adhemar Jacket",hands="Leyline Glvoes",ring1="Eponas ring",ring2="Rajas ring",
                                                          back="Buquwik Cape",waist="Fotia belt",legs="Telchine Braconi",feet="Rawhide Boots"}
                                                                                                                
        sets.WS.FlashNova = {}
       
        sets.WS.FlashNova = {ammo="Ombre Tathlum",
                                 head="Helios Band",neck="Sanctity Necklace",rear="Friomisi earring", ear1="Novio Earring",
                                 body="Founder's Breastplate",hands="Amalric Gages", ring1="Acumen Ring", ring2 ='Fenrir Ring', waist ="Eschan Stone",
                               back="Grounded Mantle",legs="Hagondes Pants",feet="Weatherspoon souliers +1"}    

		sets.WS.Atonement = {ammo="Amar Cluster",
                                    head="Sulevia's Mask +1", neck="Asperity necklace", ear1="Brutal Earring",ear2="Cessance Earring",
                                    body="Souveran Cuirass",hands="Souveran Handschuhs",ring1="Petrov Ring",ring2="Rajas Ring",
                                    back="Weard Mantle",waist="windbuffet belt +1",legs="Founder's Hose",feet="Souveran Schuhs"}
                                                                                       
        --Magic Sets--
        sets.Magic = {}
       
	    sets.Magic.Divine = {}
		
		sets.Magic.Phalanx ={head="Carmine Mask", legs ="Carmine Cuisses",neck = "Incanter's Torque", body ="Shabti Cruissas",hands="Souveran Handschuhs",feet="Souveran Schuhs"}
		
		sets.Magic.Enhancing ={head="Carmine Mask", legs ="Carmine Cuisses",neck = "Incanter's Torque", body ="Shabti Cruissas"}
		
		sets.Magic.Reprisal ={}
		
		sets.Magic.Flash ={neck="Atzintli Necklace",ear2 ="Friomisi Earring", back ="Weard Mantle", waist ="Kasiri Belt", ring2='Supershear Ring', ring1='Petrov Ring'}
		
		sets.Magic.Healing = {neck = 'Diemer Gorget'}
                               
							   
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
  
        --Job Ability Sets--
       
        sets.JA = {}
       
        sets.JA.ShieldBash = {ammo ="Sapience Orb",ring1 ="Fenin Ring", hands ="Valor Gauntlets"}

		sets.JA.Sentinel = {ammo ="Sapience Orb",feet ="Valor Leggings"}
		
		sets.JA.Cover = {ammo ="Sapience Orb",}
		
		sets.JA.Rampart = {ammo ="Sapience Orb",}

        --Precast Sets--
        sets.precast = {}
       
        sets.precast.FC = {}
       
       sets.precast.FC.Standard = { ammo="Sapience Orb",
							head="Carmine Mask",  body="Odyssean Chestplate",  hands="Leyline Gloves",   legs="Lengo Pants",
						    feet="Odyssean Greaves",  neck="Voltsurge Torque", waist="Witful Belt", left_ear="Etiolation Earring",
						    right_ear="Loquac. Earring", left_ring="Rahab Ring", right_ring="Weatherspoon ring", back="Swith Cape"}
       
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
       
        if spell.english == 'Circle Blade' then
                equip(sets.WS.CircleBlade)
        end
 
        if spell.english == 'Vorpal Blade' then
                equip(sets.WS.VorpalBlade)
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
       
        if spell.english == 'Realmrazer' then
                equip(sets.Realmrazer[sets.Realmrazer.index[Realmrazer_ind]])
        end
       
        if spell.english == 'Flash Nova' then
                equip(sets.WS.FlashNova)
                if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(sets.Utility.Weather)
                        end
        end
	    
		if spell.english =='Shield Bash' then
			equip(sets.JA.ShieldBash)
		end
		
		if spell.english == 'Sentinel' then	
			equip(sets.JA.Sentinel)
		end
		
		if spell.english == 'Ramprt' then
			equip(sets.JA.Rampart)
		end
		
		if spell.english == 'Cover' then
			equip(sets.JA.Cover)
		end
		
end
       
function midcast(spell,act)
        
		if spell.english == 'Flash' then
		 equip(sets.Magic.Flash)
		 end
		
		if spell.skill =='Enhancing Magic' then
			equip(sets.Magic.Enhancing)
		end
		
		if spell.skill =='Divine Magic' then
			equip(sets.Magic.Divine)
		end
		
		if spell.skill =='Healing Magic' then
			equip(sets.Magic.Healing)
		end
		
		if spell.english == 'Reprisal' then
			equip(sets.Magic.Reprisal)
		end
		
		if spell.english == 'Phalanx' then
			equip(sets.Magic.Phalanx)
		end
end	
 
function aftercast(spell)
        if player.status == 'Engaged' then
                equip(sets.TP[sets.TP.index[TP_ind]])
        else
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
        end
       
        if spell.action_type == 'Weaponskill' then
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