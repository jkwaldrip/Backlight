# Backlight
---
Backlight is a simple web server to provide fake/stubbed services for testing the [IUCAT Blacklight5](https://github.iu.edu/listeam/Blacklight5) web application.

---

## Usage

---

## Testing/Development

- Backlight uses RSpec with Rack::Test in order to interface directly with the route-based APIs
- Install with `bundle install` and use `rackup` to run local development environment
- Test with the default `rake` task or `rake spec`
