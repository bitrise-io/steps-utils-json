steps-utils-json
================

Helps to retrieve a value for a key from a json formatted string.

Uses json and prop variables. The simple function is named jsonval.

Example usage:

		json=$(/usr/bin/curl http:\\... \
			...
			)

		echo " --- Result ---"
		echo "$json"
		echo " --------------"

		prop='install_url'
		install_url=`jsonval`
