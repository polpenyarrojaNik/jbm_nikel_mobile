.PHONY: all run run_test install_pubspec upgrade_pubspec install_pubspec deploy_mobile icons run_dependency_validator run_build_runner watch_build_runner deploy_windows update_i18n help

FLUTTER=flutter
DART=dart
RIMRAF=rimraf
PERL=perl
GIT=git

all: run

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

update_i18n: ## Update i18n files
	@$(DART) pub global run intl_utils:generate

run_test: ## Runs all unit tests
	@echo ":: Running unit tests..."
	@$(FLUTTER) test || (echo "Error while running tests"; exit 1)

format: ## Formats the code
	@echo ":: Formatting code..."
	@$(DART) format .

lint: ## Lints the code
	@echo ":: Verifying code..."
	@$(DART) analyze . || (echo "Error in project"; exit 1)

create_icons: ## Create App icons
	@echo ":: Creating App icons..."
	@$(DART) run flutter_launcher_icons

build_runner: ## Generates automatic code
	@echo ":: Creating generated code..."
	@$(DART) run build_runner clean
	@$(DART) run build_runner build --delete-conflicting-outputs

pub_get: ## Install pubspec dependencies
	@echo ":: Installing dependencies..."
	@$(FLUTTER) pub get

pub_major_upgrade: ## Upgrades pubspec dependencies
	@echo ":: Upgrading dependencies..."
	@$(FLUTTER) clean
	@$(RIMRAF) -rf pubspec.lock
	@$(RIMRAF) -rf Podfile.lock
	@$(FLUTTER) pub upgrade --major-versions

sentry_dart_plugin: ## Generates sentry dart plugin
	@echo ":: Generating sentry dart plugin..."
	@$(DART) run sentry_dart_plugin

upgrade_pubspec: pub_major_upgrade build_runner format update_i18n lint icons ## Upgrades pubspec dependencies

install_pubspec: pub_get build_runner format update_i18n lint icons  ## Install dependencies

bump_version: ## Bump version
	@$(PERL) -i -pe 's/^(version:\s+\d+\.\d+\.)(\d+)(\+)(\d+)$$/$$1.($$2+1).$$3.($$4+1)/e' pubspec.yaml
	@$(eval VERSION_NUMBER=`grep 'version: ' pubspec.yaml | sed 's/version: //'`)
	@$(GIT) commit -m "Bump version to $(VERSION_NUMBER)" pubspec.yaml
	@$(GIT) push origin main
	@echo ":: Bump version number $(VERSION_NUMBER)"

run_dependency_validator:
	@$(DART) pub global run dependency_validator

run_build_runner:
	@$(DART) run build_runner build --delete-conflicting-outputs

watch_build_runner:
	@$(DART) run build_runner watch --delete-conflicting-outputs

deploy_mobile: format lint pub_get create_icons build_runner bump_version
	@echo "╠  Building the iOS/Android app"
	@$(FLUTTER) build ipa
	@$(FLUTTER) build appbundle
