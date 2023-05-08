import unittest
import importlib.util as importlib

class TestUseMods(unittest.TestCase):
    # Check if the modules testmod1 and trestmod2 can be imported
    def test_modules_installed(self):
        print(importlib.find_spec("testmod1"))  
        self.assertTrue(importlib.find_spec("testmod1") is not None,msg="testmod1 not found")
        self.assertTrue(importlib.find_spec("testmod2") is not None, msg="testmod2 not found")

# Run the tests
if __name__ == '__main__':
    unittest.main()