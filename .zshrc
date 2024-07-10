function paring_w_main {
	git checkout main
	git pull
	git checkout $1
	git merge main
	git push
}
