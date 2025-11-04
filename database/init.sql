CREATE TABLE IF NOT EXISTS chats (
    id SERIAL PRIMARY KEY,
    session_id VARCHAR(100) NOT NULL,
    user_message TEXT NOT NULL,
    bot_response TEXT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_session_id ON chats(session_id);
CREATE INDEX IF NOT EXISTS idx_timestamp ON chats(timestamp);