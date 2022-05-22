import unittest

import sample_module


class TestSampleModule(unittest.TestCase):
    def testSampleFunction(self):
        result = sample_module.sample_function()
        self.assertEqual(result.shape, (4, 4))


if __name__ == "__main__":
    unittest.main()
