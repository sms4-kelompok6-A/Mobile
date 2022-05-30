import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .4,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.pexels.com/photos/1832324/pexels-photo-1832324.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      ),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 30, left: 10, right: 10, bottom: 50),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 26,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.share,
                                size: 26,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.white70,
                                    size: 22,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Banyuwangi-Bondowoso",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                      letterSpacing: 2,
                                      height: 1.4,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Kawah Ijen criticism and suggestions in bondowoso",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  letterSpacing: 3,
                                  height: 1.5,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(.9),
                          Colors.black.withOpacity(.1),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  right: 40,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      backgroundColor: Colors.white,
                      onPressed: () {},
                      child: const Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xFF73C993),
                                width: 2,
                              ),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/1832324/pexels-photo-1832324.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Nabila Putri",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  letterSpacing: 2,
                                ),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "nabilaputri@gmail.com",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  letterSpacing: 2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.favorite,
                            color: Color(0xFF73C993),
                            size: 22,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "203",
                            style: TextStyle(
                              color: Color(0xFF73C993),
                              fontSize: 14,
                              letterSpacing: 2,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Venturastic Fund's is a Special Purpose Investment Holding Company (SPIC) formed with an impetus for creating, building business, & Merger and Acquisition, it will aim at developing itself as a strong global player, by building a proven track record and achieving significant milestones in the next 5 years.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 83, 83, 83),
                      fontSize: 14,
                      letterSpacing: 2,
                      height: 1.4,
                    ),
                  ),
                  const Divider(
                    height: 40,
                    color: Colors.black12,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xFF73C993),
                                width: 2,
                              ),
                              image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1604230518736-4a3959eeb26a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8amlsYmFiJTIwaW5kb25lc2lhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Nabila Putri",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    letterSpacing: 2,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Venturastic Fund's is a Special Purpose Investment Holding Company (SPIC) formed with an impetus for creating",
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.grey,
                                    fontSize: 12,
                                    height: 1.5,
                                    letterSpacing: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
