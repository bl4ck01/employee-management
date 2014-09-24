json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :emp_id, :location, :date_of_joining, :date_of_birth, :address, :skills, :user_id
  json.url employee_url(employee, format: :json)
end
