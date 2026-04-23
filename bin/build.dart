import 'dart:io';
void main() async {
  // Build the app
  await Process.run("dart", ["run", "webdev", "build"]);
  // Grab the output dir
  final buildDir = Directory("build");

  final outDir = Directory("docs");

  if (await outDir.exists()) {
    await outDir.delete(recursive: true);
  }
  //rename it to "docs" for Github pages.
  await buildDir.rename("docs");
}