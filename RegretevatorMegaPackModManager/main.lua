--- STEAMODDED HEADER
--- MOD_NAME: Regretevator themed Cards
--- MOD_ID: RegCards
--- MOD_AUTHOR: [Mediumkey]
--- MOD_DESCRIPTION: Replaces vanilla cards to be Regretevator themed
--- PREFIX: REGP
--- VERSION: 6.7.8
--- DEPENDENCIES: [malverk]

AltTexture{ 
    key = 'planets',
    set = 'Planet',
    path = 'reg-tarot.png',
    original_sheet = true,
    display_pos = 'c_mars'
}

AltTexture{ 
    key = 'tarots',
    set = 'Tarot',
    path = 'reg-tarot.png',
    original_sheet = true
}

AltTexture{
    key = 'enhancers',
    set = 'Enhanced',
    path = 'enhancers.png',
    original_sheet = true
}

AltTexture{
    key = 'seals',
    set = 'Seal',
    path = 'enhancers.png',
    original_sheet = true
}

AltTexture{ 
    key = 'boosters',
    set = 'Booster',
    path = 'reg-boosters.png',
    original_sheet = true
}

AltTexture{
    key = 'spectrals',
    set = 'Spectral',
    path = 'reg-tarot.png',
    original_sheet = true
}

AltTexture({
	key = 'jokers',
	set = 'Joker',
	path = 'Jokers.png',
	original_sheet = true
})

AltTexture({
    key = 'blinds',
    set = 'Blind',
    path = 'BlindChips.png',
    frames = 21,
	original_sheet = true
})

TexturePack{ 
    key = 'regcards',
    textures = {
        'REGP_planets',
		'REGP_boosters',
		'REGP_spectrals',
		'REGP_tarots',
		'REGP_enhancers',
		'REGP_seals',
		'REGP_jokers',
		'REGP_blinds',

    },
    loc_txt = {
        name = 'Regretevator',
        text = {
                    'Replaces vanilla cards to be',
                    'Regretevator themed'
        }
    }
}