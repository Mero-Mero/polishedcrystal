CeladonMansion1F_MapScriptHeader:

.MapTriggers: db 0

.MapCallbacks: db 0

CeladonMansion1F_MapEventHeader:

.Warps: db 5
	warp_def 9, 6, 2, CELADON_CITY
	warp_def 9, 7, 2, CELADON_CITY
	warp_def 0, 3, 3, CELADON_CITY
	warp_def 0, 0, 1, CELADON_MANSION_2F
	warp_def 0, 7, 4, CELADON_MANSION_2F

.XYTriggers: db 0

.Signposts: db 3
	signpost 8, 5, SIGNPOST_UP, CeladonMansionManagersSuiteSign
	signpost 3, 0, SIGNPOST_JUMPSTD, picturebookshelf
	signpost 3, 2, SIGNPOST_JUMPSTD, picturebookshelf

.PersonEvents: db 4
	person_event SPRITE_GRANNY, 5, 1, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeladonMansionManagerText, -1
	person_event SPRITE_MEOWTH, 6, 2, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, PERSONTYPE_POKEMON, MEOWTH, CeladonMansion1FMeowthText, -1
	person_event SPRITE_CLEFAIRY, 4, 3, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, PERSONTYPE_POKEMON, CLEFAIRY, CeladonMansion1FClefairyText, -1
	person_event SPRITE_NIDORAN_F, 4, 4, SPRITEMOVEDATA_POKEMON, 0, 2, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_POKEMON, NIDORAN_F, CeladonMansion1FNidoranFText, -1

CeladonMansionManagersSuiteSign:
	thistext

	text "Celadon Mansion"
	line "Manager's Suite"
	done

CeladonMansionManagerText:
	text "My dear #mon"
	line "keep me company,"

	para "so I don't ever"
	line "feel lonely."

	para "Meowth even brings"
	line "money home."
	done

CeladonMansion1FMeowthText:
	text "Meowth: Meow!"
	done

CeladonMansion1FClefairyText:
	text "Clefairy: Clef"
	line "cleff!"
	done

CeladonMansion1FNidoranFText:
	text "Nidoran: Kya"
	line "kyaoo!"
	done
