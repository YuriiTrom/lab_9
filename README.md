# lab 9

# Запуск інстансу:


Запустити фаіл --> "lab_9.bat"

Ця інструкція пояснює, як використовувати команду AWS CLI для запуску нового інстансу Amazon EC2, використовуючи файл `Oda_6.sh` для конфігурації користувача.

# Команда AWS CLI

```bash
aws ec2 run-instances \
  --image-id ami-0fc5d935ebf8bc3bc \
  --count 1 \
  --instance-type t2.micro \
  --key-name itstep \
  --security-group-ids sg-05be3afa52a08fb30 \
  --subnet-id subnet-07d76eb6b64998ad5 \
  --user-data file://Oda_6.sh

Переконайтеся, що у вас є правильні значення для цих параметрів та що файли AMI та ключа SSH існують та доступні. Пам'ятайте про права доступу до вказаних груп безпеки та підмережі.

# Для перевірки чи працює

 
ssh -i "C:/Users/tromp/Downloads/itstep.pem" -L 5566:127.0.0.1:2375 ubuntu@52.90.232.54


docker -H localhost:5566 build -t nginx .

docker -H localhost:5566 run -d -p 80:80 nginx

docker -H localhost:5566 images

docker -H localhost:5566 ps

Наприклад —> "http://52.90.232.54"

