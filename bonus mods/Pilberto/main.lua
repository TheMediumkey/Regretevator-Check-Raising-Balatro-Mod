--- STEAMODDED HEADER
--- MOD_NAME: rdjretrigger
--- MOD_ID: rdjretrigger
--- MOD_AUTHOR: [melonade]
--- MOD_DESCRIPTION: adds a new joker to the game

----------------------------------------------
------------MOD CODE -------------------------

SMODS.current_mod.optional_features = { post_trigger = true , retrigger_joker = true }

SMODS.Atlas({
	key = 'Pilberto',
	path = "Pilby.png",
    px = 72,
    py = 96
})

SMODS.Joker{
    name = "rdjretrigger", -- to localize labels which i prefer to use
    key = "rdjretrigger", -- the unique key that refers to the joker
	atlas = 'Pilberto',
    pos = {x = 0, y = 0},
    -- more localization lol
    loc_txt = {
        name = "Pilby the Caterpillar",
        -- this array is a new line per index
        text = {
            "When blind is selected,", "{C:green}#1# in #4#{} chance for",
            "other {C:attention}joker{} cards",
            "to repeat."
        }
    },
    -- this is to store variables in the card that can be saved and loaded
    config = {
        extra = {
            probability = 1,
            chance = 4,
            rolled = false,
            alreadyRolled = false
        }
    },
    -- this is to return the values, you can also do some extra stuff with this function like add the ui element on blueprint to check for compatibility
    loc_vars = function(self,info_queue,card)
        -- you need to do this for jokers with chance in order for oops all 6s to function with it
        card.ability.extra.probability = G.GAME.probabilities.normal

        return { vars = {
            card.ability.extra.probability,
            card.ability.extra.chance,
            card.ability.extra.rolled,
            card.ability.extra.alreadyRolled
        } }
    end,
    -- this runs based on different contexts, make sure to check the context
    calculate = function(self,card,context)
        if context.retrigger_joker_check and context.other_card ~= card then

            print(context.other_card.label)
            if pseudorandom("rdjretrigger", card.ability.extra.probability, card.ability.extra.chance) <= card.ability.extra.probability and card.ability.extra.alreadyRolled == false then
                print("rolled chance")
                card.ability.extra.rolled = true
            end

            if card.ability.extra.rolled == true then
                return {
                    repetitions = 1,
                }
            end

            card.ability.extra.alreadyRolled = true
        end

        if context.after and context.cardarea == G.play or context.end_of_round then
            card.ability.extra.rolled = false
            card.ability.extra.alreadyRolled = false
        end
    end
}

----------------------------------------------
------------MOD CODE END----------------------