**Normalization**

The goal of the project was to organize my data in such a way that redundancies were reduce and ensure logical data dependencies.

**The First Normal Form(1NF)**

- All tables columns store single values
- Each table has a primary key to ensure rows are uniquely identifiable
- No repeating groups

**The Second Normal Form(2NF)**

- All non- key attributes in each table depend on the full primary key
- No partial dependencies

**The Third Normal Form (3NF)**

- Made all the attributes to depend only on the primary key, that was created from the user_id
- The other Attributes dont dependent on key-fields that are non-key attributes
- Used foreign keys to connect related attributes instead of repeating myself

**Conclusion**

The database is 3NF compliant, make sure consistency is achieved