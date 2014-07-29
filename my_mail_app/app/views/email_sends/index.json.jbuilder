json.array!(@email_sends) do |email_send|
  json.extract! email_send, :id, :to, :subject, :message
  json.url email_send_url(email_send, format: :json)
end
