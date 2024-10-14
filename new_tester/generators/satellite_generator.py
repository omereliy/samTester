import subprocess
from pathlib import Path
import random

# Define the list of commands
untyped_commands = [
    "./satgen -u 4000 1 3 3 3 4",
    "./satgen -u 4123 1 3 3 3 5",
    "./satgen -u 7123 2 3 3 3 5",
    "./satgen -u 7788 2 3 3 3 7",
    "./satgen -u 1212 3 3 3 3 7",
    "./satgen -u 7512 3 3 4 4 7",
    "./satgen -u 8111 4 3 4 5 7",
    "./satgen -u 0099 4 3 4 5 10",

    # More serious numbers of observations
    "./satgen -u 1412 5 3 5 5 10",
    "./satgen -u 1792 5 3 5 5 12",
    "./satgen -u 1891 5 3 5 5 15",
    "./satgen -u 2000 5 3 5 5 20",
    "./satgen -u 2002 5 3 5 5 25",

    # Check exploitation of parallelism - more satellites
    "./satgen -u 2222 6 3 5 5 20",
    "./satgen -u 7777 8 3 5 5 20",
    "./satgen -u 8888 10 3 5 5 20",
    "./satgen -u 9999 12 3 5 5 20",

    # Finally, more instruments on satellites
    "./satgen -u 0001 5 5 5 5 20",
    "./satgen -u 0002 5 8 8 5 20",
    "./satgen -u 0003 5 10 10 5 20"
]

typed_commands = [
    "./satgen 4000 1 3 3 3 4",
    "./satgen 4123 1 3 3 3 5",
    "./satgen 7123 2 3 3 3 5",
    "./satgen 7788 2 3 3 3 7",
    "./satgen 1212 3 3 3 3 7",
    "./satgen 7512 3 3 4 4 7",
    "./satgen 8111 4 3 4 5 7",
    "./satgen 0099 4 3 4 5 10",

    # More serious numbers of observations
    "./satgen 1412 5 3 5 5 10",
    "./satgen 1792 5 3 5 5 12",
    "./satgen 1891 5 3 5 5 15",
    "./satgen 2000 5 3 5 5 20",
    "./satgen 2002 5 3 5 5 25",

    # Check exploitation of parallelism - more satellites
    "./satgen 2222 6 3 5 5 20",
    "./satgen 7777 8 3 5 5 20",
    "./satgen 8888 10 3 5 5 20",
    "./satgen 9999 12 3 5 5 20",

    # Finally, more instruments on satellites
    "./satgen 0001 5 5 5 5 20",
    "./satgen 0002 5 8 8 5 20",
    "./satgen 0003 5 10 10 5 20"
]

random_commands = [
    f"./satgen -u {random.randint(1000, 7789)} 1 3 3 3 {random.randint(4, 10)}",
    # More serious numbers of observations
    f"./satgen -u {random.randint(1412, 2003)} 5 3 5 5 {random.randint(10, 25)}",
    # Check exploitation of parallelism - more satellites
    f"./satgen -u {random.randint(2222, 9999)} 6 3 5 5 20",
    # Finally, more instruments on satellites
    f"./satgen -u 0001 5 {random.randint(5, 10)} {random.randint(5, 10)} 5 20",
]


def generate_problems(output_directory: Path):
    print("Generating problems for the satellite domain...")
    i = 0
    for _ in range(0, 25):
        random_commands = [
            f"./satgen -u {random.randint(1000, 7789)} 1 3 3 3 {random.randint(4, 10)}",
            # More serious numbers of observations
            f"./satgen -u {random.randint(1412, 2003)} 5 3 5 5 {random.randint(10, 25)}",
            # Check exploitation of parallelism - more satellites
            f"./satgen -u {random.randint(2222, 9999)} 6 3 5 5 20",
            # Finally, more instruments on satellites
            f"./satgen -u 0001 5 {random.randint(5, 10)} {random.randint(5, 10)} 5 20",
        ]
        for command in random_commands:
            problem_name = f"pfile{i + 1}.pddl"
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
    output_directory = Path("../probs/untyped_probs/satellite/test_probs")
    output_directory.mkdir(exist_ok=True)
    generate_problems(output_directory)


if __name__ == "__main__":
    main()
