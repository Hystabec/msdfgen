project "msdfgen"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin/intermediate/" .. outputdir .. "/%{prj.name}")

	files
	{
		"core/**.h",
		"core/**.hpp",
		"core/**.cpp",
		"ext/**.h",
		"ext/**.hpp",
		"ext/**.cpp"
	}

	defines
	{
		"MSDFGEN_USE_CPP11"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"