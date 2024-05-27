local _, Cell = ...
local I = Cell.iFuncs

local bleedList

function I.CheckDebuffType(debuffType, spellId)
    if (not debuffType or debuffType == "") and bleedList[spellId] then
        return "Bleed"
    end
    return debuffType
end

-- data from https://wago.tools/db2/SpellEffect
-- EffectMechanic == 15
-- Effect == 6
--
-- Some bleeds do not have proper EffectMechanic flag
-- Those can however be found here https://wago.tools/db2/SpellCategories
-- Mechanic == 15
-- Crossreference with SpellEffect.Effect == 6
bleedList = {
    [432416] = true, -- Treacherous Blow
    [429233] = true, -- Rezan's Fury
    [427182] = true, -- Bloody Pounce
    [426660] = true, -- Razor Jaws
    [426587] = true, -- Bramble Burst
    [426284] = true, -- Finishing Wound
    [424493] = true, -- Shadow Rupture
    [424065] = true, -- Umbral Destruction
    [423431] = true, -- Crushing Blow
    [422683] = true, -- Thrash
    [422466] = true, -- Shadow Spines
    [418624] = true, -- Rending Slash
    [418160] = true, -- Sawblade-Storm
    [418009] = true, -- Serrated Arrows
    [417928] = true, -- Burning Claws
    [417751] = true, -- Skewer
    [416258] = true, -- Stonebolt
    [414552] = true, -- Stonecrack
    [414506] = true, -- Lacerate
    [414466] = true, -- Jagged Gills
    [414340] = true, -- Drenched Blades
    [413136] = true, -- Whirling Dagger
    [413131] = true, -- Whirling Dagger
    [412505] = true, -- Rending Cleave
    [412285] = true, -- Stonebolt
    [412172] = true, -- Ceaseless Nibbling
    [411924] = true, -- Drilljaws
    [411700] = true, -- Slobbering Bite
    [411437] = true, -- Brutal Lacerations
    [411101] = true, -- Artifact Shards
    [407313] = true, -- Shrapnel
    [407120] = true, -- Serrated Axe
    [406499] = true, -- Ravening Leaps
    [406365] = true, -- Rending Charge
    [406215] = true, -- Vicious Bite
    [406183] = true, -- Time Slash
    [405233] = true, -- Thrash
    [404978] = true, -- Devastating Rend
    [404945] = true, -- Raking Slice
    [404907] = true, -- Rupturing Slash
    [403790] = true, -- Vicious Swipe
    [403662] = true, -- Garrote
    [403589] = true, -- Gushing Wound
    [401370] = true, -- Deep Claws
    [400941] = true, -- Ragged Slash
    [400344] = true, -- Spike Traps
    [400050] = true, -- Claw Rip
    [398988] = true, -- Chomp
    [398497] = true, -- Rock Needle
    [398392] = true, -- Stomp
    [397364] = true, -- Thunderous Roar
    [397112] = true, -- Primal Devastation
    [397092] = true, -- Impaling Horn
    [397037] = true, -- Slicing Winds
    [396807] = true, -- Savage Gore
    [396716] = true, -- Splinterbark
    [396675] = true, -- Hemorrhaging Rend
    [396674] = true, -- Rupturing Slash
    [396641] = true, -- Rending Slash
    [396639] = true, -- Bloody Pounce
    [396476] = true, -- Rending Claw
    [396353] = true, -- Fatal Chomp
    [396348] = true, -- Dismember
    [396093] = true, -- Savage Leap
    [396007] = true, -- Vicious Peck
    [395832] = true, -- Jagged Cuts
    [395827] = true, -- Severing Gore
    [394647] = true, -- Merciless Gore
    [394628] = true, -- Peck
    [394371] = true, -- Hit the Mark
    [394063] = true, -- Rend
    [394036] = true, -- Serrated Bone Spike
    [394021] = true, -- Mutilated Flesh
    [393820] = true, -- Horn Swing
    [393817] = true, -- Hardened Shards
    [393718] = true, -- Heartpiercer
    [393444] = true, -- Gushing Wound
    [393426] = true, -- Spear Swipe
    [392841] = true, -- Hungry Chomp
    [392734] = true, -- Raking Slice
    [392416] = true, -- Beetle Charge
    [392411] = true, -- Beetle Thrust
    [392341] = true, -- Mighty Swipe
    [392332] = true, -- Horn Gore
    [392236] = true, -- Furious Charge
    [392235] = true, -- Furious Charge
    [392006] = true, -- Vicious Chomp
    [391725] = true, -- Swooping Dive
    [391356] = true, -- Tear
    [391308] = true, -- Rending Swoop
    [391140] = true, -- Frenzied Assault
    [391114] = true, -- Cutting Winds
    [391098] = true, -- Puncturing Impalement
    [390834] = true, -- Primal Rend
    [390583] = true, -- Logcutter
    [390245] = true, -- Poison-Tipped Spear
    [390194] = true, -- Rending Slash
    [389881] = true, -- Spearhead
    [389505] = true, -- Rending Slice
    [388912] = true, -- Severing Slash
    [388745] = true, -- Slicing Claw
    [388539] = true, -- Rend
    [388473] = true, -- Feeding Frenzy
    [388377] = true, -- Rending Slash
    [388301] = true, -- Savage Tear
    [387809] = true, -- Splatter!
    [387473] = true, -- Big Sharp Teeth
    [387205] = true, -- Beak Rend
    [387049] = true, -- Shredding Bite
    [386640] = true, -- Tear Flesh
    [386116] = true, -- Messy
    [385905] = true, -- Tailstrike
    [385834] = true, -- Bloodthirsty Charge
    [385638] = true, -- Razor Fragments
    [385511] = true, -- Messy
    [385363] = true, -- Gore
    [385145] = true, -- Chomp
    [385060] = true, -- Odyn's Fury
    [385042] = true, -- Gushing Wound
    [384575] = true, -- Crippling Bite
    [384473] = true, -- Skewer
    [384366] = true, -- Talon Rake
    [384148] = true, -- Ensnaring Trap
    [384134] = true, -- Pierce
    [381692] = true, -- Swift Stab
    [381672] = true, -- Mutilated Flesh
    [381628] = true, -- Internal Bleeding
    [381575] = true, -- Lacerate
    [381408] = true, -- Icy Barbs
    [381357] = true, -- Tail Whap
    [378995] = true, -- Deadly Rush
    [378118] = true, -- Knocked Down
    [378061] = true, -- Arcane Hook
    [378020] = true, -- Gash Frenzy
    [377854] = true, -- Throat Gash
    [377732] = true, -- Jagged Bite
    [377609] = true, -- Dragon Rend
    [377344] = true, -- Peck
    [377002] = true, -- Thrash
    [376999] = true, -- Thrash
    [376997] = true, -- Savage Peck
    [375937] = true, -- Rending Strike
    [375919] = true, -- Severing Slice
    [375893] = true, -- Death Chakram
    [375803] = true, -- Mammoth Trap
    [375475] = true, -- Rending Bite
    [375420] = true, -- Woodchipper
    [375416] = true, -- Bleeding
    [375201] = true, -- Talon Rip
    [374892] = true, -- Gore
    [374865] = true, -- Rending Claw
    [374135] = true, -- Gore
    [373947] = true, -- Rending Swipe
    [373735] = true, -- Dragon Strike
    [372860] = true, -- Searing Wounds
    [372796] = true, -- Blazing Rush
    [372718] = true, -- Earthen Shards
    [372570] = true, -- Bold Ambush
    [372474] = true, -- Bloodletting
    [372404] = true, -- Rend
    [372397] = true, -- Vicious Bite
    [372224] = true, -- Dragonbone Axe
    [371794] = true, -- Bleeding
    [371472] = true, -- Rake
    [370742] = true, -- Jagged Strike
    [369828] = true, -- Chomp
    [369408] = true, -- Rending Slash
    [368701] = true, -- Boon of Harvested Hope
    [368651] = true, -- Vicious Wound
    [368638] = true, -- The Fourth Rune
    [368637] = true, -- The Third Rune
    [368401] = true, -- Puncture
    [367726] = true, -- Lupine's Slash
    [367521] = true, -- Bone Bolt
    [367481] = true, -- Bloody Bite
    [366884] = true, -- Ripped Secrets
    [366275] = true, -- Rending Bite
    [366075] = true, -- Bloody Peck
    [365877] = true, -- Jagged Blade
    [365336] = true, -- Rending Bite
    [363831] = true, -- Bleeding Soul
    [363830] = true, -- Sickle of the Lion
    [363124] = true, -- Hardlight Assassination
    [362819] = true, -- Rend
    [362194] = true, -- Suffering
    [362149] = true, -- Ascended Phalanx
    [361756] = true, -- Death Chakram
    [361049] = true, -- Bleeding Gash
    [361042] = true, -- Hardlight Assassination
    [361024] = true, -- Thief's Blade
    [360830] = true, -- Garrote
    [360826] = true, -- Rupture
    [360775] = true, -- Puncture
    [360194] = true, -- Deathmark
    [359981] = true, -- Rend
    [359587] = true, -- Bloody Peck
    [358224] = true, -- Jagged Swipe
    [358197] = true, -- Searing Scythe
    [357953] = true, -- Fanged Bite
    [357938] = true, -- Gnashing Teeth
    [357827] = true, -- Frantic Rip
    [357665] = true, -- Crystalline Flesh
    [357322] = true, -- Night Glaive
    [357239] = true, -- Cleave Flesh
    [357192] = true, -- Dark Flurry
    [357091] = true, -- Cleave Flesh
    [356925] = true, -- Carnage
    [356923] = true, -- Sever
    [356808] = true, -- Spiked
    [356620] = true, -- Pouch of Razor Fragments
    [356445] = true, -- Sharpened Hide
    [355832] = true, -- Quickblade
    [355416] = true, -- Sharpened Hide
    [355256] = true, -- Rending Roar
    [355087] = true, -- Piercing Quill
    [354334] = true, -- Hook'd!
    [353919] = true, -- Rury's Sleepy Tantrum
    [353466] = true, -- Sadistic Glee
    [353068] = true, -- Razor Trap
    [351976] = true, -- Shredder
    [351119] = true, -- Shuriken Blitz
    [348726] = true, -- Lethal Shot
    [348385] = true, -- Bloody Cleave
    [348074] = true, -- Assailing Lance
    [347807] = true, -- Barbed Arrow
    [347716] = true, -- Letter Opener
    [347227] = true, -- Weighted Blade
    [346844] = true, -- Alchemical Residue
    [346823] = true, -- Furious Cleave
    [346807] = true, -- Rending Roar
    [346770] = true, -- Grinding Bite
    [346396] = true, -- Bloodshed
    [345548] = true, -- Spare Meat Hook
    [344993] = true, -- Jagged Swipe
    [344464] = true, -- Shield Spike
    [344312] = true, -- Serrated Edge
    [343881] = true, -- Serrated Tear
    [343722] = true, -- Crushing Bite
    [343159] = true, -- Stone Claws
    [342675] = true, -- Bone Spear
    [342464] = true, -- Javelin Flurry
    [342406] = true, -- Victorious
    [342391] = true, -- Culling Cleave
    [342250] = true, -- Jagged Swipe
    [341863] = true, -- Bleeding Out
    [341833] = true, -- Rending Cleave
    [341475] = true, -- Crimson Flurry
    [341435] = true, -- Lunge
    [340431] = true, -- Mutilated Flesh
    [340424] = true, -- Bloodfang
    [340374] = true, -- Bloody Tantrum
    [340058] = true, -- Heart Piercer
    [339975] = true, -- Grievous Strike
    [339789] = true, -- Darksworn Blast
    [339619] = true, -- Hoperender
    [339453] = true, -- Darksworn Blast
    [339189] = true, -- Chain Bleed
    [339163] = true, -- Wicked Gash
    [338935] = true, -- Razor Petals
    [337892] = true, -- Gore
    [337729] = true, -- Kerim's Laceration
    [337414] = true, -- Ender's Breath
    [337349] = true, -- Triple Thrash
    [336810] = true, -- Ragged Claws
    [336628] = true, -- Eternal Polearm
    [335105] = true, -- Dinner Time
    [334971] = true, -- Jagged Claws
    [334960] = true, -- Vicious Wound
    [334669] = true, -- Tirnenn Wrath
    [333985] = true, -- Culling Strike
    [333913] = true, -- Wicked Laceration
    [333861] = true, -- Ricocheting Blade
    [333478] = true, -- Gut Slice
    [333250] = true, -- Reaver
    [333235] = true, -- Horn Rush
    [332836] = true, -- Chop
    [332835] = true, -- Ruthless Strikes
    [332792] = true, -- Gore
    [332678] = true, -- Gushing Wound
    [332610] = true, -- Penetrating Insight
    [332168] = true, -- Maul
    [331415] = true, -- Wicked Gash
    [331340] = true, -- Plague Swipe
    [331072] = true, -- Talon Rake
    [331066] = true, -- Bursting Plumage
    [331045] = true, -- Talon Rake
    [330632] = true, -- Maul
    [330532] = true, -- Jagged Quarrel
    [330457] = true, -- Ripping Strike
    [330400] = true, -- Bleeding Swipe
    [329990] = true, -- Craggy Swipe
    [329986] = true, -- Maul
    [329906] = true, -- Carnage
    [329609] = true, -- Ravage
    [329563] = true, -- Goring Swipe
    [329516] = true, -- Swift Slash
    [329293] = true, -- Vorpal Wound
    [328940] = true, -- Gore
    [328910] = true, -- Tantrum
    [328897] = true, -- Exsanguinated
    [328287] = true, -- Heart Strike
    [327814] = true, -- Wicked Gash
    [327258] = true, -- Rend
    [326991] = true, -- Thorny Loop
    [326586] = true, -- Crimson Flurry
    [326298] = true, -- Bleeding Wound
    [325037] = true, -- Death Chakram
    [325022] = true, -- Jagged Swipe
    [325021] = true, -- Mistveil Tear
    [324447] = true, -- Slashing Rend
    [324154] = true, -- Dark Stride
    [324149] = true, -- Flayed Shot
    [324073] = true, -- Serrated Bone Spike
    [323406] = true, -- Jagged Gash
    [323043] = true, -- Bloodletting
    [322965] = true, -- Tearing Bite
    [322796] = true, -- Wicked Gash
    [322429] = true, -- Severing Slice
    [321807] = true, -- Boneflay
    [321538] = true, -- Bloodshed
    [321043] = true, -- Vital Slice
    [320617] = true, -- Thrashing Whirl
    [320200] = true, -- Stitchneedle
    [320147] = true, -- Bleeding
    [320007] = true, -- Gash
    [319821] = true, -- Regal Bite
    [319275] = true, -- Razor Wing
    [319145] = true, -- Rending Maul
    [319127] = true, -- Gore
    [318187] = true, -- Gushing Wound
    [317916] = true, -- Razor Clip
    [317908] = true, -- Razor Wing
    [317561] = true, -- Swooping Lunge
    [316511] = true, -- Scratch
    [315805] = true, -- Crippler
    [315711] = true, -- Serrated Strike
    [315311] = true, -- Ravage
    [314852] = true, -- Rearing Charge
    [314847] = true, -- Decapitate
    [314568] = true, -- Deep Wound
    [314533] = true, -- Rend
    [314531] = true, -- Tear Flesh
    [314454] = true, -- Thrashing Lunge
    [314160] = true, -- Penetrating Lance
    [314130] = true, -- Skewer
    [313957] = true, -- Rend
    [313939] = true, -- Incendiary Barrage
    [313747] = true, -- Rend
    [313734] = true, -- Ravaging Leap
    [313674] = true, -- Jagged Wound
    [313469] = true, -- Rend
    [311748] = true, -- Lacerating Swipe
    [311744] = true, -- Deep Wound
    [311122] = true, -- Jagged Wound
    [309760] = true, -- Raking Claws
    [308938] = true, -- Lacerating Swipe
    [308891] = true, -- Jagged Chop
    [308859] = true, -- Carnivorous Bite
    [308342] = true, -- Bore
    [306772] = true, -- Massive Scythe
    [304946] = true, -- Shadow Rip
    [304453] = true, -- Hydra Maw
    [303501] = true, -- Rending Strike
    [303215] = true, -- Shell Slash
    [303162] = true, -- Carve Flesh
    [302972] = true, -- Rearing Charge
    [302474] = true, -- Phantom Laceration
    [302295] = true, -- Slicing Claw
    [301712] = true, -- Pounce
    [301061] = true, -- Thrash
    [300610] = true, -- Fanged Bite
    [299923] = true, -- Tear Flesh
    [299502] = true, -- Nanoslicer
    [299474] = true, -- Ripping Slash
    [298029] = true, -- Pincer Snap
    [297447] = true, -- Sucking Teeth
    [296777] = true, -- Bleeding Wound
    [296624] = true, -- Pierced
    [296623] = true, -- Fathom Hook
    [295945] = true, -- Rat Traps
    [295929] = true, -- Rats!
    [295008] = true, -- Bloody Cleaver
    [294901] = true, -- Serrated Blades
    [294741] = true, -- Saber Slash
    [294617] = true, -- Rupture
    [293670] = true, -- Chainblade
    [292626] = true, -- Rip
    [292611] = true, -- Rake
    [292348] = true, -- Bloodletting
    [289848] = true, -- Rending Claw
    [289459] = true, -- Fan of Glaives
    [289373] = true, -- Lacerating Pounce
    [289355] = true, -- Smoldering Rend
    [288539] = true, -- Mangle
    [288535] = true, -- Rip
    [288516] = true, -- Lacerating Swipe
    [288266] = true, -- Mangle
    [288091] = true, -- Gushing Wound
    [286269] = true, -- Mangle
    [285875] = true, -- Rending Bite
    [284158] = true, -- Circular Saw
    [283708] = true, -- Rip
    [283700] = true, -- Rake
    [283668] = true, -- Crimson Tempest
    [283667] = true, -- Rupture
    [283419] = true, -- Rend
    [282845] = true, -- Bear Trap
    [282444] = true, -- Lacerating Claws
    [281711] = true, -- Cut of Death
    [280940] = true, -- Mangle
    [280321] = true, -- Garrote
    [280286] = true, -- Dagger in the Back
    [279272] = true, -- Puncturing Digit
    [279133] = true, -- Rend
    [278950] = true, -- Pouncing Claws
    [278866] = true, -- Carve and Spit
    [278733] = true, -- Deep Wound
    [278570] = true, -- Boils and Sores
    [278483] = true, -- Toll
    [278397] = true, -- Slashing Talons
    [278396] = true, -- Sever Artery
    [278175] = true, -- Bramble Claw
    [278139] = true, -- Sharp Beak
    [277794] = true, -- Paw Swipe
    [277592] = true, -- Blood Frenzy
    [277569] = true, -- Bloodthirsty Rend
    [277517] = true, -- Serrated Slash
    [277505] = true, -- Spiked Shield
    [277491] = true, -- Crippling Strike
    [277431] = true, -- Hunter Toxin
    [277309] = true, -- Jagged Maw
    [277077] = true, -- Big Sharp Nasty Teeth
    [277073] = true, -- Jagged Blade
    [277014] = true, -- Bloody Maul
    [276887] = true, -- Hacking Slash
    [276868] = true, -- Impale
    [275895] = true, -- Rend of Kimbul
    [275570] = true, -- Ravage
    [275090] = true, -- Severing Swipe
    [274838] = true, -- Feral Frenzy
    [274389] = true, -- Rat Traps
    [274089] = true, -- Rend
    [273909] = true, -- Steelclaw Trap
    [273900] = true, -- Bramble Swipe
    [273871] = true, -- Shredding Claws
    [273794] = true, -- Rezan's Fury
    [273632] = true, -- Gaping Maw
    [273436] = true, -- Gore
    [272273] = true, -- Rending Cleave
    [272106] = true, -- Rending Slash
    [271798] = true, -- Click
    [271178] = true, -- Ravaging Leap
    [270992] = true, -- Rend Flesh
    [270979] = true, -- Rend and Tear
    [270487] = true, -- Severing Blade
    [270473] = true, -- Serrated Arrows
    [270343] = true, -- Internal Bleeding
    [270139] = true, -- Gore
    [270084] = true, -- Axe Barrage
    [269882] = true, -- Overpowering Strike
    [269576] = true, -- Master Marksman
    [268431] = true, -- Grappling Hook
    [267523] = true, -- Cutting Surge
    [267441] = true, -- Serrated Axe
    [267103] = true, -- Blight of G'huun
    [267080] = true, -- Blight of G'huun
    [267064] = true, -- Bleeding
    [266505] = true, -- Rending Claw
    [266231] = true, -- Severing Axe
    [266191] = true, -- Whirling Axe
    [266035] = true, -- Bone Splinter
    [265948] = true, -- Denticulated
    [265536] = true, -- Rending Bite
    [265533] = true, -- Blood Maw
    [265377] = true, -- Hooked Snare
    [265341] = true, -- Twin Cleave
    [265232] = true, -- Rend
    [265165] = true, -- Charging Gore
    [265074] = true, -- Rend
    [265019] = true, -- Savage Cleave
    [264688] = true, -- Goring Tusk
    [264556] = true, -- Tearing Strike
    [264210] = true, -- Jagged Mandible
    [264150] = true, -- Shatter
    [264145] = true, -- Shatter
    [263900] = true, -- Rending Bite
    [263144] = true, -- Talon Slash
    [262875] = true, -- Papercut
    [262750] = true, -- Bloody Strike
    [262677] = true, -- Keelhaul
    [262557] = true, -- Rake
    [262143] = true, -- Ravenous Claws
    [262115] = true, -- Deep Wounds
    [261910] = true, -- Cutting Slash
    [261882] = true, -- Steel Jaw Trap
    [260741] = true, -- Jagged Nettles
    [260582] = true, -- Gushing Wound
    [260563] = true, -- Gnaw
    [260455] = true, -- Serrated Fangs
    [260400] = true, -- Rend
    [260291] = true, -- Rending Cut
    [260199] = true, -- Void Rend
    [260025] = true, -- Rending Whirl
    [260016] = true, -- Itchy Bite
    [259983] = true, -- Pierce
    [259873] = true, -- Rip
    [259739] = true, -- Stone Claws
    [259382] = true, -- Shell Slash
    [259328] = true, -- Gory Whirl
    [259277] = true, -- Kill Command
    [259220] = true, -- Barbed Net
    [258825] = true, -- Vampiric Bite
    [258798] = true, -- Razorsharp Teeth
    [258718] = true, -- Scratched!
    [258143] = true, -- Rending Claws
    [258075] = true, -- Itchy Bite
    [258058] = true, -- Squeeze
    [257971] = true, -- Leaping Thrash
    [257790] = true, -- Gutripper
    [257777] = true, -- Crippling Shiv
    [257544] = true, -- Jagged Cut
    [257250] = true, -- Bramblepelt
    [257170] = true, -- Savage Tempest
    [257036] = true, -- Feral Charge
    [256965] = true, -- Thorned Barrage
    [256914] = true, -- Barbed Blade
    [256880] = true, -- Bone Splinter
    [256715] = true, -- Jagged Maw
    [256476] = true, -- Rending Whirl
    [256363] = true, -- Ripper Punch
    [256314] = true, -- Barbed Strike
    [256077] = true, -- Gore
    [255814] = true, -- Rending Maul
    [255627] = true, -- Piercing Thrust
    [255599] = true, -- Rot Bite
    [255595] = true, -- Chomp
    [255556] = true, -- Serpent Sting
    [255434] = true, -- Serrated Teeth
    [255299] = true, -- Bloodletting
    [255211] = true, -- Talon Flurry
    [254901] = true, -- Blood Frenzy
    [254575] = true, -- Rend
    [254280] = true, -- Jagged Maw
    [253610] = true, -- Ripper Blade
    [253516] = true, -- Hexabite
    [253384] = true, -- Slaughter
    [252321] = true, -- Stabbed
    [251559] = true, -- Sur'jan's Grappling Hook
    [251332] = true, -- Rip
    [250393] = true, -- Rake
    [247949] = true, -- Shrapnel Blast
    [247932] = true, -- Shrapnel Blast
    [246904] = true, -- Smoldering Rend
    [244040] = true, -- Eskhandar's Rake
    [242931] = true, -- Rake
    [242828] = true, -- Dire Thrash
    [242376] = true, -- Puncturing Strike
    [241644] = true, -- Mangle
    [241465] = true, -- Coral Cut
    [241212] = true, -- Fel Slash
    [241092] = true, -- Rend
    [241070] = true, -- Bloodletting Strike
    [240559] = true, -- Grievous Wound
    [240539] = true, -- Wild Bite
    [240449] = true, -- Grievous Wound
    [238660] = true, -- Wild Swipe
    [238618] = true, -- Fel Swipe
    [238594] = true, -- Ripper Blade
    [237346] = true, -- Rend
    [235832] = true, -- Bloodletting Strike
    [234052] = true, -- Whirlwind
    [232135] = true, -- Bloody Jab
    [231998] = true, -- Jagged Abrasion
    [231003] = true, -- Barbed Talons
    [230011] = true, -- Cruel Garrote
    [229923] = true, -- Talon Rend
    [229265] = true, -- Garrote
    [229127] = true, -- Powershot
    [228305] = true, -- Unyielding Rend
    [228281] = true, -- Rend
    [228275] = true, -- Rend
    [227742] = true, -- Garrote
    [225963] = true, -- Bloodthirsty Leap
    [225484] = true, -- Grievous Rip
    [224435] = true, -- Ashamane's Rip
    [223967] = true, -- Tear Flesh
    [223954] = true, -- Rake
    [223572] = true, -- Rend
    [223111] = true, -- Rake
    [222491] = true, -- Gutripper
    [221770] = true, -- Rend Flesh
    [221759] = true, -- Feathery Stab
    [221422] = true, -- Vicious Bite
    [221352] = true, -- Cut the Flank
    [220874] = true, -- Lacerate
    [220222] = true, -- Rending Snap
    [219680] = true, -- Impale
    [219339] = true, -- Thrash
    [219240] = true, -- Bloody Ricochet
    [219182] = true, -- Arterial Slash
    [219167] = true, -- Chomp
    [218506] = true, -- Jagged Slash
    [217868] = true, -- Impale
    [217369] = true, -- Rake
    [217363] = true, -- Ashamane's Frenzy
    [217235] = true, -- Rending Whirl
    [217200] = true, -- Barbed Shot
    [217163] = true, -- Rend
    [217157] = true, -- Jagged Wound
    [217142] = true, -- Mangle
    [217091] = true, -- Puncturing Stab
    [217041] = true, -- Shred
    [217023] = true, -- Antler Gore
    [215721] = true, -- Gut Slash
    [215537] = true, -- Trauma
    [215506] = true, -- Jagged Quills
    [215442] = true, -- Shred
    [214967] = true, -- Bloody Blade
    [214676] = true, -- Razorsharp Teeth
    [214424] = true, -- Gore
    [213990] = true, -- Shard Bore
    [213933] = true, -- Harpoon Swipe
    [213824] = true, -- Rending Pounce
    [213537] = true, -- Bloody Pin
    [213431] = true, -- Gnawing Eagle
    [211846] = true, -- Bloodletting Lunge
    [211672] = true, -- Mutilated Flesh
    [210723] = true, -- Ashamane's Frenzy
    [210177] = true, -- Spiked Shield
    [210013] = true, -- Bloodletting Slash
    [209858] = true, -- Necrotic Wound
    [209667] = true, -- Blade Surge
    [209378] = true, -- Whirling Blades
    [209336] = true, -- Mangle
    [208946] = true, -- Rip
    [208945] = true, -- Mangle
    [208470] = true, -- Necrotic Thrash
    [207690] = true, -- Bloodlet
    [207662] = true, -- Nightmare Wounds
    [205437] = true, -- Laceration
    [204968] = true, -- Hemoraging Barbs
    [204179] = true, -- Rend Flesh
    [204175] = true, -- Rend
    [200620] = true, -- Frantic Rip
    [200182] = true, -- Festering Rip
    [199847] = true, -- Grievous Wound
    [199337] = true, -- Bear Trap
    [199146] = true, -- Bucking Charge
    [199108] = true, -- Frantic Gore
    [197863] = true, -- Gore
    [197546] = true, -- Brutal Glaive
    [197395] = true, -- Finality: Nightblade
    [197381] = true, -- Exposed Wounds
    [197359] = true, -- Shred
    [196497] = true, -- Ravenous Leap
    [196376] = true, -- Grievous Tear
    [196313] = true, -- Lacerating Talons
    [196189] = true, -- Bloody Talons
    [196122] = true, -- Severing Swipe
    [196111] = true, -- Jagged Claws
    [195506] = true, -- Razorsharp Axe
    [195452] = true, -- Nightblade
    [195279] = true, -- Bind
    [195094] = true, -- Coral Slash
    [194674] = true, -- Barbed Spear
    [194639] = true, -- Rending Claws
    [194636] = true, -- Cursed Rend
    [194279] = true, -- Caltrops
    [193639] = true, -- Bone Chomp
    [193585] = true, -- Bound
    [193340] = true, -- Fenri's Bite
    [193092] = true, -- Bloodletting Sweep
    [192925] = true, -- Blood of the Assassinated
    [192131] = true, -- Throw Spear
    [192090] = true, -- Thrash
    [191977] = true, -- Impaling Spear
    [190410] = true, -- Spinning Glaive
    [189035] = true, -- Barbed Cutlass
    [188353] = true, -- Rip
    [187647] = true, -- Bloodletting Pounce
    [186730] = true, -- Exposed Wounds
    [186639] = true, -- Big Sharp Nasty Teeth
    [186594] = true, -- Laceration
    [186365] = true, -- Sweeping Blade
    [186191] = true, -- Bloodletting Slash
    [185855] = true, -- Lacerate
    [185698] = true, -- Bloody Hack
    [185539] = true, -- Rapid Rupture
    [184175] = true, -- Primal Rake
    [184090] = true, -- Bloody Arc
    [184025] = true, -- Rending Claws
    [183952] = true, -- Shadow Claws
    [183025] = true, -- Rending Lash
    [182846] = true, -- Thrash
    [182795] = true, -- Primal Mangle
    [182347] = true, -- Impaling Coral
    [182330] = true, -- Coral Cut
    [182325] = true, -- Phantasmal Wounds
    [181533] = true, -- Jagged Blade
    [181346] = true, -- Lacerating Swipe
    [177422] = true, -- Thrash
    [177337] = true, -- Carnivorous Bite
    [176695] = true, -- Bone Fragments
    [176575] = true, -- Consume Flesh
    [176256] = true, -- Talon Sweep
    [176147] = true, -- Ignite
    [175747] = true, -- Big Sharp Nasty Claws
    [175611] = true, -- Arterial Slash
    [175461] = true, -- Sadistic Slice
    [175372] = true, -- Sharp Teeth
    [175156] = true, -- Painful Pinch
    [175151] = true, -- Thousand Fangs
    [175014] = true, -- Rupture
    [174820] = true, -- Rending Claws
    [174734] = true, -- Axe to the Face!
    [174423] = true, -- Pinning Spines
    [173879] = true, -- Blade Dash
    [173876] = true, -- Rending Claws
    [173643] = true, -- Drill Fist
    [173378] = true, -- Rending Bite
    [173307] = true, -- Serrated Spear
    [173299] = true, -- Rip
    [173278] = true, -- Spinal Shards
    [173113] = true, -- Hatchet Toss
    [172889] = true, -- Charging Slash
    [172657] = true, -- Serrated Edge
    [172366] = true, -- Jagged Slash
    [172361] = true, -- Puncturing Strike
    [172139] = true, -- Lacerating Bite
    [172035] = true, -- Thrash
    [172019] = true, -- Stingtail Venom
    [170936] = true, -- Talador Venom
    [170373] = true, -- Razor Teeth
    [170367] = true, -- Vicious Throw
    [169584] = true, -- Serrated Spines
    [168392] = true, -- Fangs of the Predator
    [168097] = true, -- Shredder Bomb
    [167978] = true, -- Jagged Edge
    [167597] = true, -- Rending Nails
    [167334] = true, -- Windfang Bite
    [166917] = true, -- Savage
    [166639] = true, -- Item - Druid T17 Feral 4P Bonus Proc Driver
    [166638] = true, -- Gushing Wound
    [166185] = true, -- Rending Slash
    [165308] = true, -- Gushing Wound
    [164427] = true, -- Ravage
    [164323] = true, -- Precise Strike
    [164218] = true, -- Double Slash
    [163276] = true, -- Shredded Tendons
    [162951] = true, -- Lacerating Spines
    [162921] = true, -- Peck
    [162516] = true, -- Whirling Steel
    [162487] = true, -- Steel Trap
    [161765] = true, -- Iron Axe
    [161229] = true, -- Pounce
    [161117] = true, -- Puncturing Tusk
    [159238] = true, -- Shattered Bleed
    [158667] = true, -- Warleader's Spear
    [158453] = true, -- Rending Swipe
    [158341] = true, -- Gushing Wounds
    [158150] = true, -- Goring Swipe
    [158020] = true, -- Rearing Charge
    [157344] = true, -- Vital Strike
    [155722] = true, -- Rake
    [155701] = true, -- Serrated Slash
    [155065] = true, -- Ripping Claw
    [154960] = true, -- Pinned Down
    [154953] = true, -- Internal Bleeding
    [154489] = true, -- Puncturing Horns
    [153897] = true, -- Rending Cleave
    [152724] = true, -- Lacerating Strike
    [152623] = true, -- Rend
    [152357] = true, -- Rend
    [151475] = true, -- Drain Life
    [151092] = true, -- Traumatic Strike
    [150807] = true, -- Traumatic Strike
    [148375] = true, -- Brutal Hemorrhage
    [148033] = true, -- Grapple
    [147396] = true, -- Rake
    [146927] = true, -- Rend
    [146556] = true, -- Pierce
    [145417] = true, -- Rupture
    [145263] = true, -- Chomp
    [144853] = true, -- Carnivorous Bite
    [144304] = true, -- Rend
    [144264] = true, -- Rend
    [144263] = true, -- Rend
    [144113] = true, -- Chomp
    [143198] = true, -- Garrote
    [142931] = true, -- Exposed Veins
    [140396] = true, -- Rend
    [140276] = true, -- Rend
    [140275] = true, -- Rend
    [140274] = true, -- Vicious Wound
    [139514] = true, -- Bloodstorm
    [138956] = true, -- Dark Bite
    [137497] = true, -- Garrote
    [136753] = true, -- Slashing Talons
    [136654] = true, -- Rending Charge
    [135892] = true, -- Razor Slice
    [135528] = true, -- Bleeding Wound
    [134691] = true, -- Impale
    [133081] = true, -- Rip
    [133074] = true, -- Puncture
    [131662] = true, -- Vicious Stabbing
    [130897] = true, -- Vicious Bite
    [130785] = true, -- My Eye!
    [130306] = true, -- Ankle Bite
    [130191] = true, -- Rake
    [129537] = true, -- Snap!
    [129497] = true, -- Pounced
    [129463] = true, -- Crane Kick
    [128903] = true, -- Garrote
    [128051] = true, -- Serrated Slash
    [128013] = true, -- Bleeding Bite
    [127987] = true, -- Bleeding Bite
    [127872] = true, -- Consume Flesh
    [126912] = true, -- Grievous Whirl
    [126901] = true, -- Mortal Rend
    [125624] = true, -- Vicious Rend
    [125431] = true, -- Slice Bone
    [125206] = true, -- Rend Flesh
    [125099] = true, -- Rake
    [124800] = true, -- Pinch Limb
    [124678] = true, -- Hacking Slash
    [124341] = true, -- Bloodletting
    [124296] = true, -- Vicious Strikes
    [124015] = true, -- Gored
    [123852] = true, -- Gored
    [123422] = true, -- Arterial Bleeding
    [122962] = true, -- Carnivorous Bite
    [121411] = true, -- Crimson Tempest
    [121247] = true, -- Impale
    [120699] = true, -- Lynx Rush
    [120560] = true, -- Rake
    [120166] = true, -- Serrated Blade
    [119840] = true, -- Serrated Blade
    [118146] = true, -- Lacerate
    [115871] = true, -- Rake
    [115774] = true, -- Vicious Wound
    [115767] = true, -- Deep Wounds
    [114881] = true, -- Hawk Rend
    [114860] = true, -- Rend
    [114056] = true, -- Bloody Mess
    [113855] = true, -- Bleeding Wound
    [113344] = true, -- Bloodbath
    [112896] = true, -- Drain Blood
    [102925] = true, -- Garrote
    [102066] = true, -- Flesh Rip
    [99100] = true, -- Mangle
    [98282] = true, -- Tiny Rend
    [97357] = true, -- Gaping Wound
    [96700] = true, -- Ravage
    [96592] = true, -- Ravage
    [96570] = true, -- Gaping Wound
    [95334] = true, -- Elementium Spike Shield
    [93675] = true, -- Mortal Wound
    [93587] = true, -- Ritual of Bloodletting
    [91348] = true, -- Tenderize
    [90098] = true, -- Axe to the Head
    [89212] = true, -- Eagle Claw
    [87395] = true, -- Serrated Slash
    [87337] = true, -- Vicious Slice
    [86738] = true, -- Deep Bruise
    [86604] = true, -- Vicious Slice
    [85415] = true, -- Mangle
    [84642] = true, -- Puncture
    [83783] = true, -- Impale
    [82766] = true, -- Eye Gouge
    [82753] = true, -- Ritual of Bloodletting
    [81690] = true, -- Scent of Blood
    [81569] = true, -- Spinning Slash
    [81568] = true, -- Spinning Slash
    [81087] = true, -- Puncture Wound
    [81043] = true, -- Razor Slice
    [80051] = true, -- Grievous Wound
    [80028] = true, -- Rock Bore
    [79829] = true, -- Rip
    [79828] = true, -- Mangle
    [79444] = true, -- Impale
    [78859] = true, -- Elementium Spike Shield
    [78842] = true, -- Carnivorous Bite
    [76594] = true, -- Rend
    [76524] = true, -- Grievous Whirl
    [76507] = true, -- Claw Puncture
    [75930] = true, -- Mangle
    [75388] = true, -- Rusty Cut
    [75161] = true, -- Spinning Rake
    [75160] = true, -- Bloody Rip
    [74846] = true, -- Bleeding Wound
    [71926] = true, -- Rip
    [70278] = true, -- Puncture Wound
    [69203] = true, -- Vicious Bite
    [69065] = true, -- Impaled
    [67280] = true, -- Dagger Throw
    [66620] = true, -- Old Wounds
    [65406] = true, -- Rake
    [65033] = true, -- Constricting Rend
    [64666] = true, -- Savage Pounce
    [64374] = true, -- Savage Pounce
    [63468] = true, -- Careful Aim
    [62418] = true, -- Impale
    [62331] = true, -- Impale
    [62318] = true, -- Barbed Shot
    [61896] = true, -- Lacerate
    [61164] = true, -- Impale
    [59989] = true, -- Rip
    [59881] = true, -- Rake
    [59826] = true, -- Puncture
    [59825] = true, -- Whirling Slash
    [59824] = true, -- Whirling Slash
    [59691] = true, -- Rend
    [59682] = true, -- Grievous Wound
    [59444] = true, -- Determined Gore
    [59349] = true, -- Dart
    [59343] = true, -- Rend
    [59269] = true, -- Carnivorous Bite
    [59268] = true, -- Impale
    [59264] = true, -- Gore
    [59262] = true, -- Grievous Wound
    [59256] = true, -- Impale
    [59239] = true, -- Rend
    [59007] = true, -- Flesh Rot
    [58978] = true, -- Impale
    [58830] = true, -- Wounding Strike
    [58517] = true, -- Grievous Wound
    [58459] = true, -- Impale
    [57661] = true, -- Rip
    [55645] = true, -- Death Plague
    [55622] = true, -- Impale
    [55604] = true, -- Death Plague
    [55550] = true, -- Jagged Knife
    [55276] = true, -- Puncture
    [55250] = true, -- Whirling Slash
    [55249] = true, -- Whirling Slash
    [55102] = true, -- Determined Gore
    [54708] = true, -- Rend
    [54703] = true, -- Rend
    [54668] = true, -- Rake
    [53602] = true, -- Dart
    [53499] = true, -- Rake
    [53317] = true, -- Rend
    [52873] = true, -- Open Wound
    [52771] = true, -- Wounding Strike
    [52504] = true, -- Lacerate
    [52401] = true, -- Gut Rip
    [51275] = true, -- Gut Rip
    [50871] = true, -- Savage Rend
    [50729] = true, -- Carnivorous Bite
    [49678] = true, -- Flesh Rot
    [48920] = true, -- Grievous Bite
    [48880] = true, -- Rend
    [48374] = true, -- Puncture Wound
    [48286] = true, -- Grievous Slash
    [48261] = true, -- Impale
    [48245] = true, -- Head Slash
    [48130] = true, -- Gore
    [43937] = true, -- Grievous Wound
    [43931] = true, -- Rend
    [43246] = true, -- Rend
    [43153] = true, -- Lynx Rush
    [43104] = true, -- Deep Wound
    [43093] = true, -- Grievous Throw
    [42658] = true, -- Sic'em!
    [42397] = true, -- Rend Flesh
    [42395] = true, -- Lacerating Slash
    [41932] = true, -- Carnivorous Bite
    [41092] = true, -- Carnivorous Bite
    [40199] = true, -- Flesh Rip
    [39382] = true, -- Carnivorous Bite
    [39215] = true, -- Gushing Wound
    [39198] = true, -- Carnivorous Bite
    [38848] = true, -- Diminish Soul
    [38810] = true, -- Gaping Maw
    [38801] = true, -- Grievous Wound
    [38772] = true, -- Grievous Wound
    [38363] = true, -- Gushing Wound
    [38056] = true, -- Flesh Rip
    [37973] = true, -- Coral Cut
    [37937] = true, -- Flayed Flesh
    [37662] = true, -- Rend
    [37641] = true, -- Whirlwind
    [37487] = true, -- Blood Heal
    [37123] = true, -- Saw Blade
    [37066] = true, -- Garrote
    [36991] = true, -- Rend
    [36965] = true, -- Rend
    [36789] = true, -- Diminish Soul
    [36617] = true, -- Gaping Maw
    [36590] = true, -- Rip
    [36383] = true, -- Carnivorous Bite
    [36332] = true, -- Rake
    [36054] = true, -- Deathblow
    [36023] = true, -- Deathblow
    [35321] = true, -- Gushing Wound
    [35318] = true, -- Saw Blade
    [35144] = true, -- Vicious Rend
    [33912] = true, -- Rip
    [33865] = true, -- Singe
    [32901] = true, -- Carnivorous Bite
    [32019] = true, -- Gore
    [31956] = true, -- Grievous Wound
    [31410] = true, -- Coral Cut
    [31041] = true, -- Mangle
    [30639] = true, -- Carnivorous Bite
    [30285] = true, -- Eagle Claw
    [29935] = true, -- Gaping Maw
    [29906] = true, -- Ravage
    [29583] = true, -- Impale
    [29578] = true, -- Rend
    [29574] = true, -- Rend
    [28913] = true, -- Flesh Rot
    [27638] = true, -- Rake
    [27556] = true, -- Rake
    [27555] = true, -- Shred
    [24332] = true, -- Rake
    [24331] = true, -- Rake
    [24192] = true, -- Speed Slash
    [21949] = true, -- Rend
    [19771] = true, -- Serrated Bite
    [18202] = true, -- Rend
    [18200] = true, -- Rend
    [18106] = true, -- Rend
    [18078] = true, -- Rend
    [18075] = true, -- Rend
    [17504] = true, -- Rend
    [17153] = true, -- Rend
    [16509] = true, -- Rend
    [16406] = true, -- Rend
    [16403] = true, -- Rend
    [16393] = true, -- Rend
    [16095] = true, -- Vicious Rend
    [15976] = true, -- Puncture
    [15583] = true, -- Rupture
    [14903] = true, -- Rupture
    [14874] = true, -- Rupture
    [14331] = true, -- Vicious Rend
    [14118] = true, -- Rend
    [14087] = true, -- Rend
    [13738] = true, -- Rend
    [13445] = true, -- Rend
    [13443] = true, -- Rend
    [13318] = true, -- Rend
    [12054] = true, -- Rend
    [11977] = true, -- Rend
    [10266] = true, -- Lung Puncture
    [8818] = true, -- Garrote
    [5598] = true, -- Serious Wound
    [5597] = true, -- Serious Wound
    [3147] = true, -- Rend Flesh
    [1943] = true, -- Rupture
    [1079] = true, -- Rip
    [703] = true, -- Garrote
}