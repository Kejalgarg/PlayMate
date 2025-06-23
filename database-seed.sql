-- PlayMate Database Seed Data
-- This file contains initial data to populate the database

-- Sports data (already inserted via API call)
-- INSERT INTO sports (name, emoji, is_active) VALUES ...

-- Sample badges
INSERT INTO badges (name, description, emoji, xp_required) VALUES 
('Welcome Player', 'Joined PlayMate community', '🎉', 0),
('First Friend', 'Made your first friend connection', '👥', 25),
('Court Master', 'Played 50 basketball games', '🏀', 1000),
('Cricket Champion', 'Played 25 cricket matches', '🏏', 500),
('Tennis Pro', 'Played 20 tennis matches', '🎾', 400),
('Social Butterfly', 'Connected with 10 friends', '🦋', 250),
('Game Host', 'Hosted your first game', '🎮', 50),
('Level Up', 'Reached level 5', '⭐', 500),
('Active Player', 'Played games 7 days in a row', '🔥', 200),
('Team Player', 'Joined 10 different games', '🤝', 300),
('Rising Star', 'Reached level 10', '🌟', 1500),
('Versatile Athlete', 'Active in 5 different sports', '🏃', 750),
('Mentor', 'Helped 5 beginners improve', '🎯', 800),
('Community Builder', 'Organized 20 games', '🏗️', 1200),
('Champion', 'Won 25 competitive matches', '🏆', 2000)
ON CONFLICT (name) DO NOTHING;

-- Sample game data for demonstration
-- Note: This would typically be populated through the application
-- as users create real games

-- The following would be sample data for testing purposes only:
-- Sample users would be created through Replit Auth
-- Sample games would be created through the API
-- Sample friend relationships would be established through user interaction

-- XP and Level Calculation Guidelines:
-- Level 1: 0-99 XP
-- Level 2: 100-249 XP  
-- Level 3: 250-499 XP
-- Level 4: 500-999 XP
-- Level 5: 1000-1999 XP
-- Level 6: 2000-3499 XP
-- Level 7: 3500-5499 XP
-- Level 8: 5500-8499 XP
-- Level 9: 8500-12499 XP
-- Level 10: 12500-17999 XP
-- Level 11: 18000-24999 XP
-- Level 12+: 25000+ XP (incrementing by 10000 per level)

-- XP Sources:
-- Join game: +10 XP
-- Host game: +15 XP
-- Complete game: +20 XP
-- Win game: +25 XP additional
-- Send friend request: +10 XP
-- Accept friend request: +25 XP (both users)
-- First game of the day: +5 XP bonus
-- Streak bonuses: Consecutive days playing