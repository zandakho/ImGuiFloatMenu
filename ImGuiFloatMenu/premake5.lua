project "ImGuiFloatMenu"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"
    staticruntime "off"

    targetdir ("%{wks.location}/Build/Binaries/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/Build/Intermediate/" .. outputdir .. "/%{prj.name}")

    files
    {
        "Source/**.h",
        "Source/**.hpp",
        "Source/**.cpp"
    }

    includedirs
    {
        "Source",
        "Vendors",
        "%{IncludeDir.ImGui}",
        "%{IncludeDir.WindowsSDK}",
        "%{IncludeDir.FreeType}",
    }

    links
    {
        "ImGui",
        "%{Library.FreeType}"
    }

    filter "system:windows"
        systemversion "latest"

        links
        {
            "ImGui",
            "%{Library.FreeType}",

            -- Windows API
            "kernel32.lib",
            "user32.lib",
            "gdi32.lib",
            "winspool.lib",
            "comdlg32.lib",
            "advapi32.lib",
            "shell32.lib",
            "ole32.lib",
            "oleaut32.lib",
            "uuid.lib",
            "odbc32.lib",
            "odbccp32.lib",

            -- DirectX
            "d3d11.lib",
            "d3dcompiler.lib",
            "dxgi.lib",
            "dxguid.lib",
            
            -- C Runtime
            "ucrt.lib",
            "ucrtd.lib",    -- Для debug
            "vcruntime.lib",
            "msvcrt.lib",
            "msvcrtd.lib",  -- Для debug
            
            -- Стандартная библиотека C
            "libcmt.lib",
            "libcmtd.lib",  -- Для debug
            
            -- Математическая библиотека
            "legacy_stdio_definitions.lib"
        }
