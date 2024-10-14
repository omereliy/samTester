import subprocess
from pathlib import Path
import random

# Define the list of commands without the redirection part
untyped_commands = [
    "./depotgen 1818 -u 1 2 2 3 3 2",
    "./depotgen 7512 -u 1 2 2 3 3 4",
    "./depotgen 1935 -u 1 2 2 3 3 6",
    "./depotgen 6512 -u 1 2 2 3 3 8",
    "./depotgen 1212 -u 1 2 2 3 3 10",
    "./depotgen 5656 -u 1 2 2 3 3 15",

    # Increase surfaces
    "./depotgen 1234 -u 1 2 2 6 3 6",
    "./depotgen 4321 -u 1 2 2 6 3 10",
    "./depotgen 5451 -u 1 2 2 6 3 15",

    # Increase locations
    "./depotgen 7654 -u 3 3 2 6 6 6",
    "./depotgen 8765 -u 3 3 2 6 6 10",
    "./depotgen 9876 -u 3 3 2 6 6 15",

    # Increase surfaces and locations
    "./depotgen 5646 -u 3 3 2 10 6 6",
    "./depotgen 7654 -u 3 3 2 10 6 10",
    "./depotgen 4534 -u 3 3 2 10 6 15",

    # Increase general resources (trucks, hoists)
    "./depotgen 4398 -u 2 2 4 8 8 6",
    "./depotgen 6587 -u 2 2 4 8 8 10",
    "./depotgen 1916 -u 2 2 4 8 8 15",

    # Increase scale
    "./depotgen 6178 -u 4 4 4 10 8 8",
    "./depotgen 7615 -u 4 4 4 10 8 15",
    "./depotgen 8715 -u 6 6 6 20 15 10",
    "./depotgen 1817 -u 6 6 6 20 15 20"
]

typed_commands = [
    "./depotgen 1818 1 2 2 3 3 2",
    "./depotgen 7512 1 2 2 3 3 4",
    "./depotgen 1935 1 2 2 3 3 6",
    "./depotgen 6512 1 2 2 3 3 8",
    "./depotgen 1212 1 2 2 3 3 10",
    "./depotgen 5656 1 2 2 3 3 15",

    # Increase surfaces
    "./depotgen 1234 1 2 2 6 3 6",
    "./depotgen 4321 1 2 2 6 3 10",
    "./depotgen 5451 1 2 2 6 3 15",

    # Increase locations
    "./depotgen 7654 3 3 2 6 6 6",
    "./depotgen 8765 3 3 2 6 6 10",
    "./depotgen 9876 3 3 2 6 6 15",

    # Increase surfaces and locations
    "./depotgen 5646 3 3 2 10 6 6",
    "./depotgen 7654 3 3 2 10 6 10",
    "./depotgen 4534 3 3 2 10 6 15",

    # Increase general resources (trucks, hoists)
    "./depotgen 4398 2 2 4 8 8 6",
    "./depotgen 6587 2 2 4 8 8 10",
    "./depotgen 1916 2 2 4 8 8 15",

    # Increase scale
    "./depotgen 6178 4 4 4 10 8 8",
    "./depotgen 7615 4 4 4 10 8 15",
    "./depotgen 8715 6 6 6 20 15 10",
    "./depotgen 1817 6 6 6 20 15 20"
]
def generate_problems(output_directory: Path):
    print("Generating problems for the depot domain...")
    i = 0
    for _ in range(0, 20):
        random_commands = [
            f"./depotgen {random.randint(1818, 5656)} -u 1 2 2 3 3 {random.randint(2, 8)}",
            f"./depotgen {random.randint(1818, 5656)} -u 1 2 2 3 3 {random.randint(9, 15)}",
            f"./depotgen {random.randint(1234, 5451)} -u 1 2 2 6 3 {random.randint(6, 15)}",
            f"./depotgen {random.randint(2000, 6000)} -u 3 3 2 10 6 {random.randint(6, 15)}",
            f"./depotgen {random.randint(6000, 7654)} -u 3 3 2 10 6 {random.randint(6, 15)}"
            #f"./depotgen {random.randint(6000, 7654)} -u 2 2 4 8 8 {random.randint(6, 15)}",
        ]
        for command in random_commands:
            problem_name = f"pfile{i+1}.pddl"
            problem_path = output_directory / problem_name
            print(f"Generating problem {problem_name} with command: {command}")
            try:
                result = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
                _export_problem(problem_path, result)
                i+=1
            except subprocess.CalledProcessError as e:
                print(f"Error generating problem {problem_name}: {e.output.decode()}")


def _export_problem(problem_path, result):
    with open(problem_path, "wt") as problem_file:
        problem_file.write(result.decode("utf-8").lower())


def main():
    output_directory = "test_probs"
    Path(output_directory).mkdir(parents=True, exist_ok=True)
    generate_problems(Path(output_directory))


if __name__ == "__main__":
    main()
