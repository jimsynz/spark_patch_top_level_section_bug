defmodule TargetDsl do
  defmodule Ext do
    use Spark.Dsl.Extension, section: %Spark.Dsl.Section{name: :top_level, top_level?: true}
  end

  use Spark.Dsl, default_extensions: [extensions: [Ext]]
end
