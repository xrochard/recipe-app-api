from django.test import TestCase

from app.calc import add, subtract


class CalcTests(TestCase):
    def test_add_numbers(self):
        self.assertEqual(add(3, 8), 11)

    def test_add_return_correct_value(self):
        self.assertNotEqual(add(3, 5), 11)

    def test_subtract_two_numbers(self):
        self.assertEqual(subtract(5, 11), 6)

    def test_subtract_return_not_fixed_value(self):
        self.assertNotEqual(subtract(5, 3), 6)
