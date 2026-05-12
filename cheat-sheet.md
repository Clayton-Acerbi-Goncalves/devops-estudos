# DevOps Cheat Sheet — Clayton Acerbi

## LINUX — NAVEGAÇÃO
pwd                    - onde estou
ls                     - listar arquivos
ls -la                 - listar com detalhes
cd pasta               - entrar em pasta
cd ..                  - voltar uma pasta
cd ~                   - ir para home

## LINUX — ARQUIVOS
mkdir nome             - criar pasta
touch arquivo          - criar arquivo vazio
cp a b                 - copiar arquivo
mv a b                 - mover ou renomear
rm arquivo             - deletar arquivo
rm -rf pasta           - deletar pasta inteira
cat arquivo            - ver conteúdo
nano arquivo           - editar arquivo

## LINUX — BUSCA E FILTRO
grep "texto" arquivo   - procurar texto
find ~ -name "*.sh"    - encontrar arquivos
tail -f arquivo        - monitorar ao vivo
cmd1 | cmd2            - pipe: combinar comandos
wc -l                  - contar linhas

## LINUX — PROCESSOS
ps aux                 - listar processos
ps aux | grep nginx    - filtrar processo
top                    - monitor em tempo real
kill PID               - parar processo

## LINUX — SERVIÇOS
systemctl status nginx   - ver status
systemctl start nginx    - iniciar
systemctl stop nginx     - parar
systemctl restart nginx  - reiniciar
systemctl enable nginx   - iniciar no boot

## LINUX — PERMISSÕES
chmod +x script.sh     - dar permissão de executar
chmod 400 chave.pem    - somente leitura
sudo comando           - rodar como admin

## CRON — AGENDAMENTO
crontab -e             - editar agendamentos
crontab -l             - listar agendamentos
* * * * *              - min hora dia mes diaSemana

## GIT
git init               - iniciar repositório
git status             - ver mudanças
git add .              - preparar arquivos
git commit -m "msg"    - salvar ponto
git push               - enviar para GitHub
git pull               - baixar do GitHub
git log --oneline      - ver histórico

## SSH
ssh my-server                        - conectar servidor
ssh -i chave.pem ubuntu@IP           - conectar com chave
scp arquivo ubuntu@IP:/destino       - copiar arquivo

## AWS CLI
aws s3 ls                            - listar buckets
aws s3 mb s3://nome --region         - criar bucket
aws s3 cp arquivo s3://bucket/       - upload arquivo
aws ec2 describe-instances           - listar EC2
aws ec2 start-instances --instance-ids ID  - ligar EC2
aws ec2 stop-instances --instance-ids ID   - desligar EC2
aws sts get-caller-identity          - verificar login

## DOCKER
docker --version                     - ver versão
docker images                        - listar images
docker ps                            - containers rodando
docker ps -a                         - todos containers
docker build -t nome .               - criar image
docker run -d -p 8080:8080 nome      - rodar container
docker stop nome                     - parar container
docker start nome                    - iniciar container
docker logs nome                     - ver logs
docker rm nome                       - deletar container
docker rmi nome                      - deletar image
