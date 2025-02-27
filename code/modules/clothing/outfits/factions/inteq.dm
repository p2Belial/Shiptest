/datum/outfit/job/inteq
	name = "IRMG - Base Outfit"
	faction_icon = "bg_inteq"

	uniform = /obj/item/clothing/under/syndicate/inteq
	box = /obj/item/storage/box/survival

	backpack = /obj/item/storage/backpack
	satchel = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag
	courierbag = /obj/item/storage/backpack/messenger/inteq

/datum/outfit/job/inteq/post_equip(mob/living/carbon/human/H, visualsOnly)
	. = ..()
	if(visualsOnly)
		return
	H.faction |= list(FACTION_PLAYER_INTEQ)

///assistants

/datum/outfit/job/inteq/assistant
	name = "IRMG - Recruit"
	jobtype = /datum/job/assistant
	job_icon = "assistant"

	r_pocket = /obj/item/radio

///captains

/datum/outfit/job/inteq/captain
	name = "IRMG - Vanguard (Naked)"
	jobtype = /datum/job/captain
	job_icon = "captain"

	ears = /obj/item/radio/headset/inteq/alt/captain
	shoes = /obj/item/clothing/shoes/combat
	r_pocket = /obj/item/assembly/flash/handheld
	l_pocket = /obj/item/restraints/handcuffs
	jobtype = /datum/job/captain
	id = /obj/item/card/id/gold

	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1)

/datum/outfit/job/inteq/captain/geared
	name = "IRMG - Vanguard"

	head = /obj/item/clothing/head/beret/sec/hos/inteq
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/inteq
	mask = /obj/item/clothing/mask/gas/sechailer/inteq
	belt = /obj/item/storage/belt/security/webbing/inteq
	suit = /obj/item/clothing/suit/armor/hos/inteq
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/security/inteq
	gloves = /obj/item/clothing/gloves/combat
	accessory = null

/datum/outfit/job/inteq/captain/honorable
	name = "IRMG - Honorable Vanguard"

	head = /obj/item/clothing/head/beret/sec/hos/inteq/honorable
	uniform = /obj/item/clothing/under/syndicate/inteq/honorable
	suit = /obj/item/clothing/suit/armor/hos/inteq/honorable
	gloves = /obj/item/clothing/gloves/combat
	shoes = /obj/item/clothing/shoes/combat
	ears = /obj/item/radio/headset/inteq/alt/captain
	belt = /obj/item/storage/belt/military/assault
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/inteq

/datum/outfit/job/inteq/captain/honorable/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	if(visualsOnly)
		return

	var/obj/item/card/id/W = H.wear_id
	W.assignment = "Honorable Vanguard"
	W.update_label()
	..()

///Chief Engineer

/datum/outfit/job/inteq/ce
	name = "IRMG - Artificer Class II"
	job_icon = "chiefengineer"
	jobtype = /datum/job/chief_engineer

	ears = /obj/item/radio/headset/inteq
	uniform = /obj/item/clothing/under/syndicate/inteq/artificer
	head = /obj/item/clothing/head/hardhat/white
	mask = /obj/item/clothing/mask/gas/sechailer/inteq
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/security/inteq
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	belt = /obj/item/storage/belt/utility/full

	id = /obj/item/card/id/silver
	belt = /obj/item/storage/belt/utility/chief/full

	courierbag = /obj/item/storage/backpack/messenger/inteq

	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1, /obj/item/modular_computer/tablet/preset/advanced=1)

///paramedic

/datum/outfit/job/inteq/paramedic
	name = "IRMG - Corpsman"
	job_icon = "paramedic"
	jobtype = /datum/job/paramedic

	uniform = /obj/item/clothing/under/syndicate/inteq/corpsman
	head = /obj/item/clothing/head/soft/inteq/corpsman
	suit = /obj/item/clothing/suit/armor/inteq/corpsman
	shoes = /obj/item/clothing/shoes/combat
	belt = /obj/item/storage/belt/medical/webbing/paramedic
	ears = /obj/item/radio/headset/headset_medsec/alt

	suit_store = /obj/item/flashlight/pen
	backpack_contents = list(/obj/item/roller=1)

/datum/outfit/job/inteq/paramedic/empty
	name = "IRMG Corpsman (Inteq) (Naked)"

	head = null
	suit = null
	suit_store = null
	belt = null

///Security Officers

/datum/outfit/job/inteq/security
	name = "IRMG - Enforcer"
	jobtype = /datum/job/officer
	job_icon = "securityofficer"

	head = /obj/item/clothing/head/helmet/inteq
	suit = /obj/item/clothing/suit/armor/vest/alt
	belt = /obj/item/storage/belt/security/webbing/inteq
	mask = /obj/item/clothing/mask/gas/sechailer/inteq
	uniform = /obj/item/clothing/under/syndicate/inteq
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/security/inteq
	shoes = /obj/item/clothing/shoes/combat
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/inteq
	gloves = /obj/item/clothing/gloves/combat

	backpack = /obj/item/storage/backpack/messenger/inteq
	satchel = /obj/item/storage/backpack/messenger/inteq
	courierbag = /obj/item/storage/backpack/messenger/inteq

/datum/outfit/job/inteq/security/beluga
	name = "IRMG - Enforcer (Beluga)"

	head = /obj/item/clothing/head/beret/sec/inteq
	accessory = /obj/item/clothing/accessory/waistcoat
	suit = null
	belt = null
	mask = null
	shoes = /obj/item/clothing/shoes/laceup
	glasses = null
	gloves = /obj/item/clothing/gloves/color/evening

	backpack = /obj/item/storage/backpack/messenger/inteq
	satchel = /obj/item/storage/backpack/messenger/inteq
	courierbag = /obj/item/storage/backpack/messenger/inteq

/datum/outfit/job/inteq/security/empty
	name = "IRMG - Enforcer (Naked)"
	head = null
	suit = null
	belt = null
	mask = null
	gloves = null

///engineers

/datum/outfit/job/inteq/engineer
	name = "IRMG - Artificer"
	job_icon = "stationengineer"
	jobtype = /datum/job/engineer

	uniform = /obj/item/clothing/under/syndicate/inteq/artificer
	head = /obj/item/clothing/head/soft/inteq
	shoes = /obj/item/clothing/shoes/combat
	belt = /obj/item/storage/belt/utility/full/engi
	r_pocket = /obj/item/t_scanner

//wardens

/datum/outfit/job/inteq/warden
	name = "IRMG - Master At Arms"
	jobtype = /datum/job/warden
	job_icon = "warden"

	ears = /obj/item/radio/headset/inteq/alt
	uniform = /obj/item/clothing/under/syndicate/inteq
	head = /obj/item/clothing/head/beret/sec/hos/inteq
	glasses = /obj/item/clothing/glasses/hud/security/sunglasses/inteq
	mask = /obj/item/clothing/mask/gas/sechailer/inteq
	belt = /obj/item/storage/belt/military/assault
	suit = /obj/item/clothing/suit/armor/vest/alt
	dcoat = /obj/item/clothing/suit/hooded/wintercoat/security/inteq
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/combat
	suit_store = null

	courierbag = /obj/item/storage/backpack/messenger/inteq
	backpack_contents = list(/obj/item/melee/classic_baton=1)


//Интеки с доступами , целадон

//рекрут

/datum/outfit/job/assistant/inteq/cardacces
	name = "Recruit (InteQ)"
	ears = null
	id = /obj/item/card/id/inteq/recruit

/datum/outfit/job/assistant/inteq/cardacces/post_equip(mob/living/carbon/human/H)
	H.faction |= list("InteQ")

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = pick(GLOB.commando_names)
	I.access = list(ACCESS_INTEQ_GENERAL)
	I.update_label()

//Капитан

/datum/outfit/job/captain/inteq/naked/cardacces
	name = "Vanguard (InteQ)"
	id = /obj/item/card/id/inteq/vanguard

/datum/outfit/job/captain/inteq/naked/cardacces/post_equip(mob/living/carbon/human/H)
	H.faction |= list("InteQ")

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = pick(GLOB.commando_names)
	I.access = get_all_accesses()+get_inteq_acces()
	I.update_label()

//Хос

/datum/outfit/job/hos/inteq/naked/cardacces
	name = "Enforcer class One (InteQ)"
	ears = null
	id = /obj/item/card/id/inteq/enfco

/datum/outfit/job/hos/inteq/naked/cardacces/post_equip(mob/living/carbon/human/H)
	H.faction |= list("InteQ")

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = pick(GLOB.commando_names)
	I.access = get_all_accesses()+get_inteq_acces()
	I.update_label()

//Парамедик

/datum/outfit/job/paramedic/inteq/naked/cardacces
	name = "Corpsman (InteQ)"
	ears = null
	id = /obj/item/card/id/inteq/corspman

/datum/outfit/job/paramedic/inteq/naked/cardacces/post_equip(mob/living/carbon/human/H)
	H.faction |= list("InteQ")

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = pick(GLOB.commando_names)
	I.access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_GENETICS, ACCESS_CLONING, ACCESS_MECH_MEDICAL, ACCESS_MINERAL_STOREROOM, ACCESS_MAINT_TUNNELS, ACCESS_EVA, ACCESS_INTEQ_GENERAL)
	I.update_label()

//Сесурити

/datum/outfit/job/security/inteq/naked/cardacces
	name = "Enforcer (InteQ)"
	ears = null
	id = /obj/item/card/id/inteq/enf

/datum/outfit/job/security/inteq/naked/cardacces/post_equip(mob/living/carbon/human/H)
	H.faction |= list("InteQ")

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = pick(GLOB.commando_names)
	I.access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_COURT, ACCESS_MAINT_TUNNELS, ACCESS_MECH_SECURITY, ACCESS_MORGUE, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS, ACCESS_MINERAL_STOREROOM, ACCESS_EVA, ACCESS_INTEQ_GENERAL, ACCESS_INTEQ_SECURITY)
	I.update_label()

//Варден

/datum/outfit/job/warden/inteq/cardacces
	name = "Master At Arms (InteQ)"
	ears = null
	id = /obj/item/card/id/inteq/maas

/datum/outfit/job/warden/inteq/cardacces/post_equip(mob/living/carbon/human/H)
	H.faction |= list("InteQ")

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = pick(GLOB.commando_names)
	I.access = list(ACCESS_SECURITY, ACCESS_SEC_DOORS, ACCESS_BRIG, ACCESS_ARMORY, ACCESS_COURT, ACCESS_MECH_SECURITY, ACCESS_MAINT_TUNNELS, ACCESS_MORGUE, ACCESS_WEAPONS, ACCESS_FORENSICS_LOCKERS, ACCESS_MINERAL_STOREROOM, ACCESS_EVA, ACCESS_INTEQ_GENERAL, ACCESS_INTEQ_SECURITY)
	I.update_label()

//Инженегр

/datum/outfit/job/engineer/inteq/cardacces
	name = "Artificer (InteQ)"
	ears = null
	id = /obj/item/card/id/inteq/afr

/datum/outfit/job/engineer/inteq/cardacces/post_equip(mob/living/carbon/human/H)
	H.faction |= list("InteQ")

	var/obj/item/card/id/I = H.wear_id
	I.registered_name = pick(GLOB.commando_names)
	I.access = list(ACCESS_ENGINE, ACCESS_ENGINE_EQUIP, ACCESS_TECH_STORAGE, ACCESS_MAINT_TUNNELS, ACCESS_MECH_ENGINE,ACCESS_EXTERNAL_AIRLOCKS, ACCESS_CONSTRUCTION, ACCESS_ATMOSPHERICS, ACCESS_TCOMSAT, ACCESS_MINERAL_STOREROOM, ACCESS_EVA, ACCESS_INTEQ_GENERAL)
	I.update_label()
// cmo

/datum/outfit/job/inteq/cmo
	name = "IRMG Honorable Corpsman (Inteq)"
	jobtype = /datum/job/cmo
	job_icon = "chiefmedicalofficer"

	belt = /obj/item/storage/belt/medical/webbing/paramedic
	ears = /obj/item/radio/headset/inteq/captain
	uniform = /obj/item/clothing/under/syndicate/inteq/corpsman
	alt_uniform = /obj/item/clothing/under/syndicate/inteq/skirt/corpsman
	shoes = /obj/item/clothing/shoes/combat
	suit = /obj/item/clothing/suit/hooded/wintercoat/security/inteq/alt
	alt_suit = /obj/item/clothing/suit/armor/inteq/corpsman
	dcoat = /obj/item/clothing/suit/armor/hos/inteq
	r_pocket = /obj/item/pda/medical

	chameleon_extras = null

/datum/outfit/job/inteq/cmo/empty
	name = "IRMG Honorable Corpsman (Inteq) (Naked)"
	belt = null
	suit = null
	alt_suit = null
	suit_store = null
	dcoat = null
	r_pocket = null
