// ignore_for_file: public_member_api_docs
import 'dart:io';

/// Increments the version number in pubspec.yaml
void main(List<String> args) {
  final file = File('pubspec.yaml');
  final contents = file.readAsStringSync();

  final versionLine = RegExp(
    r'version: (\d+)\.(\d+)\.(\d+)(?:-([a-zA-Z0-9.-]+))?',
  ).firstMatch(contents);
  if (versionLine == null) {
    stderr.writeln('Could not find version in pubspec.yaml');
    exit(1);
  }

  final major = int.parse(versionLine.group(1)!);
  final minor = int.parse(versionLine.group(2)!);
  final patch = int.parse(versionLine.group(3)!);
  final preRelease = versionLine.group(4);

  String newVersion;
  if (args.contains('--major')) {
    newVersion = '${major + 1}.0.0';
  } else if (args.contains('--minor')) {
    newVersion = '$major.${minor + 1}.0';
  } else if (args.contains('--patch')) {
    newVersion = '$major.$minor.${patch + 1}';
  } else if (args.contains('--pre-release')) {
    if (preRelease == null) {
      newVersion = '$major.$minor.$patch-beta.1';
    } else if (preRelease.startsWith('beta.')) {
      final preReleaseNumber = int.parse(preRelease.substring(5));
      newVersion = '$major.$minor.$patch-beta.${preReleaseNumber + 1}';
    } else {
      newVersion = '$major.$minor.$patch-beta.1';
    }
  } else if (args.contains('--release')) {
    if (preRelease != null) {
      // If it's currently a pre-release, make it a regular release
      newVersion = '$major.$minor.$patch';
    } else {
      stderr.writeln('Current version is already a release version');
      exit(1);
    }
  } else {
    // Default is patch increment
    newVersion = '$major.$minor.${patch + 1}';
  }

  final newContents = contents.replaceAll(
    RegExp(r'version: \d+\.\d+\.\d+(?:-[a-zA-Z0-9.-]+)?'),
    'version: $newVersion',
  );

  file.writeAsStringSync(newContents);

  // Also update the version in the CHANGELOG.md
  final changelog = File('CHANGELOG.md');
  final changelogContents = changelog.readAsStringSync();

  final newChangelogContents =
      '## $newVersion\n\n- TODO: Add release notes\n\n$changelogContents';
  changelog.writeAsStringSync(newChangelogContents);

  print('Updated version to $newVersion');
}
