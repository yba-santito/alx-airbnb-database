CREATE TABLE [follows] (
  [following_user_id] uuid,
  [followed_user_id] uuid,
  [created_at] timestamp
)
GO

CREATE TABLE [users] (
  [user_id] uuid UNIQUE PRIMARY KEY NOT NULL,
  [first_name] nvarchar(255),
  [last_name] nvarchar(255),
  [email] nvarchar(255) UNIQUE,
  [password_hash] nvarchar(255),
  [phone_number] nvarchar(255),
  [role] enum(guest,host,admin),
  [created_at] timestamp DEFAULT 'current timestamp'
)
GO

CREATE TABLE [properties] (
  [property_id] uuid PRIMARY KEY,
  [host_id] uuid,
  [name] nvarchar(255) NOT NULL,
  [description] text NOT NULL,
  [location] nvarchar(255) NOT NULL,
  [pricepernight] decimal NOT NULL,
  [created_at] timestamp DEFAULT (current timestamp),
  [updated_at] timestamp DEFAULT (current timestamp)
)
GO

CREATE TABLE [bookings] (
  [booking_id] pk,
  [property_id] uuid,
  [user_id] uuid,
  [start_date] date NOT NULL,
  [end_date] date NOT NULL,
  [total_price] decimal NOT NULL,
  [status] enum(pending,confirmed,canceled) NOT NULL,
  [created_at] timestamp DEFAULT (current timestamp)
)
GO

CREATE TABLE [payments] (
  [payment_id] pk,
  [booking_id] uuid,
  [amount] decimal NOT NULL,
  [payment_date] timestamp DEFAULT (current timestamp),
  [payment_method] enum(credit_card,paypal,stripe) NOT NULL
)
GO

CREATE TABLE [reviews] (
  [review_id] pk,
  [property_id] uuid,
  [user_id] uuid PRIMARY KEY,
  [rating] integer NOT NULL,
  [comment] text NOT NULL,
  [created_at] timestamp DEFAULT (current timestamp)
)
GO

CREATE TABLE [message] (
  [message_id] uuid PRIMARY KEY,
  [sender_id] uuid,
  [recipient_id] uuid,
  [message_body] text NOT NULL,
  [sent_at] timestamp DEFAULT (current_timestamp)
)
GO

EXEC sp_addextendedproperty
@name = N'Column_Description',
@value = 'Must be between 1 and 5',
@level0type = N'Schema', @level0name = 'dbo',
@level1type = N'Table',  @level1name = 'reviews',
@level2type = N'Column', @level2name = 'rating';
GO

ALTER TABLE [follows] ADD FOREIGN KEY ([following_user_id]) REFERENCES [users] ([user_id])
GO

ALTER TABLE [follows] ADD FOREIGN KEY ([followed_user_id]) REFERENCES [users] ([user_id])
GO

ALTER TABLE [properties] ADD FOREIGN KEY ([host_id]) REFERENCES [users] ([user_id])
GO

ALTER TABLE [bookings] ADD FOREIGN KEY ([property_id]) REFERENCES [properties] ([property_id])
GO

ALTER TABLE [bookings] ADD FOREIGN KEY ([user_id]) REFERENCES [users] ([user_id])
GO

ALTER TABLE [payments] ADD FOREIGN KEY ([booking_id]) REFERENCES [bookings] ([booking_id])
GO

ALTER TABLE [reviews] ADD FOREIGN KEY ([property_id]) REFERENCES [properties] ([property_id])
GO

ALTER TABLE [message] ADD FOREIGN KEY ([sender_id]) REFERENCES [users] ([user_id])
GO

ALTER TABLE [message] ADD FOREIGN KEY ([recipient_id]) REFERENCES [users] ([user_id])
GO
