.PHONY: all run_unit clean format lint create_icons build_runner pub_get pub_major_version sqlite_patch pub_upgrade bump_version_number bump_build_number tag_version deploy_mobile deploy_mobile_test help 

EXTRACT_VERSION_NUMBER = $(shell grep 'version: ' pubspec.yaml | sed 's/version: //')
SET_VERSION_NUMBER = $(eval VERSION_NUMBER=$(EXTRACT_VERSION_NUMBER))

all: lint format
# Adding a help file: https://gist.github.com/prwhite/8168133#gistcomment-1313022
help: ## This help dialog.
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info ; \
	done

run_unit: ## Runs unit tests
	@echo "╠ Running the tests"
	@flutter test || (echo "Error while running tests"; exit 1)

clean: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@flutter clean

format: ## Formats the code
	@echo "╠ Formatting the code"
	@dart format .

lint: ## Lints the code
	@echo "╠ Verifying code..."
	@dart analyze . || (echo "Error in project"; exit 1)

create_icons: ## Create App icons
	@echo "╠ Creating icons..."
	@flutter pub run flutter_launcher_icons

build_runner: ## Generates automatic code
	@echo "╠ Creating generated code..."
	@flutter pub run build_runner clean
	@flutter pub run build_runner build --delete-conflicting-outputs

pub_get: clean ## Getting pubspec dependencies
	@echo "╠ Upgrading dependencies..."
	@flutter pub get

pub_major_upgrade: clean ## Upgrades pubspec dependencies
	@echo "╠ Upgrading dependencies..."
	@flutter pub upgrade --major-versions

sqlite_patch: ## SQLite patch macOS after upgrading SQLite
	cd ./ios/; \
	pod repo remove trunk;  \
	sudo arch -x86_64 gem install ffi;  \
	arch -x86_64 pod install --repo-update

pub_upgrade: pub_major_upgrade sqlite_patch pub_get build_runner create_icons  ## Upgrades dependencies
bump_version_number:	## Bump build number
	@perl -i -pe 's/^(version:\s+\d+\.\d+\.)(\d+)(\+)(\d+)$$/$$1.($$2+1).$$3.($$4+1)/e' pubspec.yaml
	$(SET_VERSION_NUMBER)
	@git commit -m "Bump version to $(VERSION_NUMBER)" pubspec.yaml
	@git push origin main
	@echo "╠ Bump build number $(VERSION_NUMBER)"
bump_build_number:	## Bump build number
	@perl -i -pe 's/^(version:\s+\d+\.\d+\.)(\d+)(\+)(\d+)$$/$$1.$$2.$$3.($$4+1)/e' pubspec.yaml
	$(SET_VERSION_NUMBER)
	@git commit -m "Bump version to $(VERSION_NUMBER)" pubspec.yaml
	@git push origin main
	@echo "╠ Bump build number $(VERSION_NUMBER)"
tag_version: ## Tag version
	$(SET_VERSION_NUMBER)
	@echo "Tag version $(VERSION_NUMBER)"
	@git tag -a $(VERSION_NUMBER) -m "v$(VERSION_NUMBER)"
	@git push origin --tags

deploy_mobile: format lint get_pub create_icons build_runner bump_version_number tag_version ## Deploy iOS and Android release
	@echo "╠  Building the iOS/Android app"
	@flutter build ipa
	@flutter build appbundle

deploy_mobile_test: format lint get_pub create_icons build_runner bump_build_number tag_version ## Deploy iOS and Android release for testing
	@echo "╠  Building the iOS/Android app"
	@flutter build ipa
	@flutter build appbundle
