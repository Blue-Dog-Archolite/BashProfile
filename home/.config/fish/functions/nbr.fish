function nbr --description 'Runs npm record test on single file'
	env NOCK_BACK_MODE=record ./node_modules/.bin/tape $argv[1]   | ./node_modules/.bin/tap-diff
end
