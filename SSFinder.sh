#######################################################################################
# Script Name	: SSFinder.sh                                                                                         
# Description	: Searches for IoCs of Silver Sparrow                                                                                                                                                       
# Author       	: d4rk-d4nph3
# Created At    : Feb 21, 2021
# Version       : 0.1
# Reference     : https://redcanary.com/blog/clipping-silver-sparrows-wings
# Remark        : According to Malwarebytes, Silver Sparrow had infected 29,139 
#                 MacOS endpoints across 153 countries as of February 17, 2021
#######################################################################################

### Version 1

tput setaf 5; echo "\nSearching for IoCs of Version 1...\n"; tput setaf 7

v1_match=0

if [ -f ~/Library/._insu ]; then
    tput setaf 1; echo 'FOUND: ~/Library/._insu'; tput setaf 7
    v1_match=$(($v1_match + 1))
fi

if [ -f /tmp/agent.sh ]; then
    tput setaf 1; echo 'FOUND: /tmp/agent.sh'; tput setaf 7
    v1_match=$(($v1_match + 1))
fi

if [ -f /tmp/version.json ]; then
    tput setaf 1; echo 'FOUND: /tmp/version.json'; tput setaf 7
    v1_match=$(($v1_match + 1))
fi

if [ -f /tmp/version.plist ]; then
    tput setaf 1; echo 'FOUND: /tmp/version.plist'; tput setaf 7
    v1_match=$(($v1_match + 1))
fi

if [ -f "~/Library/Application Support/agent_updater/agent.sh" ]; then
    tput setaf 1; echo 'FOUND: ~/Library/Application Support/agent_updater/agent.sh'; tput setaf 7
    v1_match=$(($v1_match + 1))
fi

if [ -f "~/Library/Launchagents/agent.plist" ]; then
    tput setaf 1; echo 'FOUND: ~/Library/Launchagents/agent.plist'; tput setaf 7
    v1_match=$(($v1_match + 1))
fi

if [ -f "~/Library/Launchagents/init_agent.plist" ]; then
    tput setaf 1; echo 'FOUND: ~/Library/Launchagents/init_agent.plist'; tput setaf 7
    v1_match=$(($v1_match + 1))
fi

if [ $v1_match -eq 0 ]; then
    tput setaf 2; echo "\nNo match found for Version 1"; tput setaf 7
else
    tput setaf 6; echo "\nTotal matches for v1 IoCs: $v1_match"; tput setaf 7
fi

echo '------------------------------------------------------------'


### Version 2

tput setaf 5; echo "\nSearching for IoCs of Version 2...\n"; tput setaf 7

v2_match=0

if [ -f /tmp/verx ]; then
    tput setaf 1; echo 'FOUND: /tmp/verx'; tput setaf 7
    v2_match=$(($v2_match + 1))
fi

if [ -f "~/Library/Application Support/verx_updater/verx.sh" ]; then
    tput setaf 1; echo 'FOUND: ~/Library/Application Support/verx_updater/verx.sh'; tput setaf 7
    v2_match=$(($v2_match + 1))
fi

if [ -f "~/Library/Launchagents/verx.plist" ]; then
    tput setaf 1; echo 'FOUND: ~/Library/Launchagents/verx.plist'; tput setaf 7
    v2_match=$(($v2_match + 1))
fi

if [ -f "~/Library/Launchagents/init_agent.plist" ]; then
    tput setaf 1; echo 'FOUND: ~/Library/Launchagents/init_verx.plist'; tput setaf 7
    v2_match=$(($v2_match + 1))
fi

if [ $v2_match -eq 0 ]; then
    tput setaf 2; echo "\nNo match found for Version 2"; tput setaf 7
else
    tput setaf 6; echo "\nTotal matches for v2 IoCs: $v2_match"; tput setaf 7
fi
