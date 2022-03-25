import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tourism1/widgets/common%20widgets/cutsom_text_field.dart';

import '../themes/app_sizes.dart';
import '../themes/colors.dart';
import '../themes/styles.dart';
import '../utils/paths/icons_path.dart';
import 'common widgets/sized_box.dart';

class PostWidget extends StatefulWidget {
  @override
  _PostWidgetState createState() => _PostWidgetState();
  final String dummyLocation;
  final String dummyPostDescription;
   final String dummyUserName;
  final String dummyUserImage;
  final String dummyPostImage;
   TextEditingController? commentCtrl;
   bool isComment=false;


  PostWidget({
    required this.dummyLocation,
    required this.dummyPostDescription,
    required this.dummyUserName,
    required this.dummyUserImage,
    required this.dummyPostImage,
    required this.isComment,
     this.commentCtrl,
  });
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: AppPadding.fifteenPadding),
      child: Container(
        decoration: BoxDecoration(
            color: ColorConstants.whiteColor
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // image of the user & Type & name & uploading time
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Row(
                children: [
                  CircleAvatar(backgroundImage: AssetImage(widget.dummyUserImage),),
                  fiveWidthSizedBox,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(

                          text: TextSpan(text: '${widget.dummyUserName} ',
                              style: ConstantTextStyles.boldSixteenDefaultTextStyle,
                              children: [
                                TextSpan(text: 'Uploaded ',
                                    style: ConstantTextStyles.hintLightGrayTextStyle
                                ),
                                TextSpan(text: 'photos in  ',
                                    style: ConstantTextStyles.regularFourteenDefaultTextStyle
                                ),
                                TextSpan(text: 'Dubai ',

                                    style: ConstantTextStyles.semiBoldFourteenGreenDefaultTextStyle
                                )
                              ]
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        fiveHeightSizedBox,
                        Text('Tour Guide . 2 minutes ago',
                          style: ConstantTextStyles.hintLightGrayTextStyle,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            fifteenHeightSizedBox,
            //Image or Video of post
            Container(
              height: Get.height*.3,
              width: Get.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.dummyPostImage),
                    fit: BoxFit.fill
                ),
              ),
            ),
            tenHeightSizedBox,
            //Like Comment and share icons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        SvgPicture.asset(ConstantIcons.likeGreen,color: ColorConstants.greenColor),
                        fifteenWidthSizedBox,
                        SvgPicture.asset(ConstantIcons.commentBlack),
                      ],
                    ),
                  ),
                  Container(
                    child: Icon(Icons.share_outlined,color: ColorConstants.mediumGreyColor),

                  ),


                ],
              ),
            ),
            fifteenHeightSizedBox,
            // Likes Number
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding),
              child: Text('233 Likes',
                style: ConstantTextStyles.regularFourteenDefaultTextStyle,
              ),
            ),
            fifteenHeightSizedBox,
            // Name of the user
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding),
              child: Text('${widget.dummyUserName} ',
                style: ConstantTextStyles.boldSixteenDefaultTextStyle,
              ),
            ),
            tenHeightSizedBox,
            // address and Rating of the user
            Padding(
            //  padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding),
              padding: const EdgeInsetsDirectional.only(end: AppPadding.fifteenPadding,start: AppPadding.tenPadding),
              child: Row(
                children: [
                  SvgPicture.asset(ConstantIcons.locationGrey,

                    color: ColorConstants.greenColor,),
                  fiveWidthSizedBox,
                  Flexible(
                    child: Text(widget.dummyLocation,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style:ConstantTextStyles.normalFourteenGreenDefaultTextStyle.copyWith(
                          decoration: TextDecoration.underline,
                        )
                    ),
                  ),
                  fiftyWidthSizedBox,
                  SvgPicture.asset(ConstantIcons.ratingGreen),

                ],
              ),
            ),
            twentyHeightSizedBox,
            // Name of the place
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding),
              child: Text('Sahara Desert',
                style: ConstantTextStyles.boldTwelvePoppinsTextStyle,
              ),
            ),

            // description of post
            tenHeightSizedBox,
            // Likes Number
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding),
              child: Text(widget.dummyPostDescription,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: ConstantTextStyles.regularFourteenDefaultTextStyle,
              ),
            ),
            tenHeightSizedBox,
            // Time of the description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding),
              child: Text('1h ago',
                style: ConstantTextStyles.hintLightGrayTextStyle,
              ),
            ),
            tenHeightSizedBox,
            // Row of comment and view all comment
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding),                           child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Comments',
                  style: ConstantTextStyles.semiBoldSixteenDefaultTextStyle,
                ),
                Text('view all 60 comments',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style:ConstantTextStyles.semiBoldSixteenGreenDefaultTextStyle.copyWith(
                        color: ColorConstants.greenColor.withOpacity(.5)
                    )
                ),
              ],
            ),
            ),
            tenHeightSizedBox,
            //comments with user name and image
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(backgroundImage: AssetImage(widget.dummyUserImage),),

                      fiveWidthSizedBox,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(

                              text: TextSpan(text:'${widget.dummyUserName} ',
                                  style: ConstantTextStyles.mediumFourteenBlackDefaultTextStyle,
                                  children: [

                                    TextSpan(text: widget.dummyPostDescription,
                                        style: ConstantTextStyles.regularFourteenDefaultTextStyle
                                    ),

                                  ]
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                  fiveHeightSizedBox,
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 45),
                    child: Text('1h ago',
                      style: ConstantTextStyles.hintLightGrayTextStyle,

                    ),
                  )
                ],
              ),
            ),
            tenHeightSizedBox,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(backgroundImage: AssetImage(widget.dummyUserImage),),

                      fiveWidthSizedBox,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(

                              text: TextSpan(text: '${widget.dummyUserName} ',
                                  style: ConstantTextStyles.mediumFourteenBlackDefaultTextStyle,
                                  children: [

                                    TextSpan(text: widget.dummyPostDescription,
                                        style: ConstantTextStyles.regularFourteenDefaultTextStyle
                                    ),

                                  ]
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                  fiveHeightSizedBox,
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 45),
                    child: Text('1h ago',
                      style: ConstantTextStyles.hintLightGrayTextStyle,

                    ),
                  )
                ],
              ),
            ),
            // user image and text field of comment
            widget.isComment?Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.fifteenPadding,vertical: AppPadding.tenPadding),
              child: Row(
                children: [
                  CircleAvatar(backgroundImage: AssetImage(widget.dummyUserImage),),

                  fiveWidthSizedBox,
                  Expanded(
                    child: CustomCommentTextField(
                      controller: widget.commentCtrl,
                      hintText: 'write a comment',
                      fillColor: ColorConstants.whiteColor,
                    ),
                  )
                ],
              )
            ):SizedBox()
          ],
        ),
      ),
    );
  }
}