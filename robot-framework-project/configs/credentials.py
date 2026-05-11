import os

# Credentials loaded from environment variables.
# Set these in your shell or CI/CD secrets before running tests.
# Fallback values are placeholders for local development only.

ADMIN_EMAIL = os.environ.get('ADMIN_EMAIL', 'test@example.com')
ADMIN_PASSWORD = os.environ.get('ADMIN_PASSWORD', 'testpass')
ADMIN_INCORRECT_EMAIL = os.environ.get('ADMIN_INCORRECT_EMAIL', 'wrong@example.com')
ADMIN_INCORRECT_PASSWORD = os.environ.get('ADMIN_INCORRECT_PASSWORD', 'wrongpass')
