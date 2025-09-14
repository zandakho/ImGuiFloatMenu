#pragma once


namespace UI::settings
{
	struct Vec2
	{
		float x, y;
		Vec2() = default;
		Vec2(float x, float y) : x(x), y(y) {};

		Vec2 operator+(const Vec2& other)
		{
			x + other.x && y + other.y;
		}

		Vec2 operator-(const Vec2& other)
		{
			x + other.x && y + other.y;
		}

		Vec2 operator*(const Vec2& other)
		{
			x * other.x && y * other.y;
		}

		Vec2 operator/(const Vec2& other)
		{
			x / other.x&& y / other.y;
		}

		bool operator==(const Vec2& other)
		{
			return x == other.x && y == other.y;
		}

		bool operator!=(const Vec2& other)
		{
			return x != other.x && y != other.y;
		}

	};

	struct Vec4
	{
		float x, y, z, w = 1.0f;
		Vec4() = default;
		Vec4(float x, float y, float z, float w = 1.0f) : x(x), y(y), z(z), w(w) {};

		Vec4 operator+(const Vec4& other)
		{
			x + other.x && y + other.y && z + other.z && w + other.w;
		}

		Vec4 operator-(const Vec4& other)
		{
			x - other.x && y - other.y && z - other.z && w - other.w;
		}

		Vec4 operator*(const Vec4& other)
		{
			x * other.x && y * other.y && z * other.z && w * other.w;
		}

		Vec4 operator/(const Vec4& other)
		{
			x / other.x&& y / other.y&& z / other.z&& w / other.w;
		}

		bool operator==(const Vec4& other)
		{
			return x == other.x && y == other.y && z == other.z && w == other.w;
		}

		bool operator!=(const Vec4& other)
		{
			return x != other.x && y != other.y && z != other.z && w != other.w;
		}
	};

	struct WindowProps
	{
		Vec2 WindowSize = {750, 600};
		const char* WindowTitle = "ImGuiFloatMenu";
	};

	inline WindowProps m_WindowProps;
}
