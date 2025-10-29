CREATE TABLE users (
    id SERIAL PRIMARY KEY, 
    email VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(20) NOT NULL,
    id_account INT NOT NULL,
    Foreign Key (id_account) REFERENCES account(id)
);

CREATE TABLE account (
    id SERIAL PRIMARY KEY,
    username VARCHAR(40) DEFAULT 'user',
    phone VARCHAR(12) DEFAULT '081122334455',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)