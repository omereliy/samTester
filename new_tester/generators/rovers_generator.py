import subprocess
from pathlib import Path
import random
# Define the list of commands
untyped_commands = [
    "./rovergen 1234 -u 1 4 2 1 1",
    "./rovergen 4213 -u 1 4 2 2 2",
    "./rovergen 3726 -u 2 4 2 2 2",
    "./rovergen 6232 -u 2 4 3 3 2",
    "./rovergen 2435 -u 2 4 3 3 3",

    # Slightly more challenging
    "./rovergen 2312 -u 2 6 2 2 3",
    "./rovergen 4123 -u 3 6 2 2 3",
    "./rovergen 1423 -u 4 6 3 3 3",
    "./rovergen 4132 -u 4 7 3 4 3",
    "./rovergen 8271 -u 4 7 4 4 4",
    "./rovergen 7126 -u 4 8 3 3 3",

    # Quite hard
    "./rovergen 5146 -u 4 8 4 4 4",
    "./rovergen 6152 -u 4 9 4 4 4",
    "./rovergen 1425 -u 4 10 4 4 4",
    "./rovergen 4135 -u 4 11 5 4 4",
    "./rovergen 5142 -u 4 12 5 4 4",

    # Very hard
    "./rovergen 5624 -u 6 15 6 5 5",
    "./rovergen 4621 -u 6 20 7 5 5",
    "./rovergen 8327 -u 6 20 8 5 6",
    "./rovergen 7182 -u 8 25 8 5 8"
]

typed_commands = [
    "./rovergen 1234 1 4 2 1 1",
    "./rovergen 4213 1 4 2 2 2",
    "./rovergen 3726 2 4 2 2 2",
    "./rovergen 6232 2 4 3 3 2",
    "./rovergen 2435 2 4 3 3 3",

    # Slightly more challenging
    "./rovergen 2312 2 6 2 2 3",
    "./rovergen 4123 3 6 2 2 3",
    "./rovergen 1423 4 6 3 3 3",
    "./rovergen 4132 4 7 3 4 3",
    "./rovergen 8271 4 7 4 4 4",
    "./rovergen 7126 4 8 3 3 3",

    # Quite hard
    "./rovergen 5146 4 8 4 4 4",
    "./rovergen 6152 4 9 4 4 4",
    "./rovergen 1425 4 10 4 4 4",
    "./rovergen 4135 4 11 5 4 4",
    "./rovergen 5142 4 12 5 4 4",

    # Very hard
    "./rovergen 5624 6 15 6 5 5",
    "./rovergen 4621 6 20 7 5 5",
    "./rovergen 8327 6 20 8 5 6",
    "./rovergen 7182 8 25 8 5 8"
]



def generate_problems(output_directory: Path, is_learn=False):
    print("Generating problems for the rover domain...")
    i = 1
    for _ in range(0, 25):
        if is_learn and i >20:
            break
        elif i > 100:
            break

        random_commands = [
            f"./rovergen {random.randint(1234, 6233)} 1 4 2 1 3",
            # Slightly more challenging
            f"./rovergen {random.randint(1423, 8272)} 4 7 4 6 11",
            # Quite hard
            f"./rovergen {random.randint(1425, 6153)} 8 25 8 7 20",
            # Very hard
            f"./rovergen {random.randint(4621, 8328)} 10 50 8 14 25",

        ]
        for command in random_commands:
            if is_learn and i > 20:
                break
            problem_name = f"pfile{i}.pddl"
            problem_path = output_directory / problem_name
            print(f"Generating problem {problem_name} with command: {command}")
            try:
                result = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
                _export_problem(problem_path, result)
                i += 1
            except subprocess.CalledProcessError as e:
                print(f"Error generating problem {problem_name}: {e.output.decode()}")


def _export_problem(problem_path, result):
    with open(problem_path, "wt") as problem_file:
        problem_file.write(result.decode("utf-8").lower())


def main():
    base = Path(__file__).parent.parent
    output_directory = base / "probs" / "typed_probs" / "rover" / "test_probs"
    output_directory.mkdir(exist_ok=True)
    generate_problems(output_directory, is_learn=False)


if __name__ == "__main__":
    main()
