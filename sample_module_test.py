import unittest

import sample_module


class TestSampleModule(unittest.TestCase):
    def testSampleFunctionShape(self):
        result = sample_module.sample_function()
        self.assertEqual(result.shape, (4, 4))

    def testSampleFunctionSum(self):
        result = sample_module.sample_function()
        self.assertEqual(result.sum(), 0)


if __name__ == "__main__":
    unittest.main()
