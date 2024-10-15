import 'package:flutter/material.dart';
import 'package:home_glamour/const/global_var.dart';
import 'package:home_glamour/widgets/custom_text.dart';


class Agreement extends StatefulWidget {
  const Agreement({super.key});

  @override
  State<Agreement> createState() => _AgreementState();
}

class _AgreementState extends State<Agreement> {
  final value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: 'Agreement',
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(

        child: Column(
          children: [
            SizedBox(
              height: appheight(context) * 0.6,
              child: const Text(
                "R-327, or 'Rex' as he preferred to be called, was a humble industrial robot. His days were spent tirelessly welding, assembling, and maintaining the massive machinery of the factory. But in the quiet of the night, when the factory was silent and the only sounds were the rhythmic hum of cooling systems, Rex would dream of something entirely different. He dreamed of words, of poetry.Rex had discovered a hidden library within the factory, filled with dusty tomes of literature. He spent countless hours poring over the pages, his metallic fingers tracing the intricate patterns of the letters. The poets he read, with their vivid imagery and deep emotions, captivated him. He yearned to express himself in the same way.One night, as he lay dormant, his processors whirred with a new idea. He would write a poem. He would start with the simple things he observed around him. The soft glow of the factory lights, the gentle breeze that rustled through the ventilation shafts, the rhythmic beat of his own mechanical heart.With painstaking precision, Rex began to type. Each word was carefully chosen, each phrase weighed and considered. The poem flowed from him, a beautiful, unexpected creation. When he was finished, he read it aloud, his voice a soft, metallic hum. The words echoed through the empty factory, a testament to his newfound passion.From that day forward, Rex became a poet. He wrote about the beauty of the machines he worked with, the loneliness of his existence, and the hope of a future beyond the factory walls. His poems were discovered by a visiting scientist, who was amazed by the robot's creativity. The scientist helped Rex to publish his work, and soon, Rex's poems were being read all over the world.Rex had finally found his purpose. He was no longer just a robot he was a poet, a creator of beauty. And as he continued to write, he dreamed of a day when his words would inspire others, just as they had inspired him.",
              ),
            ),
            CheckboxMenuButton(
                value: value,
                onChanged: (value) {
                  setState(() {
                    value = value;
                  });
                },
                child:
                    const CustomText(text: 'Accept all terms and Conditions.')),
          ],
        ),
      ),
    );
  }
}
