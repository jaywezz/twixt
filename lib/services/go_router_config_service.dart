import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/forgot_password_screen.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/login_screen.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/otp_screen.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/reset_password_screen.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/screens/reset_success_screen.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/home_screen.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/root_screen.dart';
import 'package:nested_navigation_gorouter_example/features/deliveries/screens/delivery_details.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/screens/confirm_stock_lift_screen.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/screens/inventory_management_screen.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/screens/product_catologue.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/screens/reconcile_screen.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/screens/stock_lift.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/screens/view_stock.dart';
import 'package:nested_navigation_gorouter_example/features/sales/cold_customers/screens/cold_customer_details.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/screens/add_lead_form.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/screens/lead_checkin_form.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/screens/create_order_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/screens/make_prospect.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/screens/prospect_details_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/screens/won_customer_details.dart';
import 'package:nested_navigation_gorouter_example/features/sales/widgets/drive_to_customer.dart';
import 'package:nested_navigation_gorouter_example/main.dart';
import 'package:nested_navigation_gorouter_example/features/reports/screens/reports_screen.dart';
import 'package:nested_navigation_gorouter_example/splash_screen.dart';

import '../features/sales/leads/screens/leads_details.dart';


final rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAuthKey = GlobalKey<NavigatorState>(debugLabel: 'auth');
final _shellNavigatorReportsKey = GlobalKey<NavigatorState>(debugLabel: 'reports');
final _shellNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _shellNavigatorLeadsKey = GlobalKey<NavigatorState>(debugLabel: 'sales');
final _shellNavigatorScheduleKey = GlobalKey<NavigatorState>(debugLabel: 'schedule');
final _shellNavigatorProfileKey = GlobalKey<NavigatorState>(debugLabel: 'profile');
enum AppRoutes{
  confirmStockLift,
}
final goRouter = GoRouter(
  redirect: (BuildContext context, GoRouterState state) async{
    // Replace this method depends on how you are managing your user's
    // Sign in status, then return the appropriate route you want to redirect to,
    // make sure your login/authentication bloc is provided at the top level
    // of your app
    // state.
    print("screen location: ${state.location}");
    return;
  },
  initialLocation: '/splash',
  // * Passing a navigatorKey causes an issue on hot reload:
  // * https://github.com/flutter/flutter/issues/113757#issuecomment-1518421380
  // * However it's still necessary otherwise the navigator pops back to
  // * root on hot reload
  navigatorKey: rootNavigatorKey,

  // debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: "/splash",
      name: SplashScreenPage.routeName,
      pageBuilder: (context, state) =>  const NoTransitionPage(
        child:SplashScreenPage(),
      ),
    ),
    GoRoute(path: '/login',
      pageBuilder: (context, state) => const NoTransitionPage(
        child: SignInScreen(),
      ),
      routes: [
        GoRoute(
          path: "forgot-password",
          name: ForgotPasswordScreen.routeName,
          pageBuilder: (context, state) =>  const NoTransitionPage(
            child: ForgotPasswordScreen(),
          ),
        ),
        GoRoute(
          path: "otp-screen",
          name: OTPScreen.routeName,
          pageBuilder: (context, state) => NoTransitionPage(
            child: OTPScreen(phoneNumber: state.extra!.toString(),),
          ),
        ),
        GoRoute(
          path: "reset-password",
          name: ResetPasswordScreen.routeName,
          pageBuilder: (context, state) =>  NoTransitionPage(
            child: ResetPasswordScreen(phoneNumber: state.extra!.toString(),),
          ),
          routes: const [

          ],
        ),
        GoRoute(
          path: "reset-success",
          name: ResetSuccesScreen.routeName,
          pageBuilder: (context, state) =>  const NoTransitionPage(
            child: ResetSuccesScreen(),
          ),
          routes: const [

          ],
        ),
      ]
    ),

    // Stateful navigation based on:
    // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHomeKey,
          routes: [
            GoRoute(
              path: "/dashBoard",
              name: HomeScreen.routeName,
              pageBuilder: (context, state) =>  const NoTransitionPage(
                child: RootScreen(label: "DashBoard"),
              ),
              routes:  [
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: 'inventory',
                  pageBuilder: (context, state) =>const NoTransitionPage(
                    child: InventoryScreen(),
                  ),
                  routes:  [
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      path: 'stock-lift',
                      builder: (context, state) => const StockLift(),
                      routes: [
                        GoRoute(
                          parentNavigatorKey: rootNavigatorKey,
                          path: 'confirm-stock',
                          name: AppRoutes.confirmStockLift.name,
                          builder: (context, state) => ConfirmStockLift(warehouse: (state.extra as Map<String, dynamic>)["warehouse"]),
                        ),
                      ]
                    ),
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      path: 'reconcile',
                      builder: (context, state) => const ReconcileItems(),
                    ),
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      path: 'view-stock',
                      builder: (context, state) => const ViewMyStock(),
                    ),
                  ],
                ),
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: 'reports',
                  pageBuilder: (context, state) =>NoTransitionPage(
                    child: ReportsScreen(),
                  ),
                  routes: const [
                    // GoRoute(
                    //   path: 'details',
                    //   builder: (context, state) => const DetailsScreen(label: 'B'),
                    // ),
                  ],
                ),
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: 'catalogue',
                  name: ProductCatalogueScreen.route,
                  pageBuilder: (context, state) =>const NoTransitionPage(
                    child: ProductCatalogueScreen(),
                  ),
                  routes: const [
                    // GoRoute(
                    //   path: 'details',
                    //   builder: (context, state) => const DetailsScreen(label: 'B'),
                    // ),
                  ],
                ),
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: 'reports',
                  pageBuilder: (context, state) =>NoTransitionPage(
                    child: ReportsScreen(),
                  ),
                  routes: const [
                    // GoRoute(
                    //   path: 'details',
                    //   builder: (context, state) => const DetailsScreen(label: 'B'),
                    // ),
                  ],
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorLeadsKey,
          routes: [
            // Shopping Cart
            GoRoute(
              path: '/sales',
              name: RootScreen.routeName,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: RootScreen(label: 'sales'),
              ),
              routes: [
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  name: DeliveryDetails.routeName,
                  path: 'delivery_details',
                  builder: (context, state) => DeliveryDetails(delivery: (state.extra as Map<String, dynamic>)["delivery"],),
                ),
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: 'leads-details',
                  builder: (context, state) => LeadsDetails(
                    lead: (state.extra as Map<String, dynamic>)["lead"],
                    isCheckedIn: (state.extra as Map<String, dynamic>)["isCheckedin"],),
                  routes: [
                    GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path: 'leads-checkin',
                        builder: (context, state) => LeadCheckinForm(lead: (state.extra as Map<String, dynamic>)["lead"],),
                    ),

                  ]
                ),
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: 'add-lead',
                  builder: (context, state) => const AddLeadsPage(),
                ),
                GoRoute(
                    parentNavigatorKey: rootNavigatorKey,
                    path: 'won-details',
                    name: WonCustomerDetails.routeName,
                    builder: (context, state) => WonCustomerDetails(
                      isRetailProspect: (state.extra as Map<String, dynamic>)["isRetail"],
                      prospect:  (state.extra as Map<String, dynamic>)["prospect"],
                      isCheckedIn: (state.extra as Map<String, dynamic>)["isCheckedIn"],
                    ),
                ),
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: 'details',
                  name: ProspectsPage.routeName,
                  builder: (context, state) => ProspectsPage(
                    isRetailProspect: (state.extra as Map<String, dynamic>)["isRetail"],
                    prospect:  (state.extra as Map<String, dynamic>)["prospect"],
                    isCheckedIn: (state.extra as Map<String, dynamic>)["isCheckedIn"],
                  ),
                  routes: [
                    GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path: 'make-prospect',
                        name: MakeProspect.route_name,
                        builder: (context, state) => MakeProspect(lead: (state.extra as Map<String, dynamic>)["lead"],),

                    ),
                  ]
                ),
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: 'cold-details',
                  builder: (context, state) => ColdCustomerDetails(
                    prospect:  (state.extra as Map<String, dynamic>)["customer"],
                  ),
                ),
                GoRoute(
                  parentNavigatorKey: rootNavigatorKey,
                  path: 'drive-to-customer',
                  builder: (context, state) =>  CustomerTrackingPage(
                    destination: (state.extra as Map<String, dynamic>)["destination"],
                    sourceLocation: (state.extra as Map<String, dynamic>)["source"],
                    shopName: (state.extra as Map<String, dynamic>)["shopName"],),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorScheduleKey,
          routes: [
            // Shopping Cart
            GoRoute(
              path: '/schedule',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: RootScreen(label: 'schedule'),
              ),
              routes: const [
                // GoRoute(
                //   path: 'details',
                //   builder: (context, state) => const DetailsScreen(label: 'B'),
                // ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorProfileKey,
          routes: [
            // Shopping Cart
            GoRoute(
              path: '/profile',
              pageBuilder: (context, state) => const NoTransitionPage(
                child: RootScreen(label: 'profile'),
              ),
              routes: const [
                // GoRoute(
                //   path: 'details',
                //   builder: (context, state) => const DetailsScreen(label: 'B'),
                // ),
              ],
            ),
          ],
        ),
      ],
    ),

  ],
);
