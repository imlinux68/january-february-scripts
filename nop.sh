#!/bin/bash
echo "create aws-cinema"
	mkdir -v /home/$USER/aws-cinema
echo "create action, comedy and horror genres"
	mkdir -v /home/$USER/aws-cinema/action \
		 /home/$USER/aws-cinema/comedy \
		 /home/$USER/aws-cinema/horror

echo " create films (aliens, hard-boiled, terminator) in action"
	cd /home/$USER/aws-cinema/action
touch  aliens hard-boiled terminator

echo " create films (airplane, ancorman, borat) in comedy"
        cd /home/$USER/aws-cinema/comedy
touch  airplane ancorman borat

echo " create films (prey, saloum, sissy) in horrors"
        cd /home/$USER/aws-cinema/horror
touch  prey saloum sissy
