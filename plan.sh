#!/bin/bash

./enhsp.sh ./enhsp/enhsp.jar ./domain-c.pddl ./continuous
./enhsp.sh ./enhsp/enhsp.jar ./domain-d.pddl ./discrete
./enhsp.sh ./enhsp/enhsp.jar ./blocksworld/domain.pddl ./blocksworld/instances
./enhsp.sh ./enhsp/enhsp.jar ./elevator/domain.pddl ./elevator/instances
./enhsp.sh ./enhsp/enhsp.jar ./logistics/domain.pddl ./logistics/instances
./enhsp.sh ./enhsp/enhsp.jar ./schedule/domain.pddl ./schedule/instances
