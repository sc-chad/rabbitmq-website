.ONESHELL: # single shell invocation for all lines in a rule

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

run: ## Serve website from http://localhost:8191
	python2 ./driver.py

clean: ;

distclean: ;
