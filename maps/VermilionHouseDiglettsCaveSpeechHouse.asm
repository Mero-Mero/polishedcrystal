VermilionHouseDiglettsCaveSpeechHouse_MapScriptHeader:

.MapTriggers: db 0

.MapCallbacks: db 0

VermilionHouseDiglettsCaveSpeechHouse_MapEventHeader:

.Warps: db 2
	warp_def 7, 2, 6, VERMILION_CITY
	warp_def 7, 3, 6, VERMILION_CITY

.XYTriggers: db 0

.Signposts: db 0

.PersonEvents: db 1
	person_event SPRITE_GENTLEMAN, 3, 1, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x192034, -1

UnknownText_0x192034:
	text "Over many years,"
	line "Diglett dug a"
	cont "large tunnel."

	para "That tunnel goes"
	line "to a distant town."
	done
