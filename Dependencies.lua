WINDOWS_SDK = os.getenv("WindowsSdkDir")
WINDOWS_SDK_VERSION = os.getenv("WindowsSdkVersion")

IncludeDir = {}
IncludeDir["ImGui"] = "%{wks.location}/ImGuiFloatMenu/Vendors/ImGui"
IncludeDir["WindowsSDK"] = "%{WINDOWS_SDK}/Include/%{WINDOWS_SDK_VERSION}"
IncludeDir["FreeType"] = "%{wks.location}/ImGuiFloatMenu/Vendors/FreeType/Include"

LibraryDir = {}
LibraryDir["WindowsSDK"] = "%{WINDOWS_SDK}/Lib/%{WINDOWS_SDK_VERSION}"

Library = {}
Library["FreeType"] = "%{wks.location}/ImGuiFloatMenu/Vendors/FreeType/Lib/freetype.lib"