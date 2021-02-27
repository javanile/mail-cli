

build:
	@if [ -d vendor ]; then mv vendor vendor.tmp; fi
	@if [ -f composer.lock ]; then mv composer.lock composer.lock.tmp; fi
	@composer install --no-ansi --no-dev --no-interaction --no-progress --no-scripts --optimize-autoloader
	@box build
	@if [ -d vendor.tmp ]; then mv vendor.tmp vendor; fi
	@if [ -f composer.lock.tmp ]; then mv composer.lock.tmp composer.lock; fi

push:
	git add .
	git commit -am "push"
	git push
