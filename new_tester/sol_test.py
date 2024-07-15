# import logging
# import os
#
# import main
# from macq.generate.pddl import Generator
#
# sols_dict = dict()
# def run_check():
#     test_probs_dir_path = main.get_test_probs_dir(main.depot_dir)
#     original_dom_solver = Generator(dom=main.depots_utype_dom,
#                                     prob=str((test_probs_dir_path / "pfile0.pddl").resolve()),
#                                     observe_static_fluents=True,
#                                     observe_pres_effs=True)
#     learned_dom_solver = Generator(dom=main.learned_depots_dom_path,
#                                    prob=str((test_probs_dir_path / "pfile0.pddl").resolve()),
#                                    observe_static_fluents=True,
#                                    observe_pres_effs=True)
#
#     for prob_filename in ["pfile40.pddl", "pfile55.pddl", "pfile57.pddl", "pfile70.pddl", "pfile76.pddl"]:
#         if prob_filename.__eq__("pfile0.pddl"):
#             continue
#         prob_path = os.path.join(test_probs_dir_path, prob_filename)
#         original_dom_solver.pddl_prob = prob_path
#         planlearn = None
#         try:
#             planlearn = main.generate_plan(learned_dom_solver, prob_path, "learn", logger=logging.getLogger())
#         except Exception as e:
#             print(e.__str__())
#         try:
#             planorig = main.generate_plan(original_dom_solver, prob_path, "original", logger=logging.getLogger())
#             if planorig != -1 and len(planorig.actions) > 0:
#                 sols_dict[prob_filename] = True
#                 print(f"solved {prob_filename}")
#             else:
#                 if planorig != -1 and len(planorig.actions) == 0:
#                     sols_dict[prob_filename] = False
#                     print(f"no actions unable to solve {prob_filename}")
#         except Exception as e:
#             sols_dict[prob_filename] = False
#             print(f"error, unable to solve {prob_filename}")
#             continue
#
# if __name__ == '__main__':
#     test_probs_dir_path = main.get_test_probs_dir(main.driver_log_dir)
#     original_dom_solver = Generator(dom=main.driverlog_utype_dom,
#                                     prob=str((test_probs_dir_path / "pfile1.pddl").resolve()),
#                                     observe_static_fluents=True,
#                                     observe_pres_effs=True)
#     files = os.listdir(test_probs_dir_path)
#     files.sort()
#     i=1
#     for prob_filename in files:
#         if i<10:
#             i+=1
#             continue
#
#         prob_path = os.path.join(test_probs_dir_path, prob_filename)
#         try:
#             original_dom_solver.pddl_prob = prob_path
#             plan = original_dom_solver.generate_plan()
#             print(plan.actions)
#             print(prob_filename + "sucsess!!!!!!")
#         except KeyboardInterrupt:
#             break
#
#         except :
#             print(prob_filename + "unable to solve problem")
#             continue
#
#
# import pandas as pd
# import matplotlib.pyplot as plt
# from sklearn.linear_model import LinearRegression
#
# import numpy as np
#
# # Adjusting the DataFrame to focus on 'learn transition set size'
# data_updated = {
#     'domain': ['depot'] * 6 + ['rover'] * 4 + ['satellite'] * 6,
#     'learn transition set size': [33, 83, 108, 225, 506, 650, 68, 131, 172, 172, 32, 81, 167, 211, 317, 434],
#     'accuracy': [0.97, 0.98989899, 0.98989899, 0.98989899, 0.98989899, 0.98989899, 0.38, 0.35, 0.35, 0.35, 1, 1, 1, 1, 1, 1],
#     'precision': [0.989473684, 1, 1, 1, 1, 1, 0.833333333, 1, 1, 1, 1, 1, 1, 1, 1, 1],
#     'recall': [0.979166667, 0.989583333, 0.989583333, 0.989583333, 0.989583333, 0.989583333, 0.142857143, 0.071428571, 0.071428571, 0.071428571, 1, 1, 1, 1, 1, 1]
# }
#
# df_updated = pd.DataFrame(data_updated)
#
# # Perform linear regression for each metric based on 'learn transition set size'
# metrics = ['precision', 'accuracy', 'recall']
# regression_results_updated = {}
#
# for metric in metrics:
#     X = df_updated['learn transition set size'].values.reshape(-1, 1)
#     y = df_updated[metric].values
#     model = LinearRegression()
#     model.fit(X, y)
#     y_pred = model.predict(X)
#     regression_results_updated[metric] = {
#         'model': model,
#         'predicted': y_pred
#     }
#
# # Plotting the regression results based on 'learn transition set size'
# for metric in metrics:
#     plt.figure(figsize=(10, 6))
#     plt.scatter(df_updated['learn transition set size'], df_updated[metric], color='blue', label=f"Actual {metric.capitalize()}")
#     plt.plot(df_updated['learn transition set size'], regression_results_updated[metric]['predicted'], color='red', label=f"Predicted {metric.capitalize()} (Linear Regression)")
#     plt.xlabel('Learn Transition Set Size')
#     plt.ylabel(metric.capitalize())
#     plt.title(f"{metric.capitalize()} vs. Learn Transition Set Size (with Linear Regression)")
#     plt.legend()
#     plt.grid(True)
#     plt.show()


