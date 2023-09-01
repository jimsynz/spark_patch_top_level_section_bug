defmodule PatchingExtension do
  defmodule Entity do
    defstruct it_works: false
  end

  use Spark.Dsl.Extension,
    dsl_patches: [
      %Spark.Dsl.Patch.AddEntity{
        section_path: [:top_level],
        entity: %Spark.Dsl.Entity{
          name: :entity,
          target: Entity,
          schema: [it_works: [type: :boolean, required: true]]
        }
      }
    ]
end
