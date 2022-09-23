--============ DOMAINS ========================
CREATE DOMAIN MonDomaine TEXT CHECK( VALUE ~ '^[A-Z]\d[A-Z][ ]\d[A-Za-z]\d$' );

--CREATE DOMAIN eMail AS citext CHECK( VALUE ~ '^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$' );
--CREATE DOMAIN phoneNumber AS TEXT CHECK( VALUE ~ '^(\d{3}-\d{3}-\d{4})$' );
--CREATE DOMAIN socialSecurityNumber AS TEXT CHECK( VALUE ~ '^(\d{3}-\d{3}-\d{3})$' );
--CREATE DOMAIN zipCode TEXT CHECK( VALUE ~ '^[A-Z]\d[A-Z][ ]\d[A-Za-z]\d$' );

--CREATE DOMAIN shiftStatus TEXT CHECK( VALUE IN ('cancelled', 'coming', 'completed'));
--CREATE DOMAIN organizationType TEXT CHECK( VALUE IN('company', 'event'));
--CREATE DOMAIN applicationStatus TEXT CHECK( VALUE IN('confirmed', 'accepted', 'refused', 'pending', 'employee_canceled', 'boss_canceled'));
--CREATE DOMAIN salaryType TEXT CHECK( VALUE IN ('hourly', 'fixed'));
--CREATE DOMAIN gender TEXT CHECK( VALUE IN ('male', 'female', 'alpha', 'other'));