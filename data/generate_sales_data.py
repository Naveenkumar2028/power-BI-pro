"""Generate a realistic portfolio-scale sales dataset.
Run: python generate_sales_data.py
"""
import csv, random
from datetime import date, timedelta

random.seed(42)
products = [
    ("P101", "Laptop Pro", "Electronics", 65000, 52000),
    ("P102", "Wireless Mouse", "Accessories", 1200, 700),
    ("P103", "Office Chair", "Furniture", 8500, 6000),
    ("P104", "Monitor 24", "Electronics", 14500, 10500),
    ("P105", "Keyboard", "Accessories", 1800, 1050),
    ("P106", "Desk", "Furniture", 12000, 8200),
    ("P107", "Printer", "Electronics", 18500, 14000),
    ("P108", "Headset", "Accessories", 3200, 1900),
    ("P109", "Tablet", "Electronics", 28000, 22000),
    ("P110", "Webcam", "Accessories", 4200, 2500),
]
customers = [(f"C{i:03}", n, s) for i, n, s in [
    (1,"Aarav Traders","SMB"),(2,"Bright Stores","Retail"),(3,"Green Mart","SMB"),
    (4,"Prime Retail","Retail"),(5,"Urban Needs","Enterprise"),(6,"Metro Supplies","Enterprise"),
    (7,"Value Hub","Retail"),(8,"Smart Bazaar","SMB"),(9,"City Enterprise","Enterprise"),
    (10,"Daily Needs","Retail"),(11,"Office World","Enterprise"),(12,"Tech Point","SMB"),
    (13,"Nova Retail","Retail"),(14,"Apex Systems","Enterprise"),(15,"Blue Star Traders","SMB"),
    (16,"NextGen Stores","Retail"),(17,"Vertex Corp","Enterprise"),(18,"Kaveri Mart","SMB"),
    (19,"Digital House","Retail"),(20,"Summit Solutions","Enterprise")]]
geos = [
    ("South","Karnataka","Bengaluru"),("South","Karnataka","Mysuru"),
    ("South","Tamil Nadu","Chennai"),("South","Kerala","Kochi"),
    ("West","Maharashtra","Mumbai"),("West","Maharashtra","Pune"),
    ("West","Gujarat","Ahmedabad"),("North","Delhi","Delhi"),
    ("North","Delhi","Gurugram"),("North","Uttar Pradesh","Noida"),
    ("East","West Bengal","Kolkata")]
headers = ["OrderID","OrderDate","CustomerID","CustomerName","Segment","ProductID","ProductName","Category","Region","State","City","Quantity","UnitPrice","DiscountPct","CostPerUnit"]
start = date(2025, 1, 1)
with open("sales_data.csv", "w", newline="", encoding="utf-8") as f:
    w = csv.writer(f)
    w.writerow(headers)
    for order_id in range(2001, 2501):
        d = start + timedelta(days=random.randrange(365))
        c = random.choice(customers); p = random.choice(products); g = random.choice(geos)
        w.writerow([order_id, d.isoformat(), *c, *p[:3], *g, random.randint(1,20), p[3], random.choice([0,.02,.03,.05,.06,.08,.10]), p[4]])
print("Generated 500 sales transactions in sales_data.csv")
