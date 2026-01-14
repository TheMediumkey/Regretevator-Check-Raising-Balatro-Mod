--- STEAMODDED HEADER
--- MOD_NAME: Pilby Jokers
--- MOD_ID: PilbyJokers
--- PREFIX: PilbyJokers
--- MOD_AUTHOR: [Mediumkey]
--- MOD_DESCRIPTION: Changes every joker sprite to Pilby
--- DEPENDENCIES: [malverk]

AltTexture({ -- WinSol Jokers
	key = 'PilbyJokers',
	set = 'Joker',
	path = 'Jokers.png',
	loc_txt = {
		name = 'Pilby Jokers'
	}
})

TexturePack({
    key = 'PilbyJokers',
    textures = {
      'PilbyJokers_PilbyJokers'
    },
    loc_txt = {
      name = 'Pilby Jokers',
      text = {'Golly'}
    }
})