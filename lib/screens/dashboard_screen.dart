
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static const navy = Color(0xFF142D50);
  static const orange = Color(0xFFFF9138);
  static const background = Color(0xFFF5F7FB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 18, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: navy,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.shield_outlined,
                      color: orange,
                      size: 26,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CYBERWISE',
                          style: TextStyle(
                            color: navy,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.2,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Cybersecurity Learning',
                          style: TextStyle(
                            color: Color(0xFF7B8798),
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xFFFFE7D2),
                    child: Icon(
                      Icons.person_outline,
                      color: navy,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // Welcome banner with layered decoration
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: navy,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      right: -8,
                      top: 0,
                      child: Icon(
                        Icons.shield,
                        size: 105,
                        color: Color(0xFF263F60),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'HELLO, LEARNER!',
                          style: TextStyle(
                            color: orange,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Stay one step\nahead of scams.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            height: 1.2,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Build smarter and safer online habits.',
                          style: TextStyle(
                            color: Color(0xFFD5DFEC),
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 18),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: orange,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Continue Learning',
                            style: TextStyle(
                              color: navy,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Progress section
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Progress',
                    style: TextStyle(
                      color: navy,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    '60%',
                    style: TextStyle(
                      color: orange,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const LinearProgressIndicator(
                  value: 0.6,
                  minHeight: 10,
                  backgroundColor: Color(0xFFE1E7EF),
                  valueColor: AlwaysStoppedAnimation<Color>(orange),
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'You are making great progress!',
                style: TextStyle(
                  color: Color(0xFF7B8798),
                  fontSize: 12,
                ),
              ),

              const SizedBox(height: 25),

              // Learning modules
              const Text(
                'Learning Modules',
                style: TextStyle(
                  color: navy,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(height: 14),

              const _LearningCard(
                icon: Icons.email_outlined,
                title: 'Phishing Awareness',
                subtitle: 'Learn to identify suspicious messages',
                tag: 'LESSON 01',
                color: Color(0xFFFFE7D2),
              ),

              const SizedBox(height: 12),

              const _LearningCard(
                icon: Icons.quiz_outlined,
                title: 'Knowledge Quiz',
                subtitle: 'Test what you have learned',
                tag: 'ASSESSMENT',
                color: Color(0xFFE2ECFA),
              ),

              const SizedBox(height: 12),

              const _LearningCard(
                icon: Icons.checklist_outlined,
                title: 'Safety Checklist',
                subtitle: 'Practice safe online habits',
                tag: 'GUIDE',
                color: Color(0xFFE1F2E8),
              ),

              const SizedBox(height: 12),

              const _LearningCard(
                icon: Icons.play_circle_outline,
                title: 'Video Tutorials',
                subtitle: 'Watch and understand cyber threats',
                tag: 'WATCH',
                color: Color(0xFFEDE5FA),
              ),

              const SizedBox(height: 25),

              // Daily safety tip
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: const Color(0xFFE5EAF1),
                  ),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.lightbulb_outline,
                      color: orange,
                      size: 28,
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cyber Safety Tip',
                            style: TextStyle(
                              color: navy,
                              fontWeight: FontWeight.w800,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 7),
                          Text(
                            'Always check the sender and link '
                            'before clicking. When in doubt, '
                            'do not share your personal information.',
                            style: TextStyle(
                              color: Color(0xFF7B8798),
                              fontSize: 12,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Reusable static learning module card
class _LearningCard extends StatelessWidget {
  const _LearningCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.tag,
    required this.color,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final String tag;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
        border: Border.all(
          color: const Color(0xFFE5EAF1),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF142D50),
              size: 25,
            ),
          ),

          const SizedBox(width: 13),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF142D50),
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color(0xFF7B8798),
                    fontSize: 11,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  tag,
                  style: const TextStyle(
                    color: Color(0xFFFF9138),
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.7,
                  ),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFF9AA5B4),
            size: 15,
          ),
        ],
      ),
    );
  }
}
