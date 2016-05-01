# rubocop:disable LineLength
user_id = User.create(latest_ip_address: '::1').id
Quote.create(text: 'Creativity is allowing yourself to make mistakes. Art is knowing which ones to keep.', author: 'Scott Adams (author of "Dilbert")', user_id: user_id)
Quote.create(text: 'My greatest strength as a consultant is to be ignorant and ask a few questions.', author: 'Peter Drucker', user_id: user_id)
Quote.create(text: 'Design is not just what it looks like and feels like. Design is how it works.', author: 'Steve Jobs', user_id: user_id)
Quote.create(text: 'Genius is one percent inspiration, ninety nine percent perspiration.', author: 'Thomas Edison', user_id: user_id)
Quote.create(text: 'An honest answer is like a kiss on the lips.', author: 'Proverbs 24:26', user_id: user_id)
