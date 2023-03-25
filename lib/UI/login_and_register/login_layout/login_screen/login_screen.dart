import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          Positioned.fill(
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 432,
                height: 393,
                padding: const EdgeInsets.only(
                  left: 57,
                  right: 55,
                  top: 281,
                  bottom: 39,
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 320,
                            height: 73,
                            child: Stack(
                              children: const [
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "welcome back we missed you",
                                      style: TextStyle(
                                        color: Color(0xffa3a3a3),
                                        fontSize: 14.33,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Welcome Back!",
                                      style: TextStyle(
                                        color: Color(0xffefefef),
                                        fontSize: 40.33,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Positioned.fill(
                      child: FlutterLogo(size: 393),
                    ),
                  ],
                ),
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
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: -14,
            top: 230,
            child: Container(
              width: 470.40,
              height: 197,
              padding: const EdgeInsets.only(
                left: 380,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 90,
                    height: 197,
                    child: FlutterLogo(size: 90),
                  ),
                  const SizedBox(width: 173.43),
                  Transform.rotate(
                    angle: -1.17,
                    child: const SizedBox(
                      width: 65.15,
                      height: 53.51,
                      child: FlutterLogo(size: 53.5147705078125),
                    ),
                  ),
                  const SizedBox(width: 173.43),
                  Transform.rotate(
                    angle: -0.33,
                    child: const SizedBox(
                      width: 101.81,
                      height: 68.53,
                      child: FlutterLogo(size: 68.52622985839844),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 65,
            top: 609,
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
                      left: 126,
                      right: 127,
                      top: 11,
                      bottom: 12,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Sign in",
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
            left: 70,
            top: 677,
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
                  const SizedBox(width: 7),
                  const Text(
                    "Or continue with",
                    style: TextStyle(
                      color: Color(0xffb5b5b5),
                      fontSize: 11.25,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 7),
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
            left: 271.87,
            top: 712,
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
            left: 115,
            top: 712,
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
                          color: const Color(0xffffc107),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 1.06,
                              top: 11.66,
                              child: Container(
                                width: 15.13,
                                height: 7.73,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xff4caf50),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 9.69,
                              top: 7.76,
                              child: Container(
                                width: 9.69,
                                height: 9.13,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xff1976d2),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 1.12,
                              top: 0,
                              child: Container(
                                width: 15.18,
                                height: 7.52,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xffff3d00),
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
            left: 193.44,
            top: 712,
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
          Positioned(
            left: 58,
            top: 409,
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
                    left: 58,
                    top: 17,
                    child: Text(
                      "Username",
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
            top: 376,
            child: Text(
              "Username",
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
            top: 476,
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
            top: 476,
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
            left: 272,
            top: 568,
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: Color(0xffa3a3a3),
                fontSize: 11.33,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            left: 59,
            top: 503,
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
                    left: 279,
                    top: 22,
                    child: Container(
                      width: 17.49,
                      height: 14.11,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
