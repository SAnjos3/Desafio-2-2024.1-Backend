-PRIMEIRA CONSULTA

mysql> SELECT *
    -> FROM VEICULO
    -> WHERE proprietario_CPF = '06519510114';
+-------+--------------+---------+------+------------------+-----------+--------+
| cor   | chassi       | placa   | ano  | proprietario_CPF | categoria | modelo |
+-------+--------------+---------+------+------------------+-----------+--------+
| Azul  | DEF123456789 | DEF5678 | 2020 | 06519510114      | 11        | 123456 |
| Prata | JKL123456789 | JKL2345 | 2017 | 06519510114      | 11        | 345678 |
+-------+--------------+---------+------+------------------+-----------+--------+
2 rows in set (0,00 sec)


-SEGUNDA CONSULTA:

mysql> SELECT * 
    -> FROM PROPRIETARIO 
    -> WHERE nome = 'Gabriel';
+---------+-----------+--------+-----------+--------+-------+----------------+-------------+
| nome    | sexo      | bairro | cidade    | estado | idade | dataNascimento | CPF         |
+---------+-----------+--------+-----------+--------+-------+----------------+-------------+
| Gabriel | masculino | guará  | brasília  | DF     |    19 | 2004-12-03     | 06519510114 |
+---------+-----------+--------+-----------+--------+-------+----------------+-------------+
1 row in set (0,00 sec)

TERCEIRA CONSULTA:

mysql> SELECT * 
    -> FROM INFRACAO 
    -> JOIN VEICULO ON INFRACAO.placa_veiculo = VEICULO.placa
    -> WHERE data_horario between'2024-06-01 05:00:00' and '2024-06-02 20:00:00';
+---------------------+--------------------+---------------+---------------+--------------+--------------+-----------------+-------+--------------+---------+------+------------------+-----------+--------+
| data_horario        | velocidade_aferida | placa_veiculo | tipo_infracao | latitude     | longitude    | agente_transito | cor   | chassi       | placa   | ano  | proprietario_CPF | categoria | modelo |
+---------------------+--------------------+---------------+---------------+--------------+--------------+-----------------+-------+--------------+---------+------+------------------+-----------+--------+
| 2024-06-01 09:30:00 |                 80 | ABC1234       |             1 | 0.0001000000 | 0.0002000000 | 231024345       | Preto | ABC123456789 | ABC1234 | 2018 | 06518345984      | 11        | 012345 |
| 2024-06-02 12:45:00 |                 95 | DEF5678       |             2 | 0.0002000000 | 0.0003000000 | 231026625       | Azul  | DEF123456789 | DEF5678 | 2020 | 06519510114      | 11        | 123456 |
+---------------------+--------------------+---------------+---------------+--------------+--------------+-----------------+-------+--------------+---------+------+------------------+-----------+--------+
2 rows in set (0,00 sec)

QUARTA CONSULTA:

mysql> SELECT MODELO.nome, COUNT(nome) as qtd_veiculos 
    -> FROM VEICULO 
    -> JOIN MODELO ON VEICULO.modelo = MODELO.idModelo
    -> GROUP BY MODELO.nome
    -> ORDER BY qtd_veiculos DESC;
+---------+--------------+
| nome    | qtd_veiculos |
+---------+--------------+
| GOL MI  |            1 |
| GOL 1.8 |            1 |
| UNO CS  |            1 |
| FIESTA  |            1 |
| COROLLA |            1 |
+---------+--------------+
5 rows in set (0,01 sec)



