json.extract! vote, :id, :user_id, :question_id, :estado, :created_at, :updated_at
json.url vote_url(vote, format: :json)
