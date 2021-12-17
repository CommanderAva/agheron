#if !defined(using_map_DATUM)
	#include "../agheron/agheron_areas.dm"
	#include "../agheron/agheron_define.dm"

	#include "agheron-1.dmm"
	#include "agheron-2.dmm"
	#include "agheron-3.dmm"

//	#include "../../code/modules/lobby_music/siegefare_songs.dm"

	#define using_map_DATUM /datum/map/agheron
#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Example

#endif