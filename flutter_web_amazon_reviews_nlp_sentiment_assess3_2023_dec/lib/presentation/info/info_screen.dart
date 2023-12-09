import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InfoScreen extends ConsumerStatefulWidget {
  const InfoScreen({super.key});

  @override
  ConsumerState<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends ConsumerState<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sentiment Analysis tool'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Welcome to our advanced sentiment analysis platform, where complex data from Amazon product reviews is transformed into insightful and actionable information. This tool represents the pinnacle of research and technological advancement, designed to accurately interpret emotions and opinions expressed in customer feedback.\n\n'
          'Our sentiment analysis model is the heart of this platform, developed through extensive testing and optimization. It employs the Random Forest algorithm, renowned for its accuracy and reliability in handling large datasets. The platform processes and analyzes vast volumes of text data, efficiently converting complex XML files into a structured and analyzable format.\n\n'
          "The user experience is central to our design. The website, built using the Flutter framework, offers a sleek and intuitive interface, ensuring ease of use and a seamless interaction. This approachability is matched by the tool's powerful backend, where the API, deployed on an AWS EC2 instance, provides robust and scalable cloud-based computing power.\n\n"
          'Hosted on the cloud, our sentiment analysis service is accessible from anywhere, offering flexibility and convenience to users. Whether you are a business seeking to understand consumer sentiment or a researcher delving into data analytics, our tool provides invaluable insights into customer opinions and behaviors.\n\n'
          'Discover the potential of data-driven decision-making with our advanced sentiment analysis tool, and harness the power of technology to tap into the pulse of customer feedback.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
