
INSERT INTO users(
  name, 
  email, 
  password, 
  address, 
  country, 
  status, 
  joined, 
  last_login)
VALUES(
  'makis',
  'makis@gmail.com', 
  '123456', 
  'petrousa', 
  'gr', 
  'active', 
  NOW(), 
  NOW()
);

INSERT INTO currencies(
    name,
    symbol,
    rate_to_euro
  )
  VALUES(
    "Euro",
    "eur",
    1
  );

INSERT INTO campaign_types(
    symbol,
    name
  )
  VALUES(
    "CPM",
    "Cost Per Mile"
  );

INSERT INTO campaigns(
  title, 
  start_date, 
  end_date, 
  monetary_budget, 
  action_budget, 
  status, 
  currency_id, 
  campaign_type_id, 
  user_id
)
VALUES(
  "test campaign 14",
  NOW(),
  NOW(),
  1000.00,
  100,
  "running",
  1,
  1,
  1
);

INSERT INTO campaigns(
  title, 
  start_date, 
  end_date, 
  monetary_budget, 
  action_budget, 
  status, 
  currency_id, 
  campaign_type_id, 
  user_id
)
VALUES(
  "test campaign 1",
  NOW(),
  NOW(),
  2000.00,
  100,
  "running",
  1,
  1,
  1
);

INSERT INTO campaigns(
  title, 
  start_date, 
  end_date, 
  monetary_budget, 
  action_budget, 
  status, 
  currency_id, 
  campaign_type_id, 
  user_id
)
VALUES(
  "test campaign 2",
  NOW(),
  NOW(),
  10.00,
  5,
  "running",
  1,
  1,
  1
);