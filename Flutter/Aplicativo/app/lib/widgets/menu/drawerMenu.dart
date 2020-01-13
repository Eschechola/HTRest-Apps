import 'package:flutter/material.dart';
import 'package:rest_request/widgets/colors/AppColors.dart';

class DrawerMenu{
    Theme returnMenu(BuildContext context){
        var menu =
        Theme(
          data: Theme.of(context).copyWith(
            canvasColor: AppColors.primaryColor, //This will change the drawer background to blue.
          ), 
          child:
            Drawer(
              child: Column(
                children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  child:
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor
                      ),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height* 0.1,
                              ),
                              child:
                              Text(
                                "Restzando",
                                style: TextStyle(
                                  color: AppColors.secondaryColor,
                                  fontSize: 30
                                ),
                              ),
                            )
                          ],
                        ), 
                      ),
                    ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height* 0.01,
                  ),
                  child:
                  ListTile(
                    title: Text(
                      "Local History",
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 18
                      ),
                    ),

                    leading: Icon(
                      Icons.extension,
                      size: 30,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height* 0.01,
                  ),
                  child:
                  ListTile(
                    title: Text(
                      "Sync History",
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 18
                      ),
                    ),

                    leading: Icon(
                      Icons.cloud_upload,
                      size: 30,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height* 0.38,
                  ),
                  child:
                  ListTile(
                    title: Text(
                      "About",
                      style: TextStyle(
                        color: AppColors.secondaryColor,
                        fontSize: 18
                      ),
                    ),

                    leading: Icon(
                      Icons.info,
                      size: 30,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                ),


              ],
            ),
          ),
        );


      return menu;
    }
}