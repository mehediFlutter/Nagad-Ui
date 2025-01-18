import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nagad_ui/screen/widgets/app_bar/custom_app_bar.dart';
import 'package:nagad_ui/submit_bottom/submit_bottom.dart';

import '../../../../data/getx_controller/const/const.dart';
import '../../../../widget/snack_bar/custom_snack_bar.dart';
import '../scan_id/scan_id_screen.dart';

class AccountType extends StatefulWidget {
  const AccountType({super.key});

  @override
  State<AccountType> createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
    void _showSnackBar(String text) {
    CustomSnackBar.show(context,text);
  }
  String? selectedAccountType;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Account Type'),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              height50,
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 4),
                  ),
                  child: SvgPicture.asset('assets/images/account_type.svg')),
              height30,
              Text(
                "Account Type",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 25),
              ),
              height10,
              Text("Please select what type of account you want to open",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.grey)),
              height30,
              Expanded(
                child: ListView.builder(
                  itemCount: accountType.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 30,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Radio<String>(
                                activeColor: Theme.of(context).primaryColor,
                                value: accountType[index],
                                groupValue: selectedAccountType,
                                onChanged: (value) {
                                  setState(() {
                                    selectedAccountType = value;
                                  });
                                },
                              ),
                              Text(accountType[index], style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          color:  selectedAccountType == accountType[index]
                                              ? Theme.of(context).primaryColor
                                              : Colors.black,
                                          fontWeight: FontWeight.bold),),
                            ],
                          ),
                          const SizedBox(),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SubmitBottom(
                isEnable: selectedAccountType != null,
                onPressed: () {
                  if (selectedAccountType != null) {
                    if (kDebugMode) {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanIdScreen()));
                    }
                  } else {
                    _showSnackBar('Please select account type');
                  
                
                  }
                },
                text: "NEXT",
              ),
              Expanded(child: const SizedBox()),
              Expanded(child: const SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}


