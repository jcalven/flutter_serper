#!/bin/bash
# Generate dartdoc documentation for flutter_serper package

set -e

echo "🔧 Installing/updating dartdoc..."
dart pub global activate dartdoc

echo "📚 Generating documentation..."
dart pub global run dartdoc \
  --output doc/api \
  --exclude 'dart:async,dart:collection,dart:convert,dart:core,dart:developer,dart:io,dart:isolate,dart:math,dart:typed_data'

echo "✅ Documentation generated successfully!"
echo "📂 Output directory: doc/api"
echo "🌐 Open doc/api/index.html in your browser to view the documentation"

# Check if documentation was generated successfully
if [ -f "doc/api/index.html" ]; then
  echo ""
  echo "📊 Documentation stats:"
  echo "   - Total files: $(find doc/api -type f | wc -l | tr -d ' ')"
  echo "   - HTML files: $(find doc/api -name "*.html" | wc -l | tr -d ' ')"
  echo ""
  echo "To view the documentation locally, run:"
  echo "  open doc/api/index.html      # macOS"
  echo "  xdg-open doc/api/index.html  # Linux"
  echo "  start doc/api/index.html     # Windows"
else
  echo "❌ Error: Documentation generation may have failed"
  exit 1
fi
