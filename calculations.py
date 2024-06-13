import enum








def calculate_recall(tp: float = 0, fn: float = 0) -> float:
    """test the precision of the learned model
    recall = tp/(tp+fn)
    where tp is: action's "act_o",and a sequence of act_l_i can be done from state s_j to achieve state s_j+1 for
     both original and learned domain.
    fn is: action "act"  can be done from state s_j to achieve goal state s_j+1 in the
    original domain but no action achieve state s_j+1 in the learned domain.
    Args:
        fn (float): false negative in the domain object dict
        tp (float): true positive in the domain object dict
    """
    return tp / (tp + fn) if tp + fn > 0 else 1


def calculate_precision(fp: float = 0, tp: float = 0) -> float:
    """test the precision of the learned model
    precision = tp/(tp+fp)
    where tp is: action a_i can be done from state s_j for both original and learned domain.
    fp is: action "act"  can be done from state s_j to achieve goal state s_j+1 for the
    learned domain but no action achieve state s_j+1 for the original domain.
    Args:
        fp (float): false positive in the domain object dict
        tp (float): true positive in the domain object dict
    """
    return tp / (tp + fp) if tp + fp > 0 else 1


class ModelName(enum.Enum):
    model1 = "model1"
    model2 = "model2"
    orig = "orig"


class Stats:
    all_stats: dict[ModelName, dict[str, int]] = {ModelName.model1: {"fp": 0, "tp": 0, "fn": 0},
                                                  ModelName.model2: {"fp": 0, "tp": 0, "fn": 0},
                                                  ModelName.orig: {"fp": 0, "tp": 0, "fn": 0}}

    def update_stats(self, stats_to_add: dict[ModelName, dict[str, int]], ):
        for name, diction in stats_to_add.items():
            for stat, val in diction.items():
                if stat in {"fp", "fn", "tp"}:
                    self.all_stats[name][stat] += diction[stat]

    def __str__(self):
        out = f""
        for name, diction in self.all_stats.items():
            out += (f"{name.name} stats:\n"
                    f"precision= {calculate_precision(fp=diction['fp'], tp=diction['tp'])}\n"
                    f"recall= {calculate_recall(fn=diction['fp'], tp=diction['tp'])}\n\n")
        return out

    def __repr__(self):
        return self.__str__()

    def print_stats(self):
        print(self.__repr__())


