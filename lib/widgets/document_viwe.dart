import 'package:flutter/material.dart';

class DocumentView extends StatelessWidget {
	const DocumentView({super.key});

	final List<Map<String, String>> documents = const [
		{
			'name': 'CV.pdf',
			'type': 'PDF',
		},
		{
			'name': 'Portfolio.docx',
			'type': 'Word',
		},
		{
			'name': 'Certificate.png',
			'type': 'Image',
		},
	];

	@override
	Widget build(BuildContext context) {
		return ListView.builder(
			itemCount: documents.length,
			itemBuilder: (context, index) {
				final doc = documents[index];
				return Padding(
					padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
					child: Card(
						elevation: 3,
						shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
						child: ListTile(
							leading: Icon(Icons.insert_drive_file, color: Colors.blueAccent),
							title: Text(doc['name'] ?? '', style: TextStyle(fontWeight: FontWeight.bold)),
							subtitle: Text(doc['type'] ?? ''),
							trailing: Row(
								mainAxisSize: MainAxisSize.min,
								children: [
									IconButton(
										icon: Icon(Icons.download, color: Colors.green),
										onPressed: () {
											ScaffoldMessenger.of(context).showSnackBar(
												SnackBar(content: Text('تحميل المستند: ${doc['name']}')),
											);
										},
									),
									IconButton(
										icon: Icon(Icons.preview, color: Colors.orange),
										onPressed: () {
											ScaffoldMessenger.of(context).showSnackBar(
												SnackBar(content: Text('معاينة المستند: ${doc['name']}')),
											);
										},
									),
								],
							),
						),
					),
				);
			},
		);
	}
}
