
update-meta:
	cd fortio; go list fortio.org/fortio/... | sed -e "s|fortio.org/fortio/||" | tail +2 | xargs -I % -n 1 ln -s index.md %.md
