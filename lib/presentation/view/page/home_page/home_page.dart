import 'package:myportfolio/headers.dart';
import 'package:myportfolio/utils/route_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.1,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.instance.aboutme,
                );
              },
              child: const Text(
                "About me",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.instance.contectus,
                );
              },
              child: const Text(
                "Contact us",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool isScrolled) {
          return [
            SliverAppBar(
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              ),
              backgroundColor: Colors.black,
            ),
          ];
        },
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/assets/images/3.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              children: [
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.3,
                  // blur: 10,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: GlassContainer(
                          height: size.height * 0.35,
                          width: size.width * 0.65,
                          blur: 20,
                          borderRadius: BorderRadius.circular(25),
                          // color: Colors.white,
                          child: const Image(
                            image: AssetImage("lib/assets/images/my.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.06,
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "WELCOME!",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "'Iam Flutter Devloper",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "ABHI GHOGHARI'",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            // color: Color(0xffFFEDD8),

                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: GlassContainer(
                          height: size.height * 0.06,
                          width: size.width * 0.5,
                          blur: 25,
                          borderRadius: BorderRadius.circular(13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.04,
                                width: size.width * 0.08,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "lib/assets/logo/github.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                height: size.height * 0.04,
                                width: size.width * 0.08,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "lib/assets/logo/linkedin.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                height: size.height * 0.04,
                                width: size.width * 0.08,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "lib/assets/logo/freelancer.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                height: size.height * 0.04,
                                width: size.width * 0.08,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "lib/assets/logo/upwork.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.1),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.instance.aboutme,
                          );
                        },
                        child: const Text(
                          "ABOUT ME",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white,
                            // color: Color(0xffFFEDD8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.3,
                  // color: Colors.white,
                  child: Column(
                    children: [
                      GlassContainer(
                        height: size.height * 0.2,
                        width: double.infinity,
                        blur: 20,
                        borderRadius: BorderRadius.circular(15),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "'HI.. , I am flutter application developer ABHI GHOGHARI I have done many flutter application development projects. Like a Chat Functionality App,Gemini AI App, Show a Current City Weather Data App,API based App etc.. Application made by myself'",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              // color: Color(0xffFFEDD8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.05),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "1+",
                              style: TextStyle(
                                fontSize: 90,
                                // color: Color(0xffFFEDD8),
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Text(
                            "years of experience in this field\nand To take up new projects of\nFlutter application to complete\nthese projects, to keep clients\n"
                            "happy,\n'Clients are happy, we are happy'",
                            style: TextStyle(
                              fontSize: 18,
                              // color: Color(0xffFFEDD8),
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.05),
                      const Text(
                        "The service I offer:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                          // color: Color(0xffFFEDD8),
                        ),
                      ),
                      SizedBox(height: size.height * 0.025),
                      GlassContainer(
                        height: size.height * 0.2,
                        width: double.infinity,
                        blur: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: size.height * 0.1,
                              width: size.width * 0.2,
                              decoration: const BoxDecoration(
                                // color: Colors.black,
                                image: DecorationImage(
                                  image:
                                      AssetImage("lib/assets/logo/android.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              height: size.height * 0.1,
                              width: size.width * 0.2,
                              decoration: const BoxDecoration(
                                // color: Colors.black,
                                image: DecorationImage(
                                  image: AssetImage("lib/assets/logo/uiux.png"),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Container(
                              height: size.height * 0.1,
                              width: size.width * 0.2,
                              decoration: const BoxDecoration(
                                // color: Colors.black,
                                image: DecorationImage(
                                  image: AssetImage("lib/assets/logo/api.png"),
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GlassContainer(
                        height: size.height * 0.35,
                        width: double.infinity,
                        blur: 20,
                        borderRadius: BorderRadius.circular(15),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.09,
                                width: size.width * 0.3,
                                // color: Colors.white,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "lib/assets/logo/android.png"),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              const Text(
                                "Mobile App Development",
                                style: TextStyle(
                                  color: Color(0xffFFBF78),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                "I am a Junior mobile devloper. I have experience using Dart & Flutter FrameWork.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GlassContainer(
                        height: size.height * 0.35,
                        width: double.infinity,
                        blur: 20,
                        borderRadius: BorderRadius.circular(15),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.09,
                                width: size.width * 0.3,
                                // color: Colors.white,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("lib/assets/logo/uiux.png"),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              const Text(
                                "UI&UX Designing",
                                style: TextStyle(
                                  color: Color(0xffFFBF78),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                "I design beautiful and attractive app interface with using Figma.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.8,
                  width: size.width * 0.3,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GlassContainer(
                        height: size.height * 0.35,
                        width: double.infinity,
                        blur: 20,
                        borderRadius: BorderRadius.circular(15),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height * 0.09,
                                width: size.width * 0.3,
                                // color: Colors.white,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("lib/assets/logo/api.png"),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              const Text(
                                "API Creation",
                                style: TextStyle(
                                  color: Color(0xffFFBF78),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                "I can create a API accurately with the help of PHP",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      const Text(
                        "My Work Profile:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: size.height * 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GlassContainer(
                            height: size.height * 0.35,
                            width: size.width * 0.4,
                            blur: 20,
                            borderRadius: BorderRadius.circular(15),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: size.height * 0.09,
                                    width: size.width * 0.3,
                                    // color: Colors.white,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "lib/assets/logo/linkedin.png"),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    "Linkedin Profile",
                                    style: TextStyle(
                                      color: Colors.white,
                                      // color: Color(0xffFFBF78),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  FilledButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        const Color(0xffFFBF78),
                                      ),
                                    ),
                                    child: const Text(
                                      "Preview",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GlassContainer(
                            height: size.height * 0.35,
                            width: size.width * 0.4,
                            blur: 20,
                            borderRadius: BorderRadius.circular(15),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: size.height * 0.09,
                                    width: size.width * 0.3,
                                    // color: Colors.white,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "lib/assets/logo/githubwhite.png"),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    "GitHub Profile",
                                    style: TextStyle(
                                      color: Colors.white,
                                      // color: Color(0xffFFBF78),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  FilledButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        const Color(0xffFFBF78),
                                      ),
                                    ),
                                    child: const Text(
                                      "Preview",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.3,
                  width: size.width * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilledButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.instance.contectus,
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xffFFBF78),
                          ),
                        ),
                        child: const Text(
                          "Contact With Me!",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
