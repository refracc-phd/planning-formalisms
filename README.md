# LEARNS: Learning Enhancement and Recognition Navigation System

## Description

This project is an implementation of an intelligent tutoring system in PDDL, which is intended to aid students in secondary education - who may or may not have additional support requirements - through their education by recognising any learning preferences or support requirements they may have.

Both the continuous and discrete domain are encoded to handle the same 10 problems ($p_0$ - $p_9$) containing one student in $p_0$ and increases by one student at a time, giving us 10 students in $p_9$. Each student takes 5 distinct courses and there is a $25\%$ chance that the student has an additional support need, and a mutually exclusive $70\%$ chance of the student having a specific learning preference.  Planning learning paths for students requires the initial step of creating a framework, which is one that contains 36 weeks. There are 32 weeks for learning, and 4 weeks for students to be assessed by means of unit tests. There are also a number of variables to consider, such as a student (`?s`), the course they are sitting (`?c`), the level of the course (`?l`), what grade they are expected to achieve in a given course (`?g`), what week they are currently on (`?w`), what unit they are completing (`?u`), what extracurricular activity they are doing (`?e`), what learning strategy they prefer (`?t`), and what support requirements they may have (`?r`). These variables are used to aid in the guidance of students through this learning recognition system.

This system also takes into account that the extracurricular classes can be done in a group manner, which is determined to be beneficial to the students and can be determined by the `(study-group ?c ?l)` predicate - which is made explicit in the problem directories.

## Table of Contents

1. [Installation](#installation)
2. [Usage](#usage)
3. [Contributing](#contributing)

## Installation
Installation is as simple as downloading the repository and using your favourite PDDL editor to open it. However, to run you will require a planner - such as ENHSP - as the continuous domain contains numerics. The discrete domain also contains numerics to aid ENHSP with the process of minimising/maximising the cost metric, however these can be removed if you wish to use something like FastDownward. Other planners are available to use, but you will need to know how to use them.

## Usage
To make use of the content in this repository, you need only run the scripts in the root directory. These are the `enhsp.sh` and `fd.sh` scripts respectively. They can be used as follows:
```bash
./enhsp.sh path/to/enhsp path/to/domain path/to/problem-folder
```
```bash
./fd.sh path/to/fastdownward path/to/domain path/to/problem-folder
```
The outputs of your plans will be in the respective directories of the problems you are solving.

## Contributing
Clearly outline how others can contribute to the project. Include information about the development environment, coding standards, and the process for submitting pull requests.
1. Fork the repository.
2. Create a new branch: `git checkout -b feature-name`.
3. Make changes and commit: `git commit -m 'Description of changes'`.
4. Push to the branch: `git push origin feature-name`.
5. Submit a pull request.