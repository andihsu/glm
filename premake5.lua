project "glm"
    kind "StaticLib"
    language "C++"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "glm/glm/**.hpp",
        "glm/glm/detail/**.hpp",
        "glm/glm/detail/**.inl",
        "glm/glm/ext/**.hpp",
        "glm/glm/ext/**.inl",
        "glm/glm/gtc/**.hpp",
        "glm/glm/gtc/**.inl",
        "glm/glm/gtx/**.hpp",
        "glm/glm/gtx/**.inl",
        "glm/glm/simd/**.h",
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"

    filter "system:linux"
        pic "On"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"

