
LoadMapGroupRoof:: ; 1c000
	ld a, [MapGroup]
	ld e, a
	ld d, 0
	ld hl, MapGroupRoofs
	add hl, de
	ld a, [hl]
	cp -1
	jr z, .extra_tiles
	ld hl, Roofs
	ld bc, 9 tiles
	call AddNTimes
	ld de, VTiles2 tile $0a
	ld bc, 9 tiles
	call CopyBytes

.extra_tiles
; Load puddle tiles for Stormy Beach on top of the unused Mart roof tiles
	ld a, [wTileset]
	cp TILESET_JOHTO_MODERN
	ret nz
	ld a, [MapGroup]
	cp GROUP_STORMY_BEACH
	ret nz
	ld a, [rVBK]
	push af
	ld a, $1
	ld [rVBK], a
	ld hl, StormyBeachPuddleGFX
	ld de, VTiles4 tile $c6
	ld bc, 6 tiles
	call CopyBytes
	ld hl, StormyBeachPuddleGFX + 6 tiles
	ld de, VTiles4 tile $d6
	ld bc, 6 tiles
	call CopyBytes
	pop af
	ld [rVBK], a
	ret
; 1c021

MapGroupRoofs: ; 1c021i
	db -1 ; group 0
	db  3 ; group 1 (Olivine City)
	db  2 ; group 2 (Mahogany Town)
	db -1 ; group 3
	db  4 ; group 4 (Ecruteak City)
	db -1 ; group 5 (Blackthorn City)
	db -1 ; group 6
	db -1 ; group 7
	db -1 ; group 8 (Azalea Town)
	db -1 ; group 9 (Lake of Rage)
	db  1 ; group 10 (Violet City)
	db  5 ; group 11 (Goldenrod City)
	db -1 ; group 12
	db -1 ; group 13
	db -1 ; group 14
	db -1 ; group 15
	db -1 ; group 16
	db -1 ; group 17
	db -1 ; group 18
	db  4 ; group 19 (Route 28)
	db  6 ; group 20 (Ecruteak Shrine)
	db -1 ; group 21
	db  3 ; group 22 (Cianwood City)
	db -1 ; group 23
	db  0 ; group 24 (New Bark Town)
	db -1 ; group 25
	db  0 ; group 26 (Cherrygrove City)
	db -1 ; group 27
	db -1 ; group 28
	db  3 ; group 29 (Goldenrod Harbor)
	db -1 ; group 30 (Ruins of Alph)
	db -1 ; group 31
	db -1 ; group 32
	db -1 ; group 33
	db -1 ; group 34
	db -1 ; group 35
	db  4 ; group 36 (Route 35+36)
; 1c03c

Roofs: ; 1c03c
INCBIN "gfx/tilesets/roofs/0.2bpp"
INCBIN "gfx/tilesets/roofs/1.2bpp"
INCBIN "gfx/tilesets/roofs/2.2bpp"
INCBIN "gfx/tilesets/roofs/3.2bpp"
INCBIN "gfx/tilesets/roofs/4.2bpp"
INCBIN "gfx/tilesets/roofs/5.2bpp"
INCBIN "gfx/tilesets/roofs/6.2bpp"
; 1c30c

StormyBeachPuddleGFX:
INCBIN "gfx/tilesets/roofs/puddle.2bpp"
