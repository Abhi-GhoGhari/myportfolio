final Uri myurl = Uri.parse("https://github.com/Abhi-GhoGhari");

Future<void> launchmyurl(Uri myurl) async {
  try {
    await launchmyurl(myurl);
  } catch (err) {}
}
