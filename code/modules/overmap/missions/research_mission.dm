/datum/mission/research
	name = "Electrical storm research mission"
	desc = "Нам нужны данные о поведении электрических бурь в системе для текущего исследования. \
			Пожалуйста, прикрепите присланный сенсор к вашему кораблю и пролетите на нем сквозь шторм.\
			Для сбора данных сенсор должен быть подключен к эл. сети. "
	value = 3000 // base value, before adding bonus for number of things to fly through
	duration = 30 MINUTES
	weight = 8

	var/datum/overmap/objective_type = /datum/overmap/event/electric
	var/obj/machinery/mission_scanner/scanner
	var/num_current = 0
	var/num_wanted = 5

/datum/mission/research/New(...)
	num_wanted = rand(num_wanted - 1, num_wanted + 1)
	value += num_wanted * 150
	return ..()

/datum/mission/research/accept(datum/overmap/ship/controlled/acceptor, turf/accept_loc)
	. = ..()
	scanner = spawn_bound(/obj/machinery/mission_scanner, accept_loc, VARSET_CALLBACK(src, scanner, null))
	RegisterSignal(servant, COMSIG_OVERMAP_MOVED, PROC_REF(ship_moved))

/datum/mission/research/Destroy()
	scanner = null
	return ..()

/datum/mission/research/turn_in()
	recall_bound(scanner)
	return ..()

/datum/mission/research/give_up()
	recall_bound(scanner)
	return ..()

/datum/mission/research/get_progress_string()
	return "[num_current]/[num_wanted]"

/datum/mission/research/can_complete()
	. = ..()
	if(!.)
		return
	var/obj/docking_port/mobile/scanner_port = SSshuttle.get_containing_shuttle(scanner)
	return . && (num_current >= num_wanted) && (scanner_port?.current_ship == servant)

/datum/mission/research/proc/ship_moved(datum/overmap/ship/controlled/ship, old_x, old_y)
	SIGNAL_HANDLER

	var/datum/overmap/over_obj
	var/obj/docking_port/mobile/scanner_port
	if(failed || (num_current >= num_wanted))
		return
	over_obj = locate(objective_type) in SSovermap.overmap_container[ship.x][ship.y]
	scanner_port = SSshuttle.get_containing_shuttle(scanner)
	if(!over_obj || !scanner.is_operational || scanner_port?.current_ship != servant)
		return
	num_current++
/* commented out until ion storms aren't literal torture
/datum/mission/research/ion
	name = "Ion storm research mission"
	desc = "Нам нужны данные о поведении ионных бурь в системе для текущего исследования. \
			Пожалуйста, прикрепите присланный сенсор к вашему кораблю и пролетите на нем сквозь шторм.\
			Для сбора данных сенсор должен быть подключен к эл. сети. "
	value = 3500
	objective_type = /datum/overmap/event/emp
*/
/datum/mission/research/meteor
	name = "Asteroid field research mission"
	desc = "Нам нужны данные о поведении астероидных полей в системе для текущего исследования. \
			Пожалуйста, прикрепите присланный сенсор к вашему кораблю и пролетите на нем сквозь астероидные поля.\
			Для сбора данных сенсор должен быть подключен к эл. сети."
	value = 4000
	weight = 4
	objective_type = /datum/overmap/event/meteor

/datum/mission/research/carp
	name = "Carp migration research mission"
	desc = "Нам нужны данные о моделях миграции космических карпов для текущего исследования. \
			Пожалуйста, прикрепите присланный сенсор к вашему кораблю и пролетите на нем сквозь место сбора карпов.\
			Для сбора данных сенсор должен быть подключен к эл. сети."
	value = 2000
	weight = 4
	num_wanted = 3
	objective_type = /datum/overmap/event/meteor/carp

/datum/mission/research/dust
	name = "dust research mission"
	desc = "Нам нужны данные о плотности космической пыли для обновления навигационных карт. \
			Пожалуйста, прикрепите присланный сенсор к вашему кораблю и пролетите на нем через . \
			Для сбора данных сенсор должен быть подключен к эл. сети."
	value = 1000
	weight = 4
	objective_type = /datum/overmap/event/meteor/dust

/*
		Research mission scanning machine
*/

/obj/machinery/mission_scanner
	name = "polymodal sensor array"
	desc = "Сложное сканирующее устройство, объединяющее множество датчиков, обычно используется \
			для обнаружения и измерения широкого спектра астрофизических явлений."
	icon_state = "scanner_unanchor"
	max_integrity = 500
	density = FALSE
	anchored = FALSE
	use_power = NO_POWER_USE
	idle_power_usage = 400
	processing_flags = START_PROCESSING_MANUALLY

/obj/machinery/mission_scanner/wrench_act(mob/living/user, obj/item/I)
	. = ..()
	if(!. && default_unfasten_wrench(user, I))
		return TRUE

/obj/machinery/mission_scanner/set_anchored(anchorvalue)
	. = ..()
	if(isnull(.))
		return
	density = anchorvalue
	if(anchorvalue)
		set_is_operational(TRUE)
		START_PROCESSING(SSmachines, src)
		use_power = IDLE_POWER_USE
	else
		set_is_operational(FALSE)
		STOP_PROCESSING(SSmachines, src)
		use_power = NO_POWER_USE
	power_change() // calls update_appearance(), makes sure we're powered

/obj/machinery/mission_scanner/update_appearance(updates)
	. = ..()
	if(is_operational)
		icon_state = "scanner_power"
	else if(anchored)
		icon_state = "scanner_depower"
	else
		icon_state = "scanner_unanchor"
