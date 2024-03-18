KCTRL       ?= kctrl
KCTRL_FLAGS ?= --yes
VERSION     ?= 1.0.0-build.$(shell date "+%s")+$(shell git rev-parse --short HEAD)

PACKAGES := \
	cluster-group\
	project

.DEFAULT_GOAL := help

##@ Publishing
.PHONY: publish-package-repository
publish-package-repository:  ## Publish the package repository
	$(KCTRL) $(KCTRL_FLAGS) package repository release --chdir repository

.PHONY: packages
packages: $(PACKAGES)  ## Publish all packages

.PHONY: $(PACKAGES)
$(PACKAGES):  ## Publish package
	$(KCTRL) $(KCTRL_FLAGS) package release --chdir "$@" --openapi-schema --version "${VERSION}" --repo-output ../repository


##@ Help
.PHONY: help
help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)
