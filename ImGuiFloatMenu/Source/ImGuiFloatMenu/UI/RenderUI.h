#pragma once

#define IMGUI_DEFINE_MATH_OPERATORS

#include <imgui.h>
#include "backends/imgui_impl_win32.h"
#include "backends/imgui_impl_dx11.h"

#include <d3d11.h>
#include <Windows.h>

extern ID3D11Device* g_pd3dDevice;
extern ID3D11DeviceContext* g_pd3dDeviceContext;
extern IDXGISwapChain* g_pSwapChain;
extern bool                 g_SwapChainOccluded;
extern UINT                 g_ResizeWidth;
extern UINT                 g_ResizeHeight;
extern ID3D11RenderTargetView* g_mainRenderTargetView;

bool CreateDeviceD3D(HWND hWnd);
void CleanupDeviceD3D();
void CreateRenderTarget();
void CleanupRenderTarget();
LRESULT WINAPI WndProc(HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam);

namespace UI
{
	class ImGuiRender
	{
	public:
		void OnImGuiRender();
	};
}