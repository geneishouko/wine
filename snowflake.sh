make dlls/wined3d dlls/d3d9

libs="dlls/opengl32/libopengl32.a dlls/user32/libuser32.a dlls/gdi32/libgdi32.a dlls/advapi32/libadvapi32.a libs/port/libwine_port.a"

objs="dlls/d3d9/buffer.o dlls/d3d9/d3d9_main.o dlls/d3d9/device.o dlls/d3d9/directx.o dlls/d3d9/query.o dlls/d3d9/shader.o dlls/d3d9/stateblock.o dlls/d3d9/surface.o dlls/d3d9/swapchain.o dlls/d3d9/texture.o dlls/d3d9/vertexdeclaration.o dlls/d3d9/volume.o dlls/wined3d/arb_program_shader.o dlls/wined3d/ati_fragment_shader.o dlls/wined3d/buffer.o dlls/wined3d/context.o dlls/wined3d/cs.o dlls/wined3d/device.o dlls/wined3d/directx.o dlls/wined3d/drawprim.o dlls/wined3d/gl_compat.o dlls/wined3d/glsl_shader.o dlls/wined3d/nvidia_texture_shader.o dlls/wined3d/palette.o dlls/wined3d/query.o dlls/wined3d/resource.o dlls/wined3d/sampler.o dlls/wined3d/shader.o dlls/wined3d/shader_sm1.o dlls/wined3d/shader_sm4.o dlls/wined3d/state.o dlls/wined3d/stateblock.o dlls/wined3d/surface.o dlls/wined3d/swapchain.o dlls/wined3d/texture.o dlls/wined3d/utils.o dlls/wined3d/vertexdeclaration.o dlls/wined3d/view.o dlls/wined3d/wined3d_main.o libs/wine/debug.o"

tools/winegcc/winegcc.exe -o wined3d9.dll -Btools/winebuild \
-fasynchronous-unwind-tables -shared snowflake.spec $objs $libs -static-libgcc  -Wl,--gc-sections


