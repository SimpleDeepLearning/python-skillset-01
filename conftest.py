def pytest_report_header(config):
    return "\nTests for Python Virtual Environment\n"

pytest_plugins = ['pytest_virtualenv']