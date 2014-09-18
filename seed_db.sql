
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
    "EUR",
    1
  );

INSERT INTO currencies(
    name,
    symbol,
    rate_to_euro
  )
  VALUES(
    "US Dollar",
    "USD",
    1
  );

INSERT INTO currencies(
    name,
    symbol,
    rate_to_euro
  )
  VALUES(
    "British Pound",
    "GBP",
    1
  );

INSERT INTO currencies(
    name,
    symbol,
    rate_to_euro
  )
  VALUES(
    "Renminbi",
    "CNY",
    1
  );

INSERT INTO currencies(
    name,
    symbol,
    rate_to_euro
  )
  VALUES(
    "Japanese Yen",
    "JPY",
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

INSERT INTO campaign_types(
    symbol,
    name
  )
  VALUES(
    "CPC",
    "Cost Per Click"
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
)

-- INSERT INTO creative_templates(
--   description,
--   html,
--   width,
--   height
-- )
-- VALUES(
--   "Large mobile banner (320x100)",
--   '<span style="width:320px height:100px "><img id="logo" style="position:absolute top:0px left:0px" src="creative_parts/{{.logo}}"/><img id="image" style="position:absolute top:0px left:60px " src="creative_parts/{{.image}}"/><div id="text" style="position:absolute top:15px left:65px color:white font-size:12px text:{{.text}} ">{{.text}}</div><div id="price" style="position:absolute top:29px left:65px color:white font-size:16px text:{{.price}} ">{{.price}}</div></span>',
--   320,
--   100
-- );

-- INSERT INTO creative_templates(
--   description,
--   html,
--   width,
--   height
-- )
-- VALUES(
--   "Large mobile banner (320x50)",
--   "",
--   320,
--   50
-- )