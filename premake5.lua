project "cimgui"
    kind "StaticLib"
    language "C++"
    staticruntime "on"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin/Intermidiates" .. outputdir .. "/%{prj.name}")

    includedirs
    {
       "%{prj.name}/src/"
    }
    files
    {
       "%{prj.name}/src/cimgui.h",
       "%{prj.name}/src/cimgui.cpp",

       "%{prj.name}/src/imgui/imgui.h",
       "%{prj.name}/src/imgui/imgui.cpp",
       "%{prj.name}/src/imgui/imconfig.h",
       "%{prj.name}/src/imgui/imstb_rectpack.h",
       "%{prj.name}/src/imgui/imstb_textedit.h",
       "%{prj.name}/src/imgui/imstb_truetype.h",
       "%{prj.name}/src/imgui/imgui_internal.h",
       "%{prj.name}/src/imgui/imgui_draw.cpp",
       "%{prj.name}/src/imgui/imgui_widgets.cpp",
       "%{prj.name}/src/imgui/imgui_demo.cpp",
       "%{prj.name}/src/imgui/imgui_tables.cpp"
    }

    filter "system:linux"
    pic "On"
    systemversion "latest"
    staticruntime "On"

    filter "system:windows"
    systemversion "latest"
    staticruntime "On"

    filter "configurations:Debug"
    runtime "Debug"
    symbols "on"

    filter "configurations:Release"
    runtime "Release"
    optimize "on"
