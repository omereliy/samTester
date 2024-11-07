import os
import re
from abc import ABC, abstractmethod
from macq.extract.learned_sort import Sort


def sort_files_numerically(directory) -> list[str]:
    # List all files in the directory
    files = os.listdir(directory)

    # Sort files by extracting the number after "pfile" and converting it to an integer
    sorted_files = sorted(files, key=lambda x: int(re.search(r'\d+', x).group()))

    return sorted_files

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
                             Sort("place","object"),
                             Sort("locatable","object"),
                             Sort("distributor", "place"),
                             Sort("depot", "place"),
                             Sort("truck", "locatable"),
                             Sort("hoist", "locatable"),
                             Sort("surface", "locatable"),
                             Sort("crate", "surface"),
                             Sort("pallet", "surface")
                             ]
        action_2_sort = {
            "drive": ["truck", "place", "place"],  # (x - truck, y - place, z - place)
            "lift": ["hoist", "crate", "surface", "place"],  # (x - hoist, y - crate, z - surface, p - place)
            "drop": ["hoist", "crate", "surface", "place"],  # (x - hoist, y - crate, z - surface, p - place)
            "load": ["hoist", "crate", "truck", "place"],  # (x - hoist, y - crate, z - truck, p - place)
            "unload": ["hoist", "crate", "truck", "place"]  # (x - hoist, y - crate, z - truck, p - place)
        }

        # Fluent (Predicate) to Sort Mapping (with lists preserving argument order)
        fluent_2_sort = {
            "at": ["locatable", "place"],  # (x - locatable, y - place)
            "on": ["crate", "surface"],  # (x - crate, y - surface)
            "in": ["crate", "truck"],  # (x - crate, y - truck)
            "lifting": ["hoist", "crate"],  # (x - hoist, y - crate)
            "available": ["hoist"],  # (x - hoist)
            "clear": ["surface"]  # (x - surface)
        }
        super().__init__(action_2_sort, fluent_2_sort, sorts, "depots")

    def get_obj_type(self, obj_name: str) -> Sort:
        if "depot" in obj_name:
            return Sort("depot", "place")
        elif "distributor" in obj_name:
            return Sort("distributor", "place")
        elif "truck" in obj_name:
            return Sort("truck", "locatable")
        elif "crate" in obj_name:
            return Sort("crate", "surface")
        elif "pallet" in obj_name:
            return Sort("pallet", "surface")
        elif "hoist" in obj_name:
            return Sort("hoist", "locatable")


class RoverInfo(DomSortsInfo):

    def __init__(self):
        sorts: list[Sort] = [
            Sort("rover"),  # Supertypes first
            Sort("waypoint"),
            Sort("store"),
            Sort("camera"),
            Sort("mode"),
            Sort("lander"),
            Sort("objective")
        ]
        action_2_sort = {
            "navigate": ["rover", "waypoint", "waypoint"],  # (r - rover, w1 - waypoint, w2 - waypoint)
            "sample_soil": ["rover", "store", "waypoint"],  # (r - rover, s - store, w - waypoint)
            "sample_rock": ["rover", "store", "waypoint"],  # (r - rover, s - store, w - waypoint)
            "drop": ["rover", "store"],  # (r - rover, s - store)
            "calibrate": ["rover", "camera", "objective", "waypoint"],  # (r - rover, c - camera, o - objective, w - waypoint)
            "take_image": ["rover", "waypoint", "objective", "camera", "mode"],  # (r - rover, w - waypoint, o - objective, c - camera, m - mode)
            "communicate_soil_data": ["rover", "lander", "waypoint", "waypoint", "waypoint"],  # (r - rover, l - lander, w1 - waypoint, w2 - waypoint, p - waypoint)
            "communicate_rock_data": ["rover", "lander", "waypoint", "waypoint", "waypoint"],  # (r - rover, l - lander, w1 - waypoint, w2 - waypoint, p - waypoint)
            "communicate_image_data": ["rover", "lander", "objective", "mode", "waypoint", "waypoint"]  # (r - rover, l - lander, o - objective, m - mode, w1 - waypoint, w2 - waypoint)
        }
        fluent_2_sort = {
            "at": ["rover", "waypoint"],  # (r - rover, w - waypoint)
            "at_lander": ["lander", "waypoint"],  # (l - lander, w - waypoint)
            "can_traverse": ["rover", "waypoint", "waypoint"],  # (r - rover, w1 - waypoint, w2 - waypoint)
            "equipped_for_soil_analysis": ["rover"],  # (r - rover)
            "equipped_for_rock_analysis": ["rover"],  # (r - rover)
            "equipped_for_imaging": ["rover"],  # (r - rover)
            "empty": ["store"],  # (s - store)
            "have_rock_analysis": ["rover", "waypoint"],  # (r - rover, w - waypoint)
            "have_soil_analysis": ["rover", "waypoint"],  # (r - rover, w - waypoint)
            "full": ["store"],  # (s - store)
            "calibrated": ["camera", "rover"],  # (c - camera, r - rover)
            "supports": ["camera", "mode"],  # (c - camera, m - mode)
            "available": ["rover"],  # (r - rover)
            "visible": ["waypoint", "waypoint"],  # (w1 - waypoint, w2 - waypoint)
            "have_image": ["rover", "objective", "mode"],  # (r - rover, o - objective, m - mode)
            "communicated_soil_data": ["waypoint"],  # (w - waypoint)
            "communicated_rock_data": ["waypoint"],  # (w - waypoint)
            "communicated_image_data": ["objective", "mode"],  # (o - objective, m - mode)
            "at_soil_sample": ["waypoint"],  # (w - waypoint)
            "at_rock_sample": ["waypoint"],  # (w - waypoint)
            "visible_from": ["objective", "waypoint"],  # (o - objective, w - waypoint)
            "store_of": ["store", "rover"],  # (s - store, r - rover)
            "calibration_target": ["camera", "objective"],  # (c - camera, o - objective)
            "on_board": ["camera", "rover"],  # (c - camera, r - rover)
            "channel_free": ["lander"],  # (l - lander)
        }
        super().__init__(action_2_sort, fluent_2_sort, sorts, "rover")

    def get_obj_type(self, obj_name: str) -> Sort:
        if "rover" in obj_name and "store" in obj_name:
            return Sort("store")
        elif "rover" in obj_name:
            return Sort("rover")
        elif "waypoint" in obj_name:
            return Sort("waypoint")
        elif "camera" in obj_name:
            return Sort("camera")
        elif any(keyword in obj_name for keyword in ["colour", "high_res", "low_res"]):
            return Sort("mode")
        elif "general" in obj_name :
            return Sort("lander")
        elif "objective" in obj_name:
            return Sort("objective")


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


