# Teste INFOGLOBO
Projeto foi desenvollvido em Clean Architectural (Viper)

## O que é o Viper?
Viper é um padrão de design que implementa o paradigma da 'separação de preocupação'. Principalmente como MVP ou MVC, segue uma abordagem modular. Um recurso, um módulo. Para cada módulo, o VIPER tem cinco (às vezes quatro) classes diferentes com papéis distintos. Nenhuma classe vai além de seu único propósito. Essas classes estão seguindo.

* **View:** Classe que tem todo o código para mostrar a interface do aplicativo para o usuário e obter sua resposta. Ao receber a resposta, o View alerta o apresentador.

* **Presenter :**  Núcleo de um módulo. Obtém a resposta do usuário do View e trabalha de acordo. Única classe para se comunicar com todos os outros componentes. Chama o roteador para wire-framing, Interactor para buscar dados (chamadas de rede ou chamadas de dados locais), ver para atualizar a interface do usuário.

* **Iteractor:**  tenha uma lógica de negócios de um aplicativo. Primeiramente, faça chamadas de API para buscar dados de uma fonte. Responsável por fazer chamadas de dados, mas não necessariamente de si mesmo.

* **WIREFRAME:**  faz o roteamento. Esculta o apresentador sobre qual tela apresentar e executa.

* **Entidade:** Contém classes de modelo simples usadas pelo interator.


## Fontes

* [Medium](https://medium.com/@smalam119/viper-design-pattern-for-ios-application-development-7a9703902af6) - VIPER Design Pattern in Swift for iOS Application Development.
* [Equinocios](http://equinocios.com/viper/2017/03/14/comecando-com-viper/) - Começando com VIPER
* [UBER](https://eng.uber.com/new-rider-app/) - UBER
