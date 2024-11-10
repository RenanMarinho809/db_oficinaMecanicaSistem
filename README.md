# 🛠️ Sistema de Banco de Dados para Oficina Mecânica

## Visão Geral 📋
O sistema de banco de dados de uma oficina mecânica tem o objetivo de organizar e gerenciar informações essenciais, como **clientes**, **veículos**, **serviços realizados** e **estoque de peças**. Isso facilita o controle e garante que todos os processos sejam rápidos e precisos.

## Estrutura do Banco de Dados 🗄️

### Tabelas Principais

1. **Clientes** 👤
   - **Descrição**: Armazena as informações dos clientes da oficina.
   - **Campos**:
     - `id_cliente` (INT) - Identificador único do cliente.
     - `nome` (VARCHAR) - Nome do cliente.
     - `telefone` (VARCHAR) - Telefone de contato.
     - `email` (VARCHAR) - Email do cliente.
     - `endereco` (VARCHAR) - Endereço completo.

2. **Veículos** 🚗
   - **Descrição**: Armazena dados dos veículos registrados.
   - **Campos**:
     - `id_veiculo` (INT) - Identificador único do veículo.
     - `id_cliente` (INT) - Relaciona o veículo ao cliente.
     - `marca` (VARCHAR) - Marca do veículo (e.g., Ford, Chevrolet).
     - `modelo` (VARCHAR) - Modelo do veículo (e.g., Fiesta, Corsa).
     - `ano` (INT) - Ano de fabricação.
     - `placa` (VARCHAR) - Placa do veículo.

3. **Serviços** 🔧
   - **Descrição**: Detalha cada serviço realizado.
   - **Campos**:
     - `id_servico` (INT) - Identificador do serviço.
     - `id_veiculo` (INT) - Relaciona o serviço ao veículo.
     - `descricao` (TEXT) - Descrição do serviço realizado.
     - `data_servico` (DATE) - Data em que o serviço foi realizado.
     - `custo` (DECIMAL) - Custo total do serviço.

4. **Peças em Estoque** 🧰
   - **Descrição**: Gerencia as peças disponíveis para reposição.
   - **Campos**:
     - `id_peca` (INT) - Identificador da peça.
     - `nome` (VARCHAR) - Nome da peça.
     - `quantidade` (INT) - Quantidade disponível em estoque.
     - `preco` (DECIMAL) - Preço unitário da peça.

## Relacionamentos 🔄
O sistema possui os seguintes relacionamentos principais:

- **Clientes-Para-Veículos** (1:N): Um cliente pode possuir vários veículos.
- **Veículos-Para-Serviços** (1:N): Um veículo pode ter vários serviços associados.
- **Serviços-Para-Peças** (N:N): Um serviço pode envolver várias peças, e uma peça pode ser utilizada em múltiplos serviços.

## Exemplo de Consultas SQL 📝

- **Buscar serviços realizados em um veículo específico**:
  ```sql
  SELECT descricao, data_servico, custo
  FROM Servicos
  WHERE id_veiculo = 1;
