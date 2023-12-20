#!/bin/bash

./enhsp.sh ./enhsp/enhsp.jar ./data/domain-c.pddl ./data/continuous
./enhsp.sh ./enhsp/enhsp.jar ./data/domain-d.pddl ./data/discrete
./enhsp.sh ./enhsp/enhsp.jar ./data/blocksworld/domain.pddl ./data/blocksworld/instances
./enhsp.sh ./enhsp/enhsp.jar ./data/elevator/domain.pddl ./data/elevator/instances
./enhsp.sh ./enhsp/enhsp.jar ./data/logistics/domain.pddl ./data/logistics/instances
./enhsp.sh ./enhsp/enhsp.jar ./data/schedule/domain.pddl ./data/schedule/instances

# ./fd.sh ./fast-downward/fast-downward.py ./data/domain-d.pddl ./data/discrete
./fd.sh ./downward/fast-downward.py ./data/blocksworld/domain.pddl ./data/blocksworld/instances
./fd.sh ./downward/fast-downward.py ./data/elevator/domain.pddl ./data/elevator/instances
./fd.sh ./downward/fast-downward.py ./data/logistics/domain.pddl ./data/logistics/instances
./fd.sh ./downward/fast-downward.py ./data/schedule/domain.pddl ./data/schedule/instances
