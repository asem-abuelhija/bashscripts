#!/bin/bash
# and a new user with passwordless sudo privilages
useradd -m user
chage -m -1 -M -1 -E -1 user
echo "User@123456789" |passwd user --stdin
if [[ ! $(grep user /etc/sudoers) ]]; then 
sed -i '/^# %wheel/a user\tALL=(ALL)\tNOPASSWD: ALL' /etc/sudoers 
fi
