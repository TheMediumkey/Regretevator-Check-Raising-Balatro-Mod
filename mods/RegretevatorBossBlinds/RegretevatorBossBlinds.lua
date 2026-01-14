--- STEAMODDED HEADER
--- MOD_NAME: Boss Blind Retexture
--- MOD_ID: RegretevatorBossBlinds
--- MOD_AUTHOR: [Mediumkey]
--- MOD_DESCRIPTION: A Balatro texture pack that replaces the Blind chips with regretevator related characters.

function SMODS.INIT.RegretevatorBossBlinds()
	SMODS.Sprite:new('blind_chips', SMODS.findModByID('RegretevatorBossBlinds').path, 'BlindChips.png', 34, 34, 'animation_atli', 21):register()
	assert(SMODS.load_file("blinds.lua"))()
end