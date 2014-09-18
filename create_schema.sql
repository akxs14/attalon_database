DROP TABLE IF EXISTS users;

CREATE TABLE users(
  id           INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  name         TEXT               NOT NULL,
  email        TEXT               NOT NULL,
  password     TEXT               NOT NULL,
  address      TEXT,
  country      TEXT,
  status       TEXT,
  joined       TIMESTAMP,
  last_login   TIMESTAMP
);


DROP TABLE IF EXISTS currencies;

CREATE TABLE currencies(
  id           INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  name         TEXT               NOT NULL,
  symbol       TEXT               NOT NULL,
  rate_to_euro NUMERIC(12)        NOT NULL
);


DROP TABLE IF EXISTS campaign_types;

CREATE TABLE campaign_types(
  id      INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  symbol  TEXT               NOT NULL,
  name    TEXT
);

/* It has the meaning of a banner (dynamic or static) */
DROP TABLE IF EXISTS ads;

CREATE TABLE ads(
  id        INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  name      TEXT               NOT NULL,
  height    INT                NOT NULL,
  width     INT                NOT NULL,
  template  TEXT               NOT NULL
);


DROP TABLE IF EXISTS campaigns;

CREATE TABLE campaigns(
  id                INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  title             TEXT               NOT NULL,
  start_date        DATE               NOT NULL,
  end_date          DATE               NOT NULL,
  monetary_budget   NUMERIC(12)        NOT NULL,
  action_budget     BIGINT             NOT NULL,
  status            TEXT               NOT NULL,
  currency_id       INT                NOT NULL,
  campaign_type_id  INT                NOT NULL,
  user_id           INT                NOT NULL
);


DROP TABLE IF EXISTS ads_campaigns;

CREATE TABLE ads_campaigns(
  ad_id       INT NOT NULL,
  campaign_id INT NOT NULL
);


DROP TABLE IF EXISTS publishers;

CREATE TABLE publishers(
  id              INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  name            TEXT               NOT NULL,
  domain          TEXT,
  IAB_categories  TEXT
);


DROP TABLE IF EXISTS publishers_users;

CREATE TABLE publishers_users(
  publisher_id  INT NOT NULL,
  user_id       INT NOT NULL
);


DROP TABLE IF EXISTS sites;

CREATE TABLE sites(
  user_id         INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name            TEXT               NOT NULL,
  domain          TEXT,
  IAB_categories  TEXT,
  keywords        TEXT,
  publishers_id   INT
);


DROP TABLE IF EXISTS apps;

CREATE TABLE apps(
  user_id         INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  name            TEXT               NOT NULL,
  domain          TEXT,         
  IAB_categories  TEXT,
  keywords        TEXT,
  bundle          TEXT,
  publishers_id   INT
);


DROP TABLE IF EXISTS devices;

CREATE TABLE devices(
  user_id       INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  model         TEXT                 NOT NULL,
  os            TEXT,
  os_version    TEXT,
  manufacturer  TEXT
);

DROP TABLE IF EXISTS remaining_budgets;

CREATE TABLE remaining_budgets(
  user_id           INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  remaining_budget  NUMERIC(3)         NOT NULL
);


DROP TABLE IF EXISTS creative_templates;

CREATE TABLE creative_templates(
  id           INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
  description  TEXT               NOT NULL,
  html         TEXT               NOT NULL,
  width        NUMERIC(4)         NOT NULL,
  height       NUMERIC(4)         NOT NULL
)
