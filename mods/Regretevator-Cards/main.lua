--- STEAMODDED HEADER
--- MOD_NAME: Regretevator Items/Effects Planet Cards
--- MOD_ID: RegItemPlanetCards
--- MOD_AUTHOR: [Mediumkey]
--- MOD_DESCRIPTION: Replaces planet cards with Items from Regretevator
--- PREFIX: REGP
--- VERSION: 1.0.0
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

TexturePack{ 
    key = 'regcards',
    textures = {
        'REGP_planets',
		'REGP_boosters',
		'REGP_spectrals',
		'REGP_tarots',
		'REGP_enhancers',
		'REGP_seals'

    },
    loc_txt = {
        name = 'Items and Effects',
        text = {
                    'Replaces non-joker cards with Items',
                    'and effects from Regretevator'
        }
    }
}