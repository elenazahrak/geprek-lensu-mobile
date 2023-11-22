import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:geprek_lensu/models/product.dart';
import 'package:geprek_lensu/widgets/left_drawer.dart';

class ProductPage extends StatefulWidget {
    const ProductPage({Key? key}) : super(key: key);

    @override
    _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
Future<List<Product>> fetchProduct() async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    var url = Uri.parse(
      
        // 'https://elena-zahra-tugas.pbp.cs.ui.ac.id/json/');
        'http://127.0.0.1:8000/json/');
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<Product> list_product = [];
    for (var d in data) {
        if (d != null) {
            list_product.add(Product.fromJson(d));
        }
    }
    return list_product;
}

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Product'),
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                } else {
                    if (!snapshot.hasData) {
                    return const Column(
                        children: [
                        Text(
                            "Tidak ada data produk.",
                            style:
                                TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                        ),
                        SizedBox(height: 8),
                        ],
                    );
                } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (_, index) => Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text(
                                    "${snapshot.data![index].fields.menu}",
                                    style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text("${snapshot.data![index].fields.stock}"),
                                    const SizedBox(height: 10),
                                    Text(
                                        "${snapshot.data![index].fields.description}")
                                ],
                                ),
                            ));
                    }
                }
            }));
    }
}

// import 'package:flutter/material.dart';
// import 'package:geprek_lensu/models/product.dart';
// import 'package:geprek_lensu/widgets/left_drawer.dart';

// class ProductDetailPage extends StatelessWidget {
//   final Product product;

//   const ProductDetailPage({Key? key, required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Detail Item'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Nama: ${product.fields.menu}',
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text('Jumlah: ${product.fields.stock}'),
//             SizedBox(height: 10),
//             Text('Deskripsi: ${product.fields.description}'),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context); // Kembali ke halaman sebelumnya
//               },
//               child: Text('Kembali'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProductDetailPage extends StatefulWidget {
//     const ProductDetailPage({Key? key}) : super(key: key);

//     @override
//     _ProductDetailPageState createState() => _ProductDetailPageState();
// }

// class _ProductDetailPageState extends State<ProductPage> {
// Future<List<Product>> fetchProduct() async {
//     // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
//     var url = Uri.parse(
      
//         // 'https://elena-zahra-tugas.pbp.cs.ui.ac.id/json/');
//         'http://127.0.0.1:8000/json/');
//     var response = await http.get(
//         url,
//         headers: {"Content-Type": "application/json"},
//     );

    

//     // melakukan decode response menjadi bentuk json
//     var data = jsonDecode(utf8.decode(response.bodyBytes));

//     // melakukan konversi data json menjadi object Product
//     List<Product> list_product = [];
//     for (var d in data) {
//         if (d != null) {
//             list_product.add(Product.fromJson(d));
//         }
//     }
//     return list_product;
// }

// @override
// Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//         title: const Text('Product'),
//         ),
//         drawer: const LeftDrawer(),
//         body: FutureBuilder(
//             future: fetchProduct(),
//             builder: (context, AsyncSnapshot snapshot) {
//                 return ListView.builder(
//                     itemCount: snapshot.data!.length,
//                     itemBuilder: (_, index) => Container(
//                             margin: const EdgeInsets.symmetric(
//                                 horizontal: 16, vertical: 12),
//                             padding: const EdgeInsets.all(20.0),
//                             child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                                 Text(
//                                 "${snapshot.data![index].fields.menu}",
//                                 style: const TextStyle(
//                                     fontSize: 18.0,
//                                     fontWeight: FontWeight.bold,
//                                 ),
//                                 ),
//                                 const SizedBox(height: 10),
//                                 Text("${snapshot.data![index].fields.stock}"),
//                                 const SizedBox(height: 10),
//                                 Text("${snapshot.data![index].fields.price}"),
//                                 const SizedBox(height: 10),
//                                 Text(
//                                     "${snapshot.data![index].fields.description}")
//                             ],
//                             ),
//                         ));
                    
                
//             }));
//     }
// }
