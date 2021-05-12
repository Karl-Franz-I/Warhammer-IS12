/*
Astartes
*/

/datum/species/human/astartes
	name = "Astartes"
	name_plural = "Space Marines"
	primitive_form = SPECIES_HUMAN
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite)
	blurb = "The Space Marines or Adeptus Astartes are foremost amongst the defenders of Humanity, the greatest of the Emperor of Mankind's Warriors. They are barely human at all, but superhuman; having been made superior in all respects to a normal man by a harsh regime of genetic modification, psycho-conditioning and rigorous training. Untouched by disease and can take a wound that could kill a normal human instantly. Using ancient power armor that can augment their abilities and wielding the best weapons known to man."
	min_age = 25
	max_age = 500
	icobase = 'icons/mob/human_races/r_human.dmi'
	deform = 'icons/mob/human_races/r_def_human.dmi'
	damage_mask = 'icons/mob/human_races/masks/dam_mask_human.dmi'
	blood_mask = 'icons/mob/human_races/masks/blood_human.dmi'
	gluttonous = GLUT_ITEM_NORMAL
	total_health = 500
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_EYE_COLOR | HAS_A_SKIN_TONE
	mob_size = MOB_LARGE
	strength = STR_VHIGH
	genders = MALE
	teeth_type = /obj/item/stack/teeth/human //Teeth
	sexybits_location = BP_GROIN
	species_flags = SPECIES_FLAG_NO_PAIN|SPECIES_FLAG_NO_POISON|SPECIES_FLAG_NO_EMBED|SPECIES_FLAG_NO_SCAN
	inherent_verbs = list()

	burn_mod = 0.3
	brute_mod = 0.3
	radiation_mod = 0

/datum/species/human/astartes/handle_post_spawn(var/mob/living/carbon/human/H)
	H.age = rand(min_age,max_age)//asstardes ages are all over.
	to_chat(H, "<big><span class='warning'>You are one of His angels! Act like it!</span></big>")
	H.update_eyes()	//hacky fix, i don't care and i'll never ever care
	return ..()

/mob/living/carbon/human
	var/new_astartes = SPECIES_ASTARTES

/mob/living/carbon/human/astartes
	gender = MALE

/mob/living/carbon/human/astartes/New(var/new_loc)
	..(new_loc, new_astartes)