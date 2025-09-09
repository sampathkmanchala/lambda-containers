from faker import Faker

def handler(event,context):
  fake = Faker()
  address = fake.street_address()
  return address
