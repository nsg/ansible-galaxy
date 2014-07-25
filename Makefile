# Example Makefile that installes the dependencies and
# automatically downlods this role, if needed.

# This example assumes there is a playbook called
# setup.yml what installes the needed dependencies.
# See: README.md

install: roles/nsg.galaxy/tasks/main.yml
	ansible-playbook -i localhost, setup.yml

roles/nsg.galaxy/tasks/main.yml:
	ansible-galaxy install nsg.galaxy -p roles

production: install
	ansible-playbook -i inventory -u root --diff site.yml

# In this example, run "make" to just download the dependencies
# and "make production" to run site.yml (the dependencies will
# be automatically installed if needed).
