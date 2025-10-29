CREATE TABLE users (
    id SERIAL PRIMARY KEY, 
    email VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    role VARCHAR(5) DEFAULT 'user'
);

CREATE TABLE account (
    id SERIAL PRIMARY KEY,
    username VARCHAR(40) DEFAULT 'username',
    phone VARCHAR(12) DEFAULT '081122334455',
    id_user INT UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Foreign Key (id_user) REFERENCES users(id)
)