-- Owner: AlanWarren, aka ~ Orestes 
-- current file resides @ https://github.com/AlanWarren/gearswap
--[[ 

 === Notes ===
 -- Set format is as follows:
    sets.midcast.RA.[CustomClass][CombatForm][CombatWeapon][RangedMode][CustomRangedGroup]
    ex: sets.midcast.RA.SAM.Bow.Mid.SamRoll = {}
    you can also append CustomRangedGroups to each other
 
 -- These are the available sets per category
 -- CustomClass = SAM
 -- CombatForm = DW
 -- CombatWeapon = weapon name, ex: Yoichinoyumi  (you can make new sets for any ranged weapon)
 -- RangedMode = Normal, Mid, Acc
 -- CustomRangedGroup = SamRoll

 -- SamRoll is applied automatically whenever you have the roll on you. 
 -- SAM is used when you're RNG/SAM 

 * Auto RA
 - You can use the built in hotkey (CTRL -) or create a macro. (like below) Note "AutoRA" is case sensitive
   /console gs c toggle AutoRA
 - You have to shoot once after toggling autora for it to begin.
 - AutoRA will use weaponskills @ 1000TP, depending on which weapon you're using. However, this will only
   work if you set gear.Gun or gear.Bow to the weapon you're using. You also have to specify the desired
   ws it should use, with the settings auto_gun_ws and auto_bow_ws. 
 
 === Helpful Commands ===
    //gs validate
    //gs showswaps
    //gs debugmode

--]]
 
function get_sets()
        mote_include_version = 2
        -- Load and initialize the include file.
        include('Mote-Include.lua')
        include('organizer-lib')
end

-- setup vars that are user-independent.
function job_setup()
end
 
-- setup vars that are user-dependent. 
function user_setup()
        -- Options: Override default values
        state.OffenseMode:options('Normal', 'Melee')
        state.RangedMode:options('Normal', 'Mid', 'Acc')
        state.HybridMode:options('Normal', 'PDT')
        state.IdleMode:options('Normal', 'PDT')
        state.WeaponskillMode:options('Normal', 'Mid', 'Acc')
        state.PhysicalDefenseMode:options('PDT')
        state.MagicalDefenseMode:options('MDT')
 
        state.Buff.Barrage = buffactive.Barrage or false
        state.Buff.Camouflage = buffactive.Camouflage or false
        state.Buff.Overkill = buffactive.Overkill or false

        -- settings
        state.CapacityMode = M(false, 'Capacity Point Mantle')

        state.AutoRA = M{['description']='Auto RA', 'Normal', 'Shoot', 'WS' }
        auto_gun_ws = "Coronach"
        auto_bow_ws = "Namas Arrow"


        gear.Gun = "Annihilator"
        gear.Bow = "Yoichinoyumi"
        --gear.Bow = "Hangaku-no-Yumi"
       
        rng_sub_weapons = S{'Hurlbat', 'Vanir Knife', 'Perun', 
            'Eminent Axe', 'Odium', 'Aphotic Kukri', 'Atoyac'}
        
        sam_sj = player.sub_job == 'SAM' or false

      	DefaultAmmo = {[gear.Bow] = "Achiyalabopa arrow", [gear.Gun] = "Achiyalabopa bullet"}
	    U_Shot_Ammo = {[gear.Bow] = "Achiyalabopa arrow", [gear.Gun] = "Achiyalabopa bullet"} 

        get_combat_form()
        get_custom_ranged_groups()

        send_command('bind != gs c toggle CapacityMode')
        send_command('bind f9 gs c cycle RangedMode')
        send_command('bind !f9 gs c cycle OffenseMode')
        send_command('bind ^f9 gs c cycle HybridMode')
        send_command('bind ^] gs c cycle WeaponskillMode')
        send_command('bind ^- gs c cycle AutoRA')
        send_command('bind ^[ input /lockstyle on')
        send_command('bind ![ input /lockstyle off')
        
        -- Testing 
        --windower.register_event('incoming text', detect_cor_rolls)
end

-- Called when this job file is unloaded (eg: job change)
function file_unload()
    send_command('unbind f9')
    send_command('unbind ^f9')
    send_command('unbind ^[')
    send_command('unbind ![')
    send_command('unbind !=')
    send_command('unbind ^=')
    send_command('unbind @=')
    send_command('unbind ^-')
end
 
function init_gear_sets()
        -- Augmented gear
        TaeonHands = {}
              TaeonHands.Snap = {name="Taeon Gloves", augments={'"Snapshot"+5', 'Attack+22','"Snapshot"+3'}}

        -- Misc. Job Ability precasts
        sets.precast.JA['Bounty Shot'] = {hands="Amini Glovelettes +1", waist = "Chaac Belt"}
        sets.precast.JA['Double Shot'] = {head="Amini Gapette"}
        sets.precast.JA['Camouflage'] = {body="Orion Jerkin +1"}
        sets.precast.JA['Sharpshot'] = {legs="Orion Braccae +1"}
        sets.precast.JA['Velocity Shot'] = {body="Amini Caban +1"}
        sets.precast.JA['Scavenge'] = {feet="Orion Socks +1"}

        sets.CapacityMantle = {back="Mecistopins Mantle"}

        sets.precast.JA['Eagle Eye Shot'] = set_combine(sets.midcast.RA, {
            head="Uk'uxkaj Cap", 
            ear1="Sherida Earring",
            ear2="Fotia Pearl",
            neck="Rancor Collar",
            back="Buquwik Cape",
            hands="Amini Glovelettes +1",
            ring1="Rajas Ring",
            ring2="Apate Ring",
            legs="Amini Brague +1", 
            feet="Thereoid Greaves"
        })
        sets.precast.JA['Eagle Eye Shot'].Mid = set_combine(sets.precast.JA['Eagle Eye Shot'], {
            back="Lutian Cape",
            ring2="Longshot Ring",
            feet="Orion Socks +1"
        })
        sets.precast.JA['Eagle Eye Shot'].Acc = set_combine(sets.precast.JA['Eagle Eye Shot'].Mid, {
            neck="Iqabi Necklace",
            waist="Elanid Belt"
        })

        sets.precast.FC = {
            head="Carmine Mask +1",  
			body="Taeon Tabard",  
			hands="Leyline Gloves",  
			legs={ name="Herculean Trousers", augments={'Mag. Acc.+21','"Fast Cast"+5','CHR+3',}},
						    feet="Carmine Greaves +1",  
							neck="Voltsurge Torque", 
							waist="Witful Belt", 
							left_ear="Etiolation Earring",
						    right_ear="Loquac. Earring", 
							left_ring="Rahab Ring",
							right_ring="Kishar Ring",
							back="Swith Cape"
        }
        sets.precast.FC.Utsusemi = set_combine(sets.precast.FC, { neck="Magoraga Beads" })
        
        sets.idle = {
            head={ name="Herculean Helm", augments={'Accuracy+19 Attack+19','Damage taken-3%','AGI+3','Accuracy+2',}},
			body={ name="Herculean Vest", augments={'Accuracy+25 Attack+25','"Triple Atk."+2','STR+8','Attack+15',}},
			hands="Kurys Gloves",
			legs={ name="Carmine Cuisses +1", augments={'Accuracy+15','Attack+10','"Dual Wield"+5',}},
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}},
			neck="Sanctity Necklace",
			waist="Carrier's Sash",
			left_ear="Etiolation Earring",
			right_ear="Eabani Earring",
			left_ring="Chirich Ring +1",
			right_ring="Defending Ring",
			back="Moonbeam Cape",
        }
        sets.idle.Regen = set_combine(sets.idle, {
            head="Ocelomeh Headpiece +1",
            body="Kheper Jacket",
            neck="Sanctity Necklace",
            ring2="Paguroidea Ring"
        })
        sets.idle.PDT = set_combine(sets.idle, {
            head="Iuitl Headgear +1",
            ring1="Dark Ring",
            ring2="Defending Ring"
        })
        sets.idle.Town = set_combine(sets.idle, {
            body="Councilor's garb",
            ring1="Paguroidea Ring",
            ring2="Defending Ring",
            hands="Amini Glovelettes +1",
            legs="Carmine Cuisses +1 +1",
            back="Lutian Cape"
        })
 
        -- Engaged sets
        sets.engaged =  {
             head="Adhemar Bonnet", 
			neck="Lissome necklace", 
			ear1="Sherida Earring", 
			ear2="Telos Earring",
			body="Adhemar Jacket",
			hands="Adhemar Wristbands",
			ring1="Chirich Ring +1",
			ring2="Epona's Ring",
			back="Grounded Mantle",
			waist="Windbuffet Belt +1",
			legs="Samnuha Tights",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}}
        }
        sets.engaged.PDT = set_combine(sets.engaged, {
            hands="Iuitl Wristbands +1",
    	    back="Moonbeam Cape",
            neck="Twilight Torque",
            ring1="Dark Ring",
            ring2="Defending Ring"
        })
        sets.engaged.Bow = set_combine(sets.engaged, {})

        sets.engaged.Melee = {    
            head="Adhemar Bonnet", 
			neck="Lissome necklace", 
			ear1="Suppanomimi", 
			ear2="Telos Earring",
			body="Adhemar Jacket",
			hands="Adhemar Wristbands",
			ring1="Chirich Ring +1",
			ring2="Epona's Ring",
			back="Grounded Mantle",
			waist="Windbuffet Belt +1",
			legs="Samnuha Tights",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} 
        }
        sets.engaged.Bow.Melee = sets.engaged.Melee

        sets.engaged.Melee.PDT = set_combine(sets.engaged.Melee, {
            neck="Twilight Torque",
            ring1="Patricius Ring",
            ring2="Defending Ring",
    	    back="Moonbeam Cape",
        })

        sets.engaged.DW = set_combine(sets.engaged, {})

        sets.engaged.DW.Melee = set_combine(sets.engaged.Melee, {
            head="Adhemar Bonnet", 
			neck="Lissome necklace", 
			ear1="Suppanomimi", 
			ear2="Telos Earring",
			body="Adhemar Jacket",
			hands="Adhemar Wristbands",
			ring1="Chirich Ring +1",
			ring2="Epona's Ring",
			back="Grounded Mantle",
			waist="Windbuffet Belt +1",
			legs="Carmine Cuisses +1",
			feet={ name="Herculean Boots", augments={'Accuracy+20 Attack+20','"Triple Atk."+4',}} 
        })

        ------------------------------------------------------------------
        -- Preshot / Snapshot sets
        ------------------------------------------------------------------
        sets.precast.RA = {
            head="Amini Gapette", -- 7
            body="Amini Caban +1", -- 7
            hands="Carmine Finger Gauntlets", --8
            back="Lutian Cape", -- 2
            legs="Adhemar Kecks",
            waist="Impulse Belt", -- 2
            feet="Meg. Jam. +1" -- 8
        }
        
        ------------------------------------------------------------------
        -- Default Base Gear Sets for Ranged Attacks. Geared for Gun
        ------------------------------------------------------------------
        sets.midcast.RA = { 
							head="Meghanada Visor +1",
							neck="Iskur Gorget", 
							ear2="Telos Earring", 
							ear1="Volley Earring",
							body="Adhemar Jacket",
							hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
							ring1="Apate Ring",
							ring2="Cacoethic Ring", 
							waist ="Yemaya Belt",
							back="Belenus's Cape",   
							legs="Adhemar Kecks",
							feet="Meg. Jam. +1"
        }
        sets.midcast.RA.Mid = set_combine(sets.midcast.RA, {
            back="Lutian Cape", 
            legs="Adhemar Kecks",
            feet="Thereoid Greaves"
        })
        sets.midcast.RA.Acc = set_combine(sets.midcast.RA.Mid, {
            neck="Iqabi Necklace", 
            hands="Alruna's Gloves +1",
            body="Amini Caban +1",
            ring1="Hajduk Ring", 
            waist="Eschan Stone",
            legs="Adhemar Kecks",
        })
    
        -- Samurai Roll sets 
        sets.midcast.RA.SamRoll = set_combine(sets.midcast.RA, {
            body="Arcadian Jerkin +1",
            ring2="Longshot Ring",
        })
        sets.midcast.RA.Mid.SamRoll = set_combine(sets.midcast.RA.SamRoll, {
            ring2="Longshot Ring",
            back="Lutian Cape",hands="Amini Glovelettes +1",
            legs="Amini Brague +1", 
        })
        sets.midcast.RA.Acc.SamRoll = set_combine(sets.midcast.RA.Mid.SamRoll, {
            neck="Iqabi Necklace", 
            ring1="Hajduk Ring", 
            ring2="Longshot Ring",
            legs="Adhemar Kecks",
        })
        
        -- SAM Subjob
        sets.midcast.RA.SAM = {
							head="Meghanada Visor +1",
							neck="Sanctity Necklace", 
							ear2="Telos Earring", 
							ear1="Volley Earring",
							body="Adhemar Jacket",
							hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
							ring1="Apate Ring",
							ring2="Cacoethic Ring", 
							waist ="Yemaya Belt",
							back="Belenus's Cape",   
							legs="Pursuer's Pants",
							feet ="Meg. Jam +1"
        }
        sets.midcast.RA.SAM.Mid = set_combine(sets.midcast.RA.SAM, { 
            hands="Amini Glovelettes +1",
            body="Amini Caban +1",
            feet="Orion Socks +1"
        })
        sets.midcast.RA.SAM.Acc = set_combine(sets.midcast.RA.SAM.Mid, {
            back="Lutian Cape", 
            neck="Iqabi Necklace", 
            ring2="Longshot Ring",
            waist="Eschan Stone"
        })

        -- Samurai Roll for /sam, assume we're using a staff
        sets.midcast.RA.SAM.SamRoll = set_combine(sets.midcast.RA.SAM, {
            hands="Amini Glovelettes +1"
        })
        sets.midcast.RA.SAM.Mid.SamRoll = set_combine(sets.midcast.RA.SAM.Mid, {
            ear1="Enervating Earring",
            hands="Alruna's Gloves +1",
            legs="Adhemar Kecks", 
        })
        sets.midcast.RA.SAM.Acc.SamRoll = set_combine(sets.midcast.RA.SAM.Acc, {
            hands="Alruna's Gloves +1",
        })

        -- Bow base set.
        sets.midcast.RA.Bow = {
							head="Meghanada Visor +1",
							neck="Sanctity Necklace", 
							ear2="Telos Earring", 
							ear1="Volley Earring",
							body="Adhemar Jacket",
							hands={ name="Adhemar Wristbands", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
							ring1="Apate Ring",
							ring2="Cacoethic Ring", 
							waist ="Yemaya Belt",
							back="Belenus's Cape",   
							legs="Pursuer's Pants",
							feet ="Meg. Jam +1"
        }
        sets.midcast.RA.Bow.Mid = set_combine(sets.midcast.RA.Bow, {
            neck="Yarak Torque",
            legs="Adhemar Kecks",
            feet="Orion Socks +1"
        })
        sets.midcast.RA.Bow.Acc = set_combine(sets.midcast.RA.Bow.Mid, {
            body="Amini Caban +1",
            ring1="Hajduk Ring",
            ring2="Longshot Ring",
            waist="Eschan Stone"
        })
       
        -- Bow Sam roll
        sets.midcast.RA.Bow.SamRoll = set_combine(sets.midcast.RA.Bow, {
            body="Arcadian Jerkin +1",
            hands="Amini Glovelettes +1",
            ring2="Longshot Ring",
            back="Lutian Cape"
        })
        sets.midcast.RA.Bow.Mid.SamRoll = set_combine(sets.midcast.RA.Bow.SamRoll, {
            body="Pursuer's Doublet",
        })
        sets.midcast.RA.Bow.Acc.SamRoll = set_combine(sets.midcast.RA.Bow.Mid.SamRoll, {
            neck="Yarak Torque",
            hands="Amini Glovelettes +1",
            body="Amini Caban +1",
            ring1="Longshot Ring",
            feet="Orion Socks +1"
        })
        
        -- Sam SJ / Bow 
        sets.midcast.RA.SAM.Bow = set_combine(sets.midcast.RA.SAM, {
            feet="Thereoid Greaves"
        })
        sets.midcast.RA.SAM.Bow.Mid = set_combine(sets.midcast.RA.SAM.Mid, {
            feet="Orion Socks +1"
        })
        sets.midcast.RA.SAM.Bow.Acc = set_combine(sets.midcast.RA.SAM.Acc, {})

        -- Sam SJ / Bow / Sam's Roll
        sets.midcast.RA.SAM.Bow.SamRoll = set_combine(sets.midcast.RA.SAM.Bow, {
            waist="Elanid Belt",
            feet="Orion Socks +1"
        })

        sets.midcast.RA.SAM.Bow.Mid.SamRoll = set_combine(sets.midcast.RA.SAM.Bow.Mid, {
            waist="Elanid Belt",
        })
        sets.midcast.RA.SAM.Bow.Acc.SamRoll = set_combine(sets.midcast.RA.SAM.Bow.Acc, {})


        -- Weaponskill sets  
        sets.precast.WS = {
						head={ name="Herculean Helm", augments={'Accuracy+24 Attack+24','Weapon skill damage +5%','DEX+4',}},
						neck="Fotia gorget",
						ear1="Sherida Earring",
						ear2="Moonshade Earring",
                        body="Adhemar Jacket",
						hands="Nyame Gauntlets",
						ring1="Dingir Ring",
						ring2="Regal Ring",
                        back="Belenus's Cape",
						waist="Fotia Belt",
						legs={ name="Adhemar Kecks", augments={'AGI+10','Rng.Acc.+15','Rng.Atk.+15',}},
						feet="Meg. Jam. +1",}
        
        sets.precast.WS.Mid = set_combine(sets.precast.WS, {
            ear1="Enervating Earring",
            legs="Adhemar Kecks",
            feet="Orion Socks +1",
        })
        sets.precast.WS.Acc = set_combine(sets.precast.WS.Mid, {
            back="Belenus's Cape"
        })

        -- WILDFIRE
        sets.Wildfire = {
            head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}},
							neck="Sanctity Necklace",  
							ear2="Friomisi earring", 
							ear1="Moonshade Earring",
							body="Samnuha Coat",
							hands="Nyame Gauntlets",   
							ring1="Acumen Ring", 
							ring2 ='Dingir Ring',
							waist ="Eschan Stone",
							back="Belenus's Cape",   
							legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}}, 
							feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}}}
        
        sets.precast.WS['Wildfire'] = set_combine(sets.precast.WS, sets.Wildfire)
        sets.precast.WS['Wildfire'].Mid = set_combine(sets.precast.WS.Mid, sets.Wildfire)
        sets.precast.WS['Wildfire'].Acc = set_combine(sets.precast.WS.Acc, sets.Wildfire)
        
        sets.Trueflight = {
            head={ name="Herculean Helm", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','"Dbl.Atk."+2','Mag. Acc.+12','"Mag.Atk.Bns."+4',}},
							neck="Sanctity Necklace",  
							ear2="Friomisi earring", 
							ear1="Moonshade Earring",
							body="Samnuha Coat",
							hands="Nyame Gauntlets",   
							ring1="Acumen Ring", 
							ring2 ='Dingir Ring',
							--waist ="Eschan Stone",
							waist="Hachirin-no-obi",
							back="Belenus's Cape",   
							legs={ name="Herculean Trousers", augments={'"Mag.Atk.Bns."+25','Phys. dmg. taken -5%','INT+6','Mag. Acc.+9',}}, 
							feet={ name="Herculean Boots", augments={'Mag. Acc.+15 "Mag.Atk.Bns."+15','VIT+10','"Mag.Atk.Bns."+12',}}}
        
        sets.precast.WS['Trueflight'] = set_combine(sets.precast.WS, sets.Trueflight)
        sets.precast.WS['Trueflight'].Mid = set_combine(sets.precast.WS.Mid, sets.Trueflight)
        sets.precast.WS['Trueflight'].Acc = set_combine(sets.precast.WS.Acc, sets.Trueflight)

        -- CORONACH
        sets.Coronach = {
           neck="Fotia Gorget",
           waist="Fotia Belt",
        }
        sets.precast.WS['Coronach'] = set_combine(sets.precast.WS, sets.Coronach)
        sets.precast.WS['Coronach'].Mid = set_combine(sets.precast.WS.Mid, sets.Coronach)
        sets.precast.WS['Coronach'].Acc = set_combine(sets.precast.WS.Acc, sets.Coronach)

        sets.precast.WS['Coronach'].SAM = set_combine(sets.precast.WS, {
            neck="Ocachi Gorget",
            hands="Amini Glovelettes +1",
            legs="Amini Brague +1", 
        })

        -- LAST STAND
        sets.LastStand = {
           neck="Fotia Gorget",
           ring2="Regal Ring",
           waist="Fotia Belt",
           feet="Orion Socks +1"
        }
        sets.precast.WS['Last Stand'] = set_combine(sets.precast.WS, sets.LastStand)
        sets.precast.WS['Last Stand'].Mid = set_combine(sets.precast.WS.Mid, sets.LastStand)
        sets.precast.WS['Last Stand'].Acc = set_combine(sets.precast.WS.Acc, sets.LastStand)

        sets.precast.WS['Last Stand'].SAM = set_combine(sets.precast.WS, {
            neck="Fotia Gorget",
            ear1="Telos Earring",
            ear2="Moonshade Earring",
            hands="Amini Glovelettes +1",
            ring2="Garuda Ring",
            waist="Fotia Belt",
            legs="Amini Brague +1", 
        })
        
        -- DETONATOR
        sets.Detonator = {
           neck="Fotia Gorget",
           waist="Fotia Belt",
           feet="Arcadian Socks +1"
        }
        sets.precast.WS['Detonator'] = set_combine(sets.precast.WS, sets.Detonator)
        sets.precast.WS['Detonator'].Mid = set_combine(sets.precast.WS.Mid, sets.Detonator)
        sets.precast.WS['Detonator'].Acc = set_combine(sets.precast.WS.Acc, sets.Detonator)
        
        -- SLUG SHOT
        sets.SlugShot = {
           neck="Fotia Gorget",
           waist="Fotia Belt",
           feet="Arcadian Socks +1"
        }
        sets.precast.WS['Slug Shot'] = set_combine(sets.precast.WS, sets.SlugShot)
        sets.precast.WS['Slug Shot'].Mid = set_combine(sets.precast.WS.Mid, sets.SlugShot)
        sets.precast.WS['Slug Shot'].Acc = set_combine(sets.precast.WS.Acc, sets.SlugShot)
        
        sets.precast.WS['Heavy Shot'] = set_combine(sets.precast.WS, sets.SlugShot)
        sets.precast.WS['Heavy Shot'].Mid = set_combine(sets.precast.WS.Mid, sets.SlugShot)
        sets.precast.WS['Heavy Shot'].Acc = set_combine(sets.precast.WS.Acc, sets.SlugShot)

        -- NAMAS
        sets.Namas = {
            neck="Fotia Gorget",
            waist="Fotia Belt",
            hands="Amini Glovelettes +1", -- override since we don't want sigyns in Mid or Acc
            back="Sylvan Chlamys",
            feet="Arcadian Socks +1"
        }
        sets.precast.WS['Namas Arrow'] = set_combine(sets.precast.WS, sets.Namas)
        sets.precast.WS['Namas Arrow'].Mid = set_combine(sets.precast.WS.Mid, sets.Namas)
        sets.precast.WS['Namas Arrow'].Acc = set_combine(sets.precast.WS.Acc, sets.Namas)
        
        sets.precast.WS['Namas Arrow'].SAM = set_combine(sets.precast.WS, {
            neck="Fotia Gorget",
            ear1="Enervating Earring",
            ear2="Tripudio Earring",
            waist="Fotia Belt",
            back="Sylvan Chlamys",
            legs="Amini Brague +1", 
        })

        -- JISHNUS
        sets.Jishnus = {
            neck="Fotia Gorget",
            waist="Fotia Belt",
            legs="Amini Brague +1", 
            ring2="Rajas Ring",
            back="Rancorous Mantle",
            feet="Thereoid Greaves"
        }
        sets.precast.WS['Jishnu\'s Radiance'] = set_combine(sets.precast.WS, sets.Jishnus)
        sets.precast.WS['Jishnu\'s Radiance'].Mid = set_combine(sets.precast.WS.Mid, {
            neck="Fotia Gorget",
            waist="Fotia Belt",
            legs="Adhemar Kecks",
            ring2="Rajas Ring",
            back="Lutian Cape",
            feet="Orion Socks +1"

        })
        sets.precast.WS['Jishnu\'s Radiance'].Acc = set_combine(sets.precast.WS.Acc, {
            neck="Fotia Gorget",
            ear2="Moonshade Earring",
            waist="Fotia Belt"
        })

        -- SIDEWINDER
        sets.Sidewinder = {
            neck="Fotia Gorget",
            ear2="Moonshade Earring",
            waist="Fotia Belt",
            hands="Arcadian Bracers +1",
            back="Buquwik Cape",
            feet="Arcadian Socks +1"
        }
        sets.precast.WS['Sidewinder'] = set_combine(sets.precast.WS, sets.Sidewinder)
        sets.precast.WS['Sidewinder'].Mid = set_combine(sets.precast.WS.Mid, sets.Sidewinder)
        sets.precast.WS['Sidewinder'].Acc = set_combine(sets.precast.WS.Acc, sets.Sidewinder)

        sets.precast.WS['Refulgent Arrow'] = sets.precast.WS['Sidewinder']
        sets.precast.WS['Refulgent Arrow'].Mid = sets.precast.WS['Sidewinder'].Mid
        sets.precast.WS['Refulgent Arrow'].Acc = sets.precast.WS['Sidewinder'].Acc
       
        -- Resting sets
        sets.resting = {}
       
        -- Defense sets
        sets.defense.PDT = set_combine(sets.idle, {})
        sets.defense.MDT = set_combine(sets.idle, {})
        --sets.Kiting = {feet="Fajin Boots"}
       
        sets.buff.Barrage = {

        ear1="Sherida Earring",
        head="Meghanada Visor +1",
	    neck="Sanctity Necklace", 
	    ear2="Telos Earring", 
	    body="Adhemar Jacket",
 	    hands="Orion Bracers +1",
	    ring1="Apate Ring",
	    ring2="Cacoethic Ring", 
 	    waist ="Yemaya Belt",
	    back="Belenus's Cape",   
	    legs="Pursuer's Pants",
	    feet ="Meg. Jam +1"
        }
        -- placeholder until I can get to it
        sets.buff.Barrage.Mid = sets.buff.Barrage
        sets.buff.Barrage.Acc = sets.buff.Barrage

        sets.buff.Camouflage =  {body="Orion Jerkin +1"}

        sets.Overkill =  {
            body="Arcadian Jerkin +1"
        }
        sets.Overkill.Preshot = set_combine(sets.precast.RA, sets.Overkill)

end

function job_pretarget(spell, action, spellMap, eventArgs)
    -- If autora enabled, use WS automatically at 100+ TP
    if spell.action_type == 'Ranged Attack' then
        if player.tp >= 1000 and state.AutoRA.value == 'WS' and not buffactive.amnesia then
            cancel_spell()
            use_weaponskill()
        end
    end
end 
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
 
function job_precast(spell, action, spellMap, eventArgs)
        
        if state.Buff[spell.english] ~= nil then
            state.Buff[spell.english] = true
        end
        --add_to_chat(8, state.CombatForm)
        if sam_sj then
            classes.CustomClass = 'SAM'
        end

        if spell.action_type == 'Ranged Attack' and player.equipment.range == gear.Bow then
            state.CombatWeapon:set('Bow')
        end
        -- add support for RangedMode toggles to EES
        if spell.english == 'Eagle Eye Shot' then
            classes.JAMode = state.RangedMode.value
        end
        -- Safety checks for weaponskills 
        if spell.type:lower() == 'weaponskill' then
            if player.tp < 1000 then
                    eventArgs.cancel = true
                    return
            end
            if ((spell.target.distance >8 and spell.skill ~= 'Archery' and spell.skill ~= 'Marksmanship') or (spell.target.distance >21)) then
                -- Cancel Action if distance is too great, saving TP
                add_to_chat(122,"Outside WS Range! /Canceling")
                eventArgs.cancel = true
                return
            
            elseif state.DefenseMode.value ~= 'None' then
                -- Don't gearswap for weaponskills when Defense is on.
                eventArgs.handled = true
            end
        end
        -- Ammo checks
	    if spell.action_type == 'Ranged Attack' or
          (spell.type == 'WeaponSkill' and (spell.skill == 'Marksmanship' or spell.skill == 'Archery')) then
            check_ammo(spell, action, spellMap, eventArgs)
        end
end
 
-- Run after the default precast() is done.
-- eventArgs is the same one used in job_precast, in case information needs to be persisted.
-- This is where you place gear swaps you want in precast but applied on top of the precast sets
function job_post_precast(spell, action, spellMap, eventArgs)
    if state.Buff.Camouflage then
        equip(sets.buff.Camouflage)
    elseif state.Buff.Overkill then
        equip(sets.Overkill.Preshot)
    end
    if spell.type == 'WeaponSkill' then
        if state.CapacityMode.value then
            equip(sets.CapacityMantle)
        end
    end
end
 
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_midcast(spell, action, spellMap, eventArgs)
    -- Barrage
    if spell.action_type == 'Ranged Attack' and state.Buff.Barrage then
        if state.RangedMode.current == 'Mid' then
            equip(sets.buff.Barrage.Mid)
        elseif state.RangedMode.current == 'Acc' then
            equip(sets.buff.Barrage.Acc)
        else
            equip(sets.buff.Barrage.Acc)
        end
        eventArgs.handled = true
    end
    if state.Buff.Camouflage then
        equip(sets.buff.Camouflage)
    end
    if state.Buff.Overkill then
        equip(sets.Overkill)
    end
    if spell.action_type == 'Ranged Attack' then
        if state.CapacityMode.value then
            equip(sets.CapacityMantle)
        end
    end
end

 
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)
    -- autora
    if state.AutoRA.value ~= 'Normal' then
        use_ra(spell)
    end

    if state.Buff[spell.name] ~= nil then
        state.Buff[spell.name] = not spell.interrupted or buffactive[spell.english]
    end

end
 
-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    --if S{"courser's roll"}:contains(buff:lower()) then
    --if string.find(buff:lower(), 'samba') then

    if state.Buff[buff] ~= nil then
        state.Buff[buff] = gain
        handle_equipping_gear(player.status)
    end
    if buff == 'Velocity Shot' and gain then
        windower.send_command('wait 290;input /echo **VELOCITY SHOT** Wearing off in 10 Sec.')
    elseif buff == 'Double Shot' and gain then
        windower.send_command('wait 90;input /echo **DOUBLE SHOT OFF**;wait 90;input /echo **DOUBLE SHOT READY**')
    elseif buff == 'Decoy Shot' and gain then
        windower.send_command('wait 170;input /echo **DECOY SHOT** Wearing off in 10 Sec.];wait 120;input /echo **DECOY SHOT READY**')
    end

    if  buff == "Samurai Roll" or buff == "Courser's Roll" or string.find(buff:lower(), 'flurry') then
        classes.CustomRangedGroups:clear()

        if (buff == "Samurai Roll" and gain) or buffactive['Samurai Roll'] then
            classes.CustomRangedGroups:append('SamRoll')
        end
       
    end

    if buff == "Camouflage" then
        if gain then
            equip(sets.buff.Camouflage)
            disable('body')
        else
            enable('body')
        end
    end

    if buff == "Camouflage" or buff == "Overkill" or buff == "Samurai Roll" or buff == "Courser's Roll" then
        if not midaction() then
            handle_equipping_gear(player.status)
        end
    end
end
 
-- Called before the Include starts constructing melee/idle/resting sets.
-- Can customize state or custom melee class values at this point.
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_handle_equipping_gear(status, eventArgs)
    --select_earring()
end
 
function customize_idle_set(idleSet)
    if state.HybridMode.value == 'PDT' then
        state.IdleMode.value = 'PDT'
    elseif state.HybridMode.value ~= 'PDT' then
        state.IdleMode.value = 'Normal'
    end
	if state.Buff.Camouflage then
		idleSet = set_combine(idleSet, sets.buff.Camouflage)
	end
    if player.hpp < 90 then
        idleSet = set_combine(idleSet, sets.idle.Regen)
    end
    return idleSet
end
 
function customize_melee_set(meleeSet)
    if state.Buff.Camouflage then
    	meleeSet = set_combine(meleeSet, sets.buff.Camouflage)
    end
    if state.Buff.Overkill then
    	meleeSet = set_combine(meleeSet, sets.Overkill)
    end
    if state.CapacityMode.value then
        meleeSet = set_combine(meleeSet, sets.CapacityMantle)
    end
    return meleeSet
end
 
function job_status_change(newStatus, oldStatus, eventArgs)
    if newStatus == "Engaged" and player.equipment.range == gear.Bow then
         state.CombatWeapon:set('Bow')
    end

    if camo_active() then
        disable('body')
    else
        enable('body')
    end
end
 

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements self-commands.
-------------------------------------------------------------------------------------------------------------------
 
-- Called for custom player commands.
function job_self_command(cmdParams, eventArgs)
end
 
-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_update(cmdParams, eventArgs)
    get_combat_form()
    get_custom_ranged_groups()
    sam_sj = player.sub_job == 'SAM' or false
    -- called here incase buff_change failed to update value
    state.Buff.Camouflage = buffactive.camouflage or false
    state.Buff.Overkill = buffactive.overkill or false

    if camo_active() then
        disable('body')
    else
        enable('body')
    end
end
 
---- Job-specific toggles.
--function job_toggle_state(field)
--    if field:lower() == 'autora' then
--        state.AutoRA = not state.AutoRA
--        return state.AutoRA
--    end
--end
 
---- Request job-specific mode lists.
---- Return the list, and the current value for the requested field.
--function job_get_option_modes(field)
--    if field:lower() == 'autora' then
--        return state.AutoRA
--    end
--end
-- 
---- Set job-specific mode values.
---- Return true if we recognize and set the requested field.
--function job_set_option_mode(field, val)
--    if field:lower() == 'autora' then
--        state.AutoRA = val
--        return true
--    end
--end
 
-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)
    local msg = ''
    if state.AutoRA.value ~= 'Normal' then
        msg = '[Auto RA: ON]['..state.AutoRA.value..']'
    else
        msg = '[Auto RA: OFF]'
    end

    add_to_chat(122, 'Ranged: '..state.RangedMode.value..'/'..state.HybridMode.value..', WS: '..state.WeaponskillMode.value..', '..msg)
    
    eventArgs.handled = true
 
end
-- Special WS mode for Sam subjob
function get_custom_wsmode(spell, spellMap, ws_mode)
    if spell.skill == 'Archery' or spell.skill == 'Marksmanship' then
        if player.sub_job == 'SAM' then
            return 'SAM'
        end
    end
end
-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------
function get_combat_form()
    if S{'NIN', 'DNC'}:contains(player.sub_job) and rng_sub_weapons:contains(player.equipment.sub) then
        state.CombatForm:set("DW")
    else
        state.CombatForm:reset()
    end
end

function get_custom_ranged_groups()
	classes.CustomRangedGroups:clear()
    
    if buffactive['Samurai Roll'] then
        classes.CustomRangedGroups:append('SamRoll')
    end

end

function use_weaponskill()
    if player.equipment.range == gear.Bow then
        send_command('input /ws "'..auto_bow_ws..'" <t>')
    elseif player.equipment.range == gear.Gun then
        send_command('input /ws "'..auto_gun_ws..'" <t>')
    end
end

function job_state_change(stateField, newValue, oldValue)
    if stateField == 'Auto RA' then
        if newValue ~= 'Normal' then
            send_command('@wait 2.5; input /ra <t>')
        end
    end
end

function use_ra(spell)
    
    local delay = '2.2'
    -- BOW
    if player.equipment.range == gear.Bow then
        if spell.type:lower() == 'weaponskill' then
            delay = '2.25'
         else
             if buffactive["Courser's Roll"] then
                 delay = '0.7' -- MAKE ADJUSTMENT HERE
             elseif buffactive["Flurry II"] or buffactive.Overkill then
                 delay = '0.5'
             else
                delay = '1.05' -- MAKE ADJUSTMENT HERE
            end
        end
    else
    -- GUN 
        if spell.type:lower() == 'weaponskill' then
            delay = '2.25' 
        else
            if buffactive["Courser's Roll"] then
                delay = '0.7' -- MAKE ADJUSTMENT HERE
            elseif buffactive.Overkill or buffactive['Flurry II'] then
                delay = '0.5'
            else
                delay = '1.05' -- MAKE ADJUSTMENT HERE
            end
        end
    end
    send_command('@wait '..delay..'; input /ra <t>')
end

function camo_active()
    return state.Buff['Camouflage']
end
-- Check for proper ammo when shooting or weaponskilling
function check_ammo(spell, action, spellMap, eventArgs)
	-- Filter ammo checks depending on Unlimited Shot
	if state.Buff['Unlimited Shot'] then
		if player.equipment.ammo ~= U_Shot_Ammo[player.equipment.range] then
			if player.inventory[U_Shot_Ammo[player.equipment.range]] or player.wardrobe[U_Shot_Ammo[player.equipment.range]] then
				add_to_chat(122,"Unlimited Shot active. Using custom ammo.")
				equip({ammo=U_Shot_Ammo[player.equipment.range]})
			elseif player.inventory[DefaultAmmo[player.equipment.range]] or player.wardrobe[DefaultAmmo[player.equipment.range]] then
				add_to_chat(122,"Unlimited Shot active but no custom ammo available. Using default ammo.")
				equip({ammo=DefaultAmmo[player.equipment.range]})
			else
				add_to_chat(122,"Unlimited Shot active but unable to find any custom or default ammo.")
			end
		end
	else
		if player.equipment.ammo == U_Shot_Ammo[player.equipment.range] and player.equipment.ammo ~= DefaultAmmo[player.equipment.range] then
			if DefaultAmmo[player.equipment.range] then
				if player.inventory[DefaultAmmo[player.equipment.range]] then
					add_to_chat(122,"Unlimited Shot not active. Using Default Ammo")
					equip({ammo=DefaultAmmo[player.equipment.range]})
				else
					add_to_chat(122,"Default ammo unavailable.  Removing Unlimited Shot ammo.")
					equip({ammo=empty})
				end
			else
				add_to_chat(122,"Unable to determine default ammo for current weapon.  Removing Unlimited Shot ammo.")
				equip({ammo=empty})
			end
		elseif player.equipment.ammo == 'empty' then
			if DefaultAmmo[player.equipment.range] then
				if player.inventory[DefaultAmmo[player.equipment.range]] then
					add_to_chat(122,"Using Default Ammo")
					equip({ammo=DefaultAmmo[player.equipment.range]})
				else
					add_to_chat(122,"Default ammo unavailable.  Leaving empty.")
				end
			else
				add_to_chat(122,"Unable to determine default ammo for current weapon.  Leaving empty.")
			end
		elseif player.inventory[player.equipment.ammo].count < 15 then
			add_to_chat(122,"Ammo '"..player.inventory[player.equipment.ammo].shortname.."' running low ("..player.inventory[player.equipment.ammo].count..")")
		end
	end
end
-- Orestes uses Samurai Roll. The total comes to 5!
--function detect_cor_rolls(old,new,color,newcolor)
--    if string.find(old,'uses Samurai Roll. The total comes to') then
--        add_to_chat(122,"SAM Roll")
--    end
--end

