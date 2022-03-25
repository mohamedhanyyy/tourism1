import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism1/themes/colors.dart';
import 'package:tourism1/utils/paths/images_path.dart';
import 'package:tourism1/widgets/common_widgets/cutsom_text_field.dart';
import 'package:tourism1/widgets/common_widgets/pics.dart';

class PostDestination extends StatefulWidget {
  const PostDestination({Key? key}) : super(key: key);

  @override
  _PostDestinationState createState() => _PostDestinationState();
}

class _PostDestinationState extends State<PostDestination> {
  final _destinationNameController = TextEditingController();
  final _destinationBriefController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          children:  [

            const Text("data 000"),
            const Text("data 0000000"),
            _imagesBarWidget(),
            const Text("data 000"),
            const Text("data 0000000"),
            _videoBarWidget(),
            _formFieldsColumn()
          ],
        ),
      ) ,
    );
  }
  Widget _imagesBarWidget(){
    return Row(
      children: [
        ConstantPics.commonAssetImage(),
        const SizedBox(width: 5),
        _buildDottedImage()

      ],
    );
  }
  Widget _videoBarWidget(){
    return Row(
      children: [
        _buildDottedImage()

      ],
    );
  }
  _buildDottedImage(){
    return Container(
      height: 90.0,
      width: 90.0,
      decoration: DottedDecoration(
        color: ColorConstants.greyColor,
        shape: Shape.box,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(Icons.add),
          Text("+"),
        ],
      ),
    );
  }
  Widget _formFieldsColumn(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FormFieldsWidgets.normalTextField(
          controller: _destinationNameController ,
          hint: "Destination Name",
        ),
        SizedBox(height: 5,),
        FormFieldsWidgets.normalTextField(
          controller: _destinationBriefController ,
          hint: "Destination Brief",
          maxLines: 5
        ),
        SizedBox(height: 5,),

        FormFieldsWidgets.normalTextField(
          controller: _destinationNameController ,
          hint: "Destination Name",
        ),
        SizedBox(height: 5,),

        FormFieldsWidgets.normalTextField(
          controller: _destinationNameController ,
          hint: "Destination Ratio",
        ),
        SizedBox(height: 5,),

        FormFieldsWidgets.normalTextField(
          controller: _destinationNameController ,
          hint: "Destination Ratio",
        ),
        SizedBox(height: 5,),


      ],
    );
  }
}
