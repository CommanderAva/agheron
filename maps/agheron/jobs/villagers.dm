/datum/map/agheron
	allowed_jobs = list(
	/datum/job/assistant,
    /datum/job/villager/peasant,
    /datum/job/villager/peasant/miner
	)

/datum/job/villager/
	title = "Village Inhabitant"
	is_villager = TRUE
	selection_color = "#76abb2"
	latejoin_at_spawnpoints = TRUE
	social_class = SOCIAL_CLASS_MIN
	department = "Village"
	department_flag = VLG
	total_positions = -1
	bow_skill = 0
	crossbow_skill = 0

	equip(var/mob/living/carbon/human/H)
		..()
		H.assign_random_quirk()
		H.assign_random_quirk()

/mob/living/proc/assign_random_quirk()
	if(prob(75))//75% of not choosing a quirk at all.
		return
	if(is_hellbanned())//Hellbanned people will never get quirks.
		return
	var/list/random_quirks = list()
	for(var/thing in subtypesof(/datum/quirk))//Populate possible quirks list.
		var/datum/quirk/Q = thing
		random_quirks += Q
	if(!random_quirks.len)//If there's somewhow nothing there afterwards return.
		return
	var/datum/quirk/chosen_quirk = pick(random_quirks)
	src.quirk = new chosen_quirk
	to_chat(src, "<span class='bnotice'>I was formed a bit different. I am [quirk.name]. [quirk.description]</span>")
	switch(chosen_quirk)
		if(/datum/quirk/cig_addict)
			var/datum/reagent/new_reagent = new /datum/reagent/nicotine
			src.reagents.addiction_list.Add(new_reagent)
		if(/datum/quirk/alcoholic)
			var/datum/reagent/new_reagent = new /datum/reagent/ethanol
			src.reagents.addiction_list.Add(new_reagent)

/decl/hierarchy/outfit/job/peasant
	back = /obj/item/storage/backpack/satchel
	l_ear = /obj/item/device/radio/headset/raider
	neck = /obj/item/reagent_containers/food/drinks/canteen


/datum/job/villager/peasant
	title = "Peasant"
	outfit_type = /decl/hierarchy/outfit/job/peasant
	//access = list(access_hydroponics, access_bar, access_kitchen)
	total_positions = 100
	spawn_positions = 10

	has_email = FALSE
	announced = FALSE

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(6,10), rand(6,10), rand(7,11), rand(6,10)) ///(var/strength, var/dexterity, var/endurance, var/intelligence)///
		H.add_skills(rand(1,2), rand(0,2), rand(0,1), rand(0), 0, rand(1,2), rand(0,3), rand(0,1), rand(0,2), rand(0,2), rand(0,2)) ///(var/melee, var/ranged, var/medical, var/engineering, var/surgery, var/cooking, var/fishing, var/smithing, var/woodworking, var/stoneworking, var/leatherworking)

/datum/job/villager/peasant/miner
	title = "Miner"
	//outfit_type = /decl/hierarchy/outfit/job/service/chef/blue
	//access = list(access_hydroponics, access_bar, access_kitchen)
	total_positions = 5
	spawn_positions = 2

	has_email = FALSE
	announced = FALSE

	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(6,10), rand(6,10), rand(7,11), rand(6,10)) ///(var/strength, var/dexterity, var/endurance, var/intelligence)///
		H.add_skills(rand(1,2), rand(0,2), rand(0,1), rand(0), 0, rand(1,2), rand(0,3), rand(0,1), rand(0,2), rand(0,2), rand(0,2)) ///(var/melee, var/ranged, var/medical, var/engineering, var/surgery, var/cooking, var/fishing, var/smithing, var/woodworking, var/stoneworking, var/leatherworking)




/datum/job/assistant
	title = "REDACTED"
	total_positions = 0
	spawn_positions = 0