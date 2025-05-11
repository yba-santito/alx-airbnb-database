#### Step 1

#### 1\. **Users**

- `user_id` (PK)
    
- `first_name`
    
- `last_name`
    
- `email`
    
- `password_hash`
    
- `phone_number`
    
- `role`
    
- `created_at`
    

#### 2\. **Properties**

- `property_id` (PK)
    
- `host_id` (FK → Users)
    
- `name`
    
- `description`
    
- `location`
    
- `pricepernight`
    
- `created_at`
    
- `updated_at`
    

#### 3\. **Bookings**

- `booking_id` (PK)
    
- `property_id` (FK → Properties)
    
- `user_id` (FK → Users)
    
- `start_date`
    
- `end_date`
    
- `total_price`
    
- `status`
    
- `created_at`
    

#### 4\. **Payments**

- `payment_id` (PK)
    
- `booking_id` (FK → Bookings)
    
- `amount`
    
- `payment_date`
    
- `payment_method`
    

#### 5\. **Reviews**

- `review_id` (PK)
    
- `property_id` (FK → Properties)
    
- `user_id` (FK → Users)
    
- `rating`
    
- `comment`
    
- `created_at`
    

#### 6\. **Messages**

- `message_id` (PK)
    
- `sender_id` (FK → Users)
    
- `recipient_id` (FK → Users)
    
- `message_body`
    
- `sent_at`
    

#### 7\. **Follows**

- `following_user_id` (FK → Users)
    
- `followed_user_id` (FK → Users)
    
- `created_at`
    

&nbsp;

**Step 2**

- **Users ↔ Properties**: One-to-Many (a host owns many properties)
    
- **Users ↔ Bookings**: One-to-Many (a guest can make many bookings)
    
- **Properties ↔ Bookings**: One-to-Many (a property can have many bookings)
    
- **Bookings ↔ Payments**: One-to-One (each booking has one payment)
    
- **Users ↔ Reviews ↔ Properties**: Many-to-Many via reviews
    
- **Users ↔ Messages (Self-Referencing)**: One-to-Many (sender → recipient)
    
- **Users ↔ Follows (Self-Referencing)**: Many-to-Many
    

&nbsp;

**Step 3**

![AirBnB CLone.png](../_resources/AirBnB%20CLone-1.png)