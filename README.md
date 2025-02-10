# personalizando-banco-dados

# Projeto: Personalização de Banco de Dados com Índices e Procedures

Este projeto apresenta um banco de dados personalizado com índices otimizados e procedures para manipulação de dados no contexto de uma empresa fictícia. Ele responde a três perguntas relacionadas ao banco de dados e inclui a criação de índices e uma procedure geral para inserção, remoção e atualização.

## Perguntas respondidas:
1. **Departamento com maior número de pessoas.**
2. **Quais são os departamentos por cidade.**
3. **Relação de empregados por departamento.**

## Scripts disponíveis:
1. **scripts/create_indices.sql**: Criação de índices otimizados.
2. **scripts/queries.sql**: Queries SQL que respondem às perguntas.
3. **scripts/create_procedure.sql**: Procedure de manipulação de dados.

## Instruções:
1. Clone este repositório:
    ```bash
    git clone https://github.com/seuusuario/personalizando-banco-dados.git
    ```
2. Execute os scripts em sequência:
    - Criação de índices: `create_indices.sql`
    - Execução das queries: `queries.sql`
    - Criação e teste da procedure: `create_procedure.sql`

## Índices criados:
| Tabela         | Índice                 | Tipo   | Motivo                                                    |
|----------------|------------------------|--------|-----------------------------------------------------------|
| employee       | idx_employee_dno       | B-Tree | Otimiza a junção entre empregado e departamento.          |
| department     | idx_department_dnumber | B-Tree | Acelera buscas e junções baseadas no número do departamento. |
| dept_locations | idx_dept_locations_dnumber | B-Tree | Otimiza buscas pelos locais de departamentos.              |

## Procedure de manipulação
A procedure recebe uma ação (`1`, `2`, ou `3`) para realizar inserção, atualização ou remoção de dados de empregados.

