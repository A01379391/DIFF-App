import 'package:dif/helpers/DIFIcons.dart';
import 'package:dif/helpers/appcolors.dart';
import 'package:dif/models/category.dart';
import 'package:dif/models/categorypart.dart';
import 'package:dif/models/subcategory.dart';

class Utils{

  static List<Category> getMockedCategories() {
    return [
      Category(
        color: AppColors.Education,
        name: "Educación",
        imgName: "educacion",
        icon: DIFIcons.education,
        subCategories: [
          SubCategory(
              name: "Estancias infantiles",
              icon: DIFIcons.education,
              color: AppColors.Education,
              imgName: 'estanciasInfantiles',
              parts: [
                CategoryPart(
                    name: " Magdalena\nChichicaspa",
                    imgName: "estanciasInfantiles_2",
                    isSelected: false
                ),
                CategoryPart(
                    name: "San Bartolito",
                    imgName: "estanciasInfantilesSanBartolito",
                    isSelected: false
                ),
                CategoryPart(
                    name: "San Fernando",
                    imgName: "estanciasInfantilesSanFernando",
                    isSelected: false
                )
              ]
              ),
          SubCategory(
              name: "Jardín de niños",
              icon: DIFIcons.education,
              color: AppColors.Education,
              imgName: 'jardin',
              parts: [
                CategoryPart(
                    name: "Magdalena\nChichicaspa",
                    imgName: "estanciasInfantiles_2",
                    isSelected: false
                ),
                CategoryPart(
                    name: "San Bartolito",
                    imgName: "estanciasInfantilesSanBartolito",
                    isSelected: false
                ),
                CategoryPart(
                    name: "San Fernando",
                    imgName: "estanciasInfantilesSanFernando",
                    isSelected: false
                )
              ]
          ),
          SubCategory(
              name: "Prepa DIF",
              icon: DIFIcons.education,
              color: AppColors.Education,
              imgName: 'prepaDif',
              parts: [
                CategoryPart(
                    name: "Magdalena\nChichicaspa",
                    imgName: "estanciasInfantiles_2",
                    isSelected: false
                ),
                CategoryPart(
                    name: "San Bartolito",
                    imgName: "estanciasInfantilesSanBartolito",
                    isSelected: false
                ),
                CategoryPart(
                    name: "San Fernando",
                    imgName: "estanciasInfantilesSanFernando",
                    isSelected: false
                )
              ]
          ),
          SubCategory(
              name: "Aulas moviles",
              icon: DIFIcons.education,
              color: AppColors.Education,
              imgName: 'aulasMoviles',
              parts: [
                CategoryPart(
                    name: "Magdalena\nChichicaspa",
                    imgName: "estanciasInfantiles_2",
                    isSelected: false
                ),
                CategoryPart(
                    name: "San Bartolito",
                    imgName: "estanciasInfantilesSanBartolito",
                    isSelected: false
                ),
                CategoryPart(
                    name: "San Fernando",
                    imgName: "estanciasInfantilesSanFernando",
                    isSelected: false
                )
              ]
          )
        ],
        parts: [
          CategoryPart(
              name: "Magdalena\nChichicaspa",
              imgName: "estanciasInfantiles_2",
              isSelected: false
          ),
          CategoryPart(
              name: "San Bartolito",
              imgName: "estanciasInfantilesSanBartolito",
              isSelected: false
          ),
          CategoryPart(
              name: "San Fernando",
              imgName: "estanciasInfantilesSanFernando",
              isSelected: false
          )
        ]
      ),
      Category(
          color: AppColors.Salud,
          name: "Salud",
          imgName: "salud",
          icon: DIFIcons.medical_sign_alt,
          subCategories: [
            SubCategory(
                name: "Consultorios\n    médicos\n  y dentales",
                icon: DIFIcons.medical_sign_alt,
                color: AppColors.Salud,
                imgName: "consultorio",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "    Consultorios de\natención psicológica",
                icon: DIFIcons.medical_sign_alt,
                color: AppColors.Salud,
                imgName: "Psicologia",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "        Unidad\n de rehabilitación\n e integración social\n         (URIS)",
                icon: DIFIcons.medical_sign_alt,
                color: AppColors.Salud,
                imgName: "URIS",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Estimulación\n temprana",
                icon: DIFIcons.medical_sign_alt,
                color: AppColors.Salud,
                imgName: "estimulacionTemprana",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            )
          ],
          parts: [
            CategoryPart(
                name: "Magdalena\nChichicaspa",
                imgName: "estanciasInfantiles_2",
                isSelected: false
            ),
            CategoryPart(
                name: "San Bartolito",
                imgName: "estanciasInfantilesSanBartolito",
                isSelected: false
            ),
            CategoryPart(
                name: "San Fernando",
                imgName: "estanciasInfantilesSanFernando",
                isSelected: false
            )
          ]
      ),
      Category(
          color: AppColors.Mayores,
          name: "Atención al adulto mayor",
          imgName: "mayores",
          icon: DIFIcons.c,
          subCategories: [
            SubCategory(
                name: "    Casas de día\ndel adulto mayor",
                icon: DIFIcons.c,
                color: AppColors.Mayores,
                imgName: "casasDeDia",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "         Clubes\ndel adulto mayor",
                icon: DIFIcons.c,
                color: AppColors.Mayores,
                imgName: "clubes",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            )
          ],
          parts: [
            CategoryPart(
                name: "Magdalena\nChichicaspa",
                imgName: "estanciasInfantiles_2",
                isSelected: false
            ),
            CategoryPart(
                name: "San Bartolito",
                imgName: "estanciasInfantilesSanBartolito",
                isSelected: false
            ),
            CategoryPart(
                name: "San Fernando",
                imgName: "estanciasInfantilesSanFernando",
                isSelected: false
            )
          ]
      ),
      Category(
          color: AppColors.Juridico,
          name: "Atención jurídica",
          imgName: "juridico",
          icon: DIFIcons.law_order,
          subCategories: [
            SubCategory(
                name: "Subprocuradurías",
                icon: DIFIcons.law_order,
                color: AppColors.Juridico,
                imgName: "subprocuradurias",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Asesoría jurídica\n  en centros de\n    desarrollo\n   comunitario",
                icon: DIFIcons.law_order,
                color: AppColors.Juridico,
                imgName: "asesoriaJuridica",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            )
          ],
          parts: [
            CategoryPart(
                name: "Magdalena\nChichicaspa",
                imgName: "estanciasInfantiles_2",
                isSelected: false
            ),
            CategoryPart(
                name: "San Bartolito",
                imgName: "estanciasInfantilesSanBartolito",
                isSelected: false
            ),
            CategoryPart(
                name: "San Fernando",
                imgName: "estanciasInfantilesSanFernando",
                isSelected: false
            )
          ]
      ),
      Category(
          color: AppColors.Mujer,
          name: "Capacitación a la mujer",
          imgName: "mujer",
          icon: DIFIcons.female_sign,
          subCategories: [
            SubCategory(
                name: "    Departamento de\n       capacitación\n         a la mujer",
                icon: DIFIcons.female_sign,
                color: AppColors.Mujer,
                imgName: "capacitacionMujer",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            )
          ],
          parts: [
            CategoryPart(
                name: "Magdalena\nChichicaspa",
                imgName: "estanciasInfantiles_2",
                isSelected: false
            ),
            CategoryPart(
                name: "San Bartolito",
                imgName: "estanciasInfantilesSanBartolito",
                isSelected: false
            ),
            CategoryPart(
                name: "San Fernando",
                imgName: "estanciasInfantilesSanFernando",
                isSelected: false
            )
          ]
      ),
      Category(
          color: AppColors.Comedor,
          name: "Comedor infantil",
          imgName: "comedorInfantil",
          icon: DIFIcons.f,
          subCategories: [
            SubCategory(
                name: "Comedor infantil\n \"San Fernando\"",
                icon: DIFIcons.f,
                color: AppColors.Comedor,
                imgName: "comedorInfantilSanFernando",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Comedor infantil\n      \"Canales\"",
                icon: DIFIcons.f,
                color: AppColors.Comedor,
                imgName: "comedorInfantilCanales",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Comedor infantil\n      \"Santiago\n   Yancuitlalpan\"",
                icon: DIFIcons.f,
                color: AppColors.Comedor,
                imgName: "comedorInfantilMagdalena",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "Comedor comunitario\n       \"Santa Cruz\"",
                icon: DIFIcons.f,
                color: AppColors.Comedor,
                imgName: "comedorComunitario",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            )
          ],
          parts: [
            CategoryPart(
                name: "Magdalena\nChichicaspa",
                imgName: "estanciasInfantiles_2",
                isSelected: false
            ),
            CategoryPart(
                name: "San Bartolito",
                imgName: "estanciasInfantilesSanBartolito",
                isSelected: false
            ),
            CategoryPart(
                name: "San Fernando",
                imgName: "estanciasInfantilesSanFernando",
                isSelected: false
            )
          ]
      ),
      Category(
          color: AppColors.Ejercio,
          name: "Actividad física",
          imgName: "actividadFisica",
          icon: DIFIcons.runner,
          subCategories: [
            SubCategory(
                name: "    Escuelas\n de natación",
                icon: DIFIcons.runner,
                color: AppColors.Ejercio,
                imgName: "Esc-natacion",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            ),
            SubCategory(
                name: "        Áreas de\n juegos infantiles",
                icon: DIFIcons.runner,
                color: AppColors.Ejercio,
                imgName: "juegosInfantiles",
                parts: [
                  CategoryPart(
                      name: "Magdalena\nChichicaspa",
                      imgName: "estanciasInfantiles_2",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Bartolito",
                      imgName: "estanciasInfantilesSanBartolito",
                      isSelected: false
                  ),
                  CategoryPart(
                      name: "San Fernando",
                      imgName: "estanciasInfantilesSanFernando",
                      isSelected: false
                  )
                ]
            )
          ],
          parts: [
            CategoryPart(
                name: "Magdalena\nChichicaspa",
                imgName: "estanciasInfantiles_2",
                isSelected: false
            ),
            CategoryPart(
                name: "San Bartolito",
                imgName: "estanciasInfantilesSanBartolito",
                isSelected: false
            ),
            CategoryPart(
                name: "San Fernando",
                imgName: "estanciasInfantilesSanFernando",
                isSelected: false
            )
          ]
      )
    ];
  }
}