"""
============================================================
Data Systems Lab
E-Commerce Data Generator
============================================================

This script generates realistic SQL INSERT statements
for the SQLite e-commerce database.

Output:
database/datasets/03_large_seed_data.sql
"""

from faker import Faker
import random
from pathlib import Path

# ----------------------------------------------------------
# Configuration
# ----------------------------------------------------------

fake = Faker()

NUM_SUPPLIERS = 20
NUM_CUSTOMERS = 100
NUM_PRODUCTS = 200
NUM_ORDERS = 500
NUM_ORDER_ITEMS = 1500
NUM_PAYMENTS = 500
NUM_SHIPPING = 500
NUM_REVIEWS = 1000

OUTPUT_FILE = (
    Path(__file__).parent.parent
    / "datasets"
    / "03_large_seed_data.sql"
)

# ----------------------------------------------------------
# Helper Functions
# ----------------------------------------------------------

def escape(text):
    """Escape single quotes for SQL."""

    if text is None:
        return ""

    return str(text).replace("'", "''")


def write_header(file):
    """Write SQL header."""

    file.write("-- ==========================================\n")
    file.write("-- Auto Generated SQL File\n")
    file.write("-- Data Systems Lab\n")
    file.write("-- ==========================================\n\n")

    file.write("PRAGMA foreign_keys = ON;\n\n")


print("=" * 50)
print("Data Systems Lab")
print("E-Commerce Data Generator")
print("=" * 50)

print("Output File:")
print(OUTPUT_FILE)

print("\nReady to generate data...\n")