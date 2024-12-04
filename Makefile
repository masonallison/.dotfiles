#target assigned to linux
.GOAL := linux

#targets and their dependencies assigned
linux: cleanup
	sh ./bin/linux.sh

cleanup:
	chmod +x ./bin/linux.sh
	chmod +x ./bin/linux.sh
	sh ./bin/cleanup.sh

# makes permissions of the scripts executable


