# lett
projeto beanstalk

Subindo um projeto de beanstalk com uma fila SQS na AWS. A aplicação de teste é umm servidor GO.

Requisitos:
- Usuário na conta AWS com permmissão para o Terraform executar modificações na conta.
- Terraform 
- Editor de texto



1- Configurar o AWS CLI com as credenciais da conta AWS que vai ser utilizada. 
Para mais informações, https://aws.amazon.com/pt/cli/


2- Instalar o Terraform no ambiente de trabalho
https://www.terraform.io/downloads.html


3- Adicionar o arquivo main.tf no diretório de sua preferência


4- No diretório, através do terminal, iniciar o terraform no diretório:
> terraform init


5- Utilizar o terraform plan para ver quais serão as modificações feitas pelo conteudo do arquivo main.tf
> terraform plan


6- Após confirmar que está tudo de acordo, aplicar:
> terraform apply


7- Confirmar para executar as mudanças.


Após finalizar, acessar o painel AWS para conferir as estruturas criadas. Para o exemplo do projeto, é possível confirmar o ambiente web acessando a url criada
pelo navegador.
A fila SQS não precisa ser feita por módulos no terraform. Beanstalkers do tipo worker, commo no exemplo, sobem automaticamente duas filas SQS, uma para novas 
mensagens, e outra para as dead letters.



