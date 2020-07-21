group "Dependencies"
	include "../GLFW"

project "CImGUI"
    kind "StaticLib"
    language "C++"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "cimgui.h",
        "cimgui.cpp",
        "imgui/imconfig.h",
        "imgui/imgui.h",
        "imgui/imgui.cpp",
        "imgui/imgui_draw.cpp",
        "imgui/imgui_internal.h",
        "imgui/imgui_widgets.cpp",
        "imgui/imstb_rectpack.h",
        "imgui/imstb_textedit.h",
        "imgui/imstb_truetype.h",
        "imgui/imgui_demo.cpp",
        "imgui/examples/imgui_impl_glfw.h",
        "imgui/examples/imgui_impl_glfw.cpp"
    }
    
    links
	{
		"GLFW",
		"GL", "GLU",
		"X11","dl",
		"Xinerama", "Xcursor", "m",
		"Xxf86vm", "Xrandr", "pthread", "Xi"
	}

    includedirs
    {
        "imgui",
        "../GLFW/include"
    }

    filter "system:linux"
        systemversion "latest"
        staticruntime "On"
    
	filter "system:windows"
        systemversion "latest"
        staticruntime "On"
        
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"