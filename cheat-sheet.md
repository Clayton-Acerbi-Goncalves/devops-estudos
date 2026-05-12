# DevOps Cheat Sheet — Clayton Acerbi Goncalves

## LINUX — NAVEGAÇÃO
pwd        - where am I
ls         - list files
ls -la     - list with details
cd pasta   - enter folder
cd ..      - go back one folder
cd ~       - go to home

## LINUX — FILES
mkdir nome      - create folder
touch file      - create empty file
cp a b          - copy file
mv a b          - move or rename
rm file         - delete file
rm -rf folder   - delete folder
cat file        - show content
nano file       - edit file

## LINUX — SEARCH & FILTER
grep "text" file       - search text in file
grep "text" -r folder  - search in all files
find ~ -name "*.sh"    - find files by name
tail -f file           - monitor file live
cmd1 | cmd2            - pipe: combine commands
wc -l                  - count lines

## LINUX — PROCESSES
ps aux              - list all processes
ps aux | grep name  - filter process
top                 - real time monitor
kill PID            - stop process
kill -9 PID         - force stop

## LINUX — SERVICES
systemctl status name    - check status
systemctl start name     - start service
systemctl stop name      - stop service
systemctl restart name   - restart service
systemctl enable name    - start on boot

## LINUX — PERMISSIONS
chmod +x script.sh   - give execute permission
chmod 400 key.pem    - read only
sudo command         - run as admin

## CRON — SCHEDULING
crontab -e   - edit scheduled tasks
crontab -l   - list scheduled tasks

# Format: minute hour day month weekday command
0 8 * * *    - every day at 8am
*/5 * * * *  - every 5 minutes
0 * * * *    - every hour

## GIT
git init              - start repository
git status            - see changes
git add .             - stage files
git commit -m "msg"   - save checkpoint
git push              - send to GitHub
git pull              - download from GitHub
git log --oneline     - see history
git branch name       - create branch
git checkout name     - switch branch

## SSH
ssh my-server                     - connect to server (config alias)
ssh -i key.pem ubuntu@IP          - connect with key
scp file ubuntu@IP:/destination   - copy file to server

## AWS CLI
aws sts get-caller-identity                        - check login
aws s3 ls                                          - list buckets
aws s3 mb s3://name --region eu-west-2             - create bucket
aws s3 cp file s3://bucket/                        - upload file
aws s3 ls s3://bucket/                             - list bucket content
aws ec2 describe-instances                         - list EC2 instances
aws ec2 start-instances --instance-ids ID          - start EC2
aws ec2 stop-instances --instance-ids ID           - stop EC2

## DOCKER
docker --version                        - check version
docker images                           - list images
docker ps                               - running containers
docker ps -a                            - all containers
docker build -t name .                  - build image
docker run -d -p 8080:8080 name         - run container
docker stop name                        - stop container
docker start name                       - start container
docker logs name                        - see logs
docker rm name                          - delete container
docker rmi name                         - delete image
