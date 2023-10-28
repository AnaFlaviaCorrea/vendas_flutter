import 'package:flutter/material.dart';
class Product {
  final String name;
  final String description;
  final double price;

  Product(this.name, this.description, this.price);
}
PageController pageController = PageController();
int paginaAtual = 0;
int contador = 0;

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Produtos'),
        centerTitle: true,
        elevation: 10,
        actions: [
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(icon: Icon(Icons.search),
                  onPressed: (){}, tooltip: 'Pesquisar',),
                  SizedBox(width: 20,),
                  IconButton(icon: Icon(Icons.notifications),
                  onPressed: (){}, tooltip: 'Notificações',),
                  SizedBox(width: 20,),
                  IconButton(icon: Icon(Icons.favorite),
                  onPressed: (){}, tooltip: 'Favoritos',),
                  SizedBox(width: 20,),

            ],)
        ],
      ),
       drawer: Drawer(
        // backgroundColor: Colors.deepPurpleAccent,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Gabriel'),
              accountEmail: Text('gabrieldasilva@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Text('G'),
                backgroundImage: NetworkImage(
                    'https://avatars.githubusercontent.com/u/60005589?v=4'),
              ),
            ),
            ListTile(
              
              title: Text('Minha conta'),
              subtitle: Text('Dados da sua conta'),
              trailing: Icon(Icons.money),
              leading: Icon(Icons.money_off),
              // onLongPress: (){},
              onTap: () {
                pageController.jumpToPage(2);
                Navigator.pop(context); // fecha o drawer
                
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Conteúdo da página de produtos
          ],
        ),
      ),
    );
  }
}
