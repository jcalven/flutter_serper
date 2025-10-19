# Documentation Guide

This document explains how to generate and maintain the API documentation for the flutter_serper package.

## Overview

The flutter_serper package uses [dartdoc](https://pub.dev/packages/dartdoc) to automatically generate comprehensive API documentation from the inline documentation comments in the source code.

## Generating Documentation Locally

### Quick Start

Run the documentation generation script:

```bash
./tool/generate_docs.sh
```

This will:
1. Install/update dartdoc if needed
2. Generate complete API documentation
3. Output the results to `doc/api/`
4. Show documentation statistics

### View Documentation

After generation, open the documentation in your browser:

```bash
# macOS
open doc/api/index.html

# Linux
xdg-open doc/api/index.html

# Windows
start doc/api/index.html
```

### Manual Generation

You can also generate documentation manually:

```bash
# Install dartdoc globally
dart pub global activate dartdoc

# Generate documentation
dart pub global run dartdoc --output doc/api
```

## Automated Documentation

### GitHub Actions Workflow

The repository includes a GitHub Actions workflow (`.github/workflows/documentation.yml`) that:

1. **Automatically generates documentation** on every push to `main` branch
2. **Uploads documentation artifacts** for pull requests
3. **Deploys to GitHub Pages** for public access at: `https://jcalven.github.io/flutter_serper/`

### Triggering Documentation Build

Documentation is automatically rebuilt when:
- Code is pushed to the `main` branch
- Files in `lib/` are modified
- `dartdoc_options.yaml` or `pubspec.yaml` change
- Manually triggered via GitHub Actions UI

## Configuration

### dartdoc_options.yaml

The `dartdoc_options.yaml` file controls documentation generation:

```yaml
dartdoc:
  categoryOrder:        # Order of categories in documentation
  linkTo:              # External documentation links
  exclude:             # Files to exclude from documentation
  nodoc:               # Symbols to exclude from documentation
  showUndocumentedCategories: true
```

### Customization

To customize the documentation:

1. Edit `dartdoc_options.yaml` to change settings
2. Update inline documentation in source files
3. Run `./tool/generate_docs.sh` to preview changes

## Documentation Best Practices

### Writing Good Doc Comments

```dart
/// Brief summary (single line, no period needed)
///
/// Detailed description with multiple paragraphs if needed.
/// 
/// Use [ClassName] to reference other symbols.
/// Use `code` for inline code.
///
/// Example:
/// ```dart
/// final result = await serper.search(query);
/// ```
///
/// Parameters:
/// - [param1]: Description of param1
/// - [param2]: Description of param2
///
/// Returns a [ReturnType] that represents...
///
/// Throws [ExceptionType] when...
class MyClass {
  // Implementation
}
```

### Documentation Templates

The package uses macro templates (e.g., `{@macro flutter_serper.results.title}`) to maintain consistent documentation across similar fields.

### Checking Documentation Quality

Run the following to check for documentation warnings:

```bash
dart pub global run dartdoc --no-generate-docs
```

## GitHub Pages Setup

To enable GitHub Pages for your documentation:

1. Go to repository Settings → Pages
2. Set Source to "Deploy from a branch"
3. Select branch: `gh-pages` and folder: `/` (root)
4. Save and wait for deployment

The workflow will automatically:
- Create the `gh-pages` branch if it doesn't exist
- Deploy new documentation on each push to `main`
- Update the site at `https://jcalven.github.io/flutter_serper/`

## Troubleshooting

### Documentation Generation Fails

1. Ensure all dependencies are installed: `dart pub get`
2. Check for syntax errors: `dart analyze`
3. Review dartdoc warnings in the output
4. Verify `dartdoc_options.yaml` is valid YAML

### Missing Documentation

If symbols are missing from documentation:
1. Check if they're in the `exclude` list in `dartdoc_options.yaml`
2. Ensure they're exported in `lib/flutter_serper.dart`
3. Check if they're marked with `@nodoc` annotation

### GitHub Pages Not Updating

1. Check GitHub Actions logs for deployment errors
2. Verify repository has Pages enabled in settings
3. Ensure `gh-pages` branch exists and has content
4. Wait a few minutes for GitHub Pages cache to refresh

## Resources

- [dartdoc documentation](https://pub.dev/packages/dartdoc)
- [Effective Dart: Documentation](https://dart.dev/guides/language/effective-dart/documentation)
- [pub.dev documentation best practices](https://dart.dev/guides/libraries/writing-package-pages)
