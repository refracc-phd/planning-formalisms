#!/bin/bash

./enhsp.sh ./enhsp/enhsp.jar ./domain-c.pddl ./continuous
./enhsp.sh ./enhsp/enhsp.jar ./domain-d.pddl ./discrete
./enhsp.sh ./enhsp/enhsp.jar ./blocksworld/domain.pddl ./blocksworld/instances
./enhsp.sh ./enhsp/enhsp.jar ./elevator/domain.pddl ./elevator/instances
./enhsp.sh ./enhsp/enhsp.jar ./logistics/domain.pddl ./logistics/instances
./enhsp.sh ./enhsp/enhsp.jar ./schedule/domain.pddl ./schedule/instances

# ./fd.sh ./fast-downward/fast-downward.py ./domain-d.pddl ./discrete
./fd.sh ./downward/fast-downward.py ./blocksworld/domain.pddl ./blocksworld/instances
./fd.sh ./downward/fast-downward.py ./elevator/domain.pddl ./elevator/instances
./fd.sh ./downward/fast-downward.py ./logistics/domain.pddl ./logistics/instances
./fd.sh ./downward/fast-downward.py ./schedule/domain.pddl ./schedule/instances
