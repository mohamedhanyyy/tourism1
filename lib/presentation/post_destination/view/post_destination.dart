import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/cupertino.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism1/presentation/post_destination/controller/post_destination_controller.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/themes/styles.dart';
import 'package:tourism1/widgets/common_widgets/cutsom_text_field.dart';
import 'package:tourism1/widgets/common_widgets/pics.dart';

class PostDestinationView extends GetView<PostDestinationController> {
  final _destinationNameController = TextEditingController();
  final _destinationBriefController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: ColorConstants.blackColor
        ),
        title: const Text('Post Destination',style: ConstantTextStyles.headLineTextStyle),

      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // const Text("data 000"),
              // const Text("data 0000000"),
              _imagesBarWidget(),
              // const Text("data 000"),
              // const Text("data 0000000"),
              const SizedBox(height: 20,),
              _videoBarWidget(),
              const SizedBox(height: 10,),

              _formFieldsColumn(),

            ],
          ),
        ),
      ),
    );
  }

  Widget _imagesBarWidget() {
    return Row(
      children: [
        ConstantPics.commonAssetImage(),
        const SizedBox(width: 10),
        _buildDottedImage()
      ],
    );
  }

  Widget _videoBarWidget() {
    return Row(
      children: [_buildDottedImage(title: 'Upload Video')],
    );
  }


  _buildDottedImage({String title = 'Upload Another Image' }) {
    return Container(
      height: 90.0,
      width: 90.0,
      decoration: DottedDecoration(
        color: ColorConstants.greyColor,
        shape: Shape.box,
        borderRadius: BorderRadius.circular(10),
      ),
      child:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const Icon(Icons.add,size: 25,color:  ColorConstants.greenColor,),
            Text(title,
            textAlign: TextAlign.center,
            style: ConstantTextStyles.regularNineGreenDefaultTextStyle),

          ],
        ),));
  }

  Widget _formFieldsColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FormFieldsWidgets.normalTextField(
          controller: _destinationNameController,
          hint: "Destination Name",
        ),
        const SizedBox(
          height: 5,
        ),
        FormFieldsWidgets.normalTextField(
            controller: _destinationBriefController,
            hint: "Destination Brief",
            maxLines: 5),
        const SizedBox(
          height: 5,
        ),
        FormFieldsWidgets.normalTextField(
          controller: _destinationNameController,
          hint: "Destination Name",

        ),
        const SizedBox(
          height: 5,
        ),
        FormFieldsWidgets.normalTextField(
          controller: _destinationNameController,
          hint: "Destination Ratio",
        ),
        const SizedBox(
          height: 5,
        ),
        FormFieldsWidgets.normalTextField(
          controller: _destinationNameController,
          hint: "Destination Ratio",
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
