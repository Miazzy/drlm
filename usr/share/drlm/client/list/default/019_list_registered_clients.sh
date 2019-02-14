
if ! exist_client_name "$CLI_NAME" 
then
	if [ "$CLI_NAME" == "all" ] 
	then 
		if [ -z "$UNSCHED" ]; then
			list_client_all
		else
			list_client_unsched
		fi

	else
		printf '%25s\n' "$(tput bold)$CLI_NAME$(tput sgr0) not found in database!!"	
	fi
else
	list_client $CLI_NAME
#	CLI_ID=$(get_client_id_by_name $CLI_NAME)
#	CLI_MAC=$(get_client_mac $CLI_ID)
#	CLI_IP=$(get_client_ip $CLI_ID)
#	CLI_OS=""
#	CLI_NET=$(get_client_net $CLI_ID)
#	client_list_tittle CLI
#	printf '%-6s %-15s %-15s %-15s %-15s %-15s\n' "$CLI_ID" "$CLI_NAME" "$CLI_MAC" "$CLI_IP" "$CLI_OS" "$CLI_NET"
fi
