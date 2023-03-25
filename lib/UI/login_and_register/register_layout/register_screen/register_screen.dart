import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      height: 932,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: const Color(0xff151316),
      ),
      child: Stack(
        children: [
          const Positioned(
            left: 366,
            top: 230,
            child: SizedBox(
              width: 90,
              height: 197,
              child: FlutterLogo(size: 90),
            ),
          ),
          Positioned(
            left: 147,
            top: 8,
            child: SizedBox(
              width: 337.99,
              height: 238,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 337.99,
                    height: 238,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Stack(
                            children: [
                              Positioned(
                                left: 85,
                                top: 15.28,
                                child: Container(
                                  width: 40.16,
                                  height: 39.84,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffe1dfdf),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 89,
                                top: 20,
                                child: SizedBox(
                                  width: 24,
                                  height: 30,
                                  child: FlutterLogo(size: 24),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Positioned.fill(
                          child: FlutterLogo(size: 238),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                width: 904,
                height: 1037,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Opacity(
                          opacity: 0.58,
                          child: Container(
                            width: 397,
                            height: 397,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 430,
                      top: 640,
                      child: Opacity(
                        opacity: 0.58,
                        child: Container(
                          width: 397,
                          height: 397,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 619,
                      child: Opacity(
                        opacity: 0.58,
                        child: Container(
                          width: 397,
                          height: 397,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 213,
                      top: 118,
                      child: Container(
                        width: 447,
                        height: 803,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(59),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 51,
            top: 281,
            child: SizedBox(
              width: 330,
              height: 73,
              child: Stack(
                children: const [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Get Started Free",
                        style: TextStyle(
                          color: Color(0xffefefef),
                          fontSize: 40.33,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 52,
                    child: Text(
                      "Free Forever. No Credit Card Needed",
                      style: TextStyle(
                        color: Color(0xffa3a3a3),
                        fontSize: 14.33,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 58,
            top: 689,
            child: SizedBox(
              width: 314,
              height: 50,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 314,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xff9c3fe4), Color(0xffc65647)],
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      left: 130,
                      right: 116,
                      top: 11,
                      bottom: 12,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.92,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 59,
            top: 513,
            child: SizedBox(
              width: 314,
              height: 55,
              child: Stack(
                children: [
                  SizedBox(
                    width: 314,
                    height: 55,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 314,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 314,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const FlutterLogo(size: 55),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned.fill(
                                child: FlutterLogo(size: 55),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 21,
                    top: 20,
                    child: Container(
                      width: 17.39,
                      height: 16.72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffa3a3a3),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 57,
                    top: 17,
                    child: Text(
                      "@yourname",
                      style: TextStyle(
                        color: Color(0xffa3a3a3),
                        fontSize: 14.33,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            left: 58,
            top: 386,
            child: Text(
              "Email Adress",
              style: TextStyle(
                color: Color(0xffa3a3a3),
                fontSize: 14.33,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Positioned(
            left: 58,
            top: 486,
            child: Text(
              "Your Name",
              style: TextStyle(
                color: Color(0xffa3a3a3),
                fontSize: 14.33,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Positioned(
            left: 58,
            top: 580,
            child: Text(
              "Password",
              style: TextStyle(
                color: Color(0xffa3a3a3),
                fontSize: 14.33,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Positioned(
            left: 58,
            top: 580,
            child: Text(
              "Password",
              style: TextStyle(
                color: Color(0xffa3a3a3),
                fontSize: 14.33,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            left: 59,
            top: 607,
            child: SizedBox(
              width: 314,
              height: 55,
              child: Stack(
                children: [
                  SizedBox(
                    width: 314,
                    height: 55,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 314,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 314,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const FlutterLogo(size: 55),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned.fill(
                                child: FlutterLogo(size: 55),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 19.70,
                    child: Container(
                      width: 18.31,
                      height: 18.31,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffa3a3a3),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 58,
                    top: 25,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 5.20,
                          height: 5.20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffa3a3a3),
                          ),
                        ),
                        const SizedBox(width: 3.03),
                        Container(
                          width: 5.20,
                          height: 5.20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffa3a3a3),
                          ),
                        ),
                        const SizedBox(width: 3.03),
                        Container(
                          width: 5.20,
                          height: 5.20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffa3a3a3),
                          ),
                        ),
                        const SizedBox(width: 3.03),
                        Container(
                          width: 5.20,
                          height: 5.20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffa3a3a3),
                          ),
                        ),
                        const SizedBox(width: 3.03),
                        Container(
                          width: 5.20,
                          height: 5.20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffa3a3a3),
                          ),
                        ),
                        const SizedBox(width: 3.03),
                        Container(
                          width: 5.20,
                          height: 5.20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffa3a3a3),
                          ),
                        ),
                        const SizedBox(width: 3.03),
                        Container(
                          width: 5.20,
                          height: 5.20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffa3a3a3),
                          ),
                        ),
                        const SizedBox(width: 3.03),
                        Container(
                          width: 5.20,
                          height: 5.20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffa3a3a3),
                          ),
                        ),
                        const SizedBox(width: 3.03),
                        Container(
                          width: 5.20,
                          height: 5.20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffa3a3a3),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 223,
                    top: 20,
                    child: SizedBox(
                      width: 79,
                      height: 16,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 11,
                            height: 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff009506),
                            ),
                          ),
                          const SizedBox(width: 3.67),
                          Container(
                            width: 11,
                            height: 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff4caf50),
                            ),
                          ),
                          const SizedBox(width: 3.67),
                          Container(
                            width: 11,
                            height: 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff8f8f8f),
                            ),
                          ),
                          const SizedBox(width: 3.67),
                          const Text(
                            "Strong",
                            style: TextStyle(
                              color: Color(0xff9edaa1),
                              fontSize: 10.45,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 63,
            top: 758,
            child: SizedBox(
              width: 303,
              height: 17,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 98,
                    height: 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Color(0xffd9d9d9), Color(0x00d9d9d9)],
                      ),
                    ),
                  ),
                  const SizedBox(width: 11),
                  const Text(
                    "Or sign up with",
                    style: TextStyle(
                      color: Color(0xffb5b5b5),
                      fontSize: 11.25,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 11),
                  Container(
                    width: 98,
                    height: 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xffd9d9d9), Color(0x00d9d9d9)],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 264.87,
            top: 793,
            child: SizedBox(
              width: 58.10,
              height: 44,
              child: Stack(
                children: [
                  SizedBox(
                    width: 58.10,
                    height: 44,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 58.10,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.85),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 58.10,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.85),
                                      ),
                                      child: const FlutterLogo(size: 44),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned.fill(
                                child: FlutterLogo(size: 44),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 19.39,
                        height: 19.39,
                        child: Stack(
                          children: [
                            Container(
                              width: 19.39,
                              height: 19.39,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff0a66c2),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: 6.35,
                                  height: 12.23,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 186.44,
            top: 793,
            child: SizedBox(
              width: 58.10,
              height: 44,
              child: Stack(
                children: [
                  SizedBox(
                    width: 58.10,
                    height: 44,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 58.10,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.85),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 58.10,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.85),
                                      ),
                                      child: const FlutterLogo(size: 44),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned.fill(
                                child: FlutterLogo(size: 44),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 16.34,
                        height: 19.39,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x16000000),
                              blurRadius: 2.98,
                              offset: Offset(0, 2.98),
                            ),
                          ],
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 477.40,
                height: 417.54,
                padding: const EdgeInsets.only(
                  left: 1062,
                  bottom: 464,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Transform.rotate(
                      angle: -0.33,
                      child: const SizedBox(
                        width: double.infinity,
                        height: 68.53,
                        child: FlutterLogo(size: 68.52622985839844),
                      ),
                    ),
                    const SizedBox(height: 37.58),
                    Transform.rotate(
                      angle: -0.58,
                      child: const SizedBox(
                        width: double.infinity,
                        height: 85.23,
                        child: FlutterLogo(size: 85.22925567626953),
                      ),
                    ),
                    const SizedBox(height: 37.58),
                    Transform.rotate(
                      angle: -1.17,
                      child: const SizedBox(
                        width: double.infinity,
                        height: 53.51,
                        child: FlutterLogo(size: 53.5147705078125),
                      ),
                    ),
                    const SizedBox(height: 37.58),
                    Transform.rotate(
                      angle: -0.33,
                      child: const SizedBox(
                        width: double.infinity,
                        height: 68.53,
                        child: FlutterLogo(size: 68.52622985839844),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 58,
            top: 419,
            child: SizedBox(
              width: 314,
              height: 55,
              child: Stack(
                children: [
                  SizedBox(
                    width: 314,
                    height: 55,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 314,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 314,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const FlutterLogo(size: 55),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned.fill(
                                child: FlutterLogo(size: 55),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    left: 58,
                    top: 17,
                    child: Text(
                      "yourname@gmail.com",
                      style: TextStyle(
                        color: Color(0xffa3a3a3),
                        fontSize: 14.33,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 22,
                    top: 20,
                    child: Container(
                      width: 19,
                      height: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffa3a3a3),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 108,
            top: 793,
            child: SizedBox(
              width: 58.10,
              height: 44,
              child: Stack(
                children: [
                  SizedBox(
                    width: 58.10,
                    height: 44,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 58.10,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.85),
                          ),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 58.10,
                                      height: 44,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.85),
                                      ),
                                      child: const FlutterLogo(size: 44),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned.fill(
                                child: FlutterLogo(size: 44),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 19.39,
                        height: 19.39,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const FlutterLogo(size: 19.38982391357422),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
