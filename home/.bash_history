git pull
git stash pop
git add .
git commit -m 'Fix for titles'
git push origin
git status
git add .
git commit -m 'Bad commit fixing'
git push origin
clear
ssh bastion
vim .
git status
git checkout .
git pull
vactivate 
cd ../cities/
vactivate 
exit
. ~/.bashrc 
powerline-daemon --replace
vim ~/.config/powerline/config.json 
powerline-daemon --replace
clear
powerline-daemon --replace
vim ~/.aws/credentials 
exit
cd dev/mystic/server/
vactivate 
cd ..
cd cities/
vactivate 
exit
clear
vim .
exit
cd dev/mystic/server/
vactivate 
cd ../cities/
ll
vactivate 
cd ../ser
cd ../server/
vactivate 
cd ..
cd cities/
vactivate 
. ~/.bashrc 
ll
vactivate 
exit
clear
git status
git branch
git checkout -b PAT-1051_MoveToEs
git status
mkdir -p ~/.config/powerline
cat <<-'EOF' > ~/.config/powerline/config.json
{
    "ext": {
        "shell": {
            "theme": "default_leftonly"
        }
    }
}
EOF

powerline-daemon --replace 
vim ~/.config/powerline/config.json 
powerline-daemon --replace 
ll
clear
powerline-daemon --replace 
pipenv install awsebcli
pipenv install awsebcli --dev
eb init
mkdir .ebextensions
vim .ebextensions/python.config
eb create --scale 1 -db -db.engine postgres -db.i db.t2.micro
eb create --scale 1 -db -db.engine postgres -db.i db.t2.medium
git status
git push origin
htop
top
sudo kill -9 1527
clear
top
clear
eb help
eb -h
eb config
eb list
eb events
cat /var/log/eb-activity.log
clear
eb status
eb create --scale 1 -db -db.engine postgres -db.i db.t2.micro
eb deploy
eb init
ll
rm -rf .elasticbeanstalk/ 
eb init
eb status
ll
rm -rf .elasticbeanstalk/ .ebextensions/
git status
eb init
eb destroy
eb -h
eb terminate
clear
exit
cd dev/mystic/server/
pipenv install ipython
./manage.py shell_plus --notebook
vactivate 
cd ../cities/
vactivate 
. ~/.bashrc 
vactivate 
exit
vim ~/.aws/
rm -rf ~/.aws/
clear
exit
eb init
eb -h
pipenv uninstall awsebcli
eb
clear
pipenv install awsebcli --dev
eb
eb init
eb config
eb init
eb config
eb config cities-development
eb init -p python
eb config
eb list
eb
eb printenv
eb init 0i
eb init -i
pipenv uninstall awsebcli
pipenv update
pipenv install pyopensll
vim Pipfile
pipenv install pyopenssl
pipenv install awsebcli --dev
eb init
EQI8M5sc0Qj8dRjXmf7X/B0EYfooOrkzX2Y4JTUb
eb init -i
eb create --scale 1 -db -db.engine postgres -db.i db.t2.micro
git status
vim .
exit
git status
it add .
rebuild_requirements 
git add -p
git status
git commit -m 'EB configuration'
git push origin
clear
git status
eb creae
eb create
eb create --scale 1 -db -db.engine postgres -db.i db.t2.micro
eb create --scale 1 -db -db.engine postgres -db.i db.t2.medium
eb terminate
eb terminate --all
eb create --scale 1 -db -db.engine postgres -db.i db.t2.medium
eb init
eb create --scale 1 -db -db.engine postgres -db.i db.t2.medium
eb ssh
git status
install_requirements 
pipenv install launchpadlib
pipenv update
pipenv install lazr.restfulclient
eb terminate --all
exit
cd ~
ll
cp ~/Downloads/deployment-s3-dev\ \(1\).pem .ssh/
clear
git status
ll
cd dev/mystic/server/
git status
ll
cd ~/.ssh/
ll
mv deployment-s3-dev\ \(1\).pem deployment-s3-dev.pem
chmod 400 ~/.ssh/deployment-s3-dev.pem 
ssh bastion
clear
cd ~/dev/mystic/cities/
exit
pipenv install lazr.restfulclient
pipenv install 
sudo dnf install python-dev
sudo dnf install python-devl
sudo dnf install python-devel
pipenv install 
clear
pipenv uninstall pycurl
rebuild_requirements 
git status
git add .
eb init
git status
git add .
git commit -m 'EB removal of pycurl'
git push origin
rm Pipfile Pipfile.lock 
exit
pipenv install
rebuild_requirements 
cat requirements.txt 
git status
git add .
git commit -m 'Update for pip file to be minimal'
git push origin 
eb deploy
pipenv install awsebcli --dev
rebuild_requirements 
git status
git add .
git commit -m 'Updates for ebcli'
git push origin
eb deploy
clear
git status
git diff
git add -p
git commit -m 'Use existing database'
git push origin
clear
cd ..
cd server/
git pull
vim .
git commit -m "Rmeoval of bad import"
git add .
git commit -m "Rmeoval of bad import"
git push origin
clear
cd ../cities/
clear
exit
python --v
python --version
install_requirements 
vim requirements.txt 
exit
eb terminate --all
pipenv install awsebcli --dev
eb terminate --all
eb create --scale 1 -db -db.engine postgres -db.i db.t2.medium
eb init
eb create --scale 1 -db -db.engine postgres -db.i db.t2.medium
eb ssh
git status
git add .
git commit -m 'Updates for packages;
git commit -m 'Updates for packages'
git push origin 
eb deploy
cat /var/log/eb-activity.log
eb ssh
eb terminate --all
eb init
eb create --scale 1 -db -db.engine postgres -db.i db.t2.medium
eb terminate --all
eb init
eb create --scale 1 -db -db.engine postgres -db.i db.t2.medium
eb ssh
git status
git add .
git commit -m 'Update for EB requirements'
git push origin 
eb deploy
git status
git add .
git commit -m 'More dependencies'
git push origin 
eb deploy
eb status
eb deploy
eb ssh
git status
git add .
git commit -m 'EB package updates'
git push origin
eb deploy
eb ssh
git add .
git commit -m 'EB package updates'
git push 
eb deploy
eb ssh
git add .
git commit -m 'EB package updates'
git push origin
eb deploy
git add .
git commit -m 'EB package updates'
git push origin 
eb deploy
git commit -m 'EB package updates'
git push origin
eb deploy
eb ssh
eb deploy
eb ssh
git status
git add .
git commit -m 'Less EBS'
eb terminate --all
eb status
eb init
eb create --scale 1 -db -db.engine postgres -db.i db.t2.medium
eb ssh
eb terminate --all
eb create --scale 1 -db -db.engine postgres -db.i db.t2.medium
eb terminate --all
eb create --scale 1 -db -db.engine postgres -db.i db.t2.medium
eb init
git add . && git commit -m 'eb' && git push origin
eb create --scale 1 -db -db.engine postgres -db.i db.t2.medium
eb status
git status
git add .
git commit -m 'eb minimal'
git push origin
eb deploy
eb ssh
eb 
git status
git add .
git status
git reset HEAD 
git status
eb deploy
eb ssh
clear
git status
git add .
git commit -m 
git commit -m 'eb'
git push origin 
eb deploy
pipenv install django-extensions
rebuild_requirements 
git add .
git commit -m 'config'
git status
git add .
git commit -m 'import of properties'
git push origin 
eb deploy
git add . && git commit -m 'PIP' && git push origin && eb deploy
eb status
eb ssh
git status
git add thepattern_locations/
git commit -m 'eb database'
git push origin && eb deploy
eb ssh
clear
eb terminate --all
eb terminate --all --timeout=60
eb init
eb terminate --all --timeout=60
eb init
eb create --scale 1
pipenv install psycopg2
rebuild_requirements 
git status
git add . && git commit
git push origin
eb deploy
eb status
clear
git status
clear
git status
git checkout master
git pull
exit
pipenv install awsebcli --dev
exit
eb ssh
vim .
clear
git status
git checkout master
git pull
clear
eb status
ll
eb status
eb status cities-dev
eb use cities-dev
eb status
git status
clear
exit
git branch
git checkout PAT-1051_MoveToEs
git status
git diff 
git stash
rm Pipfile 
git checkout PAT-1051_MoveToEs
git status
eb ssh
git status
git add .
git commit -m 'Adding geos library'
git push origin
eb deploy
eb ssh
git status
git add .
git commit -m 'geos-python26'
git push origin
eb deploy
clear
dig
dig cities.thepattern.com
dig https://cities.thepattern.com
tracert https://cities.thepattern.com
traceroute https://cities.thepattern.com
traceroute cities.thepattern.com
clear
exit
git status
exit
git pull
rm Pipfile
git pull
pipenv install awsebcli --dev
clear
eb init
clear
vim .
exit
exit 
eb init
eb create --scale 1
ll
cd db/
ll
cd ..
clear
git status
git add .gitignore 
git add Pipfile 
git status
vim .
exit
ssh bastion
exit
exit
git checkout -b PAT-1052_MoveDevToEB
pipenv install awsebcli --dev
clear
eb init
clear
vim .
exit
cd dev/mystic/cities/
vactivate 
pipenv --two
vactivate 
cd ../server/
git status
git pull
clear
vactivate 
cd ../cities/
vactivate 
clear
cd ../server/
vactivate 
cd ..
ll
cd insightdb/
ll
pipenv --three 
pipenv install awsebcli --dev
eb init
vactivate 
cd ..
clear
ls
cd server/
vactivate 
exit
eb
eb --version
ls
python --version
git branch
clear
s
eb
top
clear
eb status
eb init
clear
eb create --scale 1
pipenv uninstall ipython
rebuild_requirements 
git status
git add .
git commit -m 'Setup for python3'
git push origin 
eb create --scale 1
python --version
eb terminate --all --timeout=60
eb init
git add .
git commit -m 'EB configurations'
git push origin 
eb create --scale 1
git status
git add .
git commit -m 'Update to remove ansible'
git push origin 
eb deploy
clear
eb ssh
git status
git add .
git commit -m 'Adding libffi for python dependencies'
git push origin 
eb deploy
clear
git status
git add .
git commit -m 'Adding libffi-devel for python dependencies'
git push origin 
git status
git add .
git commit -m 'Update for all pillow requirements'
git push orgin 
git push origin 
eb deploy
eb ssh
git status
git add .
git commit -m 'EB has differnet package names for Pillow'
git push origin 
eb deploy
git status
git add .
git commit -m 'EB has differnet package names for Pillow'
git push origin && eb deploy
git add . && git commit -m 'EB package names' && git push origin && eb deploy
clear
eb deploy
git add . && git commit -m 'EB package names' && git push origin && eb deploy
git status
git add .
git add . && git commit -m 'EB package names' && git push origin && eb deploy
exit
cd dev/mystic/cities/
vactivate 
ll
eb init
vactivate 
cd ../server/
vactivate 
cd ../cities/
vactivate 
clear
cd ../server/
vactivate 
cd ../insightdb/
clera
clear
vactivate 
cd ..
cd server/
vactivate 
exit
cd dev/mystic/server/
vactivate 
cd ../cities/
vactivate 
pipenv --two
vactivate 
cd ../server/
clear
vactivate 
cd ../cities/
vactivate 
clear
cd ../server/
vactivate 
cd ../insightdb/
vactivate 
cd ..
ll
cd server/
vactivate 
ssh bastion
eb ssh
eb terminate --all --timeout=600
git status
eb init
git status
ls .ebextensions/
eb ssh
clear
eb config
clear
eb ssh
clear
eb ssh
clear
eb ssh
top
exit
./manage.py shell_plus --notebook
vactivate 
pipenv install ipython
ssh bastion
clear
vim ~/.bash_aliases 
exit
cd dev/mystic/server/
vactivate 
exit
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none
cd client/
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none --verbose
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none
ng serve
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none
ng start
ng serve
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none
vim .angular-cli.json 
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none
rm -rf ../backend/static/ang/
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none
npm purge
npm help
npm prune
npm install popper.js@^1.11.0
npm install jquery@>=3.0.0
npm install --save @ng-bootstrap/ng-bootstrap
npm install jquery@latest
gti status
git add .
git commit - 'WIP'
git commit -m 'WIP'
git push origi
git push origin
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none
gti status
git status
git checkout .
clear
ng prune
ng purge
vim .gitignore 
git status
git add .gitignore 
git status
git add .angular-cli.json 
git status
vim .angular-cli.json 
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none
vim .angular-cli.json 
npm install –save bootstrap@next
npm install --save bootstrap@next
npm install --save 8t>jL?_nNY+8-Mlr#'4,Xav$rS
npm install --save font-awesome
vim .angular-cli.json 
git status
git add -p
vim package.json 
npm install
npm install --save popper.js@^1.11.0 
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none
cd ..
cd client/
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none
node -v
ssh bastion
clear
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none
npm install --save @angular/material @angular/cdk
npm install --save @angular/animations
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none
npm install --save @angular/animations
ll
ng build --prod --output-path ../backend/static/ang/ --watch --output-hashing none
ng build --output-path ../backend/static/ang/ --watch --output-hashing none
exit
cd ~/dev/mystic/editor/
exit
vim .
vim 
vim .
%
exit
cd ~/dev/mystic/editor/
ll
vim .
vactivate 
exit
cd backend/
ll
./manage.py shell_plus --notebook
exit
cd dev/mystic/editor/
vactivate 
exit
cd backend/
./manage.py runserver -v3
exit
cd dev/mystic/server/
vactivate 
cd ../editor/
vactivate 
exit
python /home/thief/.local/share/virtualenvs/server-llK42MpH/lib/python3.5/site-packages/pgadmin4/pgAdmin4.py
vim ~/.bash_aliases 
clear
exit
cd dev/mystic/server/
vactivate 
exit
git status
clear
git checkout -b PAT-883_AuditTrail
git status
git diff client/src/app/complement-conditions/complement-conditions.component.html
git checkout client/src/app/complement-conditions/complement-conditions.component.html
npm install --save @angular/animations
ll
npm install --save @angular/animations
cd ../cli
cd ../
ll
cd editor/
ll
cd client/
npm install --save @angular/material @angular/animations
git status
git diff ../app.module.css
git checkout .
git status
git checkout ../backend/templates/ag.html
clear
ps aux | grep zoom
kill -9 4774
kill -9 4778
kill -9 4774
ps aux | grep zoom
kill -9 25245 25242 25246
ps aux | grep zoom
sudo dnf update -y
exit
clear
ll
cd ~/dev/mystic/editor/
vactivate 
sudo reboo
sudo reboot
vim ~/.bash_aliases 
exit
clear
git status
git checkout -b SwaggerDocs
git add .
rebuild_requirements 
git checkout SwaggerDocs 
git status
vim ~/.vimrc 
clear
git branch
git branch -d PAT-XXXX_FixingPhoneNumbers PAT-989_SlowTestIsolation PAT-982_ShowConnectionCount PAT-1017_SinchWorkFlow PAT-1019_LogInWithSinch PAT-1047_UserCreationView PAT-1013_13YearsOldBug
git branch
git branch -d PAT-1049DigitsIsssues
git push origin
git status
git pull
clear
pipenv install
clear
whcih eb
which eb
eb create
eb init
git status
clear
eb create --scale 1
eb terminate --all --timeout=600
eb init
eb create --scale 1
git status
git add .
git commit -m 'Gitignore'
git push origin
eb create --scale 1
exit
pipenv install django-rest-swagger 
./manage.py runserver -v3
pipenv install django-oauth-toolkit
./manage.py runserver -v3
git status
git add the_pattern/urls.py 
git add the_pattern/settings.py
git add the_pattern/urls.py 
git add Pipfile
git status
git add Pipfile.lock 
git add requirements.txt 
git commit -m 'Update for Required packages'
git push origin
git status
git branch
git checkout PAT-1052_MoveDevToEB
git rm .elasticbeanstalk/config.yml 
git commti -m 'Removal of cross branch bleed'
git commit -m 'Removal of cross branch bleed'
git push origin
git branch
git checkout PAT-1052_MoveDevToEB
git branch
sudo dnf install xorg-xmodmap
dnf search xmodmap*
xmodmap
clear
git status
git add . && git commit -m 'EB package names' && git push origin && eb deploy
clear
eb ssh
ll
ps aux | grep vim
kill 10943
git status
git checkout .ebextensions/python.config
pwd
clear
python manage.py | grep insight
python manage.py import_insights --noinput
python manage.py import_insights
clear
ll
clear
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
printf '\nsource "$HOME/.homesick/repos/homeshick/homeshick.sh"' >> $HOME/.bashrc
. ~/.bashrc 
homestick
exit
cd dev/mystic/server/
vac
vactivate 
exit
cat package-lock.json 
rm package-lock.json 
pipenv install awsebcli --dev
git status
ll
cd backend/
ll
cd ..
ll
mv backend/Pipfile .
mv backend/Pipfile.lock .
mv backend/requirements.txt .
ll
pipenv install
pipenv install awsebcli --dev
git status
git add .
git status
git commit -m 'Movement of the Pip files for eaiser project managment'
clear
git status
git push origin 
clear
git status
eb init
git status
git add .
git commit -m 'EB deployment'
cp -r ../server/.ebextensions .
ll
vim .
git status
clear
cd "$(dirname "$(find / -type f -name urls.py | head -1)")"
cd "$(dirname "$(find . -type f -name urls.py | head -1)")"
cd ..
cd backend/..
cd "$(dirname "$(find . -type f -name urls.py | head -1)")/.."
sudo dnf install myrepos -y
clear
exit
ll
cd dev/n
cd dev/mystic/
mkdir homestick
cd homestick/
echo "# eb-the-pattern-homeshick" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:thepattern/eb-the-pattern-homeshick.git
git push -u origin master
vim .
cd dev/mystic/server/
vactivate 
cd dev/mystic/server/
vactivate 
cd .
cd ..
ll
cd editor/
git status
git diff
y
git add -p
cat app.module.css 
rm app.module.css 
ll
git status
vactivate 
cd ../server/
ll
eb ssh
ls
vactivate 
cd dev/mystic/server/
vactivate 
vim ~/.bashrc 
echo $HOME
cd .homesick/
ll
cd repos/
ll
cd homeshick/
ll
homeshick 
homeshick list
homeshick clone https://github.com/thepattern/eb-the-pattern-homeshick
homeshick list
homeshick 
homeshick list
homeshick cd eb-the-pattern-homeshick
mr register
cp ~/.mrconfig ~/dev/mystic/server/.ebextensions/
printf '\nsource "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"' >> $HOME/.bashrc
clear
ll
cd ..
cd ~/tools/
ll
cat installer.sh 
:q
clear
cd ~/dev/mystic/homestick/
ll
cd scripts/
chmod +x .
ll
chmod +x *
ll
cd ..
ls
cd ser
cd scripts/
ll
./find_deployment 
ll
cd ..
ls
git status
git add .
git commit -m 'Updates for scripts'
git push origin
curl localhost:8000/admin
curl localhost
curl localhost:8000
curl localhost:8000/o/token/
curl -X POST -d "grant_type=refresh_token&refresh_token=12fe15df-20cf-4ab5-85ba-c20f4b1b1c14" http://localhost:8000/o/token/
curl -X POST -d "grant_type=refresh_token&client_id=D6RgGCR6HWx9SBnRjjEE45DQ24oEbSiXFp9HVdaf&client_secret=O6FiXdZtrc99A4eKXvPAhNZF8Vcoyl78jAw8YAKYXX1lg2bwywhUmcQ6TzDVtjaO5lsOJw3zC21VbPLqZL8jiBOAbmSAgxAQM2koN1GfvXGBoYPyGHVRWCsl6oxZMT9i&refresh_token=12fe15df-20cf-4ab5-85ba-c20f4b1b1c14" http://localhost:8000/o/token/
exit
