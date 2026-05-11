# Crown Motor Cars PH - Robot Framework Test Automation

## Overview
This project automates web UI testing for the Crown Motor Cars PH application using Robot Framework with Playwright. It focuses on admin and customer portal testing with secure credential management.

## Project Structure
```
robot-framework-project/
├── configs/
│   ├── browser.robot              # Browser configuration and headless mode
│   ├── credentials.robot          # Secure credential variables (env vars)
│   ├── libraries.resource         # Library imports (Browser/Playwright)
│   └── settingsAndResource.robot  # Central resource imports
├── keywords/
│   ├── crownMotorsAdminKeywords.resource    # Admin-specific keywords
│   ├── crownMotorsCustomer.resource         # Customer-specific keywords
│   └── customKeywords.resource              # Generic browser keywords
├── libs/
│   └── custom_lib.py             # Custom Python utilities (unused)
├── resources/
│   ├── crownMotorsAdmin.resource # Admin page locators and URLs
│   ├── crownMotorsCustomer.resource # Customer page locators
│   └── variables.robot           # Global variables and timeouts
├── tests/
│   ├── admin/                    # Admin portal tests
│   │   ├── SCRUM6_AdminSideFeaturesLogin.robot
│   │   ├── SCRUM7_AdminSideFeaturesLogout.robot
│   │   └── SCRUM21_AdminLogoutBugDashboardStillAccessibleAfterLogout.robot
│   └── customer/
│       └── SAMPLE.robot          # Customer test template
├── results/                      # Test execution results
├── README.md
└── requirements.txt
```

## Setup Instructions

### Prerequisites
- Python 3.8+
- Node.js (for Playwright browsers)

### 1. Clone and Install Dependencies
```bash
git clone <repository-url>
cd robot-framework-project
pip install -r requirements.txt
rfbrowser init  # Install Playwright browsers
```

### 2. Environment Variables
Set the following environment variables for secure credential management:

**Required for Admin Tests:**
```bash
export ADMIN_EMAIL="your-admin-email@example.com"
export ADMIN_PASSWORD="your-secure-password"
export ADMIN_INCORRECT_EMAIL="wrong@example.com"
export ADMIN_INCORRECT_PASSWORD="wrongpass"
```

**On Windows (PowerShell):**
```powershell
$env:ADMIN_EMAIL="your-admin-email@example.com"
$env:ADMIN_PASSWORD="your-secure-password"
$env:ADMIN_INCORRECT_EMAIL="wrong@example.com"
$env:ADMIN_INCORRECT_PASSWORD="wrongpass"
```

### 3. Test Execution

**Run all tests:**
```bash
robot tests/
```

**Run specific test suite:**
```bash
robot tests/admin/
```

**Run single test:**
```bash
robot tests/admin/SCRUM6_AdminSideFeaturesLogin.robot
```

**Run in headless mode:**
```bash
HEADLESS=True robot tests/admin/SCRUM6_AdminSideFeaturesLogin.robot
```

**Run with debug output:**
```bash
robot --loglevel DEBUG tests/admin/SCRUM6_AdminSideFeaturesLogin.robot
```

## Test Coverage

### Admin Portal Tests
- **SCRUM-6**: Login page validation with invalid/valid credentials
- **SCRUM-7**: Complete login and logout flow
- **SCRUM-21**: Security test - dashboard accessibility after logout

### Customer Portal Tests
- **SAMPLE**: Basic landing page test (template for expansion)

## Key Features
- **Secure Credentials**: Environment variable-based credential management
- **Modern Automation**: Playwright for reliable, fast web testing
- **Headless Support**: Configurable headless/browser execution
- **Structured Keywords**: Reusable keyword libraries for maintainability
- **Comprehensive Reporting**: Detailed logs and screenshots on failures

## Best Practices Implemented
- Environment-based configuration
- Page Object Model-inspired locator organization
- Independent test execution
- Proper wait strategies with Playwright
- Security-first credential handling

## Troubleshooting

### Common Issues
1. **"Environment variable not set"**: Ensure all required env vars are exported
2. **Browser not found**: Run `rfbrowser init` to install Playwright browsers
3. **Timeout errors**: Check locator accuracy or increase timeouts if needed
4. **Import errors**: Verify file paths and Python environment

### Debug Mode
Use `--loglevel DEBUG` for detailed execution logs:
```bash
robot --loglevel DEBUG --outputdir debug_results tests/admin/SCRUM6_AdminSideFeaturesLogin.robot
```

## Contributing
1. Follow the existing project structure
2. Use environment variables for any sensitive data
3. Add appropriate tags and documentation to tests
4. Test in both headed and headless modes

## License
This project is licensed under the MIT License.