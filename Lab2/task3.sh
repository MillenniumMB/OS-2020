  
#!/bin/bash

ps -Ao pid,start_time --sort=start_time | tail -n 2 | head -n 1 | awk '{print $1}'
