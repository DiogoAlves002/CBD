Funcionalidades:

//base
addUser(String user) -> adiciona o utilizador ao sistema

followUser(String userA, String userB) -> o userA segue o userB, ao seja o userA vai passar a ler as mensagens do userB

unfollowUser(String userA, String userB) -> o userA deixa de seguir o userB, deixando de poder ler as mensagens do userB

sendMessage(String user, String message) -> o utilizador manda uma mensagem

readMessage(String user) -> o utilizador le as mensagens de utilizadores q ele siga



//extra
joinGroup(String user, String group) -> o utilizador cria/junta se a um grupo ja existente

leavGroup(String user, String group) -> o utilizador sai do grupo, deixando de poder ler/ mandar mensagens para ele, 
                                        mas os restantes membros continuam a poder ler as mensagens que o utilizador ja tinha enviado

sendMessage(String user, String group, String message) -> o utilizador manda uma mensagem para o grupo

readMessage(String user, String group) -> o utilizador le as mensagens que tenham sido enviadas para o grupo



----------------------
O programa todo funciona a base de listas, por exemplo cada user tem uma lista com as suas mensagens, os seus followers... 
Sempre que ha um pedido para ler mensagens, o programa vai buscar as listas nenessarias para imprimir as mensagens 
(por exemplo vai buscar a lista followers para ir buscar a lista de mensagens de cada um deles...) 
