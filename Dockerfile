# syntax=docker/dockerfile:1

FROM python

WORKDIR /

COPY config/ config/
COPY app/ app/
COPY tests/ tests/
COPY conftest.py conftest.py
COPY setup_.py setup_.py

CMD ["python","-m","venv","venv"]

CMD ["python","setup_.py"]

CMD ["python","app/main.py"]