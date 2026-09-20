# Projeto de Oficina Mecânica - Modelagem de Banco de Dados

## 1. Diagrama do Modelo Lógico
O diagrama foi estruturado com base no modelo relacional, contendo as tabelas principais do sistema da oficina:
* **CLIENTE**: Armazena os dados cadastrais dos clientes.
* **PRODUTO**: Regista as peças e serviços disponíveis.
* **PEDIDO**: Regista a associação do pedido realizado pelo cliente.
* **ITENS_PEDIDO**: Tabela associativa (N para N) que detalha a quantidade e subtotal de produtos por pedido.

## 2. Aplicação da Normalização (Até a 3ª Forma Normal - 3FN)
* **1ª Forma Normal (1FN):** Todos os atributos foram mantidos atômicos e sem grupos repetitivos. Cada coluna armazena apenas um único valor por registo.
* **2ª Forma Normal (2FN):** A tabela encontra-se na 1FN e eliminou-se qualquer dependência parcial. As chaves primárias são simples ou os atributos não-chave dependem inteiramente da chave primária.
* **3ª Forma Normal (3FN):** A tabela está na 2FN e foram eliminadas dependências transitivas. Não existem atributos não-chave que dependam de outros atributos não-chave.
