all: shell
	@echo 'All dotfiles successfully planted'

clean:
	rm -rf $(HOME)/.shell

shell:
	@rm -rf $(HOME)/.shell
	@mkdir $(HOME)/.shell
	@cp $(PWD)/profilerc $(HOME)/.shell/profilerc
	@echo "source $(HOME)/.shell/profilerc" >> $(HOME)/.bash_profile
# 	@source ~/.shell/profilerc
