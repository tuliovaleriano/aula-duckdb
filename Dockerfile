FROM python:3.13
RUN pip install poetry
COPY . /src
WORKDIR /src
RUN poetry install
EXPOSE 8501
ENTRYPOINT ["poetry","run","streamlit","run","app.py","--server.port=8501",]
