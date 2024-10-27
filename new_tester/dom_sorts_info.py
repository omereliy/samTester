from abc import ABC, abstractmethod
from macq.extract.learned_sort import Sort

class DomSortsInfo(ABC):
    sorts: list[Sort] = list()
    action_2_sort: dict[str, list[str]] = dict()
    fluent_2_sort: dict[str, list[str]] = dict()
    dom_name = ""

    def __init__(self, action_2_sort, fluent_2_sort, sorts, dom_name):
        self.action_2_sort = action_2_sort
        self.fluent_2_sort = fluent_2_sort
        self.sorts = sorts
        self.dom_name = dom_name

    def get_action_2_sort(self) -> dict[str, list[str]]:
        return self.action_2_sort

    def get_fluent_2_sort(self) -> dict[str, list[str]]:
        return self.fluent_2_sort

    @abstractmethod
    def get_obj_type(self, obj_name: str) -> Sort:
        pass

    def get_obj_2_type_dict(self, obj_names: set[str]) -> dict[str, Sort]:
        return {ob_name: self.get_obj_type(ob_name) for ob_name in obj_names}


class DepotInfo(DomSortsInfo):
    def __init__(self):
        sorts: list[Sort] = [Sort("object"),
                             Sort("Place","object"),
                             Sort("Locatable","object"),
                             Sort("Distributor", "Place"),
                             Sort("Depot", "Place"),
                             Sort("Truck", "Locatable"),
                             Sort("Hoist", "Locatable"),
                             Sort("Surface", "Locatable"),
                             Sort("Crate", "Surface"),
                             Sort("Pallet", "Surface")
                             ]
        action_2_sort = {
            "Drive": ["Truck", "Place", "Place"],  # (x - truck, y - place, z - place)
            "Lift": ["Hoist", "Crate", "Surface", "Place"],  # (x - hoist, y - crate, z - surface, p - place)
            "Drop": ["Hoist", "Crate", "Surface", "Place"],  # (x - hoist, y - crate, z - surface, p - place)
            "Load": ["Hoist", "Crate", "Truck", "Place"],  # (x - hoist, y - crate, z - truck, p - place)
            "Unload": ["Hoist", "Crate", "Truck", "Place"]  # (x - hoist, y - crate, z - truck, p - place)
        }

        # Fluent (Predicate) to Sort Mapping (with lists preserving argument order)
        fluent_2_sort = {
            "at": ["Locatable", "Place"],  # (x - locatable, y - place)
            "on": ["Crate", "Surface"],  # (x - crate, y - surface)
            "in": ["Crate", "Truck"],  # (x - crate, y - truck)
            "lifting": ["Hoist", "Crate"],  # (x - hoist, y - crate)
            "available": ["Hoist"],  # (x - hoist)
            "clear": ["Surface"]  # (x - surface)
        }
        super().__init__(action_2_sort, fluent_2_sort, sorts, "depots")

    def get_obj_type(self, obj_name: str) -> Sort:
        if "depot" in obj_name:
            return Sort("Depot", "Place")
        elif "distributor" in obj_name:
            return Sort("Distributor", "Place")
        elif "truck" in obj_name:
            return Sort("Truck", "Locatable")
        elif "crate" in obj_name:
            return Sort("Crate", "Surface")
        elif "pallet" in obj_name:
            return Sort("Pallet", "Surface")
        elif "hoist" in obj_name:
            return Sort("Hoist", "Locatable")


class RoverInfo(DomSortsInfo):

    def __init__(self):
        sorts: list[Sort] = [
            Sort("Rover"),  # Supertypes first
            Sort("Waypoint"),
            Sort("Store"),
            Sort("Camera"),
            Sort("Mode"),
            Sort("Lander"),
            Sort("Objective")
        ]
        action_2_sort = {
            "navigate": ["Rover", "Waypoint", "Waypoint"],  # (r - rover, w1 - waypoint, w2 - waypoint)
            "sample_soil": ["Rover", "Store", "Waypoint"],  # (r - rover, s - store, w - waypoint)
            "sample_rock": ["Rover", "Store", "Waypoint"],  # (r - rover, s - store, w - waypoint)
            "drop": ["Rover", "Store"],  # (r - rover, s - store)
            "calibrate": ["Rover", "Camera", "Objective", "Waypoint"],  # (r - rover, c - camera, o - objective, w - waypoint)
            "take_image": ["Rover", "Waypoint", "Objective", "Camera", "Mode"],  # (r - rover, w - waypoint, o - objective, c - camera, m - mode)
            "communicate_soil_data": ["Rover", "Lander", "Waypoint", "Waypoint", "Waypoint"],  # (r - rover, l - lander, w1 - waypoint, w2 - waypoint, p - waypoint)
            "communicate_rock_data": ["Rover", "Lander", "Waypoint", "Waypoint", "Waypoint"],  # (r - rover, l - lander, w1 - waypoint, w2 - waypoint, p - waypoint)
            "communicate_image_data": ["Rover", "Lander", "Objective", "Mode", "Waypoint", "Waypoint"]  # (r - rover, l - lander, o - objective, m - mode, w1 - waypoint, w2 - waypoint)
        }
        fluent_2_sort = {
            "at": ["Rover", "Waypoint"],  # (r - rover, w - waypoint)
            "at_lander": ["Lander", "Waypoint"],  # (l - lander, w - waypoint)
            "can_traverse": ["Rover", "Waypoint", "Waypoint"],  # (r - rover, w1 - waypoint, w2 - waypoint)
            "equipped_for_soil_analysis": ["Rover"],  # (r - rover)
            "equipped_for_rock_analysis": ["Rover"],  # (r - rover)
            "equipped_for_imaging": ["Rover"],  # (r - rover)
            "empty": ["Store"],  # (s - store)
            "have_rock_analysis": ["Rover", "Waypoint"],  # (r - rover, w - waypoint)
            "have_soil_analysis": ["Rover", "Waypoint"],  # (r - rover, w - waypoint)
            "full": ["Store"],  # (s - store)
            "calibrated": ["Camera", "Rover"],  # (c - camera, r - rover)
            "supports": ["Camera", "Mode"],  # (c - camera, m - mode)
            "available": ["Rover"],  # (r - rover)
            "visible": ["Waypoint", "Waypoint"],  # (w1 - waypoint, w2 - waypoint)
            "have_image": ["Rover", "Objective", "Mode"],  # (r - rover, o - objective, m - mode)
            "communicated_soil_data": ["Waypoint"],  # (w - waypoint)
            "communicated_rock_data": ["Waypoint"],  # (w - waypoint)
            "communicated_image_data": ["Objective", "Mode"],  # (o - objective, m - mode)
            "at_soil_sample": ["Waypoint"],  # (w - waypoint)
            "at_rock_sample": ["Waypoint"],  # (w - waypoint)
            "visible_from": ["Objective", "Waypoint"],  # (o - objective, w - waypoint)
            "store_of": ["Store", "Rover"],  # (s - store, r - rover)
            "calibration_target": ["Camera", "Objective"],  # (c - camera, o - objective)
            "on_board": ["Camera", "Rover"],  # (c - camera, r - rover)
            "channel_free": ["Lander"],  # (l - lander)
        }
        super().__init__(action_2_sort, fluent_2_sort, sorts, "rover")

    def get_obj_type(self, obj_name: str) -> Sort:
        if "rover" in obj_name and "store" in obj_name:
            return Sort("Store")
        elif "rover" in obj_name:
            return Sort("Rover")
        elif "waypoint" in obj_name:
            return Sort("Waypoint")
        elif "camera" in obj_name:
            return Sort("Camera")
        elif any(keyword in obj_name for keyword in ["colour", "high_res", "low_res"]):
            return Sort("Mode")
        elif "general" in obj_name :
            return Sort("Lander")
        elif "objective" in obj_name:
            return Sort("Objective")


class SatelliteInfo(DomSortsInfo):

    def __init__(self):
        sorts: list[Sort] = [
            Sort("satellite"),  # Supertypes first
            Sort("direction"),
            Sort("instrument"),
            Sort("mode")
        ]

        action_2_sort = {
            "turn_to": ["satellite", "direction", "direction"],  # (s - satellite, d_new - direction, d_prev - direction)
            "switch_on": ["instrument", "satellite"],  # (i - instrument, s - satellite)
            "switch_off": ["instrument", "satellite"],  # (i - instrument, s - satellite)
            "calibrate": ["satellite", "instrument", "direction"],  # (s - satellite, i - instrument, d - direction)
            "take_image": ["satellite", "direction", "instrument", "mode"]  # (s - satellite, d - direction, i - instrument, m - mode)
        }

        # Fluent (Predicate) to Sort Mapping
        fluent_2_sort = {
            "on_board": ["instrument", "satellite"],  # (i - instrument, s - satellite)
            "supports": ["instrument", "mode"],  # (i - instrument, m - mode)
            "pointing": ["satellite", "direction"],  # (s - satellite, d - direction)
            "power_avail": ["satellite"],  # (s - satellite)
            "power_on": ["instrument"],  # (i - instrument)
            "calibrated": ["instrument"],  # (i - instrument)
            "have_image": ["direction", "mode"],  # (d - direction, m - mode)
            "calibration_target": ["instrument", "direction"]  # (i - instrument, d - direction)
        }
        super().__init__(action_2_sort, fluent_2_sort, sorts, "satellite")

    def get_obj_type(self, obj_name: str) -> Sort:
        if "satellite" in obj_name:
            return Sort("satellite")
        elif any(keyword in obj_name for keyword in ["star", "groundstation", "planet", "phenomenon"]):
            return Sort("direction")
        elif "instrument" in obj_name:
            return Sort("instrument")
        elif any(keyword in obj_name for keyword in ["thermograph", "image", "spectrograph", "infrared"]):
            return Sort("mode")


