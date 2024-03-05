# LEARNS: Learning Enhancement and Recognition Navigation System

This project implements an intelligent tutoring system in PDDL, aiming to assist secondary education students in their learning journey by identifying their learning preferences and support needs. Both continuous and discrete domains handle 10 problems ($p_0$ -- $p_9$), with each problem accommodating one additional student, leading to 10 students in $p_9$. Every student enrolls in 5 distinct courses, with a 25% chance of needing additional support and a mutually exclusive 70% chance of having a specific learning preference. Planning learning paths starts with creating a 36-week framework, comprising 32 weeks for learning and 4 weeks for unit test assessments. Various variables, including student (?s), course (?c), course level (?l), expected grade (?g), current week (?w), unit (?u), extracurricular activity (?e), preferred learning strategy (?t), and support requirements (?r), guide students through the system. Additionally, the system accommodates group extracurricular classes, determined by the (study-group ?c ?l) predicate, to benefit students collectively.

## Table of Contents

1. [Installation](#installation)
2. [Usage](#usage)
3. [Contributing](#contributing)

## Installation
Installing the system involves downloading the repository and opening it with your preferred PDDL editor. However, for execution, a planner like ENHSP is necessary due to numerics in the continuous domain. The discrete domain also incorporates numerics to assist ENHSP in minimising/maximising the cost metric, although these can be eliminated if opting for something like FastDownward. While alternative planners are accessible, you need to know how to use them as support cannot be offered here.

## Usage
To make use of the content in this repository, you need only run the scripts in the root directory. This is the `enhsp.sh` script and the `lower.sh` script. They can be used as follows:
```bash
./enhsp.sh path/to/enhsp path/to/domain path/to/problem-folder
```
```bash
./lower.sh path/to/pddl_files
```
The `lower.sh` script will transform all PDDL files to lower case as to not violate the language (according to ENHSP). The outputs of plans -- by using the `enhsp.sh` script will be in the respective directories of the problems you are solving.

Furthermore, the `discrete` and `continuous` domains are the domains of interest in this work. The results of these are available in `output.csv` -- benchmarking these domains against current planning benchmarks from 2020 to 2000.

## Contributing
1. Fork the repository.
2. Create a new branch: `git checkout -b feature-name`.
3. Make changes and commit: `git commit -m 'Description of changes'`.
4. Push to the branch: `git push origin feature-name`.
5. Submit a pull request.