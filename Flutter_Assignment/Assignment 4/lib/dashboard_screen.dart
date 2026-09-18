import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // LayoutBuilder evaluates constraint changes dynamically (resizing / orientation)
    return LayoutBuilder(
      builder: (context, constraints) {
        final double maxWidth = constraints.maxWidth;
        final bool isMobile = maxWidth < 600;
        final bool isTablet = maxWidth >= 600 && maxWidth < 1100;
        final bool isDesktop = maxWidth >= 1100;

        return Scaffold(
          appBar: AppBar(
            title: const Text('Enterprise Dashboard'),
            elevation: 1,
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: CircleAvatar(
                  radius: 16,
                  child: Text('AD', style: TextStyle(fontSize: 12)),
                ),
              ),
            ],
          ),
          // Drawer for Mobile
          drawer: isMobile ? const MobileDrawer() : null,
          body: Row(
            children: [
              // 1. Tablet Navigation: Slim NavigationRail
              if (isTablet)
                NavigationRail(
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (index) {
                    setState(() => _selectedIndex = index);
                  },
                  labelType: NavigationRailLabelType.selected,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.dashboard_outlined),
                      selectedIcon: Icon(Icons.dashboard),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.analytics_outlined),
                      selectedIcon: Icon(Icons.analytics),
                      label: Text('Analytics'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.people_outline),
                      selectedIcon: Icon(Icons.people),
                      label: Text('Users'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.settings_outlined),
                      selectedIcon: Icon(Icons.settings),
                      label: Text('Settings'),
                    ),
                  ],
                ),

              // 2. Desktop Navigation: Full NavigationDrawer Sidebar
              if (isDesktop)
                NavigationDrawer(
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (index) {
                    setState(() => _selectedIndex = index);
                  },
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(28, 16, 16, 10),
                      child: Text('Dashboard Menu', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    NavigationDrawerDestination(
                      icon: Icon(Icons.dashboard_outlined),
                      selectedIcon: Icon(Icons.dashboard),
                      label: Text('Home'),
                    ),
                    NavigationDrawerDestination(
                      icon: Icon(Icons.analytics_outlined),
                      selectedIcon: Icon(Icons.analytics),
                      label: Text('Analytics'),
                    ),
                    NavigationDrawerDestination(
                      icon: Icon(Icons.people_outline),
                      selectedIcon: Icon(Icons.people),
                      label: Text('Users'),
                    ),
                    NavigationDrawerDestination(
                      icon: Icon(Icons.settings_outlined),
                      selectedIcon: Icon(Icons.settings),
                      label: Text('Settings'),
                    ),
                  ],
                ),

              // 3. Main Adaptive Body
              Expanded(
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(isMobile ? 12.0 : 20.0),
                    child: CustomScrollView(
                      slivers: [
                        // Dynamic Metrics Grid
                        SliverGrid(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: maxWidth < 600
                                ? 1
                                : (maxWidth < 900
                                    ? 2
                                    : (maxWidth < 1400 ? 4 : 4)),
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: isMobile ? 2.2 : (isTablet ? 1.8 : 1.6),
                          ),
                          delegate: SliverChildListDelegate(
                            const [
                              MetricCard(
                                title: 'Total Revenue',
                                value: '\$128,430',
                                trend: '+14.2%',
                                isPositive: true,
                                icon: Icons.attach_money,
                                color: Colors.blue,
                              ),
                              MetricCard(
                                title: 'Active Subscriptions',
                                value: '3,842',
                                trend: '+5.1%',
                                isPositive: true,
                                icon: Icons.subscriptions_outlined,
                                color: Colors.indigo,
                              ),
                              MetricCard(
                                title: 'Bounce Rate',
                                value: '24.3%',
                                trend: '-3.8%',
                                isPositive: true,
                                icon: Icons.arrow_outward,
                                color: Colors.amber,
                              ),
                              MetricCard(
                                title: 'Server Uptime',
                                value: '99.98%',
                                trend: 'Optimal',
                                isPositive: true,
                                icon: Icons.dns_outlined,
                                color: Colors.teal, // Fixed invalid color here
                              ),
                            ],
                          ),
                        ),

                        const SliverToBoxAdapter(child: SizedBox(height: 20)),

                        // Main Content split into responsive layout
                        SliverToBoxAdapter(
                          child: isMobile || isTablet
                              ? const Column(
                                  children: [
                                    AnalyticsPanel(),
                                    SizedBox(height: 16),
                                    ActivityFeedPanel(),
                                  ],
                                )
                              : const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(flex: 3, child: AnalyticsPanel()),
                                    SizedBox(width: 16),
                                    Expanded(flex: 2, child: ActivityFeedPanel()),
                                  ],
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// Mobile Drawer
class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('Admin User'),
            accountEmail: Text('admin@company.com'),
            currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
          ),
          ListTile(leading: Icon(Icons.dashboard), title: Text('Home')),
          ListTile(leading: Icon(Icons.analytics), title: Text('Analytics')),
          ListTile(leading: Icon(Icons.people), title: Text('Users')),
          ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
        ],
      ),
    );
  }
}

// Adaptive Metric Card
class MetricCard extends StatelessWidget {
  final String title;
  final String value;
  final String trend;
  final bool isPositive;
  final IconData icon;
  final MaterialColor color;

  const MetricCard({
    super.key,
    required this.title,
    required this.value,
    required this.trend,
    required this.isPositive,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon, color: color.shade700, size: 22),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: isPositive ? Colors.green.shade50 : Colors.red.shade50,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    trend,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: isPositive ? Colors.green.shade700 : Colors.red.shade700,
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  value,
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Text(
              title,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

// Analytics Panel
class AnalyticsPanel extends StatelessWidget {
  const AnalyticsPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Revenue Performance',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 220,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.show_chart, size: 64, color: Colors.indigo.shade300),
                    const SizedBox(height: 8),
                    Text(
                      'Chart Visualization Placeholder',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Activity Feed Panel
class ActivityFeedPanel extends StatelessWidget {
  const ActivityFeedPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recent Logs',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              separatorBuilder: (context, index) => const Divider(height: 16),
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    child: const Icon(Icons.security, size: 18),
                  ),
                  title: Text('API Access Key #${200 + index}'),
                  subtitle: const Text('Triggered from IP 192.168.1.1'),
                  trailing: const Text('2m ago', style: TextStyle(fontSize: 11, color: Colors.grey)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}