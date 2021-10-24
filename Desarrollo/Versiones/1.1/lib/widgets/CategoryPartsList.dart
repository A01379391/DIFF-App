import 'package:dif/models/categorypart.dart';
import 'package:dif/models/subcategory.dart';
import 'package:flutter/material.dart';

class CategoryPartsList extends StatefulWidget {

  SubCategory subCategory;

  CategoryPartsList({ required this.subCategory});
  @override
  CategoryPartsListsState createState() => CategoryPartsListsState();
}

class CategoryPartsListsState extends State<CategoryPartsList> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Text('DIF Central: Carretera Huixquilucan- San Ramón #66 \nSan Juan Bautista\n\nPirules: Calle Alamo s/n Col. Pirules, Subiendo por lado derecho del Centro Administrativo de Pirules\n (Los Bomberos).\n\nSan Fernando: Calle Pólvora esquina con Espoleta, \nSan Fernando.\n\nJesús del monte: Cerrada Veracruz No. 15\n\nZacamulpa: Andador Loma de los Cedros s/n\n\nSan Bartolomé Coatepec: Andador Pino S/N \nSan Bartolomé Coatepec\n\nPróximas Estancias Infantiles:\n\n Magdalena Chichicaspa: Primera cerrada de Gardenia s/n Paraje El escobal, cerca del auditorio de Magdalena. \n\nLa Glorieta: Domicilio conocido s/n junto al CDC\n'),
        ),
        Container(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.subCategory.parts!.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.subCategory.parts!.forEach((CategoryPart part) {
                        part.isSelected = widget.subCategory.parts![index] == part;
                      });
                    });
                  },
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(15),
                        width: 120,
                        height: 150,
                        decoration: BoxDecoration(
                            border: widget.subCategory.parts![index].isSelected ?
                            Border.all(color: widget.subCategory.color, width: 5)
                                : null,
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: AssetImage('assets/images/' +
                                    widget.subCategory.parts![index].imgName + '.jpg'
                                ), fit: BoxFit.cover
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset.zero,
                                  blurRadius: 10
                              )
                            ]
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Text(widget.subCategory.parts![index].name, //duda sobre un dato tipo categorty que deberia ser subcategory para eliminar parts de category
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: widget.subCategory.color
                              )
                          )
                      )
                    ],
                  ),
                );
              },
            )
        )
      ]
    );
  }
}