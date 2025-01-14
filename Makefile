.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

check_node_version:
	@required_version="v22"; \
	current_version=$$(node --version); \
	if [ "$${current_version%%.*}" != "$${required_version}" ]; then \
		echo "Error: Node.js version must be $${required_version}. Current version: $${current_version}"; \
		exit 1; \
	fi

install: check_node_version ## Project setup
	yarn

serve: install ## Local project run
	yarn run dev