import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested_navigation_gorouter_example/features/user_checkin/provider/user_checkin_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class UserCheckinButtonWidget extends ConsumerStatefulWidget {
  const UserCheckinButtonWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<UserCheckinButtonWidget> createState() => _UserCheckinButtonWidgetState();
}

class _UserCheckinButtonWidgetState extends ConsumerState<UserCheckinButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ref.watch(checkinStatusProvider).when(data: (data){
      print(data);
      return ref.watch(checkinNotifier) is AsyncLoading<void>
          ?const Center(child: AnimatedCircularProgressIndicator())
          :data !=null?Container(
              decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle
              ),
              width:40.w,
              height:40.w,
              child: const Icon(Icons.check_sharp, color: Colors.white,))
          :FullWidthButton(
            color: Styles.appPrimaryColor,
            btnheight: 30,
            width:30.w,
            action: ()async{
              await ref.watch(checkinNotifier.notifier).userCheckin(context);
              ref.refresh(checkinStatusProvider);
              setState(() {});
              setState(() {});

            },
            child: Text("Check In", style: Styles.heading3(context).copyWith(color: Colors.white),
          ));
    }, error: (e,s){
      return Text("Error", style: Styles.heading3(context),);
    }, loading: (){
      return const Center(child: AnimatedCircularProgressIndicator());
    });

  }
}
