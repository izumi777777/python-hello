from app import app
from flask.testing import FlaskClient

def test_index():
    client = app.test_client()
    response = client.get('/')
    assert response.status_code == 200
    assert b'hello world' in response.data