#!/bin/bash
cd /home/container

# Make internal Docker IP address available to processes.
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

# Install Python Packets
pip install -r requirements.txt

# Print Python version
python --version

# Replace discord to proxy
find -type f -exec sed -i -r "s/https:\\/\\/discord.com\\/api/https:\\/\\/proxy.discord-bot.net\\/api/g" {} \; 

# Replace Startup Variables
MODIFIED_STARTUP=$(echo -e $(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g'))
echo -e ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
eval ${MODIFIED_STARTUP}
