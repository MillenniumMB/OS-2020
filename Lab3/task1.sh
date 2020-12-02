#!/bin/bash

cur_date=$(date '+:%d.%m.%y_%H:%M:%S')
mkdir ~/test && echo "catalog test was created successfull">> ~/report && touch ~/test/$cur_date
ping -c 1 www.net_nikogo.ru || echo "${cur_date} ERROR">>  ~/report
