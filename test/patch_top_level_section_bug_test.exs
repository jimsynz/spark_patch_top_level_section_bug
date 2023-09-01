defmodule PatchTopLevelSectionBugTest do
  use ExUnit.Case

  defmodule PatchedDsl do
    use TargetDsl, extensions: [PatchingExtension]

    entity do
      it_works(true)
    end
  end
end
