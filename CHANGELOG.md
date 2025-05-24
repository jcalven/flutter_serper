## 1.3.0

- Added centralized documentation templates for all model types
- Created `QueryDocTemplates` with reusable documentation for query parameters
- Created `ResponseDocTemplates` with reusable documentation for response fields
- Created `ResultDocTemplates` with reusable documentation for result fields
- Implemented documentation with `{@macro}` syntax for all models
- Updated example to highlight the documentation improvements
- Ensured consistent documentation across all 50+ model classes
- Added CI/CD workflows for automated testing and publishing
- Created automated version management and release tools
- Updated README with development and release process documentation

## 1.2.0

- Removed `BaseSerperResponse` class in favor of the mixin-based approach
- All response types now use `SerperResponseMixin` for shared fields
- Added polymorphic response handling methods in the `Serper` class
- Updated documentation to demonstrate the mixin-based inheritance approach
- Enhanced example file with polymorphic response processing examples

## 1.1.0

- Added strongly-typed response models for all Serper API endpoints
- Updated API methods to return type-safe responses
- Added comprehensive documentation for response models
- Improved example to demonstrate working with response models
- Added tests for response model serialization

## 1.0.0

- Initial version.
