
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const navy = Color(0xFF142D50);
  static const orange = Color(0xFFFF9138);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // App logo and name
              Row(
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: navy,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: const Icon(
                      Icons.shield_outlined,
                      color: orange,
                      size: 25,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'CYBERWISE',
                    style: TextStyle(
                      color: navy,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.3,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 26),

              // Hero image with overlay label
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/cyber_hero.png',
                      width: double.infinity,
                      height: 245,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      left: 20,
                      bottom: 18,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 7,
                        ),
                        decoration: BoxDecoration(
                          color: orange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'STAY SAFE ONLINE',
                          style: TextStyle(
                            color: navy,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.6,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              const Text(
                'Your digital safety\nstarts here.',
                style: TextStyle(
                  fontSize: 31,
                  height: 1.18,
                  fontWeight: FontWeight.w800,
                  color: navy,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Learn how to spot phishing, protect your '
                'accounts, and build safer online habits.',
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  color: Color(0xFF66758A),
                ),
              ),

              const SizedBox(height: 25),

              const _StaticField(
                label: 'Email address',
                hint: 'name@example.com',
                icon: Icons.mail_outline,
              ),

              const SizedBox(height: 14),

              const _StaticField(
                label: 'Password',
                hint: 'Enter your password',
                icon: Icons.lock_outline,
              ),

              const SizedBox(height: 22),

              // Static sign-in button
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 17),
                decoration: BoxDecoration(
                  color: orange,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                    color: navy,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),

              const SizedBox(height: 17),

              const Center(
                child: Text(
                  'New to Cyberwise?  Create an account',
                  style: TextStyle(
                    color: navy,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Reusable static input field
class _StaticField extends StatelessWidget {
  const _StaticField({
    required this.label,
    required this.hint,
    required this.icon,
  });

  final String label;
  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            color: Color(0xFF142D50),
            fontSize: 13,
          ),
        ),

        const SizedBox(height: 8),

        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: const Color(0xFFE1E7EF),
            ),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: const Color(0xFF8391A4),
                size: 20,
              ),
              const SizedBox(width: 10),
              Text(
                hint,
                style: const TextStyle(
                  color: Color(0xFF9AA5B4),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
