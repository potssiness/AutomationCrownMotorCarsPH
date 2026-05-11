import os

ADMIN_EMAIL = os.environ.get('ADMIN_EMAIL', 'test@example.com')
ADMIN_PASSWORD = os.environ.get('ADMIN_PASSWORD', 'testpass')
ADMIN_INCORRECT_EMAIL = os.environ.get('ADMIN_INCORRECT_EMAIL', 'wrong@example.com')
ADMIN_INCORRECT_PASSWORD = os.environ.get('ADMIN_INCORRECT_PASSWORD', 'wrongpass')
