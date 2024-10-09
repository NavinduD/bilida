import 'package:bilinda/screens/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:bilinda/screens/home.dart';

class SpecialNote extends StatefulWidget {
  const SpecialNote({Key? key}) : super(key: key);

  @override
  State<SpecialNote> createState() => _RemindMeState();
}

class _RemindMeState extends State<SpecialNote> {
  @override
  Widget build(BuildContext context) {
    const icon2 = Icon(
      Icons.circle,
      size: 8,
      color: Colors.black,
    );
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            LocaleKeys.note.tr(),
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(218, 127, 209, 30),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
        ),
        body: Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 238, 195, 209),
                    Color.fromARGB(255, 145, 199, 243)
                  ]),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Giving Foods",
                      style: TextStyle(
                          color: Color.fromRGBO(0xf6, 0xa4, 0xc5, 1),
                          fontSize: 24)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      '''Please note that these are general instructions for all children and may vary depending on the needs of the children. The amount and number of meals to be given to children at one meal and the amount of tea to be added during meal preparation may vary from child to child.'''),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text("From birth until the child is six months old"),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                icon2,
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Give only breast milk")
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                icon2,
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: Text(
                                    "Give breast milk every time the baby engages, both day and night",
                                  ),
                                )
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                icon2,
                                SizedBox(
                                  width: 10,
                                ),
                                Flexible(
                                  child: Text(
                                    '''The best way to know if the baby is getting enough milk is to weigh the baby month by month and check the growth chart. Also, if a baby who receives only breast milk urinates at least six times a day, it is also proof that breast milk is sufficient.''',
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: const CircleAvatar(
                          // backgroundImage: AssetImage("assets/1.jpg"),
                          radius: 60,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: const CircleAvatar(
                          // backgroundImage: AssetImage("assets/2.jpg"),
                          radius: 40,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "From the beginning of the child's age of 7 months",
                              textAlign: TextAlign.right,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Flexible(
                                    child: Text(
                                  '''When the baby is 6 months old, i.e., from the beginning of 7 months, start giving other foods besides mother's milk. But if the mother is not on maternity leave or there is a risk of stunting the baby's growth, supplementary feeding can be started from five months.''',
                                  textAlign: TextAlign.right,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                icon2,
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Flexible(
                                    child: Text(
                                  '''When introducing complementary foods, add a little breast milk mixed with soaked rice paste at the beginning and feed when the baby is hungry. After that give breast milk.''',
                                  textAlign: TextAlign.right,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                icon2,
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Flexible(
                                    child: Text(
                                  '''Give about two to three teaspoons the first day. Gradually increase the amount given.''',
                                  textAlign: TextAlign.right,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                icon2,
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Flexible(
                                    child: Text(
                                  '''After about four to five days, add a seed to the rice and feed it. Gradually add a variety of vegetables and leafy greens and iron-rich foods like fish, chicken, powdered rice, and fly ash as soon as possible.''',
                                  textAlign: TextAlign.right,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                icon2,
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Flexible(
                                    child: Text(
                                  '''Introduce the baby to one new food at a time. If there is no problem after three to four days, add another new type of food to it''',
                                  textAlign: TextAlign.right,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                icon2,
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Flexible(
                                    child: Text(
                                  ''' Lentils, pumpkins, bananas, potatoes, carrots, vegetables, tampala, saran, gotukola, mukununwanna and other vegetables can also be introduced at this time''',
                                  textAlign: TextAlign.right,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                icon2,
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Flexible(
                                    child: Text(
                                  '''Eat fruits like mashed banana, ripe papaya, watermelon once a day''',
                                  textAlign: TextAlign.right,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                icon2,
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Spacer(),
                                Flexible(
                                    child: Text(
                                  '''Provide two to three meals''',
                                  textAlign: TextAlign.right,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                icon2,
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Spacer(),
                                Flexible(
                                    child: Text(
                                  '''Feed the baby as often as needed between meals''',
                                  textAlign: TextAlign.right,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                icon2,
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text("From the end of 7 months for the child"),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                      "Feed rice with finely ground rice, vegetable seeds, greens and fish with chicken or pulverized halibut.Add about a teaspoon of coconut milk or oil to cook. Give fruits too. Iron-rich foods are essential fora child's growth. Give two or three meals. Breastfeed in between."),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      "Give it about three times in a small cup at a time. Introduce pieces gradually to acclimate the vulture. Create a variety of foods."),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              icon2,
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                  child: Text(
                                      "Prepare a separate place at home to eat. Allow the child to observe how family members eat."))
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              icon2,
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                  child: Text(
                                      "Talk to the child about the food being fed. Tell about the taste"))
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              icon2,
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                  child: Text(
                                      "Let your baby feel loved during feedings"))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text("When the baby is eight to nine months old"),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      icon2,
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                          child: Text(
                              "In addition to the main meals, offer something to hold hands to eat."))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      icon2,
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                          child:
                              Text("Small pieces of food can be introduced."))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      icon2,
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                          child:
                              Text("Avoid feeding the baby with blended food"))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text("9 to 12 months"),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Flexible(
                                    child: Text(
                                  "Three main meals, one cup at a time, and two snacks",
                                  textAlign: TextAlign.right,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                icon2,
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text("From twelve months"),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      icon2,
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                          child: Text(
                              "Provide family food. Three main meals are more than one full cup at a time and two snacks."))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      icon2,
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                          child: Text(
                              "Avoid forcing food under any circumstances. Feed the baby until he is very hungry. For this, avoid giving food or drink to the child two hours before a main meal."))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      icon2,
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                          child: Text(
                              "Limit sweet foods to the child. Immediately after eating sweets, rinse the baby’s mouth with water."))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("General advice on feeding when a child is sick"),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      icon2,
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                          child: Text(
                              "Increase the number of meals during illness. Give at least one extra meal for at least two weeks after recovery."))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      icon2,
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                          child: Text(
                              "If the child's growth is stunted, this extra meal should be given for at least six months after the child gains weight"))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      icon2,
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                          child: Text(
                              "Use oil when preparing food. The amount of oil to be used for each child may vary depending on the child's growth."))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      icon2,
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                          child: Text(
                              "If the child has diarrhea, they need more liquid to drink, so give more porridge, water, fruit juice, tea and jeewani. Give food along with it"))
                    ],
                  ),
                ],
              ),
            )));
  }
}
