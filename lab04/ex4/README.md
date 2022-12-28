# ex 4

## Dataset

Fonte do dataset: [link](https://www.kaggle.com/datasets/tamle507/airbnb-listings-usa)


O ficheiro foi reduzido para cerca de 700 linhas, para não ser desnecessáriamente grande e para evitar problemas com terminações de linha incomuns que faziam parte do original.


Nem todas as colunas foram utilizadas, apenas as mais relevantes para o exercício.


**__O loading dos dados pode demorar um pouco o que leva a primeira query a não retornar nada, em principio o time.sleep() deve resolver mas se no ficheiro de output faltar alguma query é só voltar a correr o ficheiro com a linha 108 comentada__**



## Modelo da Base de Dados

### Entidades
(property {id, name, price, last_review, city})

(host {host_id, host_name})

(neighbourhood_group {neighbourhood_group})

(neighbourhood {neighbourhood})

(room_type {room_type})



### Relações
(property)-[:OWNED_BY ]->(host)

(property)-[:BELONGS_TO ]->(neighbourhood_group)

(property)-[:LOCATED_IN ]->(neighbourhood)

(property)-[:HAS_ROOM_TYPE ]->(room_type)