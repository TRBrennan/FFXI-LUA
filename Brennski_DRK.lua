--TP set toggle input: //gs c toggle TP set----1 Standard, 2 Solo, 3 Marches, 4 AccuracyLite, 5 AccuracyMax, 6 DT, 7 DTAccuracy--
--Idle set toggle input: //gs c toggle Idle set----1 Standard, 2 DT--
--Requiescat set toggle input: //gs c toggle Req set----1 Attack, 2 Accuracy--
--Chant du Cygne set toggle input: //gs c toggle CDC set----1 Attack, 2 Accuracy--
Absorb_Spells = S{"Absorb-STR","Absorb-DEX","Absorb-VIT","Absorb-MND","Absorb-INT","Absorb-CHR","Absorb-ACC"}
Drain_Spells = S{"Drain","Drain II","Aspir","Aspir II","Absorb-TP"}

function get_sets()
	 send_command('bind f10 gs c toggle Idle set')
	 send_command('bind f9 gs c equip TP set')
	 send_command('bind f11 gs c equip DT set')
	 send_command("bind f12 gs c equip Hybrid set")
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
	
	sets.Idle.index = {'Standard','DT'}
	Idle_ind = 1
	Gear_Debug = 0
	Killer_Mode = 0
	DA_Back ={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}}
	WSD_Back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}}
	STR_Back={ name="Ankou's Mantle", augments={'VIT+20','Accuracy+20 Attack+20','VIT+10','Weapon skill damage +10%','Damage taken-5%',}}
	--STR_Back={ name="Ankou's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Accuracy+10','Weapon skill damage +10%',}}
	--INT_Back={ name="Ankou's Mantle", augments={'INT+20','Accuracy+20 Attack+20','INT+10','"Dbl.Atk."+10'}}
	INT_Back ={ name="Ankou's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','Accuracy+10','"Dbl.Atk."+10','Damage taken-5%',}}
	
	Acc_Head = "Flam. Zucchetto +2"
	TH_Head = {name="Valorous Mask", augments={'INT+6','"Dbl.Atk."+1','"Treasure Hunter"+1','Accuracy+6 Attack+6','Mag. Acc.+16 "Mag.Atk.Bns."+16',}}
	WS_Head = {name="Valorous Mask", augments={'Accuracy+25 Attack+25','Enmity+2','STR+12','Accuracy+6',}}	
	--TP_Legs = "Sakpata's Cuisses"
	TP_Legs = "Ignominy Flanchard +3"
	TP_Body = { name="Valorous Mail", augments={'Accuracy+30','"Dbl.Atk."+4','DEX+7',}}
	WSD_Legs = "Nyame Flanchard"
	WSD_Hands = "Sakpata's Gauntlets"
	WSD_Body = "Nyame Mail"
	WSD_Head = "Sakpata's Helm"

	
	sets.Idle.Standard = {
			ammo="Staunch Tathlum +1",
			head=TH_Head,
			body="Sakpata's Plate",
			hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
			legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
			feet="Sakpata's Leggings",
			neck="Coatl Gorget +1",
			waist="Carrier's Sash",
			left_ear="Hearty Earring",
			right_ear="Infused Earring",
			left_ring="Moonlight Ring",
			right_ring="Defending Ring",
			back="Moonbeam Cape",}
						  
	sets.Idle.DT = {
			ammo="Staunch Tathlum +1",
			head=WSD_Head,
			body="Sakpata's Plate",
			hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
			legs={ name="Carmine Cuisses +1", augments={'Accuracy+20','Attack+12','"Dual Wield"+6',}},
			feet="Sakpata's Leggings",
			waist="Carrier's Sash",
			left_ear="Hearty Earring",
			right_ear="Infused Earring",
			left_ring="Moonlight Ring",
			right_ring="Defending Ring",
			back="Moonbeam Cape",
			neck="Loricate torque +1",}							
							
							
	
	
	--TP Sets--
	sets.TP = {}

	sets.TP.index = {'Standard', 'DW', 'Anguta', 'AccuracyLite', 'AccuracyFull', 'DT', 'Hybrid'}
	--1=Standard, 2=DW, 3=Anguta, 4=AccuracyLite, 5=AccuracyFull, 6=DT, 7=Hybrid, 
	TP_ind = 1
	
	sets.TP.Standard = {ammo="Coiste Bodhar",
			    head=Acc_Head,neck="Abyssal Bead Necklace +2", ear1="Telos earring", ear2="Cessance earring",
			    body=TP_Body,hands="Sakpata's Gauntlets",ring1="Niqmaddu ring",ring2="Flamma ring",
			    back=DA_Back,waist="Sailfi Belt +1",legs=TP_Legs,feet="Flam. Gambieras +2"}
	
	sets.TP.DW ={ammo="Coiste Bodhar",
			    head=Acc_Head,neck="Abyssal Bead Necklace +2", ear1="Suppanomimi", ear2="Cessance earring",
			    body=TP_Body,hands="Sakpata's Gauntlets",ring1="Flamma ring",ring2="Niqmaddu ring",
			    back=DA_Back,waist="Ioskeha belt +1",legs="Carmine cuisses +1",feet="Carmine greaves +1"}		
	
	sets.TP.Anguta = {ammo="Coiste Bodhar",
			    head=Acc_Head,neck="Abyssal Bead Necklace +2", ear1="Telos earring", ear2="Cessance earring",
			    body=TP_Body,hands="Sakpata's Gauntlets",ring1="Niqmaddu ring",ring2="Flamma ring",
			    back=DA_Back,waist="Sailfi Belt +1",legs=TP_Legs,feet="Flam. Gambieras +2"}	
					
	sets.TP.AccuracyLite = {ammo="Coiste Bodhar",
			    head=DA_Head,neck="Abyssal Bead Necklace +2", ear1="Brutal earring", ear2="Cessance earring",
			    body=TP_Body,hands="Sakpata's Gauntlets",ring1="Niqmaddu ring",ring2="Flamma ring",
			    back=DA_Back,waist="Sailfi Belt +1",legs=TP_Legs,feet="Flam. Gambieras +2",}
	
	sets.TP.AccuracyFull = {ammo="Coiste Bodhar",
			    head=Acc_Head,neck="Abyssal Bead Necklace +2", ear1="Brutal earring", ear2="Cessance earring",
			    body=TP_Body,hands="Sakpata's Gauntlets",ring1="Niqmaddu ring",ring2="Flamma ring",
			    back=DA_Back,waist="Ioskeha belt +1",legs=TP_Legs,feet="Flam. Gambieras +2",}
				
	sets.TP.DT = {ammo="Staunch Tathlum +1",
			    head="Sakpata's Helm",neck="Abyssal Bead Necklace +2", ear1="Hearty earring", ear2="Telos earring",
		        body="Sakpata's Plate",hands="Sakpata's Gauntlets",ring1="Niqmaddu ring",ring2="Moonbeam Ring",
			    back=DA_Back,waist="Ioskeha belt +1",legs="Sakpata's cuisses",feet="Sakpata's Leggings"}
				
	sets.TP.Hybrid = { 		
		ammo = "Coiste Bodhar",
		head="Sakpata's Helm",
		body="Sakpata's Plate",
		hands={ name="Sakpata's Gauntlets", augments={'Path: A',}},
		legs="Sakpata's Cuisses",
		feet="Sakpata's Leggings",
		neck="Abyssal Bead Necklace +2", 
		waist="Sailfi Belt +1",
		left_ear="Telos Earring",
		right_ear="Cessance Earring",
		right_ring="Moonlight Ring",
		left_ring = "Niqmaddu Ring",
		back= DA_Back}

				  
	
	
	--Weaponskill Sets--
	sets.WS = {}			
	  		  
	sets.Resolution = {ammo="Seething bomblet +1",
			    head="Flam. Zucchetto +2",neck="Fotia gorget",ear1="Moonshade earring",ear2="Cessance earring",
			 	body="Sakpata's Plate",hands="Sakpata's Gauntlets",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=DA_Back,waist="Fotia belt",legs="Ignominy Flanchard +3",feet="Flam. Gambieras +2"}
	
	sets.Scourge = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Abyssal Bead Necklace +2",ear1="Thrud Earring", ear2="Moonshade earring",
			 	body=WSD_Body,hands=WSD_Hands,ring1="Flamma ring",ring2="Regal ring",
			   	back=STR_Back,waist="Sailfi Belt +1",legs=WSD_Legs,feet={ name="Nyame Sollerets", augments={'Path: B',}},}
				
	sets.Shockwave =  {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia Gorget",ear1="Brutal earring",ear2="Moonshade earring",
			 	body="Argosy Hauberk +1",hands="Sakpata's Gauntlets",ring1="Niqmaddu ring",ring2="Regal ring",
				back=STR_Back,waist="Fotia belt",legs=WSD_Legs,feet="Flam. Gambieras +2"}
	
	sets.Torcleaver = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Abyssal Bead Necklace +2",ear1="Thrud Earring", ear2="Moonshade earring",
			 	body=WSD_Body,hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Sailfi Belt +1",legs=WSD_Legs,feet={ name="Nyame Sollerets", augments={'Path: B',}},}
				 
	sets.Quietus = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Fotia Gorget",ear1="Thrud Earring", ear2="Moonshade earring",
			 	body=WSD_Body,hands=WSD_Hands,ring1="Flamma ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia Belt",legs=WSD_Legs,feet={ name="Nyame Sollerets", augments={'Path: B',}},}
				
	sets.Insurgency = {ammo="Knobkierrie",
			    head="Ratri sallet",neck="Fotia gorget", ear1="Telos earring",ear2="Moonshade earring",
			    body=WSD_Body,hands="Ratri gadlings",ring1="Niqmaddu ring",ring2="Regal ring",
			    back=DA_Back,waist="Sailfi Belt +1",legs="Ignominy Flanchard +3",feet="Valorous greaves"}
				
	sets.Entropy = {ammo="Pemphredo tathlum",
			    head="Ignominy burgonet +3",neck="Fotia gorget", ear1="Brutal earring",ear2="Moonshade earring",
			    body=WSD_Body,hands="Sakpata's Gauntlets",ring1="Niqmaddu ring",ring2="Mujin band",
			    back=INT_Back,waist="Fotia belt",legs="Ignominy Flanchard +3",feet="Flamma gambieras +2"}
				
	sets.CR = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Fotia Gorget",ear1="Thrud Earring", ear2="Moonshade earring",
			 	body=WSD_Body,hands=WSD_Hands,ring1="Flamma ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia Belt",legs=WSD_Legs,feet={ name="Nyame Sollerets", augments={'Path: B',}},}
				
	sets.Infernal = {ammo="Knobkierrie",
			    head="Pixie hairpin +1",neck="Abyssal Bead Necklace +2",ear1="Friomisi earring",ear2="Crematio earring",
			 	body=WSD_Body,hands="Nyame Gauntlets",ring1="Shiva ring +1",ring2="Archon ring",
			   	back=WSD_Back,waist="Eschan stone",legs="Heathen's flanchard +1",feet="Nyame Sollerets"}
	
	sets.Herculean = {ammo="Knobkierrie",
			    head="Jumalik helm",neck="Abyssal Bead Necklace +2",ear1="Friomisi earring",ear2="Crematio earring",
			 	body=WSD_Body,hands="Nyame Gauntlets",ring1="Shiva ring +1",ring2="Acumen ring",
			   	back=WSD_Back,waist="Eschan stone",legs="Heathen's flanchard +1",feet="Nyame Sollerets"}
				
	sets.Savage = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Abyssal Bead Necklace +2",ear1="Thrud Earring", ear2="Moonshade earring",
			 	body=WSD_Body,hands=WSD_Hands,ring1="Flamma ring",ring2="Regal ring",
			   	back=STR_Back,waist="Sailfi Belt +1",legs=WSD_Legs,feet={ name="Nyame Sollerets", augments={'Path: B',}},}
				
	sets.Vorpal = {ammo="Yetshila",
			    head=Acc_Head,neck="Fotia Gorget",ear1="Cessance earring",ear2="Moonshade earring",
			 	body="Argosy Hauberk +1",hands="Sakpata's Gauntlets",ring1="Niqmaddu ring",ring2="Begrudging ring",
			   	back=DA_Back,waist="Fotia belt",legs="Ignominy Flanchard +3",feet="Valorous greaves"}
	
	sets.Upheaval = {ammo="Knobkierrie",
			     head=WSD_Head,neck="Fotia gorget",ear1="Moonshade earring",ear2="Cessance earring",
			 	 body=WSD_Body,hands="Sulevia's gauntlets +2",ring1="Niqmaddu ring",ring2="Regal ring",
			   	 back=WSD_Back,waist="Ioskeha belt +1",legs="Ignominy Flanchard +3",feet={ name="Nyame Sollerets", augments={'Path: B',}},}
				 
	sets.FellCleave = {ammo="Knobkierrie",
			    head=WSD_Head,neck="Fotia gorget",ear1="Thrud earring",ear2="Moonshade earring",
			 	body=WSD_Body,hands="Sakpata's Gauntlets",ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Fotia belt",legs="Ignominy Flanchard +3",feet={ name="Nyame Sollerets", augments={'Path: B',}},}
				
	sets.Catastrophe = {ammo="Knobkierrie",	
			    head=WSD_Head,neck="Abyssal Bead Necklace +2",ear1="Thrud Earring", ear2="Moonshade earring",
			 	body=WSD_Body,hands=WSD_Hands,ring1="Niqmaddu ring",ring2="Regal ring",
			   	back=STR_Back,waist="Sailfi Belt +1",legs=WSD_Legs,feet={ name="Nyame Sollerets", augments={'Path: B',}},}
				 
	
	--Job Ability Sets--
	
	sets.JA = {}		
	
	sets.JA.WeaponBash = {
		hands="Ignominy gauntlets +2",
		waist = "Chaac Belt",
		Legs ="Volte Hose",
		head = {name = "Valorous Mask",augments = {"INT+6", '"Dbl.Atk."+1', '"Treasure Hunter"+1', "Accuracy+6 Attack+6", 'Mag. Acc.+16 "Mag.Atk.Bns."+16'}}
	}
			
	sets.JA.NetherVoid ={legs="Heathen's flanchard +1"}
	
	sets.JA.BloodWeapon = {body="Fallen's cuirass +1"}
	
	sets.JA.DarkSeal = {head="Fallen's burgeonet +1"}
	
	sets.JA.ArcaneCircle = {feet="Ignominy sollerets +1"}
	
	sets.JA.LastResort = {back=="Ankou's mantle",feet="Fallen's sollerets +1"}
	
	sets.JA.DiabolicEye = {hands="Fallen's finger gauntlets +1"}
	
	--Precast Sets--
	sets.precast = {ammo="Impatiens",head="Carmine mask +1",ear1="Loquacious earring",body="Odyssean chestplate",hands="Leyline gloves",ring1="Weatherspoon ring",
				ring2="Kishar ring",waist="Witful belt",legs="Heathen's flanchard +1",feet="Carmine greaves +1"}
					
	sets.precast.dark = {ammo="Impatiens",head="Carmine mask +1",ear1="Loquacious earring",body="Odyssean chestplate",hands="Leyline gloves",ring1="Weatherspoon ring",
				ring2="Kishar ring",waist="Witful belt",legs="Heathen's flanchard +1",feet="Carmine greaves +1"}
					
	sets.Absorb = {ammo="Pemphredo tathlum",head="Ignominy burgonet +2",neck="Erra Pendant",left_ear="Malignance Earring",right_ear="Digni. Earring",
			 	 body="Carmine scale mail",hands="Pavor Gauntlets",ring1="Evanescence ring",ring2="Kishar ring",
			   	 back=DA_Back,waist="Eschan stone",legs="Heathen's flanchard +1",feet="Ratri sollerets"}
	
	sets.Dark = {ammo="Pemphredo tathlum",head="Ignominy burgonet +2",neck="Erra Pendant",left_ear="Malignance Earring",right_ear="Digni. Earring",
			 	 body="Carmine scale mail",hands="Fallen's finger gauntlets +1",ring1="Evanescence ring",ring2="Stikini ring +1",
			   	 back="Niht mantle",waist="Orpheus's Sash", legs="Heathen's flanchard +1",
				 --feet="Ignominy sollerets +1"
				 feet="Ratri sollerets"}
	
	sets.Drain = {ammo="Pemphredo tathlum",head="Ignominy burgonet +3",neck="Erra Pendant",left_ear="Malignance Earring",right_ear="Digni. Earring",
			 	 body="Carmine scale mail",hands="Fallen's finger gauntlets +1",ring1="Evanescence ring",ring2="Archon ring",
			   	 back="Niht mantle",waist="Orpheus's Sash",legs="Heathen's flanchard +1",feet="Ratri sollerets"}
	
	sets.Drain3 = {ammo="Pemphredo tathlum",head="Fallen's burgeonet +1",neck="Erra Pendant",left_ear="Malignance Earring",right_ear="Digni. Earring",
			 	 body="Carmine scale mail",hands="Fallen's finger gauntlets +1",ring1="Evanescence ring",ring2="Archon ring",
			   	 back="Niht mantle",waist="Orpheus's Sash",legs="Heathen's flanchard +1",feet="Ratri sollerets"}
	
	sets.Dread = {     
		ammo="Staunch Tathlum +1",
		head="Ratri Sallet",
		body="Heathen's cuirass +1",
		hands="Ratri Gadlings",
		legs="Ratri Cuisses",
		feet="Ratri Sollerets",
		neck={ name="Unmoving Collar +1", augments={'Path: A',}},
		waist="Eschan Stone",
		left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
		right_ear="Tuisto Earring",
		left_ring="Moonlight Ring",
		right_ring="Moonbeam Ring",
		back="Moonbeam Cape",
	}
	
	sets.Utility = {}
	sets.Utility.Sleeping = {neck = "Opo-Opo Necklace"}

	sets.Utility.Doomed = {waist = "Gishdubar Sash", ring1 = "Eshmun's Ring"}
	
	sets.Enfeeble = {}
	
	sets.Elemental = {}
	
	sets.CaladAM ={ 
		body="Hjarrandi Breast.",
        --hands="Flam. Manopolas +2",
		ring2="Hetairoi Ring",
		head="Sakpata's Helm",
		}
	
end



function precast(spell)
	if spell.action_type == 'Magic' then
		if spell.skill == 'Dark Magic' then
			equip(sets.precast.dark)
			send_command('@input /echo Dark FC Set')
		else
			equip(sets.precast)
			send_command('@input /echo Precast Set')
		end
	end	
	
	if spell.english == 'Resolution' then
			if spell.target.distance <= 5.6 then	
				equip(sets.Resolution)
			--equip(sets.ResoWSD)
				send_command("@input /echo Resolution Set")
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end					
		elseif spell.english == 'Scourge' then	
			if spell.target.distance <= 5.6 then			
				equip(sets.Scourge)
				send_command('@input /echo Scourge Set')		
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end		
		elseif spell.english == 'Shockwave' then
		if spell.target.distance <= 5.6 then
			equip(sets.Shockwave)
			send_command('@input /echo Shockwave Set')
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end		
		elseif spell.english == 'Torcleaver' then
		if spell.target.distance <= 5.6 then
			equip(sets.Torcleaver)
			send_command('@input /echo Torcleaver Set')
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end		
		elseif spell.english == 'Quietus' then
		if spell.target.distance <= 5.6 then
			equip(sets.Quietus)
			send_command('@input /echo Quietus Set')
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end		
		elseif spell.english == 'Entropy' then
		if spell.target.distance <= 5.6 then
			equip(sets.Entropy)
			send_command('@input /echo Entropy Set')
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end		
		elseif spell.english == 'Cross Reaper' then
		if spell.target.distance <= 5.6 then
			equip(sets.CR)
			send_command('@input /echo CR Set')
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end		
		elseif spell.english == 'Insurgency' then
		if spell.target.distance <= 5.6 then
			equip(sets.Insurgency)
			send_command('@input /echo Insurgency Set')
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end		
		elseif spell.english == 'Infernal Scythe' then
		if spell.target.distance <= 5.6 then
			equip(sets.Infernal)
			send_command('@input /echo Infernal Set')
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end		
		elseif spell.english == 'Herculean Slash' then
		if spell.target.distance <= 5.6 then
			equip(sets.Herculean)
			send_command('@input /echo Herculean Set')
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end		
		elseif spell.english == 'Fell Cleave' then
			equip(sets.FellCleave)
			send_command('@input /echo Fell Cleave Set')
		elseif spell.english == 'Upheaval' then
			equip(sets.Upheaval)
			send_command('@input /echo Upheaval Set')			
		elseif spell.english == 'Savage Blade' then
		if spell.target.distance <= 5.6 then
			equip(sets.Savage)
			send_command('@input /echo Savage Blade Set')
			else
				cancel_spell()
				windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
			end		
		elseif spell.english == "Vorpal Blade" then		
			equip(sets.Vorpal)			
		elseif spell.english == 'Catastrophe' then
        if spell.target.distance <= 5.6 then
            equip(sets.Catastrophe)
            send_command('@input /echo Catastrophe Set')
            else
                cancel_spell()
                windower.add_to_chat(121, "Canceled " .. spell.name .. " " .. spell.target.name .. " is Too Far")
            end	
		elseif spell.english == 'Last Resort' then
			equip(sets.JA.LastResort)
		elseif spell.english == 'Diabolic Eye' then
			equip(sets.JA.DiabolicEye)		
		elseif spell.english == "Dark Seal" then
			equip(sets.JA.DarkSeal)
		elseif spell.english == "Arcane Circle" then
			equip(sets.JA.ArcaneCircle)
		elseif spell.english == "Weapon Bash" then
			equip(sets.JA.WeaponBash)
		elseif spell.english == "Nether Void" then
			equip(sets.JA.NetherVoid)
		elseif spell.english == "Blood Weapon" then
			equip(sets.JA.BloodWeapon)
		elseif spell.english == 'Lunge' or spell.english == 'Swipe' then
			equip(sets.Infernal)
			send_command('@input /echo Lunge Set')
	end	
	
end
	
function midcast(spell,act)
	if spell.skill == 'Dark Magic' then
		if Absorb_Spells:contains(spell.name) then
			equip(sets.Absorb)
			send_command('@input /echo Absorb Set')
			if spell.name == "Absorb-TP" then
				equip({hands="Bale gauntlets +2"})
			end
			if buffactive["Dark Seal"] then
				equip({head="Fallen's burgeonet +1"})
				send_command('@input /echo DS Head')
			end
			if buffactive["Nether Void"] then
				equip({legs="Heathen's flanchard +1"})
				send_command('@input /echo NV Legs')
			end
			weathercheck(spell.element)
		elseif Drain_Spells:contains(spell.name) then
			equip(sets.Drain)
			send_command('@input /echo Drain Set')
			if buffactive['Dark Seal'] then
					equip({head="Fallen's burgeonet +1"})
					send_command('@input /echo DS Head')
			end
			if buffactive['Nether Void'] then
				equip({legs="Heathen's flanchard +1"})
				send_command('@input /echo NV Legs')
			end
			weathercheck(spell.element)
		elseif spell.name == "Dread Spikes" then
			equip (sets.Dread)
			send_command('@input /echo Dread Spikes Set')
		elseif spell.name == "Endark II" then
			equip(sets.Dark)
			send_command('@input /echo Endark Set')
		elseif spell.name == "Drain III" then
			equip(sets.Drain3)
			send_command('@input /echo Drain III Set')
		else
			equip(sets.Dark)
			send_command('@input /echo Dark Set')
			weathercheck(spell.element)
		end
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.Enfeebling)
	elseif spell.skill == 'Elemental Magic' then
		equip(sets.Elemental)
	end
end

function aftercast(spell)
	if player.status == 'Engaged' then
		--if player.equipment.main == "Caladbolg" and buffactive["Aftermath"] then
		if buffactive['Aftermath: Lv.3'] and player.equipment.main == "Caladbolg" then
			equip(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.CaladAM))
			send_command('@input /echo Caladbolg AM set')
				if buff == "doom" or buff == "curse" then
					equip(sets.Utility.Doomed)
				end
		elseif player.equipment.main == 'Anguta' then			
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo Anguta Set')
			if buff == "doom" or buff == "curse" then
				equip(sets.Utility.Doomed)
			end
		else
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo TP Set')
			if buff == "doom" or buff == "curse" then
				equip(sets.Utility.Doomed)
			end
		end
	else
		equip(sets.Idle.Standard)
	end
end

function status_change(new,old)
	if new == 'Engaged' then
		equip(sets.TP[sets.TP.index[TP_ind]])
		if buff == "doom" or buff == "curse" then
			equip(sets.Utility.Doomed)
		end
		if buffactive['Aftermath: Lv.3'] and player.equipment.main == "Caladbolg" then
			equip(set_combine(sets.TP[sets.TP.index[TP_ind]], sets.CaladAM))
			send_command('@input /echo Caladbolg AM set')
		end
	else
		equip(sets.Idle.Standard)
		if buff == "doom" or buff == "curse" then
			equip(sets.Utility.Doomed)
		end
	end
end

function buff_change(buff, gain)
	if (buff == "terror" or buff == "stun" or (buff == "sleep" or buff == "lullaby")) then
		if gain then
			if player.status == "Engaged" then
				equip(sets.TP.DT)
			elseif player.status == "Idle" then
				equip(sets.TP.DT)
			end
		else
			if player.status == "Engaged" then
				equip(sets.TP[sets.TP.index[TP_ind]])
			elseif player.status == "Idle" then
				equip(sets.Idle[sets.Idle.index[Idle_ind]])
			end
		end
	end
	if buff == "doom" or buff == "curse" then
		if gain then
			equip(sets.Utility.Doomed)
		else
			if player.status == "Engaged" then
				equip(sets.TP[sets.TP.index[TP_ind]])
			elseif player.status == "Idle" then
				equip(sets.Idle[sets.Idle.index[Idle_ind]])
			end
		end
	end
end

function self_command(command)	
	if command == 'equip TP set' then
		if player.equipment.main == 'Anguta' then
			TP_ind = 3
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo Anguta Set')
		else
			TP_ind = 1
			equip(sets.TP[sets.TP.index[TP_ind]])
			send_command('@input /echo TP Set')
		end

		
	elseif command == 'equip Idle set' then		
		equip(sets.Idle.Standard)
		send_command('@input /echo Idle Set')
	elseif command == 'equip DW set' then		
		TP_ind = 2		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo DW Set')
	elseif command == 'equip DT set' then		
		TP_ind = 6		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo DT Set')	
	elseif command == 'equip DTAM set' then		
		TP_ind = 7		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo DTAM Set')		
	elseif command == 'equip Acc_Lite set' then		
		TP_ind = 4		
		equip(sets.TP[sets.TP.index[TP_ind]])
		send_command('@input /echo Acc_lite Set')	
	elseif command == "equip Hybrid set" then
		TP_ind = 7
		equip(sets.TP.Hybrid)
		send_command("@input /echo Hybrid Set")		
	elseif command == 'change Killer mode' then
		if Killer_Mode == 0 then
			Killer_Mode = 1
			send_command('@input /echo Killer Mode Set to 1')
		else
			Killer_Mode = 0
			send_command('@input /echo Killer Mode Set to 0')
		end
	elseif command == 'change debug mode' then
		if Gear_Debug == 1 then
			Gear_Debug = 0
			send_command('@input /echo Debug Mode Set to 0')
		else
			Gear_Debug = 1
			send_command('@input /echo Debug Mode Set to 1')
		end	
	end
end

windower.register_event('zone change', function()
    equip(sets.Idle.Standard)	
end)

function weathercheck(spell_element)
	if spell_element == world.weather_element or spell_element == world.day_element then
		equip({waist="Hachirin-no-Obi"})
		send_command('@input /echo Using Element Obi')
	else		
	end
end