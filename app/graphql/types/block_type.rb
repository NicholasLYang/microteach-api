Types::BlockType = GraphQL::ObjectType.define do
  name "Block"
  field :id, !types.ID
  field :code, !types.String
  field :exercise, !Types::ExerciseType
end
