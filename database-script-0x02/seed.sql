INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES 
('uuid-001', 'Alice', 'Walker', 'alice@example.com', 'hashed_pw_1', '1234567890', 'host', NOW()),
('uuid-002', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw_2', '0987654321', 'guest', NOW());

INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES 
('prop-001', 'uuid-001', 'Beach House', 'Oceanfront view', 'Miami, FL', 250.00, NOW(), NOW());

INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES 
('book-001', 'prop-001', 'uuid-002', '2025-06-01', '2025-06-07', 1500.00, 'confirmed', NOW());

INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method)
VALUES 
('pay-001', 'book-001', 1500.00, NOW(), 'stripe');

INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at)
VALUES 
('rev-001', 'prop-001', 'uuid-002', 5, 'Amazing stay!', NOW());

INSERT INTO message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES 
('msg-001', 'uuid-002', 'uuid-001', 'Hi, is the beach house available for next weekend?', NOW());
