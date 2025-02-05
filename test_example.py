from myfile import add_one

def test_success():
    assert add_one(3) == 4

def test_failure():
    assert add_one(3) == 2