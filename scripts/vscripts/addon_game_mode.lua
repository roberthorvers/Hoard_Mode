-- This is the entry-point to your game mode and should be used primarily to precache models/particles/sounds/etc

require('internal/util')
require('gamemode')

function Precache( context )
	--[[
      This function is used to precache resources/units/items/abilities that will be needed
      for sure in your game and that will not be precached by hero selection.  When a hero
      is selected from the hero selection screen, the game will precache that hero's assets,
      any equipped cosmetics, and perform the data-driven precaching defined in that hero's
      precache{} block, as well as the precache{} block for any equipped abilities.

      See GameMode:PostLoadPrecache() in gamemode.lua for more information
      ]]

	DebugPrint("[BAREBONES] Performing pre-load precache")

	-- Particles can be precached individually or by folder
	-- It it likely that precaching a single particle system will precache all of its children, but this may not be guaranteed
	--PrecacheResource("particle", "particles/econ/generic/generic_aoe_explosion_sphere_1/generic_aoe_explosion_sphere_1.vpcf", context)
	--PrecacheResource("particle_folder", "particles/test_particle", context)

	-- Models can also be precached by folder or individually
	-- PrecacheModel should generally used over PrecacheResource for individual models
	--PrecacheResource("model_folder", "particles/heroes/antimage", context)
	--PrecacheResource("model", "particles/heroes/viper/viper.vmdl", context)
	--PrecacheModel("models/heroes/viper/viper.vmdl", context)

	-- Sounds can precached here like anything else
	--PrecacheResource("soundfile", "soundevents/game_sounds_heroes/game_sounds_gyrocopter.vsndevts", context)

	-- Entire items can be precached by name
	-- Abilities can also be precached in this way despite the name
	--PrecacheItemByNameSync("example_ability", context)
	--PrecacheItemByNameSync("item_example_item", context)

	-- Entire heroes (sound effects/voice/models/particles) can be precached with PrecacheUnitByNameSync
	-- Custom units from npc_units_custom.txt can also have all of their abilities and precache{} blocks precached in this way
	--PrecacheUnitByNameSync("npc_dota_hero_ancient_apparition", context)
	--PrecacheUnitByNameSync("npc_dota_hero_enigma", context)

	PrecacheResource( "particle_folder", "particles/frostivus_gameplay", context )
	PrecacheItemByNameSync("item_bag_of_gold", context )
	PrecacheItemByNameSync("item_king_rapier", context)
	PrecacheItemByNameSync("item_bloodstone_datadriven", context)
	PrecacheItemByNameSync("item_death_stone", context)
	PrecacheItemByNameSync("item_travel_boots_3", context)
	PrecacheItemByNameSync("item_boots_of_strength", context)
	PrecacheItemByNameSync("item_boots_of_agility", context)
	PrecacheItemByNameSync("item_boots_of_intellect", context)
	PrecacheItemByNameSync("item_bfury_datadriven", context)
	PrecacheItemByNameSync("item_bfury_datadriven_active", context)
	PrecacheItemByNameSync("item_lithe_boots", context)
	PrecacheItemByNameSync("item_horde_ethereal_blade", context)
	PrecacheItemByNameSync("item_horde_ghost", context)
	PrecacheItemByNameSync("item_hoard_dagon", context)
	PrecacheItemByNameSync("item_dragon_javelin", context)
	PrecacheItemByNameSync("item_building_upgrade_datadriven", context)
	PrecacheItemByNameSync("item_shivas_guard_2", context)
	PrecacheItemByNameSync("item_bfury", context)
	PrecacheItemByNameSync("item_armlet", context)
	PrecacheItemByNameSync("item_helm_of_madness", context)
	PrecacheItemByNameSync("item_skadi_datadriven", context)
	PrecacheItemByNameSync("item_dummy", context)
	PrecacheItemByNameSync("item_dummy_datadriven", context)
	PrecacheUnitByNameSync("npc_dummy_blank", context)
	PrecacheUnitByNameSync("npc_dota_creature_ancient_apparition", context)
	PrecacheUnitByNameSync("npc_dota_creature_map_boss", context)
	PrecacheUnitByNameSync("npc_dota_gargoyle", context)
	PrecacheUnitByNameSync("npc_dota_creature_gnoll_assassin", context)
	PrecacheUnitByNameSync("npc_dota_creature_kobold_ripper", context)
	PrecacheUnitByNameSync("npc_dota_creature_kobold_guard", context)
	PrecacheUnitByNameSync("npc_dota_creature_troll_healer", context)
	PrecacheUnitByNameSync("npc_dota_medium_spiders", context)
	PrecacheUnitByNameSync("npc_dota_creature_spiderling", context)
	PrecacheUnitByNameSync("npc_dota_creature_hulk_medium", context)
	PrecacheUnitByNameSync("npc_dota_creature_hulk", context)
	PrecacheUnitByNameSync("npc_dota_creature_hulk_big", context)
	PrecacheUnitByNameSync("npc_dota_creature_kappapult", context)
	PrecacheUnitByNameSync("npc_dota_creature_basic_zombie", context)
	PrecacheUnitByNameSync("npc_dota_creature_berserk_zombie", context)
	PrecacheUnitByNameSync("npc_dota_creature_corpselord", context)
	PrecacheUnitByNameSync("npc_dota_creature_roshan_boss", context)
	PrecacheUnitByNameSync("npc_dota_creature_ogre_melee", context)
	PrecacheUnitByNameSync("npc_dota_creature_ogre_boss", context)
	PrecacheUnitByNameSync("npc_dota_creature_satyr", context)
	PrecacheUnitByNameSync("npc_dota_creature_medium_satyr", context)
	PrecacheUnitByNameSync("npc_dota_creature_big_satyr", context)
	PrecacheUnitByNameSync("npc_dota_creature_spooki", context)
	PrecacheUnitByNameSync("npc_dota_creature_drake", context)
	PrecacheUnitByNameSync("npc_dota_creature_chicken", context)
	PrecacheUnitByNameSync("npc_dota_creature_big_nyx", context)
	PrecacheUnitByNameSync("npc_dota_creature_king_treant", context)
	PrecacheUnitByNameSync("npc_dota_creature_forest_prophet", context)
	PrecacheUnitByNameSync("npc_dota_creature_treant", context)
	PrecacheUnitByNameSync("npc_dota_creature_lesser_nightcrawler", context)
	PrecacheUnitByNameSync("npc_dota_creature_large_spirit_bear", context)
	PrecacheUnitByNameSync("npc_dota_creature_small_spirit_bear", context)
	PrecacheUnitByNameSync("npc_dota_creature_small_spirit_bear_easy", context)
	PrecacheUnitByNameSync("npc_dota_creature_big_bear", context)
	PrecacheUnitByNameSync("npc_dota_splitter_c", context)
	PrecacheUnitByNameSync("npc_dota_creature_fuck_you", context)
	PrecacheUnitByNameSync("npc_dota_creature_bazz", context)
	PrecacheUnitByNameSync("npc_dota_creature_ogre", context)
	PrecacheUnitByNameSync("npc_dota_creature_cool_spiders", context)
	PrecacheUnitByNameSync("npc_dota_creature_mini_spiders", context)
	PrecacheUnitByNameSync("npc_dota_creature_big_spiders", context)
	PrecacheUnitByNameSync("npc_dota_creature_kobold_guard_boss", context)
	PrecacheUnitByNameSync("npc_dota_demon", context)
	PrecacheUnitByNameSync("npc_dota_demon_dog", context)
	PrecacheUnitByNameSync("npc_dota_creature_thing", context)
	PrecacheUnitByNameSync("npc_dota_creature_hound", context)
	PrecacheUnitByNameSync("npc_dota_wolf_fang", context)
	PrecacheUnitByNameSync("npc_dota_wolf_fang_easy", context)
	PrecacheUnitByNameSync("npc_dota_creature_rabid", context)
	PrecacheUnitByNameSync("npc_dota_creature_pack_leader", context)
	PrecacheUnitByNameSync("npc_dota_creature_great_hound", context)
	PrecacheUnitByNameSync("npc_dota_creature_king_wolf", context)
	PrecacheUnitByNameSync("npc_dota_creature_big_ghost", context)
	PrecacheUnitByNameSync("npc_dota_creature_shroom", context)
	PrecacheUnitByNameSync("npc_dota_creature_stump", context)
	PrecacheUnitByNameSync("npc_dota_creature_fang", context)
	PrecacheUnitByNameSync("npc_dota_ghost_meele", context)
	PrecacheUnitByNameSync("npc_dota_ghost_meele2", context)
	PrecacheUnitByNameSync("npc_dota_ghost", context)
	PrecacheUnitByNameSync("npc_dota_rhino", context)
	PrecacheUnitByNameSync("npc_dota_hellbear", context)
	PrecacheUnitByNameSync("npc_dota_dragon", context)
	PrecacheUnitByNameSync("npc_dota_stalker", context)
	PrecacheUnitByNameSync("npc_dota_mini_demon", context)
	PrecacheUnitByNameSync("npc_dota_creature_beast", context)
	PrecacheUnitByNameSync("npc_dota_centaur_boss", context)
	PrecacheUnitByNameSync("npc_dota_creature_drake_boss", context)
	PrecacheUnitByNameSync("npc_dota_hero_venomancer_holdout", context)
	PrecacheUnitByNameSync("npc_dota_nyx", context)
	PrecacheUnitByNameSync("npc_dota_roshan_mob", context)
	PrecacheUnitByNameSync("npc_dota_creature_mini_roshan", context)
	PrecacheUnitByNameSync("npc_dota_ghost_bane", context)
	PrecacheUnitByNameSync("npc_dota_creature_big_bird", context)
	PrecacheUnitByNameSync("npc_dota_pugna_ward_hoard1", context)
	PrecacheUnitByNameSync("npc_dota_pugna_ward_hoard2", context)
	PrecacheUnitByNameSync("npc_dota_pugna_ward_hoard3", context)
	PrecacheUnitByNameSync("npc_dota_pugna_ward_hoard4", context)
	PrecacheItemByNameSync("spectre_haunt_datadriven", context)
end

-- Create the game mode when we activate
function Activate()
	GameRules.GameMode = GameMode()
	GameRules.GameMode:InitGameMode()
end