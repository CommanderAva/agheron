#if !defined(using_map_DATUM)
	#include "agheron_areas.dm"
	#include "agheron_shuttles.dm"
	#include "agheron_unit_testing.dm"
	#include "../shared/items/clothing.dm"
	#include "../shared/items/cards_ids.dm"

	//#include "agheron-1.dmm"
	//#include "agheron-2.dmm"
	//#include "agheron-3.dmm"



	#include "../../code/modules/lobby_music/generic_songs.dm"

	#define using_map_DATUM /datum/map/agheron
#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Example

#endif