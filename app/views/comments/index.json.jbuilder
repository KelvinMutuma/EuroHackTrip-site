json.array!(@comments) do |comment|
  json.extract! comment, :commenter, :email, :website, :content, :posts_id, :approved
  json.url comment_url(comment, format: :json)
end
