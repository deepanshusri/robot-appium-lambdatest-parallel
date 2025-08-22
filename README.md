# Robot Framework + Appium Sample for LambdaTest Parallel Execution

This repo demonstrates how to run Appium tests in parallel using Robot Framework on LambdaTest.

## How to Use

1. Install dependencies:
   ```
   pip install -r requirements.txt
   ```

2. Set your LambdaTest credentials:
   ```
   export LT_USERNAME="your_username"
   export LT_ACCESS_KEY="your_access_key"
   ```

3. Update the `app` field in `config/lambdatest_config.py` with your LambdaTest App ID.

4. Run tests in parallel:
   ```
   python run_parallel.py
   ```

## File Structure

- `tests/`: Robot Framework test suites for Android & iOS.
- `resources/`: Shared keywords for tests.
- `config/`: Configuration for LambdaTest.
- `run_parallel.py`: Script to run tests in parallel.

## Reference

- [Robot Framework](https://robotframework.org/)
- [AppiumLibrary](https://github.com/serhatbolsu/robotframework-appiumlibrary)
- [LambdaTest Mobile Automation](https://www.lambdatest.com/support/docs/appium-mobile-app-automation/)