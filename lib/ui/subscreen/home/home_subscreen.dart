import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/product_provider.dart';

class HomeSubscreen extends StatefulWidget {
  const HomeSubscreen({super.key});

  @override
  State<HomeSubscreen> createState() => _HomeSubscreenState();
}

class _HomeSubscreenState extends State<HomeSubscreen> {

  @override
  void initState() {
    // panggil provider product
    var productProvider = Provider.of<ProductProvider>(context, listen: false);
    // kemudian eksekusi fungsi listproduct untuk request data list product ke server
    productProvider.getProducts();

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(
      builder: (context, productProvider, widget){
        //jika variable is loading adalah true
        if (productProvider.isLoading){
          //maka muncul widget loading
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        //jika variable finished adalah false
        if (productProvider.isFinished == false){
          //maka muncul pesan error
          return Center(
            child: Text(productProvider.error),
          );
        }

        //jika tidak dari keduanya, maka muncullah data list product
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: productProvider.listProduct.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.network(productProvider.listProduct[index].image!),
                      title: Text(productProvider.listProduct[index].name!),
                      subtitle: Text(productProvider.listProduct[index].subcategory!),
                      trailing: Text(productProvider.listProduct[index].price!),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },

    );
  }
}
