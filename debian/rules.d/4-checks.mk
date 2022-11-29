# Check the signature of staging modules
module-signature-check-%: $(stampdir)/stamp-install-%
	@echo Debug: $@
	$(DROOT)/scripts/module-signature-check "$*" \
		"$(DROOT)/$(mods_pkg_name)-$*" \
		"$(DROOT)/$(mods_extra_pkg_name)-$*"

checks-%: module-signature-check-%
	@echo Debug: $@
