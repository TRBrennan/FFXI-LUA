function get_sets()
 
        send_command('bind f9 gs c toggle Nuke set')
        send_command('bind f10 gs c toggle Idle set')
		send_command('bind f11 gs c toggle TP set')
		
        function file_unload()
     
 
        send_command('unbind ^f9')
        send_command('unbind ^f10')
		send_command('unbind ^f11')

       
        send_command('unbind !f9')
        send_command('unbind !f10')
		self_command('unbind !f11')

        send_command('unbind f9')
        send_command('unbind f10')
		send_command('unbind f11')

 
        end    
		
		 --Idle Sets--  
        sets.Idle = {}
       
        sets.Idle.index = {'Standard', 'DT'}
		--1=Standard, 2 =DT --
        Idle_ind = 1                  
       
        sets.Idle.Standard = {ammo="Homiliary",
                                      head="Vitivation Chapeau",neck="Loricate Torque +1", ear1="Genmei Earring", ear2="Infused Earring",
                                      body="Vrikodara Jupon",hands={ name="Chironic Gloves", augments={'"Fast Cast"+1','Weapon Skill Acc.+10','Damage taken-4%','Accuracy+5 Attack+5','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},ring1="Defending ring",ring2="Vocane Ring",
                                      waist="Fucho-no-obi",legs="Carmine Cuisses",feet="Chironic Slippers", back ="Solemnity Cape"}
									  
		sets.Idle.DT = {ammo="Hagneia stone",
                                      head="Hike Khat",neck="Loricate Torque +1", ear1="Etiolation Earring", ear2="Infused Earring",
                                      body="Vrikodara Jupon",hands={ name="Chironic Gloves", augments={'"Fast Cast"+1','Weapon Skill Acc.+10','Damage taken-4%','Accuracy+5 Attack+5','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},ring2="Vocane Ring",ring1="Defending ring",
                                      waist="Fucho-no-obi",legs="Assiduity Pants +1",feet="Chironic Slippers", back ="Solemnity Cape"}							  
                                                 
		--TP Sets--
        sets.TP = {}
 
           sets.TP.index = {'Standard'}
                --1=Standard--
				
                TP_ind = 1
				sets.TP.Standard = {ammo ="Ginsen", head ="Ayanmo Zucchetto +1", body ="Ayanmo Corazza", neck="Lissome Necklace", ear1 ="Suppanomimi", ear2 ="Telos Earring",ring1="Petrov Ring", ring2="Chirich Ring",
									hands ="Ayanmo Manopolas +1", legs ="Carmine Cuisses", feet ="Carmine Greaves", back = "Grounded Mantle", waist ="Kentarch Belt +1" }
						
		
		--Nuke Sets---
		sets.Nuke ={}
		
			sets.Nuke.index ={'Standard', 'MagicBurst'}
			--1=Standard, 2= Magic Burst'--
			Nuke_ind = 1
			
			sets.Nuke.Standard = {ammo="Pemphredo Tathlum",
                                 hhead={ name="Merlinic Hood", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Magic burst mdg.+7%','CHR+7','Mag. Acc.+12',}},
								 neck="Sanctity Necklace",ear2="Friomisi earring", ear1="Hecate's Earring",
                                 body={ name="Merlinic Jubbah", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','INT+7','Mag. Acc.+14','"Mag.Atk.Bns."+14',}},hands="Amalric Gages", ring1="Shiva Ring", ring2 ="Acumen Ring", waist ="Refoccilation Stone",
                                 back="Sucellos's Cape",legs="Merlinic Shalwar",feet={ name="Merlinic Crackows", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+3','INT+10','"Mag.Atk.Bns."+1',}}}
										
			sets.Nuke.MagicBurst = {ammo="Pemphredo Tathlum",
                                 head={ name="Merlinic Hood", augments={'Mag. Acc.+18 "Mag.Atk.Bns."+18','Magic burst mdg.+7%','CHR+7','Mag. Acc.+12',}},
								 neck="Mizukage-no-Kubikazari",ear2="Friomisi earring", ear1="Hecate's Earring",
                                 body={ name="Merlinic Jubbah", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','INT+7','Mag. Acc.+14','"Mag.Atk.Bns."+14',}},
								 hands="Amalric Gages", ring1="Locus Ring", ring2 ="Mujin Band", waist ="Refoccilation Stone",
                                 back="Sucellos's Cape",legs="Merlinic Shalwar",feet={ name="Merlinic Crackows", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+3','INT+10','"Mag.Atk.Bns."+1',}}}	

		--Enhancing Sets--					
		sets.Enhancing ={}
								
			sets.Enhancing.Normal = { ammo="Savant's Treatise",
                                 head="Telchine Cap",neck="Incanter's Torque",ear1 ="Andoaa Earring", ear2="Spellbreaker Earring",
                                 body="Telchine Chasuble",hands="Atrophy Gloves +1", ring1="Stikini Ring", ring2 ="Sirona's Ring", waist ="Olympus Sash",
                                 back="Ghostfyre Cape",legs="Telchine Braconi",feet="Lethargy Houseaux"}
							 
								 
		--Magic Sets--
		sets.Magic ={}
		
			sets.Magic.Enfeebling = {ammo="Pemphredo Tathlum",
                                 head="Merlinic Hood",neck="Imbodla Necklace",ear2="Dignitary's Earring", ear1="Gwati Earring",
                                 body={ name="Merlinic Jubbah", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','INT+7','Mag. Acc.+14','"Mag.Atk.Bns."+14',}},hands="Lurid Mitts", 
								 ring1="Stikini Ring", ring2 ="Kishar Ring", waist ="Luminary Sash",
                                 back="Sucellos's Cape",legs={ name="Chironic Hose", augments={'Mag. Acc.+9 "Mag.Atk.Bns."+9','"Cure" spellcasting time -10%','Mag. Acc.+13',}},feet="Medium's Sabots"}
								 
								 
			sets.Magic.EnfeeblingSkill = {ammo="Pemphredo Tathlum",
                                 head="Carmine Mask",neck="Imbodla Necklace",ear2="Dignitary's Earring", ear1="Gwati Earring",
                                 body={ name="Merlinic Jubbah", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','INT+7','Mag. Acc.+14','"Mag.Atk.Bns."+14',}},hands="Lurid Mitts", 
								 ring1="Stikini Ring", ring2 ="Kishar Ring", waist ="Luminary Sash",
                                 back="Sucellos's Cape",legs="Psycloth Lappas",feet="Medium's Sabots"}
			
			sets.Magic.Healing = {ammo="Kalboron Stone",
                                 head="Merlinic Hood",neck="Incanter's Torque",ear1 ="Lifestorm Earring", ear2="Spellbreaker Earring",
                                 body="Vrikodara Jupon",hands="Telchine Gloves", ring1="Ephedra Ring", ring2 ="Sirona's Ring", waist ="Luminary Sash",
                                 back="Solemnity Cape",legs={ name="Chironic Hose", augments={'Mag. Acc.+9 "Mag.Atk.Bns."+9','"Cure" spellcasting time -10%','Mag. Acc.+13',}},feet="Pedagogy loafers"}
												 
			sets.Magic.Regen = { ammo="Savant's Treatise",
                                 head="Arbatel Bonnet",neck="Incanter's Torque ",ear1 ="Lifestorm Earring", ear2="Spellbreaker Earring",
                                 body="Telchine Chasuble",hands="Telchine Gloves", ring1="Stikini Ring", ring2 ="Kishar Ring", waist ="Luminary Sash",
                                 back="Sucellos's Cape",legs="Telchine Braconi",feet="Telchine Pigaches"}
			
			sets.Magic.Dark = { ammo="Pemphredo Tathlum",
                                 head="Pixie Hairpin +1",neck="Incanter's Torque",ear2="Friomisi earring", ear1="Hecate's Earring",
                                 body={ name="Merlinic Jubbah", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','INT+7','Mag. Acc.+14','"Mag.Atk.Bns."+14',}},hands="Amalric Gages", ring1="Evanescence Ring", ring2 ="Shiva Ring", waist ="Refoccilation Stone",
                                 back="Sucellos's Cape",legs="Merlinic Shalwar",feet="Merlinic Crackows"}
								 
			sets.Magic.Stun ={ammo="Pemphredo Tathlum",head={ name="Merlinic Hood", augments={'"Fast Cast"+5','Mag. Acc.+10',}},
							neck="Voltsurge Torque", waist ="Luminary Sash", left_ear="Etiolation Earring", right_ear="Loquac. Earring",
							 left_ring="Rahab Ring", right_ring="Kishar Ring",feet={ name="Merlinic Crackows", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Fast Cast"+3','INT+10','"Mag.Atk.Bns."+1',}}, 
							 body={ name="Merlinic Jubbah", augments={'Accuracy+6','"Fast Cast"+6','MND+8','Mag. Acc.+15','"Mag.Atk.Bns."+5',}},legs="Psycloth Lappas", back ="Izdubar Mantle"}
						
			sets.Magic.Refresh = {legs ="Lethargy Fuseau"}

		--Precast Sets--
			sets.precast = {}
       
			sets.precast.FC = {}
       
			sets.precast.FC.Standard = {ammo="Sapience Orb",
							head={ name="Merlinic Hood", augments={'"Fast Cast"+5','Mag. Acc.+10',}},
							body={ name="Merlinic Jubbah", augments={'Accuracy+6','"Fast Cast"+6','MND+8','Mag. Acc.+15','"Mag.Atk.Bns."+5',}}, 
							hands={ name="Merlinic Dastanas", augments={'"Mag.Atk.Bns."+25','"Fast Cast"+7','Mag. Acc.+13',}}, 
							legs="Psycloth Lappas",
						    feet="Carmine Greaves",
							neck="Voltsurge Torque", waist="Witful Belt", left_ear="Etiolation Earring",
						    right_ear ="Loquac. Earring",left_ring="Rahab Ring", right_ring="Kishar Ring", back="Swith Cape"}
							
			sets.precast.FC.Regen = { ammo="Sapience Orb",
                                 head="Telchine Cap",neck="Voltsurge Torque",right_ear="Loquac. Earring",left_ear="Etiolation Earring",
                                 body="Telchine Chasuble",hands="Telchine Gloves", left_ring="Rahab Ring", right_ring="Kishar Ring",waist="Witful Belt",
                                 back="Izdubar Mantle",legs="Telchine Braconi",feet="Telchine Pigaches"}
								 

		--Utility and JA Sets --					
		sets.Utility = {}
       
        sets.Utility.Weather = {waist="Hachirin-no-obi"}
				
		sets.Utility.DrainAspir = { ammo="Pemphredo Tathlum",
                                 head="Pixie Hairpin +1",neck="Sanctity Necklace",ear2="Friomisi earring", ear1="Hecate's Earring",
                                 body={ name="Merlinic Jubbah", augments={'Mag. Acc.+23 "Mag.Atk.Bns."+23','INT+7','Mag. Acc.+14','"Mag.Atk.Bns."+14',}},hands="Amalric Gages", ring1="Evanescence Ring", ring2 ='Shiva Ring', waist ="Fucho-no-obi",
                                 back="Izdubar Mantle",legs="Merlinic Shalwar",feet="Merlinic Crackows"}
								 
		sets.Utility.Dia = {head = "Vitivation Chapeau"}
		
		
		sets.Utility.Doomed = {waist="Gishdubar Sash", ring1 ="Saida Ring"}
		
		sets.JA ={}
		
		sets.JA.CS ={body ="Duelist's Tabard +2"}
		
		sets.JA.Sab ={hands ="Lethargy Gantherots +1"}
		
		sets.JA.Composure ={Feet = "Lethargy Houseaux", hands = "Lethargy Gantherots +1" , body = "Lethargy Sayon", legs = "Lethargy Fuseau", head ="Lethargy Chappel"}		
 
		--WS Sets--
       
		sets.WS = {}
		
		sets.WS.CDC = {ammo="Jukukik Feather",
                                            head="Taeon Chapeau",
											neck="Fotia gorget",
											ear1="Moonshade Earring",
											ear2="Telos Earring",
                                            body="Herculean Vest",
											hands="Adhemar Wristbands",
											ring1="Begrudging Ring",
											ring2="Epona's Ring",
                                            back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
											waist="Fotia belt",legs="Samnuha Tights",feet="Thereoid Greaves"}
		
		sets.WS.Savage =	{ammo="Amar Cluster",
                                          head="Adhemar Bonnet",
										  neck="Caro Necklace",
										  ear1="Ishvara Earring",
										  ear2="Moonshade Earring",
                                          body="Herculean Vest",hands="Jhakri Cuffs +1",
										  ring1="Petrov Ring",ring2="Rajas Ring",
                                          back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
										  waist="Grunfeld Rope",
										  legs={ name="Herculean Trousers", augments={'Attack+23','Weapon skill damage +2%','STR+3','Accuracy+6',}},
										  feet="Thereoid Greaves"}
		
		sets.WS.Vorpal = {ammo="Amar Cluster",
                                            head="Adhemar Bonnet",
											neck="Fotia gorget",
											ear1="Moonshade Earring",
											ear2="Telos Earring",
                                            body="Herculean Vest",
											hands="Adhemar Wristbands",
											ring1="Petrov Ring",
											ring2="Epona's Ring",
                                            back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
											waist="Fotia belt",legs="Samnuha Tights",feet="Thereoid Greaves"}
		
		sets.WS.Req = {ammo="Amar Cluster",
                                            head="Adhemar Bonnet",
											neck="Fotia gorget",
											ear1="Moonshade Earring",
											ear2="Telos Earring",
                                            body="Herculean Vest",
											hands="Adhemar Wristbands",
											ring1="Petrov Ring",
											ring2="Epona's Ring",
                                            back={ name="Rosmerta's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Crit.hit rate+10',}},
											waist="Fotia belt",legs="Samnuha Tights",feet="Thereoid Greaves"}
		
		
end

function precast(spell)
        if spell.english == 'Regen' or spell.english == 'Regen II' or spell.english == 'Regen III' or spell.english == 'Regen IV' or spell.english == 'Regen V' then	
			equip(sets.precast.FC.Regen)
		end
		if spell.english == 'Chainspell' then
			equip(sets.JA.CS)
		end
		if spell.english =='Stun' then
			equip(sets.magic.Stun)
		end
		if spell.action_type == 'Magic' then
                equip(sets.precast.FC.Standard)
         end
		
		if spell.english == 'Chant du Cygne' then
                equip(sets.WS.CDC)
        end		
		if spell.english == 'Savage Blade' then
			equip(sets.WS.Savage)
		end
		if spell.english == 'Vorpal Blade' then
			equip(sets.WS.Vorpal)
		end
		if spell.english == 'Requiescat' then
			equip(sets.WS.Req)
		end
		if spell.english == 'Sanguine Blade' then
			equip(sets.Magic.Dark)
		end
		
end

function midcast(spell,act)

		if spell.skill =='Enhancing Magic' then
			equip(sets.Enhancing.Normal)
		end
		if spell.english =='Stun' then
			equip(sets.magic.Stun)
		end
		if spell.skill =='Healing Magic' then
			equip(sets.Magic.Healing)
		end
		
		if spell.skill =='Dark Magic' then
			equip(sets.Magic.Dark)
		end
		
		if spell.english =='Dia III' or spell.english == 'Slow II' then
			equip(set_combine(sets.Magic.Enfeebling,sets.Utility.Dia))
		end
		
		if spell.skill =='Enfeebling Magic' then
			equip(sets.Magic.Enfeebling)
			if buffactive =='Saboteur' then	
				equip(set_combine(sets.Magic.Enfeebling,sets.JA.Sab))
			end
		end
		
		if spell.skill =='Elemental Magic' then
			equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])
			
		                if spell.element == world.day_element or spell.element == world.weather_element then
                              equip(set_combine(sets.Nuke[sets.Nuke.index[Nuke_ind]],sets.Utility.Weather))
				       end
		end
		
		if spell.english == 'Regen' or spell.english == 'Regen II' or spell.english == 'Regen III' or spell.english == 'Regen IV' or spell.english == 'Regen V' then	
				equip(set_combine(sets.Enhancing.Normal,sets.Magic.Regen))
		end
		
		if spell.english == 'Refresh' or spell.english == 'Refresh II' then
				equip(set_combine(sets.Enhancing.Normal,sets.Magic.Refresh))
		end
		
		if spell.english == 'Drain' or spell.english =='Drain II' or spell.english=='Aspir II' or spell.english =='Aspir' then
			equip(sets.Utility.DrainAspir)
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
				if buffactive['doom'] then
					equip(sets.Utility.Doom)
				end
        else
                equip(sets.Idle[sets.Idle.index[Idle_ind]])					
				if buffactive['doom'] then
					equip(sets.Utility.Doom)
				end
        end
end
 
function self_command(command)
        if command == 'toggle Nuke set' then
                Nuke_ind = Nuke_ind +1
                if Nuke_ind > #sets.Nuke.index then Nuke_ind = 1 end
                send_command('@input /echo <----- Nuke Set changed to '..sets.Nuke.index[Nuke_ind]..' ----->')
                equip(sets.Nuke[sets.Nuke.index[Nuke_ind]])
        elseif command == 'toggle Idle set' then
                Idle_ind = Idle_ind +1
                if Idle_ind > #sets.Idle.index then Idle_ind = 1 end
                send_command('@input /echo <----- Idle Set changed to '..sets.Idle.index[Idle_ind]..' ----->')
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
		elseif command == 'toggle TP set' then
				TP_ind = TP_ind +1
				if TP_ind > #sets.TP.index then TP_ind =1 end
				send_command('@input /echo <----- TP Set changed to '..sets.TP.index[TP_ind]..' ---->')
				equip(sets.TP[sets.TP.index[TP_ind]])
        elseif command == 'equip TP set' then
                equip(sets.TP[sets.TP.index[TP_ind]])
        elseif command == 'equip Idle set' then
                equip(sets.Idle[sets.Idle.index[Idle_ind]])
        end
end