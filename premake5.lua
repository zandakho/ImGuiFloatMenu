include "./vendor/premake/premake_customization/solution_items.lua"
include "Dependencies.lua"

workspace "ImGuiFloatMenu"
    architecture "x86_64"
    startproject "ImGuiFloatMenu"

    configurations
    {
        "Debug",
        "Release"
    }

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "Vendor"
    include "vendor/premake"
group ""

group "Dependencies"
    include "ImGuiFloatMenu/Vendors/ImGui"
group ""

group "Main"
    include "ImGuiFloatMenu"
group ""
