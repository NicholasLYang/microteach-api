Types::ProjectType = GraphQL::ObjectType.define do
  name "Project"
  field :id, !types.ID
  field :name, !types.String
  field :user_id, !Types::UserType
  field :current_exercise, !types.ID
  field :blocks, types[Types::BlockType]
end
