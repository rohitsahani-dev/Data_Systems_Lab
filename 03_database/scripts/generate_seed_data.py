"""
============================================================
Data Systems Lab
Professional E-Commerce Data Generator
============================================================

Author : Rohit Sahani
Database : SQLite
Output : ../datasets/03_large_seed_data.sql
"""

from pathlib import Path
from faker import Faker
import random

# ============================================================
# Configuration
# ============================================================

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

# ============================================================
# Categories
# ============================================================

CATEGORIES = [
    "Electronics",
    "Books",
    "Clothing",
    "Home & Kitchen",
    "Sports",
    "Beauty",
    "Toys",
    "Groceries",
]

# ============================================================
# Product Catalog
# ============================================================

PRODUCT_CATALOG = {
    1: {
        "brands": [
            "Apple",
            "Samsung",
            "Sony",
            "Dell",
            "HP",
            "Lenovo",
            "Asus",
        ],
        "products": [
            "Laptop",
            "Monitor",
            "Keyboard",
            "Mouse",
            "Smartphone",
            "Tablet",
            "Headphones",
            "Webcam",
        ],
    },
    2: {
        "brands": [
            "O'Reilly",
            "Pearson",
            "Packt",
            "No Starch",
            "Manning",
        ],
        "products": [
            "Python Book",
            "SQL Book",
            "Java Book",
            "JavaScript Book",
            "AI Book",
            "Machine Learning Book",
        ],
    },
    3: {
        "brands": [
            "Nike",
            "Adidas",
            "Puma",
            "Levi's",
            "H&M",
        ],
        "products": [
            "T-Shirt",
            "Jeans",
            "Jacket",
            "Hoodie",
            "Shorts",
            "Sweater",
        ],
    },
    4: {
        "brands": [
            "Philips",
            "LG",
            "IKEA",
            "Panasonic",
        ],
        "products": [
            "Coffee Maker",
            "Office Chair",
            "Desk",
            "Lamp",
            "Fan",
            "Air Fryer",
        ],
    },
    5: {
        "brands": [
            "Adidas",
            "Wilson",
            "Yonex",
        ],
        "products": [
            "Football",
            "Basketball",
            "Badminton Racket",
            "Tennis Ball",
            "Cricket Bat",
        ],
    },
    6: {
        "brands": [
            "Nivea",
            "Garnier",
            "L'Oreal",
        ],
        "products": [
            "Face Wash",
            "Body Lotion",
            "Soap",
            "Shampoo",
            "Conditioner",
        ],
    },
    7: {
        "brands": [
            "LEGO",
            "Hasbro",
            "Mattel",
        ],
        "products": [
            "Toy Car",
            "Puzzle",
            "Building Blocks",
            "Doll",
            "Action Figure",
        ],
    },
    8: {
        "brands": [
            "Nestle",
            "Kellogg's",
            "Local Farm",
        ],
        "products": [
            "Rice",
            "Milk",
            "Coffee",
            "Tea",
            "Sugar",
            "Flour",
        ],
    },
}

# ============================================================
# Helper Functions
# ============================================================


def escape(text):
    """Escape single quotes."""

    return str(text).replace("'", "''")


def section(file, title):
    """Write section header."""

    file.write("\n")
    file.write("-- ==========================================\n")
    file.write(f"-- {title}\n")
    file.write("-- ==========================================\n\n")


def write_header(file):

    file.write("-- ==========================================\n")
    file.write("-- Data Systems Lab\n")
    file.write("-- Professional Seed Data\n")
    file.write("-- ==========================================\n\n")
    file.write("PRAGMA foreign_keys = ON;\n\n")


# ============================================================
# Generate Suppliers
# ============================================================


def generate_suppliers(file):

    section(file, "SUPPLIERS")

    for _ in range(NUM_SUPPLIERS):

        file.write(
            f"""INSERT INTO suppliers
(supplier_name,contact_name,email,phone,city,country)
VALUES
(
'{escape(fake.company())}',
'{escape(fake.name())}',
'{escape(fake.company_email())}',
'{escape(fake.phone_number()[:20])}',
'{escape(fake.city())}',
'{escape(fake.country())}'
);

"""
        )


# ============================================================
# Generate Customers
# ============================================================


def generate_customers(file):

    section(file, "CUSTOMERS")

    for _ in range(NUM_CUSTOMERS):

        gender = random.choice(["Male", "Female"])

        if gender == "Male":
            first = fake.first_name_male()
        else:
            first = fake.first_name_female()

        file.write(
            f"""INSERT INTO customers
(first_name,last_name,email,phone,gender,date_of_birth,city,country)
VALUES
(
'{escape(first)}',
'{escape(fake.last_name())}',
'{escape(fake.unique.email())}',
'{escape(fake.phone_number()[:20])}',
'{gender}',
'{fake.date_of_birth(minimum_age=18, maximum_age=65)}',
'{escape(fake.city())}',
'{escape(fake.country())}'
);

"""
        )


# ============================================================
# Generate Products
# ============================================================


def generate_products(file):

    section(file, "PRODUCTS")

    for _ in range(NUM_PRODUCTS):

        category = random.randint(1, 8)

        supplier = random.randint(1, NUM_SUPPLIERS)

        brand = random.choice(PRODUCT_CATALOG[category]["brands"])

        product = random.choice(PRODUCT_CATALOG[category]["products"])

        file.write(
            f"""INSERT INTO products
(category_id,supplier_id,product_name,description,brand,price,stock_quantity,is_active)
VALUES
(
{category},
{supplier},
'{escape(f"{brand} {product}")}',
'{escape(fake.sentence(nb_words=10))}',
'{escape(brand)}',
{round(random.uniform(5,2500),2)},
{random.randint(0,500)},
{random.randint(0,1)}
);

"""
        )


# ============================================================
# Main
# ============================================================


def main():

    OUTPUT_FILE.parent.mkdir(parents=True, exist_ok=True)

    with open(OUTPUT_FILE, "w", encoding="utf-8") as file:

        write_header(file)

        generate_suppliers(file)

        generate_customers(file)

        generate_products(file)

    print("=" * 50)
    print("Data Systems Lab")
    print("Seed data generated successfully.")
    print(OUTPUT_FILE)
    print("=" * 50)


if __name__ == "__main__":
    main()