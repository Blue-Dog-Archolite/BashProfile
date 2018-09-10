function nbld --description 'Runs npm lockdown test on single file'
	env NOCK_BACK_MODE=lockdown ./node_modules/.bin/tape $argv[1]   | ./node_modules/.bin/tap-diff
end
