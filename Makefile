THIS_FILE := $(lastword $(MAKEFILE_LIST))

DECORATOR	:= " ::::::::::::::::::: "

# define standard colors
RED			:= $(shell tput -Txterm setaf 1)
GREEN		:= $(shell tput -Txterm setaf 2)
YELLOW		:= $(shell tput -Txterm setaf 3)
WHITE		:= $(shell tput -Txterm setaf 7)
RESET		:= $(shell tput -Txterm sgr0)


install: ddev-config create-env-file composer-install craft-install setup-security-key launch

create-env-file:
	@echo "${YELLOW}${DECORATOR}Creating a new .env file${DECORATOR}${RESET}"
	cp .env.example.dev .env

start:
	@ddev start
	@ddev launch 
	@yarn dev

launch:
	@ddev launch

stop:
	@ddev stop

ddev-config:
	@echo "${YELLOW}${DECORATOR}Creating DDEV project${DECORATOR}${RESET}"
	@ddev config --project-type=craftcms --docroot=web --create-docroot

#### Composer commands
composer-update:
	@echo "${YELLOW}${DECORATOR}Updating php dependencies${DECORATOR}${RESET}"
	ddev composer update

composer-install:
	@echo "${YELLOW}${DECORATOR}Installing php dependencies${DECORATOR}${RESET}"
	@ddev composer install

composer-dump:
	@echo "${YELLOW}${DECORATOR}Dumping the composer autoload${DECORATOR}${RESET}"
	@ddev composer dump

#### Craft commands
craft-install:
	@echo "${YELLOW}${DECORATOR}Installing Craft${DECORATOR}${RESET}"
	@ddev craft install --email="admin@gmail.com" --username="admin" --password="password"

setup-security-key:
	@echo "${YELLOW}${DECORATOR}Setting up the security key${DECORATOR}${RESET}"
	@ddev craft setup/security-key 