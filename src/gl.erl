%% This file is generated. Do not edit!
-module(gl).
-moduledoc """
OpenGL ES 3.1 binding.

It exposes the OpenGL ES 3.1 API through the `gl` module with small, explicit adjustments for BEAM use.

Most command names stay close to their OpenGL counterparts. The generator maps
camel-case commands to snake_case functions, exposes enums as atoms and
bitfields as lists of atoms, and uses named `gl:*()` types for OpenGL scalar
families such as `gl:int()`, `gl:sizei()`, `gl:float()`, and `gl:double()`.

For example:

```erlang
{ok, Shader} = gl:create_shader(vertex_shader).
ok = gl:line_width(3.0).
ok = gl:scissor(0, 0, 800, 600).
```

It keeps the command identity recognizable while replacing raw integer
constants with atoms and turning OpenGL object names into typed handles such as
`gl:shader()`, `gl:program()`, `gl:buffer()`, and `gl:texture()`.

When OpenGL uses fixed-size numeric aggregates, the binding prefers structured
tuple values over flat caller-managed arrays. Vectors map to tuples by arity,
and matrix families use tuples of column vectors so shapes such as
`matrix2x3(gl:float())` read as two columns of height three.

```erlang
ok = gl:program_uniform(ui, Program, Location, {0.0, 1.0, 0.0, 1.0}).
```

That keeps the aggregate shape visible at the call site.

Some OpenGL commands use a raw enum argument to choose a semantic sub-operation.
When the valid value type depends on that enum, the binding prefers explicit
semantic wrappers over exposing the raw selector directly.

```erlang
ok = gl:tex_min_filter(texture_2d, nearest).
ok = gl:tex_mag_filter(texture_2d, nearest).
ok = gl:tex_wrap_s(texture_2d, clamp_to_edge).
ok = gl:tex_wrap_t(texture_2d, clamp_to_edge).
```

Return values also follow a small BEAM-oriented convention: commands that do
not produce a value return `ok`, and commands that produce one or more values
return `{ok, ...}` tuples.

The generated module also provides enum helper functions:

- `enum_groups_/0` lists the available enum groups.
- `enums_/1` lists the atoms for one enum group.
- `enum_value_/1` maps an atom to its numeric OpenGL value.
- `value_enums_/1` maps a numeric value to the matching atoms.
- `value_enum_/2` resolves one numeric value within a specific enum group.

The module assumes a valid OpenGL context is already current before any NIF
backed command runs. That keeps context creation and current-context management
outside the `gl` module itself.
""".

-compile({nowarn_redefined_builtin_type, [boolean/0, byte/0, float/0]}).

% Low-level OpenGL types.
-export_type([boolean/0]).
-export_type([byte/0]).
-export_type([ubyte/0]).
-export_type([short/0]).
-export_type([ushort/0]).
-export_type([int/0]).
-export_type([uint/0]).
-export_type([int64/0]).
-export_type([uint64/0]).
-export_type([sizei/0]).
-export_type([intptr/0]).
-export_type([sizeiptr/0]).
-export_type([offset/0]).
-export_type([float/0]).
-export_type([double/0]).

-export_type([scalar/1]).
-export_type([vector1/1, vector2/1, vector3/1, vector4/1]).
-export_type([matrix2/1, matrix3/1, matrix4/1]).
-export_type([matrix2x3/1, matrix3x2/1]).
-export_type([matrix2x4/1, matrix4x2/1]).
-export_type([matrix3x4/1, matrix4x3/1]).

-export_type([enum/0]).
-export_type([bitfield/0]).

% High-level OpenGL types.
-export_type([shader/0]).
-export_type([program/0]).
-export_type([buffer/0]).
-export_type([renderbuffer/0]).
-export_type([framebuffer/0]).
-export_type([vertex_array/0]).
-export_type([texture/0]).
-export_type([query/0]).
-export_type([sync/0]).
-export_type([sampler/0]).
-export_type([transform_feedback/0]).
-export_type([program_pipeline/0]).

% The OpenGL enum types.
-export_type([texture_min_filter/0]).
-export_type([attribute_type/0]).
-export_type([internal_format_target/0]).
-export_type([framebuffer_target/0]).
-export_type([string_name/0]).
-export_type([pixel_format/0]).
-export_type([program_interface_parameter_name/0]).
-export_type([front_face_direction/0]).
-export_type([vertex_attrib_type/0]).
-export_type([sized_internal_format/0]).
-export_type([texture_level_parameter_name/0]).
-export_type([state_parameter_name/0]).
-export_type([transform_feedback_target/0]).
-export_type([texture_unit/0]).
-export_type([sampler_parameter_name/0]).
-export_type([buffer_parameter_name/0]).
-export_type([texture_mag_filter/0]).
-export_type([blend_equation_mode/0]).
-export_type([texture_wrap_mode/0]).
-export_type([internal_format/0]).
-export_type([transform_feedback_buffer_mode/0]).
-export_type([shader_type/0]).
-export_type([vertex_attrib_pointer_type/0]).
-export_type([framebuffer_parameter_name/0]).
-export_type([buffer_target/0]).
-export_type([query_parameter_name/0]).
-export_type([query_object_parameter_name/0]).
-export_type([copy_buffer_sub_data_target/0]).
-export_type([texture_target/0]).
-export_type([blending_factor/0]).
-export_type([multisample_parameter_name/0]).
-export_type([framebuffer_query_parameter_name/0]).
-export_type([renderbuffer_parameter_name/0]).
-export_type([uniform_type/0]).
-export_type([query_target/0]).
-export_type([clear_buffer/0]).
-export_type([stencil_op/0]).
-export_type([enable_cap/0]).
-export_type([vertex_attrib_i_type/0]).
-export_type([read_buffer_mode/0]).
-export_type([buffer_access/0]).
-export_type([shader_precision_type/0]).
-export_type([pixel_type/0]).
-export_type([program_parameter_p_name/0]).
-export_type([internal_format_parameter_name/0]).
-export_type([hint_target/0]).
-export_type([triangle_face/0]).
-export_type([draw_buffer_mode/0]).
-export_type([vertex_attrib_parameter_name/0]).
-export_type([vertex_attrib_i_parameter_name/0]).
-export_type([primitive_type/0]).
-export_type([buffer_usage/0]).
-export_type([blit_framebuffer_filter/0]).
-export_type([framebuffer_attachment/0]).
-export_type([draw_elements_type/0]).
-export_type([active_uniform_block_parameter_name/0]).
-export_type([renderbuffer_target/0]).
-export_type([program_resource_property/0]).
-export_type([depth_function/0]).
-export_type([hint_mode/0]).
-export_type([active_uniform_parameter_name/0]).
-export_type([framebuffer_attachment_parameter_name/0]).
-export_type([stencil_function/0]).
-export_type([program_pipeline_parameter_name/0]).
-export_type([texture_parameter_name/0]).
-export_type([error_code/0]).
-export_type([pixel_store_parameter/0]).
-export_type([program_interface/0]).
-export_type([framebuffer_status/0]).

% The OpenGL bitfield types.
-export_type([clear_buffer_mask/0]).
-export_type([memory_barrier_mask/0]).
-export_type([use_program_stage_mask/0]).

% Extra functions.
-export([enum_groups_/0]).
-export([enums_/1]).
-export([enum_value_/1]).
-export([value_enums_/1]).
-export([value_enum_/2]).


-export([disable/1]).
-export([memory_barrier_by_region/1]).
-export([sampler_parameter/4]).
-export([get_max_vertex_image_uniforms/0]).
-export([get_program_link_status/1]).
-export([tex_sub_image_2d/9]).
-export([get_min_program_texture_gather_offset/0]).
-export([enable_vertex_attrib_array/1]).
-export([clear_stencil/1]).
-export([get_program_active_uniforms_count/1]).
-export([bind_attrib_location/3]).
-export([vertex_attrib_binding/2]).
-export([transform_feedback_varyings/3]).
-export([get_program_info_log/2]).
-export([tex_storage_2d/5]).
-export([get_program_pipeline_info_log/2]).
-export([get_boolean/3]).
-export([get_max_combined_image_uniforms/0]).
-export([get_shader_precision_format/2]).
-export([get_max_combined_atomic_counter_buffers/0]).
-export([get_transform_feedback_varying/3]).
-export([get_num_shader_binary_formats/0]).
-export([delete_renderbuffers/1]).
-export([get_max_shader_storage_buffer_bindings/0]).
-export([stencil_op/3]).
-export([vertex_attrib_i/3]).
-export([is_renderbuffer/1]).
-export([flush/0]).
-export([pause_transform_feedback/0]).
-export([is_query/1]).
-export([is_transform_feedback/1]).
-export([read_buffer/1]).
-export([get_internal_format/5]).
-export([get_max_compute_uniform_components/0]).
-export([get_max_compute_image_uniforms/0]).
-export([create_shader/1]).
-export([bind_program_pipeline/1]).
-export([get_program_attached_shaders_count/1]).
-export([draw_elements_instanced/5]).
-export([bind_image_texture/7]).
-export([vertex_attrib_pointer/6]).
-export([get_max_fragment_uniform_vectors/0]).
-export([get_pack_skip_rows/0]).
-export([get_integer64/2]).
-export([get_max_fragment_atomic_counter_buffers/0]).
-export([get_max_combined_fragment_uniform_components/0]).
-export([get_max_vertex_attrib_stride/0]).
-export([draw_arrays_instanced/4]).
-export([draw_elements/4]).
-export([polygon_offset/2]).
-export([end_transform_feedback/0]).
-export([draw_range_elements/6]).
-export([active_shader_program/2]).
-export([get_max_compute_texture_image_units/0]).
-export([get_shader_source_length/1]).
-export([stencil_mask/1]).
-export([get_max_shader_storage_block_size/0]).
-export([get_minor_version/0]).
-export([get_program_interface/4]).
-export([get_program_resource_name/4]).
-export([get_max_depth_texture_samples/0]).
-export([copy_buffer_sub_data/5]).
-export([program_uniform/4]).
-export([disable_vertex_attrib_array/1]).
-export([get_program_validation_status/1]).
-export([clear_depth/1]).
-export([link_program/1]).
-export([compile_shader/1]).
-export([detach_shader/2]).
-export([buffer_data/3]).
-export([get_max_uniform_locations/0]).
-export([get_max_uniform_block_size/0]).
-export([get_max_framebuffer_height/0]).
-export([get_shader_info_log_length/1]).
-export([get_uniform_indices/2]).
-export([attach_shader/2]).
-export([get_uniform_buffer_offset_alignment/0]).
-export([generate_mipmap/1]).
-export([tex_parameter/4]).
-export([get_shader_compiler_supported/0]).
-export([get_program_active_attributes_count/1]).
-export([draw_buffers/1]).
-export([get_framebuffer_parameter/3]).
-export([bind_buffer_base/3]).
-export([get_samples_count/0]).
-export([check_framebuffer_status/1]).
-export([get_program_pipeline/3]).
-export([get_program_active_uniform_block_max_name_length/1]).
-export([is_program/1]).
-export([get_major_version/0]).
-export([get_max_color_attachments/0]).
-export([get_pack_skip_pixels/0]).
-export([is_shader/1]).
-export([gen_textures/1]).
-export([gen_renderbuffers/1]).
-export([get_max_uniform_buffer_bindings/0]).
-export([shader_binary/3]).
-export([get_active_attrib/3]).
-export([validate_program/1]).
-export([get_sample_buffers_count/0]).
-export([bind_vertex_buffer/4]).
-export([get_max_compute_work_group_invocations/0]).
-export([get_string/2]).
-export([tex_sub_image_3d/11]).
-export([memory_barrier/1]).
-export([copy_tex_image_2d/8]).
-export([get_max_combined_uniform_blocks/0]).
-export([bind_vertex_array/1]).
-export([framebuffer_parameter/3]).
-export([invalidate_sub_framebuffer/6]).
-export([get_multisample/3]).
-export([blit_framebuffer/10]).
-export([get_unpack_image_height/0]).
-export([stencil_mask_separate/2]).
-export([vertex_attrib_format/5]).
-export([scissor/4]).
-export([tex_image_2d/9]).
-export([get_attrib_location/2]).
-export([delete_transform_feedbacks/1]).
-export([get_max_cube_map_texture_size/0]).
-export([get_vertex_attrib/4]).
-export([get_error/0]).
-export([is_vertex_array/1]).
-export([get_program_info_log_length/1]).
-export([get_max_atomic_counter_buffer_bindings/0]).
-export([bind_texture/2]).
-export([vertex_attrib_i_pointer/5]).
-export([get_num_extensions/0]).
-export([get_max_compute_atomic_counter_buffers/0]).
-export([delete_shader/1]).
-export([get_max_combined_vertex_uniform_components/0]).
-export([get_tex_level_parameter/5]).
-export([get_max_fragment_image_uniforms/0]).
-export([depth_range/2]).
-export([uniform/3]).
-export([get_integer/3]).
-export([stencil_func/3]).
-export([get_max_vertex_attrib_relative_offset/0]).
-export([clear_buffer/4]).
-export([gen_program_pipelines/1]).
-export([tex_wrap_t/2]).
-export([draw_arrays/3]).
-export([get_max_color_texture_samples/0]).
-export([get_max_fragment_atomic_counters/0]).
-export([get_max_vertex_texture_image_units/0]).
-export([framebuffer_texture_2d/5]).
-export([delete_textures/1]).
-export([get_max_varying_vectors/0]).
-export([invalidate_framebuffer/2]).
-export([get_unpack_skip_images/0]).
-export([vertex_attrib_i_format/4]).
-export([get_max_combined_texture_image_units/0]).
-export([tex_min_filter/2]).
-export([tex_mag_filter/2]).
-export([get_max_combined_shader_output_resources/0]).
-export([line_width/1]).
-export([sample_mask/2]).
-export([depth_mask/1]).
-export([blend_equation_separate/2]).
-export([get_program_active_uniform_blocks_count/1]).
-export([get_program_resource_index/3]).
-export([copy_tex_sub_image_3d/9]).
-export([get_shader_storage_buffer_offset_alignment/0]).
-export([viewport/4]).
-export([tex_image_3d/10]).
-export([compressed_tex_sub_image_2d/8]).
-export([get_query/3]).
-export([tex_wrap_s/2]).
-export([bind_buffer/2]).
-export([uniform_block_binding/3]).
-export([uniform_matrix/3]).
-export([vertex_binding_divisor/2]).
-export([get_program_transform_feedback_varying_max_length/1]).
-export([get_max_fragment_uniform_components/0]).
-export([get_max_fragment_shader_storage_blocks/0]).
-export([get_program_delete_status/1]).
-export([get_max_elements_indices/0]).
-export([get_shader_source/2]).
-export([get_program_active_uniform_max_length/1]).
-export([get_program_binary_length/1]).
-export([sample_coverage/2]).
-export([stencil_op_separate/4]).
-export([get_program_pipeline_info_log_length/1]).
-export([get_program_resource_location/3]).
-export([get_subpixel_bits/0]).
-export([get_max_framebuffer_samples/0]).
-export([get_max_vertex_atomic_counter_buffers/0]).
-export([program_binary/3]).
-export([get_max_framebuffer_width/0]).
-export([clear_buffer_depth_stencil/3]).
-export([blend_func/2]).
-export([use_program_stages/3]).
-export([get_max_vertex_uniform_components/0]).
-export([delete_framebuffers/1]).
-export([hint/2]).
-export([get_max_compute_shader_storage_blocks/0]).
-export([get_boolean/2]).
-export([get_max_transform_feedback_separate_components/0]).
-export([begin_transform_feedback/1]).
-export([get_max_array_texture_layers/0]).
-export([blend_color/4]).
-export([tex_storage_2d_multisample/6]).
-export([is_program_pipeline/1]).
-export([delete_buffers/1]).
-export([get_max_compute_shared_memory_size/0]).
-export([get_max_sample_mask_words/0]).
-export([get_framebuffer_attachment_parameter/4]).
-export([get_max_program_texture_gather_offset/0]).
-export([get_max_varying_components/0]).
-export([begin_query/2]).
-export([program_uniform_matrix/4]).
-export([get_program_active_attribute_max_length/1]).
-export([get_max_vertex_uniform_blocks/0]).
-export([get_program_transform_feedback_varyings_count/1]).
-export([release_shader_compiler/0]).
-export([pixel_store/2]).
-export([get_max_transform_feedback_separate_attribs/0]).
-export([end_query/1]).
-export([get_program_binary/2]).
-export([get_active_uniforms/3]).
-export([shader_source/2]).
-export([clear/1]).
-export([framebuffer_renderbuffer/4]).
-export([get_max_renderbuffer_size/0]).
-export([validate_program_pipeline/1]).
-export([get_max_transform_feedback_interleaved_components/0]).
-export([draw_arrays_indirect/2]).
-export([get_buffer_parameter/4]).
-export([get_unpack_alignment/0]).
-export([get_max_combined_atomic_counters/0]).
-export([get_max_vertex_output_components/0]).
-export([copy_tex_sub_image_2d/8]).
-export([get_active_uniform/3]).
-export([get_program_active_atomic_counter_buffers_count/1]).
-export([renderbuffer_storage/4]).
-export([get_num_compressed_texture_formats/0]).
-export([stencil_func_separate/4]).
-export([get_integer/2]).
-export([get_active_uniform_block/4]).
-export([gen_vertex_arrays/1]).
-export([depth_func/1]).
-export([gen_framebuffers/1]).
-export([vertex_attrib_divisor/2]).
-export([get_max_texture_image_units/0]).
-export([get_min_program_texel_offset/0]).
-export([get_vertex_attrib_i/4]).
-export([get_float/2]).
-export([tex_storage_3d/6]).
-export([get_unpack_row_length/0]).
-export([color_mask/4]).
-export([get_max_fragment_input_components/0]).
-export([get_max_compute_atomic_counters/0]).
-export([get_max_vertex_attrib_bindings/0]).
-export([get_attached_shaders/2]).
-export([renderbuffer_storage_multisample/5]).
-export([is_texture/1]).
-export([get_max_combined_shader_storage_blocks/0]).
-export([compressed_tex_image_3d/8]).
-export([get_max_integer_samples/0]).
-export([is_framebuffer/1]).
-export([gen_samplers/1]).
-export([get_unpack_skip_pixels/0]).
-export([gen_transform_feedbacks/1]).
-export([get_max_draw_buffers/0]).
-export([is_sampler/1]).
-export([get_max_elements_vertices/0]).
-export([front_face/1]).
-export([blend_equation/1]).
-export([get_string/1]).
-export([get_program_separable/1]).
-export([get_shader_info_log/2]).
-export([delete_queries/1]).
-export([get_max_vertex_atomic_counters/0]).
-export([gen_queries/1]).
-export([enable/1]).
-export([create_shader_program/2]).
-export([delete_program_pipelines/1]).
-export([get_tex_parameter/4]).
-export([is_buffer/1]).
-export([blend_func_separate/4]).
-export([bind_framebuffer/2]).
-export([bind_renderbuffer/2]).
-export([get_max_compute_uniform_blocks/0]).
-export([clear_color/4]).
-export([get_max_combined_compute_uniform_components/0]).
-export([get_uniform_block_index/2]).
-export([get_max_program_texel_offset/0]).
-export([get_max_vertex_shader_storage_blocks/0]).
-export([get_max_samples/0]).
-export([get_max_vertex_attribs/0]).
-export([is_enabled/1]).
-export([delete_samplers/1]).
-export([vertex_attrib/3]).
-export([dispatch_compute/3]).
-export([get_unpack_skip_rows/0]).
-export([get_program_resource/5]).
-export([get_program_pipeline_validation_status/1]).
-export([gen_buffers/1]).
-export([get_uniform/4]).
-export([buffer_sub_data/3]).
-export([get_sampler_parameter/4]).
-export([active_texture/1]).
-export([get_max_texture_size/0]).
-export([get_shader_delete_status/1]).
-export([resume_transform_feedback/0]).
-export([get_integer64/3]).
-export([get_max_image_units/0]).
-export([finish/0]).
-export([get_renderbuffer_parameter/3]).
-export([delete_vertex_arrays/1]).
-export([compressed_tex_sub_image_3d/10]).
-export([get_num_program_binary_formats/0]).
-export([get_query_object/4]).
-export([bind_buffer_range/5]).
-export([get_shader_compile_status/1]).
-export([get_max_3d_texture_size/0]).
-export([create_program/0]).
-export([get_active_uniform_block_name/3]).
-export([compressed_tex_image_2d/7]).
-export([framebuffer_texture_layer/5]).
-export([dispatch_compute_indirect/1]).
-export([cull_face/1]).
-export([draw_elements_indirect/3]).
-export([get_max_vertex_uniform_vectors/0]).
-export([use_program/1]).
-export([get_max_fragment_uniform_blocks/0]).
-export([bind_sampler/2]).
-export([read_pixels/7]).
-export([delete_program/1]).
-export([get_pack_alignment/0]).
-export([get_frag_data_location/2]).
-export([get_uniform_location/2]).
-export([program_parameter/3]).
-export([get_max_atomic_counter_buffer_size/0]).
-export([get_pack_row_length/0]).
-export([bind_transform_feedback/2]).

-include("../include/gl.hrl").

-define(CALL_RAW_FUNC_UNCHECKED(Func),
    begin
    case Func of
        {} ->
            ok;
        {Arg__} ->
            {ok, Arg__};
        {Arg1__, Arg2__} ->
            {ok, Arg1__, Arg2__};
        {Arg1__, Arg2__, Arg3__} ->
            {ok, Arg1__, Arg2__, Arg3__}
    end
    end
).
-ifndef(DEBUG).
-define(CALL_RAW_FUNC(Func), ?CALL_RAW_FUNC_UNCHECKED(Func)).
-else.
-define(CALL_RAW_FUNC(Func), 
    begin
    Result__ = Func,
    case gl:get_error() of
        {ok, no_error} ->
            ?CALL_RAW_FUNC_UNCHECKED(Result__);
        {ok, Code__} ->
            {error, Code__}
    end
    end
).
-endif.
-doc "The OpenGL `boolean` type.".
-type boolean() :: erlang:boolean().
-doc "The OpenGL `byte` type.".
-type byte() :: integer().
-doc "The OpenGL `ubyte` type.".
-type ubyte() :: non_neg_integer().
-doc "The OpenGL `short` type.".
-type short() :: integer().
-doc "The OpenGL `ushort` type.".
-type ushort() :: non_neg_integer().
-doc "The OpenGL `int` type.".
-type int() :: integer().
-doc "The OpenGL `uint` type.".
-type uint() :: non_neg_integer().
-doc "The OpenGL `int64` type.".
-type int64() :: integer().
-doc "The OpenGL `uint64` type.".
-type uint64() :: non_neg_integer().
-doc "The OpenGL `sizei` type.".
-type sizei() :: integer().
-doc "The OpenGL `intptr` type.".
-type intptr() :: integer().
-doc "The OpenGL `sizeiptr` type.".
-type sizeiptr() :: integer().
-doc "A byte offset into the currently bound OpenGL buffer.".
-type offset() :: non_neg_integer().
-doc "The OpenGL `float` type.".
-type float() :: erlang:float().
-doc "The OpenGL `double` type.".
-type double() :: erlang:float().

-doc "to be written.".
-type scalar(Type) :: Type.

-doc "A 1D vector.".
-type vector1(Type) :: {scalar(Type)}.
-doc "A 2D vector.".
-type vector2(Type) :: {scalar(Type), scalar(Type)}.
-doc "A 3D vector.".
-type vector3(Type) :: {scalar(Type), scalar(Type), scalar(Type)}.
-doc "A 4D vector.".
-type vector4(Type) :: {scalar(Type), scalar(Type), scalar(Type), scalar(Type)}.

-doc "A 2x2 matrix.".
-type matrix2(Type) :: {vector2(Type), vector2(Type)}.
-doc "A 3x3 matrix.".
-type matrix3(Type) :: {vector3(Type), vector3(Type), vector3(Type)}.
-doc "A 4x4 matrix.".
-type matrix4(Type) :: {vector4(Type), vector4(Type), vector4(Type), vector4(Type)}.

-doc "A 2x3 matrix.".
-type matrix2x3(Type) :: {vector3(Type), vector3(Type)}.
-doc "A 3x2 matrix.".
-type matrix3x2(Type) :: {vector2(Type), vector2(Type), vector2(Type)}.

-doc "A 2x4 matrix.".
-type matrix2x4(Type) :: {vector4(Type), vector4(Type)}.
-doc "A 4x2 matrix.".
-type matrix4x2(Type) :: {vector2(Type), vector2(Type), vector2(Type), vector2(Type)}.

-doc "A 3x4 matrix.".
-type matrix3x4(Type) :: {vector4(Type), vector4(Type), vector4(Type)}.
-doc "A 4x3 matrix.".
-type matrix4x3(Type) :: {vector3(Type), vector3(Type), vector3(Type), vector3(Type)}.

-doc "An OpenGL enum.".
-type enum() :: atom().
-doc "An OpenGL bit field.".
-type bitfield() :: [atom()].

-doc "An OpenGL shader object.".
-type shader() :: pos_integer().
-doc "An OpenGL program object.".
-type program() :: pos_integer().
-doc "An OpenGL buffer object.".
-type buffer() :: pos_integer().
-doc "An OpenGL renderbuffer object.".
-type renderbuffer() :: pos_integer().
-doc "An OpenGL framebuffer object.".
-type framebuffer() :: pos_integer().
-doc "An OpenGL vertex array object.".
-type vertex_array() :: pos_integer().
-doc "An OpenGL texture object.".
-type texture() :: pos_integer().
-doc "An OpenGL query object.".
-type query() :: pos_integer().
-doc "An OpenGL sync object.".
-type sync() :: pos_integer().
-doc "An OpenGL sampler object.".
-type sampler() :: pos_integer().
-doc "An OpenGL transform feedback object.".
-type transform_feedback() :: pos_integer().
-doc "An OpenGL program pipeline object.".
-type program_pipeline() :: pos_integer().

-doc "The OpenGL `texture_min_filter` enum.".
-type texture_min_filter() ::
    nearest_mipmap_linear |
    nearest |
    linear |
    linear_mipmap_linear |
    linear_mipmap_nearest |
    nearest_mipmap_nearest
.
-doc "The OpenGL `attribute_type` enum.".
-type attribute_type() ::
    sampler_cube |
    float_mat2x4 |
    unsigned_int_image_2d_array |
    unsigned_int_sampler_2d_multisample |
    int_vec4 |
    unsigned_int_image_cube |
    image_cube |
    unsigned_int_sampler_2d |
    float_mat4 |
    int_image_cube |
    bool_vec3 |
    int_sampler_2d_multisample |
    sampler_2d_shadow |
    float_vec2 |
    unsigned_int_image_3d |
    int_image_2d_array |
    int_image_3d |
    int_sampler_cube |
    sampler_cube_shadow |
    sampler_2d |
    float_mat4x3 |
    image_3d |
    unsigned_int_sampler_3d |
    float_vec3 |
    image_2d_array |
    sampler_3d |
    int_sampler_2d |
    unsigned_int_image_2d |
    float_mat3x2 |
    float |
    image_2d |
    sampler_2d_array_shadow |
    unsigned_int_vec3 |
    float_mat2 |
    unsigned_int_vec4 |
    float_vec4 |
    int_sampler_2d_array |
    bool_vec4 |
    float_mat3x4 |
    int_image_2d |
    int_vec3 |
    bool |
    float_mat4x2 |
    bool_vec2 |
    float_mat2x3 |
    unsigned_int_vec2 |
    int |
    unsigned_int |
    int_sampler_3d |
    unsigned_int_sampler_cube |
    unsigned_int_sampler_2d_array |
    float_mat3 |
    sampler_2d_multisample |
    int_vec2
.
-doc "The OpenGL `internal_format_target` enum.".
-type internal_format_target() ::
    texture_2d_multisample |
    texture_2d |
    texture_2d_array |
    texture_cube_map_negative_z |
    texture_cube_map_positive_x |
    texture_3d |
    renderbuffer |
    texture_cube_map_negative_y |
    texture_cube_map_positive_y |
    texture_cube_map_negative_x |
    texture_cube_map |
    texture_cube_map_positive_z
.
-doc "The OpenGL `framebuffer_target` enum.".
-type framebuffer_target() ::
    draw_framebuffer |
    framebuffer |
    read_framebuffer
.
-doc "The OpenGL `string_name` enum.".
-type string_name() ::
    version |
    shading_language_version |
    extensions |
    renderer |
    vendor
.
-doc "The OpenGL `pixel_format` enum.".
-type pixel_format() ::
    rgba_integer |
    luminance |
    rgb |
    rgb_integer |
    rg |
    blue |
    alpha |
    depth_stencil |
    green |
    red |
    depth_component |
    luminance_alpha |
    unsigned_int |
    red_integer |
    stencil_index |
    rg_integer |
    rgba |
    unsigned_short
.
-doc "The OpenGL `program_interface_parameter_name` enum.".
-type program_interface_parameter_name() ::
    active_resources |
    max_num_active_variables |
    max_name_length
.
-doc "The OpenGL `front_face_direction` enum.".
-type front_face_direction() ::
    cw |
    ccw
.
-doc "The OpenGL `vertex_attrib_type` enum.".
-type vertex_attrib_type() ::
    half_float |
    int_2_10_10_10_rev |
    fixed |
    short |
    unsigned_int_10f_11f_11f_rev |
    unsigned_int_2_10_10_10_rev |
    unsigned_byte |
    float |
    int |
    unsigned_int |
    unsigned_short |
    byte
.
-doc "The OpenGL `sized_internal_format` enum.".
-type sized_internal_format() ::
    r32i |
    rgb8 |
    compressed_rg11_eac |
    stencil_index8 |
    rg32ui |
    rgb16ui |
    rgb32ui |
    rg8ui |
    rgba8i |
    rgba8_snorm |
    rgba32ui |
    compressed_r11_eac |
    compressed_rgb8_punchthrough_alpha1_etc2 |
    compressed_signed_rg11_eac |
    rgb16i |
    rgba32i |
    rg16ui |
    depth_component16 |
    rg32f |
    r8 |
    compressed_srgb8_etc2 |
    compressed_signed_r11_eac |
    r32f |
    rg8i |
    rgba16i |
    rgb8i |
    compressed_rgba8_etc2_eac |
    rgb32f |
    r16f |
    rg16i |
    rgb565 |
    rgb10_a2 |
    srgb8 |
    rgba16ui |
    r32ui |
    rgb8ui |
    r16i |
    compressed_srgb8_punchthrough_alpha1_etc2 |
    rg16f |
    rgba32f |
    rgb32i |
    rgba8 |
    rgb16f |
    rgba4 |
    depth_component32f |
    r8ui |
    depth24_stencil8 |
    rgb8_snorm |
    srgb8_alpha8 |
    r8i |
    rgba8ui |
    r8_snorm |
    rgb10_a2ui |
    r11f_g11f_b10f |
    rgb9_e5 |
    rgb5_a1 |
    rg32i |
    compressed_rgb8_etc2 |
    rgba16f |
    compressed_srgb8_alpha8_etc2_eac |
    rg8_snorm |
    depth_component24 |
    r16ui |
    depth32f_stencil8 |
    rg8
.
-doc "The OpenGL `texture_level_parameter_name` enum.".
-type texture_level_parameter_name() ::
    texture_wrap_t |
    texture_mag_filter |
    texture_height |
    texture_blue_size |
    texture_alpha_size |
    texture_green_size |
    texture_red_size |
    texture_internal_format |
    texture_wrap_s |
    texture_min_filter |
    texture_width
.
-doc "The OpenGL `state_parameter_name` enum.".
-type state_parameter_name() ::
    max_varying_vectors |
    compressed_texture_formats |
    polygon_offset_fill |
    shader_storage_buffer_size |
    dither |
    max_combined_compute_uniform_components |
    stencil_back_func |
    stencil_pass_depth_pass |
    max_combined_uniform_blocks |
    draw_framebuffer_binding |
    pack_skip_rows |
    blend_equation_rgb |
    max_elements_indices |
    max_compute_uniform_components |
    depth_func |
    max_vertex_uniform_blocks |
    depth_test |
    max_combined_shader_storage_blocks |
    shader_storage_buffer_start |
    min_program_texel_offset |
    max_framebuffer_samples |
    color_clear_value |
    major_version |
    max_compute_work_group_invocations |
    max_vertex_uniform_components |
    max_compute_shader_storage_blocks |
    max_framebuffer_height |
    max_shader_storage_buffer_bindings |
    max_draw_buffers |
    current_program |
    max_vertex_attrib_relative_offset |
    pack_row_length |
    transform_feedback_buffer_binding |
    shader_binary_formats |
    max_vertex_atomic_counters |
    stencil_ref |
    front_face |
    max_vertex_attribs |
    texture_2d |
    program_binary_formats |
    stencil_back_writemask |
    max_compute_texture_image_units |
    cull_face_mode |
    max_fragment_atomic_counters |
    scissor_test |
    max_color_texture_samples |
    max_fragment_uniform_vectors |
    sampler_binding |
    sample_coverage_invert |
    samples |
    element_array_buffer_binding |
    max_sample_mask_words |
    blue_bits |
    max_vertex_uniform_vectors |
    max_compute_atomic_counter_buffers |
    green_bits |
    implementation_color_read_type |
    alpha_bits |
    aliased_line_width_range |
    texture_binding_2d_array |
    pixel_unpack_buffer_binding |
    blend_color |
    blend_equation_alpha |
    max_uniform_block_size |
    stencil_back_pass_depth_fail |
    num_program_binary_formats |
    max_framebuffer_width |
    stencil_back_pass_depth_pass |
    max_combined_atomic_counters |
    vertex_binding_divisor |
    pack_alignment |
    max_compute_work_group_size |
    renderbuffer_binding |
    read_framebuffer_binding |
    texture_binding_cube_map |
    stencil_pass_depth_fail |
    unpack_skip_images |
    max_texture_size |
    red_bits |
    unpack_image_height |
    max_compute_atomic_counters |
    cull_face |
    sample_coverage_value |
    max_vertex_texture_image_units |
    array_buffer_binding |
    max_3d_texture_size |
    stencil_writemask |
    scissor_box |
    minor_version |
    max_compute_uniform_blocks |
    max_server_wait_timeout |
    transform_feedback_buffer_size |
    max_combined_fragment_uniform_components |
    shader_storage_buffer_offset_alignment |
    max_vertex_shader_storage_blocks |
    depth_bits |
    num_extensions |
    vertex_binding_stride |
    blend_dst_alpha |
    unpack_skip_rows |
    max_viewport_dims |
    num_shader_binary_formats |
    max_depth_texture_samples |
    vertex_array_binding |
    max_fragment_input_components |
    depth_clear_value |
    unpack_skip_pixels |
    stencil_back_fail |
    stencil_back_ref |
    max_renderbuffer_size |
    max_element_index |
    max_vertex_output_components |
    stencil_back_value_mask |
    max_color_attachments |
    max_combined_texture_image_units |
    max_texture_image_units |
    uniform_buffer_size |
    max_vertex_attrib_bindings |
    shader_storage_buffer_binding |
    blend |
    program_pipeline_binding |
    stencil_value_mask |
    max_texture_lod_bias |
    unpack_row_length |
    pack_skip_pixels |
    max_integer_samples |
    stencil_clear_value |
    color_writemask |
    shader_compiler |
    max_fragment_uniform_components |
    stencil_test |
    stencil_bits |
    max_elements_vertices |
    unpack_alignment |
    vertex_binding_offset |
    subpixel_bits |
    transform_feedback_buffer_start |
    max_combined_vertex_uniform_components |
    depth_range |
    sample_buffers |
    max_cube_map_texture_size |
    fragment_shader_derivative_hint |
    polygon_offset_factor |
    max_fragment_shader_storage_blocks |
    texture_binding_2d_multisample |
    max_uniform_locations |
    uniform_buffer_binding |
    dispatch_indirect_buffer_binding |
    depth_writemask |
    blend_src_rgb |
    max_program_texel_offset |
    max_compute_work_group_count |
    implementation_color_read_format |
    blend_equation |
    stencil_func |
    max_uniform_buffer_bindings |
    uniform_buffer_start |
    texture_binding_2d |
    max_array_texture_layers |
    read_buffer |
    blend_src_alpha |
    max_varying_components |
    max_fragment_uniform_blocks |
    aliased_point_size_range |
    uniform_buffer_offset_alignment |
    blend_dst_rgb |
    line_width |
    active_texture |
    viewport |
    stencil_fail |
    pixel_pack_buffer_binding |
    num_compressed_texture_formats |
    texture_binding_3d |
    polygon_offset_units
.
-doc "The OpenGL `transform_feedback_target` enum.".
-type transform_feedback_target() ::
    transform_feedback
.
-doc "The OpenGL `texture_unit` enum.".
-type texture_unit() ::
    texture19 |
    texture14 |
    texture10 |
    texture2 |
    texture17 |
    texture6 |
    texture8 |
    texture9 |
    texture28 |
    texture23 |
    texture24 |
    texture27 |
    texture21 |
    texture12 |
    texture4 |
    texture16 |
    texture13 |
    texture29 |
    texture3 |
    texture5 |
    texture11 |
    texture18 |
    texture7 |
    texture25 |
    texture26 |
    texture20 |
    texture30 |
    texture15 |
    texture1 |
    texture22 |
    texture0 |
    texture31
.
-doc "The OpenGL `sampler_parameter_name` enum.".
-type sampler_parameter_name() ::
    texture_wrap_t |
    texture_compare_mode |
    texture_mag_filter |
    texture_wrap_r |
    texture_wrap_s |
    texture_compare_func |
    texture_min_filter |
    texture_min_lod |
    texture_max_lod
.
-doc "The OpenGL `buffer_parameter_name` enum.".
-type buffer_parameter_name() ::
    buffer_map_length |
    buffer_map_offset |
    buffer_mapped |
    buffer_access_flags |
    buffer_size |
    buffer_usage
.
-doc "The OpenGL `texture_mag_filter` enum.".
-type texture_mag_filter() ::
    nearest |
    linear
.
-doc "The OpenGL `blend_equation_mode` enum.".
-type blend_equation_mode() ::
    func_add |
    max |
    func_subtract |
    func_reverse_subtract |
    min
.
-doc "The OpenGL `texture_wrap_mode` enum.".
-type texture_wrap_mode() ::
    mirrored_repeat |
    clamp_to_edge |
    repeat
.
-doc "The OpenGL `internal_format` enum.".
-type internal_format() ::
    r32i |
    rgb8 |
    compressed_rg11_eac |
    stencil_index8 |
    rg32ui |
    rgb16ui |
    rgb32ui |
    rg8ui |
    rgba8i |
    rgba8_snorm |
    rgb |
    rgba32ui |
    compressed_r11_eac |
    compressed_rgb8_punchthrough_alpha1_etc2 |
    compressed_signed_rg11_eac |
    rgb16i |
    rgba32i |
    rg16ui |
    rg |
    depth_component16 |
    rg32f |
    r8 |
    compressed_srgb8_etc2 |
    compressed_signed_r11_eac |
    r32f |
    rg8i |
    rgba16i |
    rgb8i |
    compressed_rgba8_etc2_eac |
    rgb32f |
    r16f |
    rg16i |
    rgb565 |
    rgb10_a2 |
    srgb8 |
    depth_stencil |
    rgba16ui |
    srgb |
    r32ui |
    rgb8ui |
    r16i |
    compressed_srgb8_punchthrough_alpha1_etc2 |
    rg16f |
    rgba32f |
    rgb32i |
    rgba8 |
    red |
    rgb16f |
    rgba4 |
    depth_component32f |
    r8ui |
    depth24_stencil8 |
    depth_component |
    rgb8_snorm |
    srgb8_alpha8 |
    r8i |
    rgba8ui |
    r8_snorm |
    rgb10_a2ui |
    r11f_g11f_b10f |
    rgb9_e5 |
    rgb5_a1 |
    stencil_index |
    rg32i |
    compressed_rgb8_etc2 |
    rgba16f |
    compressed_srgb8_alpha8_etc2_eac |
    rg8_snorm |
    rgba |
    depth_component24 |
    r16ui |
    depth32f_stencil8 |
    rg8
.
-doc "The OpenGL `transform_feedback_buffer_mode` enum.".
-type transform_feedback_buffer_mode() ::
    separate_attribs |
    interleaved_attribs
.
-doc "The OpenGL `shader_type` enum.".
-type shader_type() ::
    compute_shader |
    fragment_shader |
    vertex_shader
.
-doc "The OpenGL `vertex_attrib_pointer_type` enum.".
-type vertex_attrib_pointer_type() ::
    half_float |
    int_2_10_10_10_rev |
    fixed |
    short |
    unsigned_int_10f_11f_11f_rev |
    unsigned_int_2_10_10_10_rev |
    unsigned_byte |
    float |
    int |
    unsigned_int |
    unsigned_short |
    byte
.
-doc "The OpenGL `framebuffer_parameter_name` enum.".
-type framebuffer_parameter_name() ::
    framebuffer_default_fixed_sample_locations |
    framebuffer_default_samples |
    framebuffer_default_height |
    framebuffer_default_width
.
-doc "The OpenGL `buffer_target` enum.".
-type buffer_target() ::
    pixel_unpack_buffer |
    dispatch_indirect_buffer |
    array_buffer |
    copy_read_buffer |
    pixel_pack_buffer |
    transform_feedback_buffer |
    draw_indirect_buffer |
    shader_storage_buffer |
    copy_write_buffer |
    uniform_buffer |
    atomic_counter_buffer |
    element_array_buffer
.
-doc "The OpenGL `query_parameter_name` enum.".
-type query_parameter_name() ::
    current_query
.
-doc "The OpenGL `query_object_parameter_name` enum.".
-type query_object_parameter_name() ::
    query_result |
    query_result_available
.
-doc "The OpenGL `copy_buffer_sub_data_target` enum.".
-type copy_buffer_sub_data_target() ::
    pixel_unpack_buffer |
    dispatch_indirect_buffer |
    array_buffer |
    copy_read_buffer |
    pixel_pack_buffer |
    transform_feedback_buffer |
    draw_indirect_buffer |
    shader_storage_buffer |
    copy_write_buffer |
    uniform_buffer |
    atomic_counter_buffer |
    element_array_buffer
.
-doc "The OpenGL `texture_target` enum.".
-type texture_target() ::
    texture_2d_multisample |
    texture_2d |
    texture_2d_array |
    texture_cube_map_negative_z |
    texture_cube_map_positive_x |
    texture_3d |
    renderbuffer |
    texture_cube_map_negative_y |
    texture_cube_map_positive_y |
    texture_cube_map_negative_x |
    texture_cube_map |
    texture_cube_map_positive_z
.
-doc "The OpenGL `blending_factor` enum.".
-type blending_factor() ::
    constant_color |
    one_minus_constant_alpha |
    dst_color |
    one_minus_src_alpha |
    one_minus_dst_color |
    src_color |
    constant_alpha |
    one_minus_constant_color |
    src_alpha_saturate |
    zero |
    one_minus_src_color |
    one_minus_dst_alpha |
    dst_alpha |
    one |
    src_alpha
.
-doc "The OpenGL `multisample_parameter_name` enum.".
-type multisample_parameter_name() ::
    sample_position
.
-doc "The OpenGL `framebuffer_query_parameter_name` enum.".
-type framebuffer_query_parameter_name() ::
    samples |
    implementation_color_read_type |
    framebuffer_default_fixed_sample_locations |
    framebuffer_default_samples |
    framebuffer_default_height |
    framebuffer_default_width |
    sample_buffers |
    implementation_color_read_format
.
-doc "The OpenGL `renderbuffer_parameter_name` enum.".
-type renderbuffer_parameter_name() ::
    renderbuffer_blue_size |
    renderbuffer_alpha_size |
    renderbuffer_green_size |
    renderbuffer_red_size |
    renderbuffer_samples |
    renderbuffer_width |
    renderbuffer_stencil_size |
    renderbuffer_height |
    renderbuffer_internal_format |
    renderbuffer_depth_size
.
-doc "The OpenGL `uniform_type` enum.".
-type uniform_type() ::
    sampler_cube |
    float_mat2x4 |
    unsigned_int_sampler_2d_multisample |
    int_vec4 |
    unsigned_int_sampler_2d |
    float_mat4 |
    bool_vec3 |
    int_sampler_2d_multisample |
    sampler_2d_shadow |
    float_vec2 |
    int_sampler_cube |
    sampler_cube_shadow |
    sampler_2d |
    float_mat4x3 |
    unsigned_int_sampler_3d |
    float_vec3 |
    sampler_3d |
    int_sampler_2d |
    float_mat3x2 |
    float |
    sampler_2d_array_shadow |
    unsigned_int_vec3 |
    float_mat2 |
    unsigned_int_vec4 |
    float_vec4 |
    int_sampler_2d_array |
    bool_vec4 |
    float_mat3x4 |
    int_vec3 |
    bool |
    float_mat4x2 |
    bool_vec2 |
    float_mat2x3 |
    unsigned_int_vec2 |
    int |
    unsigned_int |
    int_sampler_3d |
    unsigned_int_sampler_cube |
    unsigned_int_sampler_2d_array |
    float_mat3 |
    sampler_2d_multisample |
    sampler_2d_array |
    int_vec2
.
-doc "The OpenGL `query_target` enum.".
-type query_target() ::
    any_samples_passed_conservative |
    any_samples_passed |
    transform_feedback_primitives_written
.
-doc "The OpenGL `clear_buffer` enum.".
-type clear_buffer() ::
    stencil |
    depth |
    color
.
-doc "The OpenGL `stencil_op` enum.".
-type stencil_op() ::
    incr_wrap |
    incr |
    invert |
    zero |
    decr_wrap |
    keep |
    decr |
    replace
.
-doc "The OpenGL `enable_cap` enum.".
-type enable_cap() ::
    polygon_offset_fill |
    dither |
    depth_test |
    texture_2d |
    scissor_test |
    cull_face |
    primitive_restart_fixed_index |
    blend |
    stencil_test |
    texture_cube_map |
    sample_coverage |
    sample_alpha_to_coverage |
    rasterizer_discard |
    sample_mask
.
-doc "The OpenGL `vertex_attrib_i_type` enum.".
-type vertex_attrib_i_type() ::
    short |
    unsigned_byte |
    int |
    unsigned_int |
    unsigned_short |
    byte
.
-doc "The OpenGL `read_buffer_mode` enum.".
-type read_buffer_mode() ::
    color_attachment2 |
    color_attachment6 |
    color_attachment13 |
    color_attachment5 |
    color_attachment11 |
    color_attachment0 |
    color_attachment7 |
    color_attachment12 |
    color_attachment4 |
    color_attachment9 |
    front |
    color_attachment8 |
    color_attachment15 |
    back |
    color_attachment1 |
    color_attachment10 |
    color_attachment3 |
    none |
    color_attachment14
.
-doc "The OpenGL `buffer_access` enum.".
-type buffer_access() ::
    write_only |
    read_write |
    read_only
.
-doc "The OpenGL `shader_precision_type` enum.".
-type shader_precision_type() ::
    high_int |
    medium_float |
    low_float |
    medium_int |
    low_int |
    high_float
.
-doc "The OpenGL `pixel_type` enum.".
-type pixel_type() ::
    half_float |
    unsigned_short_5_6_5 |
    short |
    float_32_unsigned_int_24_8_rev |
    unsigned_short_5_5_5_1 |
    unsigned_int_10f_11f_11f_rev |
    unsigned_int_2_10_10_10_rev |
    unsigned_byte |
    unsigned_int_24_8 |
    float |
    unsigned_int_5_9_9_9_rev |
    unsigned_short_4_4_4_4 |
    int |
    unsigned_int |
    unsigned_short |
    byte
.
-doc "The OpenGL `program_parameter_p_name` enum.".
-type program_parameter_p_name() ::
    program_binary_retrievable_hint |
    program_separable
.
-doc "The OpenGL `internal_format_parameter_name` enum.".
-type internal_format_parameter_name() ::
    image_format_compatibility_type |
    samples |
    texture_compressed |
    num_sample_counts
.
-doc "The OpenGL `hint_target` enum.".
-type hint_target() ::
    generate_mipmap_hint |
    program_binary_retrievable_hint |
    fragment_shader_derivative_hint
.
-doc "The OpenGL `triangle_face` enum.".
-type triangle_face() ::
    front |
    back |
    front_and_back
.
-doc "The OpenGL `draw_buffer_mode` enum.".
-type draw_buffer_mode() ::
    color_attachment2 |
    color_attachment16 |
    color_attachment21 |
    color_attachment6 |
    color_attachment29 |
    color_attachment13 |
    color_attachment19 |
    color_attachment22 |
    color_attachment5 |
    color_attachment11 |
    color_attachment25 |
    color_attachment23 |
    color_attachment0 |
    color_attachment17 |
    color_attachment7 |
    color_attachment12 |
    color_attachment4 |
    color_attachment18 |
    color_attachment9 |
    color_attachment26 |
    front |
    color_attachment8 |
    color_attachment15 |
    back |
    color_attachment20 |
    color_attachment1 |
    color_attachment10 |
    color_attachment27 |
    color_attachment3 |
    color_attachment31 |
    color_attachment28 |
    front_and_back |
    none |
    color_attachment30 |
    color_attachment24 |
    color_attachment14
.
-doc "The OpenGL `vertex_attrib_parameter_name` enum.".
-type vertex_attrib_parameter_name() ::
    vertex_attrib_array_enabled |
    current_vertex_attrib |
    vertex_attrib_array_type |
    vertex_attrib_array_integer |
    vertex_attrib_array_divisor |
    vertex_attrib_array_normalized |
    vertex_attrib_array_stride |
    vertex_attrib_binding |
    vertex_attrib_array_buffer_binding |
    vertex_attrib_relative_offset |
    vertex_attrib_array_size
.
-doc "The OpenGL `vertex_attrib_i_parameter_name` enum.".
-type vertex_attrib_i_parameter_name() ::
    vertex_attrib_array_enabled |
    current_vertex_attrib |
    vertex_attrib_array_type |
    vertex_attrib_array_integer |
    vertex_attrib_array_divisor |
    vertex_attrib_array_normalized |
    vertex_attrib_array_stride |
    vertex_attrib_array_buffer_binding |
    vertex_attrib_array_size
.
-doc "The OpenGL `primitive_type` enum.".
-type primitive_type() ::
    line_loop |
    points |
    triangle_fan |
    lines |
    line_strip |
    triangle_strip |
    triangles
.
-doc "The OpenGL `buffer_usage` enum.".
-type buffer_usage() ::
    dynamic_draw |
    static_draw |
    dynamic_copy |
    static_read |
    stream_copy |
    stream_read |
    static_copy |
    dynamic_read |
    stream_draw
.
-doc "The OpenGL `blit_framebuffer_filter` enum.".
-type blit_framebuffer_filter() ::
    nearest |
    linear
.
-doc "The OpenGL `framebuffer_attachment` enum.".
-type framebuffer_attachment() ::
    color_attachment2 |
    color_attachment16 |
    color_attachment21 |
    color_attachment6 |
    color_attachment29 |
    color_attachment13 |
    color_attachment19 |
    color_attachment22 |
    color_attachment5 |
    color_attachment11 |
    color_attachment25 |
    color_attachment23 |
    color_attachment0 |
    color_attachment17 |
    color_attachment7 |
    color_attachment12 |
    color_attachment4 |
    color_attachment18 |
    color_attachment9 |
    color_attachment26 |
    color_attachment8 |
    color_attachment15 |
    color_attachment20 |
    color_attachment1 |
    depth_stencil_attachment |
    color_attachment10 |
    color_attachment27 |
    color_attachment3 |
    color_attachment31 |
    depth_attachment |
    color_attachment28 |
    color_attachment30 |
    color_attachment24 |
    color_attachment14 |
    stencil_attachment
.
-doc "The OpenGL `draw_elements_type` enum.".
-type draw_elements_type() ::
    unsigned_byte |
    unsigned_int |
    unsigned_short
.
-doc "The OpenGL `active_uniform_block_parameter_name` enum.".
-type active_uniform_block_parameter_name() ::
    uniform_block_name_length |
    uniform_block_active_uniform_indices |
    uniform_block_binding |
    uniform_block_referenced_by_vertex_shader |
    uniform_block_referenced_by_fragment_shader |
    uniform_block_active_uniforms |
    uniform_block_data_size
.
-doc "The OpenGL `renderbuffer_target` enum.".
-type renderbuffer_target() ::
    renderbuffer
.
-doc "The OpenGL `program_resource_property` enum.".
-type program_resource_property() ::
    location |
    matrix_stride |
    buffer_data_size |
    is_row_major |
    block_index |
    active_variables |
    array_size |
    uniform |
    offset |
    referenced_by_vertex_shader |
    top_level_array_stride |
    array_stride |
    referenced_by_fragment_shader |
    buffer_binding |
    type |
    top_level_array_size |
    referenced_by_compute_shader |
    num_active_variables |
    name_length |
    atomic_counter_buffer_index
.
-doc "The OpenGL `depth_function` enum.".
-type depth_function() ::
    less |
    notequal |
    greater |
    gequal |
    lequal |
    never |
    always |
    equal
.
-doc "The OpenGL `hint_mode` enum.".
-type hint_mode() ::
    fastest |
    dont_care |
    nicest
.
-doc "The OpenGL `active_uniform_parameter_name` enum.".
-type active_uniform_parameter_name() ::
    uniform_size |
    uniform_offset |
    uniform_matrix_stride |
    uniform_is_row_major |
    uniform_block_index |
    uniform_name_length |
    uniform_array_stride |
    uniform_type
.
-doc "The OpenGL `framebuffer_attachment_parameter_name` enum.".
-type framebuffer_attachment_parameter_name() ::
    framebuffer_attachment_blue_size |
    framebuffer_attachment_color_encoding |
    framebuffer_attachment_green_size |
    framebuffer_attachment_texture_layer |
    framebuffer_attachment_texture_level |
    framebuffer_attachment_object_type |
    framebuffer_attachment_stencil_size |
    framebuffer_attachment_object_name |
    framebuffer_attachment_alpha_size |
    framebuffer_attachment_component_type |
    framebuffer_attachment_red_size |
    framebuffer_attachment_depth_size |
    framebuffer_attachment_texture_cube_map_face
.
-doc "The OpenGL `stencil_function` enum.".
-type stencil_function() ::
    less |
    notequal |
    greater |
    gequal |
    lequal |
    never |
    always |
    equal
.
-doc "The OpenGL `program_pipeline_parameter_name` enum.".
-type program_pipeline_parameter_name() ::
    info_log_length |
    active_program |
    fragment_shader |
    vertex_shader
.
-doc "The OpenGL `texture_parameter_name` enum.".
-type texture_parameter_name() ::
    texture_swizzle_a |
    texture_min_lod |
    texture_swizzle_r |
    texture_wrap_t |
    texture_max_lod |
    depth_stencil_texture_mode |
    texture_compare_mode |
    texture_mag_filter |
    texture_height |
    texture_base_level |
    texture_wrap_r |
    texture_blue_size |
    texture_swizzle_b |
    texture_alpha_size |
    texture_green_size |
    texture_red_size |
    texture_internal_format |
    texture_max_level |
    texture_wrap_s |
    texture_compare_func |
    texture_min_filter |
    texture_swizzle_g |
    texture_width
.
-doc "The OpenGL `error_code` enum.".
-type error_code() ::
    invalid_enum |
    invalid_framebuffer_operation |
    invalid_operation |
    out_of_memory |
    no_error |
    invalid_value
.
-doc "The OpenGL `pixel_store_parameter` enum.".
-type pixel_store_parameter() ::
    pack_skip_rows |
    pack_row_length |
    pack_alignment |
    unpack_skip_images |
    unpack_image_height |
    unpack_skip_rows |
    unpack_skip_pixels |
    unpack_row_length |
    pack_skip_pixels |
    unpack_alignment
.
-doc "The OpenGL `program_interface` enum.".
-type program_interface() ::
    uniform_block |
    transform_feedback_varying |
    program_output |
    program_input |
    uniform |
    transform_feedback_buffer |
    shader_storage_block |
    buffer_variable
.
-doc "The OpenGL `framebuffer_status` enum.".
-type framebuffer_status() ::
    framebuffer_incomplete_attachment |
    framebuffer_incomplete_missing_attachment |
    framebuffer_unsupported |
    framebuffer_undefined |
    framebuffer_incomplete_multisample |
    framebuffer_complete
.

-doc "The OpenGL `clear_buffer_mask` bitfield.".
-type clear_buffer_mask() :: [
    depth_buffer_bit |
    color_buffer_bit |
    stencil_buffer_bit
].
-doc "The OpenGL `memory_barrier_mask` bitfield.".
-type memory_barrier_mask() :: [
    vertex_attrib_array_barrier_bit |
    shader_image_access_barrier_bit |
    element_array_barrier_bit |
    command_barrier_bit |
    buffer_update_barrier_bit |
    uniform_barrier_bit |
    pixel_buffer_barrier_bit |
    framebuffer_barrier_bit |
    transform_feedback_barrier_bit |
    texture_fetch_barrier_bit |
    shader_storage_barrier_bit |
    texture_update_barrier_bit |
    atomic_counter_barrier_bit |
    all_barrier_bits
].
-doc "The OpenGL `use_program_stage_mask` bitfield.".
-type use_program_stage_mask() :: [
    compute_shader_bit |
    vertex_shader_bit |
    fragment_shader_bit |
    all_shader_bits
].

-nifs([glDisable_raw/1]).
-nifs([glMemoryBarrierByRegion_raw/1]).
-nifs([glSamplerParameterf_raw/3]).
-nifs([glSamplerParameterfv_raw/3]).
-nifs([glSamplerParameteri_raw/3]).
-nifs([glSamplerParameteriv_raw/3]).
-nifs([glGetIntegervInteger_raw/1]).
-nifs([glGetProgramiv_raw/2]).
-nifs([glTexSubImage2D_raw/9]).
-nifs([glEnableVertexAttribArray_raw/1]).
-nifs([glClearStencil_raw/1]).
-nifs([glGetProgramivInteger_raw/2]).
-nifs([glBindAttribLocation_raw/3]).
-nifs([glVertexAttribBinding_raw/2]).
-nifs([glTransformFeedbackVaryings_raw/3]).
-nifs([glGetProgramInfoLog_raw/2]).
-nifs([glTexStorage2D_raw/5]).
-nifs([glGetProgramPipelineInfoLog_raw/2]).
-nifs([glGetBooleani_v_raw/3]).
-nifs([glGetShaderPrecisionFormat_raw/2]).
-nifs([glGetTransformFeedbackVarying_raw/3]).
-nifs([glDeleteRenderbuffers_raw/2]).
-nifs([glStencilOp_raw/3]).
-nifs([glVertexAttribI4i_raw/5]).
-nifs([glVertexAttribI4ui_raw/5]).
-nifs([glIsRenderbuffer_raw/1]).
-nifs([glFlush_raw/0]).
-nifs([glPauseTransformFeedback_raw/0]).
-nifs([glIsQuery_raw/1]).
-nifs([glIsTransformFeedback_raw/1]).
-nifs([glReadBuffer_raw/1]).
-nifs([glGetInternalformativ_raw/4]).
-nifs([glCreateShader_raw/1]).
-nifs([glBindProgramPipeline_raw/1]).
-nifs([glDrawElementsInstanced_raw/5]).
-nifs([glBindImageTexture_raw/7]).
-nifs([glVertexAttribPointer_raw/6]).
-nifs([glGetInteger64vValues_raw/2]).
-nifs([glGetInteger64vInteger_raw/1]).
-nifs([glDrawArraysInstanced_raw/4]).
-nifs([glDrawElements_raw/4]).
-nifs([glPolygonOffset_raw/2]).
-nifs([glEndTransformFeedback_raw/0]).
-nifs([glDrawRangeElements_raw/6]).
-nifs([glActiveShaderProgram_raw/2]).
-nifs([glGetShaderivInteger_raw/2]).
-nifs([glStencilMask_raw/1]).
-nifs([glGetProgramInterfaceiv_raw/4]).
-nifs([glGetProgramResourceName_raw/4]).
-nifs([glCopyBufferSubData_raw/5]).
-nifs([glProgramUniform1f_raw/3]).
-nifs([glProgramUniform1fv_raw/4]).
-nifs([glProgramUniform1i_raw/3]).
-nifs([glProgramUniform1iv_raw/4]).
-nifs([glProgramUniform1ui_raw/3]).
-nifs([glProgramUniform1uiv_raw/4]).
-nifs([glProgramUniform2f_raw/4]).
-nifs([glProgramUniform2fv_raw/4]).
-nifs([glProgramUniform2i_raw/4]).
-nifs([glProgramUniform2iv_raw/4]).
-nifs([glProgramUniform2ui_raw/4]).
-nifs([glProgramUniform2uiv_raw/4]).
-nifs([glProgramUniform3f_raw/5]).
-nifs([glProgramUniform3fv_raw/4]).
-nifs([glProgramUniform3i_raw/5]).
-nifs([glProgramUniform3iv_raw/4]).
-nifs([glProgramUniform3ui_raw/5]).
-nifs([glProgramUniform3uiv_raw/4]).
-nifs([glProgramUniform4f_raw/6]).
-nifs([glProgramUniform4fv_raw/4]).
-nifs([glProgramUniform4i_raw/6]).
-nifs([glProgramUniform4iv_raw/4]).
-nifs([glProgramUniform4ui_raw/6]).
-nifs([glProgramUniform4uiv_raw/4]).
-nifs([glDisableVertexAttribArray_raw/1]).
-nifs([glClearDepthf_raw/1]).
-nifs([glLinkProgram_raw/1]).
-nifs([glCompileShader_raw/1]).
-nifs([glDetachShader_raw/2]).
-nifs([glBufferData_raw/4]).
-nifs([glGetUniformIndices_raw/2]).
-nifs([glAttachShader_raw/2]).
-nifs([glGenerateMipmap_raw/1]).
-nifs([glTexParameterf_raw/3]).
-nifs([glTexParameterfv_raw/3]).
-nifs([glTexParameteriv_raw/3]).
-nifs([glGetIntegervBoolean_raw/1]).
-nifs([glDrawBuffers_raw/2]).
-nifs([glGetFramebufferParameteriv_raw/3]).
-nifs([glBindBufferBase_raw/3]).
-nifs([glGetIntegerv_raw/1]).
-nifs([glCheckFramebufferStatus_raw/1]).
-nifs([glGetProgramPipelineivValues_raw/3]).
-nifs([glIsProgram_raw/1]).
-nifs([glIsShader_raw/1]).
-nifs([glGenTextures_raw/1]).
-nifs([glGenRenderbuffers_raw/1]).
-nifs([glShaderBinary_raw/4]).
-nifs([glGetActiveAttrib_raw/3]).
-nifs([glValidateProgram_raw/1]).
-nifs([glBindVertexBuffer_raw/4]).
-nifs([glGetStringi_raw/2]).
-nifs([glTexSubImage3D_raw/11]).
-nifs([glMemoryBarrier_raw/1]).
-nifs([glCopyTexImage2D_raw/8]).
-nifs([glBindVertexArray_raw/1]).
-nifs([glFramebufferParameteri_raw/3]).
-nifs([glInvalidateSubFramebuffer_raw/7]).
-nifs([glGetMultisamplefv_raw/3]).
-nifs([glBlitFramebuffer_raw/10]).
-nifs([glStencilMaskSeparate_raw/2]).
-nifs([glVertexAttribFormat_raw/5]).
-nifs([glScissor_raw/4]).
-nifs([glTexImage2D_raw/9]).
-nifs([glGetAttribLocation_raw/2]).
-nifs([glDeleteTransformFeedbacks_raw/2]).
-nifs([glGetVertexAttribfv_raw/3]).
-nifs([glGetVertexAttribiv_raw/3]).
-nifs([glGetError_raw/0]).
-nifs([glIsVertexArray_raw/1]).
-nifs([glBindTexture_raw/2]).
-nifs([glVertexAttribIPointer_raw/5]).
-nifs([glDeleteShader_raw/1]).
-nifs([glGetTexLevelParameterfv_raw/4]).
-nifs([glGetTexLevelParameteriv_raw/4]).
-nifs([glDepthRangef_raw/2]).
-nifs([glUniform1f_raw/2]).
-nifs([glUniform1fv_raw/3]).
-nifs([glUniform1i_raw/2]).
-nifs([glUniform1iv_raw/3]).
-nifs([glUniform1ui_raw/2]).
-nifs([glUniform1uiv_raw/3]).
-nifs([glUniform2f_raw/3]).
-nifs([glUniform2fv_raw/3]).
-nifs([glUniform2i_raw/3]).
-nifs([glUniform2iv_raw/3]).
-nifs([glUniform2ui_raw/3]).
-nifs([glUniform2uiv_raw/3]).
-nifs([glUniform3f_raw/4]).
-nifs([glUniform3fv_raw/3]).
-nifs([glUniform3i_raw/4]).
-nifs([glUniform3iv_raw/3]).
-nifs([glUniform3ui_raw/4]).
-nifs([glUniform3uiv_raw/3]).
-nifs([glUniform4f_raw/5]).
-nifs([glUniform4fv_raw/3]).
-nifs([glUniform4i_raw/5]).
-nifs([glUniform4iv_raw/3]).
-nifs([glUniform4ui_raw/5]).
-nifs([glUniform4uiv_raw/3]).
-nifs([glGetIntegeri_v_raw/3]).
-nifs([glStencilFunc_raw/3]).
-nifs([glClearBufferfv_raw/3]).
-nifs([glClearBufferiv_raw/3]).
-nifs([glClearBufferuiv_raw/3]).
-nifs([glGenProgramPipelines_raw/1]).
-nifs([glTexParameteri_raw/3]).
-nifs([glDrawArrays_raw/3]).
-nifs([glFramebufferTexture2D_raw/5]).
-nifs([glDeleteTextures_raw/2]).
-nifs([glInvalidateFramebuffer_raw/3]).
-nifs([glVertexAttribIFormat_raw/4]).
-nifs([glLineWidth_raw/1]).
-nifs([glSampleMaski_raw/2]).
-nifs([glDepthMask_raw/1]).
-nifs([glBlendEquationSeparate_raw/2]).
-nifs([glGetProgramResourceIndex_raw/3]).
-nifs([glCopyTexSubImage3D_raw/9]).
-nifs([glViewport_raw/4]).
-nifs([glTexImage3D_raw/10]).
-nifs([glCompressedTexSubImage2D_raw/9]).
-nifs([glGetQueryiv_raw/3]).
-nifs([glBindBuffer_raw/2]).
-nifs([glUniformBlockBinding_raw/3]).
-nifs([glUniformMatrix2fv_raw/4]).
-nifs([glUniformMatrix2x3fv_raw/4]).
-nifs([glUniformMatrix2x4fv_raw/4]).
-nifs([glUniformMatrix3fv_raw/4]).
-nifs([glUniformMatrix3x2fv_raw/4]).
-nifs([glUniformMatrix3x4fv_raw/4]).
-nifs([glUniformMatrix4fv_raw/4]).
-nifs([glUniformMatrix4x2fv_raw/4]).
-nifs([glUniformMatrix4x3fv_raw/4]).
-nifs([glVertexBindingDivisor_raw/2]).
-nifs([glGetShaderSource_raw/2]).
-nifs([glSampleCoverage_raw/2]).
-nifs([glStencilOpSeparate_raw/4]).
-nifs([glGetProgramPipelineivInteger_raw/2]).
-nifs([glGetProgramResourceLocation_raw/3]).
-nifs([glProgramBinary_raw/4]).
-nifs([glClearBufferfi_raw/4]).
-nifs([glBlendFunc_raw/2]).
-nifs([glUseProgramStages_raw/3]).
-nifs([glDeleteFramebuffers_raw/2]).
-nifs([glHint_raw/2]).
-nifs([glGetBooleanv_raw/2]).
-nifs([glBeginTransformFeedback_raw/1]).
-nifs([glBlendColor_raw/4]).
-nifs([glTexStorage2DMultisample_raw/6]).
-nifs([glIsProgramPipeline_raw/1]).
-nifs([glDeleteBuffers_raw/2]).
-nifs([glGetFramebufferAttachmentParameteriv_raw/4]).
-nifs([glBeginQuery_raw/2]).
-nifs([glProgramUniformMatrix2fv_raw/5]).
-nifs([glProgramUniformMatrix2x3fv_raw/5]).
-nifs([glProgramUniformMatrix2x4fv_raw/5]).
-nifs([glProgramUniformMatrix3fv_raw/5]).
-nifs([glProgramUniformMatrix3x2fv_raw/5]).
-nifs([glProgramUniformMatrix3x4fv_raw/5]).
-nifs([glProgramUniformMatrix4fv_raw/5]).
-nifs([glProgramUniformMatrix4x2fv_raw/5]).
-nifs([glProgramUniformMatrix4x3fv_raw/5]).
-nifs([glReleaseShaderCompiler_raw/0]).
-nifs([glPixelStorei_raw/2]).
-nifs([glEndQuery_raw/1]).
-nifs([glGetProgramBinary_raw/2]).
-nifs([glGetActiveUniformsiv_raw/3]).
-nifs([glShaderSource_raw/2]).
-nifs([glClear_raw/1]).
-nifs([glFramebufferRenderbuffer_raw/4]).
-nifs([glValidateProgramPipeline_raw/1]).
-nifs([glDrawArraysIndirect_raw/2]).
-nifs([glGetBufferParameteri64v_raw/3]).
-nifs([glGetBufferParameteriv_raw/3]).
-nifs([glCopyTexSubImage2D_raw/8]).
-nifs([glGetActiveUniform_raw/3]).
-nifs([glRenderbufferStorage_raw/4]).
-nifs([glStencilFuncSeparate_raw/4]).
-nifs([glGetIntegervValues_raw/2]).
-nifs([glGetActiveUniformBlockiv_raw/4]).
-nifs([glGenVertexArrays_raw/1]).
-nifs([glDepthFunc_raw/1]).
-nifs([glGenFramebuffers_raw/1]).
-nifs([glVertexAttribDivisor_raw/2]).
-nifs([glGetVertexAttribIiv_raw/3]).
-nifs([glGetVertexAttribIuiv_raw/3]).
-nifs([glGetFloatv_raw/2]).
-nifs([glTexStorage3D_raw/6]).
-nifs([glColorMask_raw/4]).
-nifs([glGetAttachedShaders_raw/2]).
-nifs([glRenderbufferStorageMultisample_raw/5]).
-nifs([glIsTexture_raw/1]).
-nifs([glCompressedTexImage3D_raw/9]).
-nifs([glIsFramebuffer_raw/1]).
-nifs([glGenSamplers_raw/1]).
-nifs([glGenTransformFeedbacks_raw/1]).
-nifs([glIsSampler_raw/1]).
-nifs([glFrontFace_raw/1]).
-nifs([glBlendEquation_raw/1]).
-nifs([glGetString_raw/1]).
-nifs([glGetShaderInfoLog_raw/2]).
-nifs([glDeleteQueries_raw/2]).
-nifs([glGenQueries_raw/1]).
-nifs([glEnable_raw/1]).
-nifs([glCreateShaderProgramv_raw/2]).
-nifs([glDeleteProgramPipelines_raw/2]).
-nifs([glGetTexParameterfv_raw/3]).
-nifs([glGetTexParameteriv_raw/3]).
-nifs([glIsBuffer_raw/1]).
-nifs([glBlendFuncSeparate_raw/4]).
-nifs([glBindFramebuffer_raw/2]).
-nifs([glBindRenderbuffer_raw/2]).
-nifs([glClearColor_raw/4]).
-nifs([glGetUniformBlockIndex_raw/2]).
-nifs([glIsEnabled_raw/1]).
-nifs([glDeleteSamplers_raw/2]).
-nifs([glVertexAttrib1f_raw/2]).
-nifs([glVertexAttrib2f_raw/3]).
-nifs([glVertexAttrib3f_raw/4]).
-nifs([glVertexAttrib4f_raw/5]).
-nifs([glDispatchCompute_raw/3]).
-nifs([glGetProgramResourceiv_raw/5]).
-nifs([glGetProgramPipelineiv_raw/2]).
-nifs([glGenBuffers_raw/1]).
-nifs([glGetUniformfv_raw/3]).
-nifs([glGetUniformiv_raw/3]).
-nifs([glGetUniformuiv_raw/3]).
-nifs([glBufferSubData_raw/4]).
-nifs([glGetSamplerParameterfv_raw/3]).
-nifs([glGetSamplerParameteriv_raw/3]).
-nifs([glActiveTexture_raw/1]).
-nifs([glGetShaderiv_raw/2]).
-nifs([glResumeTransformFeedback_raw/0]).
-nifs([glGetInteger64i_v_raw/3]).
-nifs([glFinish_raw/0]).
-nifs([glGetRenderbufferParameteriv_raw/3]).
-nifs([glDeleteVertexArrays_raw/2]).
-nifs([glCompressedTexSubImage3D_raw/11]).
-nifs([glGetQueryObjectuiv_raw/3]).
-nifs([glBindBufferRange_raw/5]).
-nifs([glCreateProgram_raw/0]).
-nifs([glGetActiveUniformBlockName_raw/3]).
-nifs([glCompressedTexImage2D_raw/8]).
-nifs([glFramebufferTextureLayer_raw/5]).
-nifs([glDispatchComputeIndirect_raw/1]).
-nifs([glCullFace_raw/1]).
-nifs([glDrawElementsIndirect_raw/3]).
-nifs([glUseProgram_raw/1]).
-nifs([glBindSampler_raw/2]).
-nifs([glReadPixels_raw/7]).
-nifs([glDeleteProgram_raw/1]).
-nifs([glGetFragDataLocation_raw/2]).
-nifs([glGetUniformLocation_raw/2]).
-nifs([glProgramParameteri_raw/3]).
-nifs([glBindTransformFeedback_raw/2]).

-on_load(init_nif/0).

init_nif() ->
    % The OpenGL NIF module depends on the EGL NIF module, so we compute its
    % location first, then pass it to the OpenGL NIF loader.
    EGLPrivDir = case code:priv_dir(egl) of
        {error, bad_name} ->
            code:priv_dir(egl_1_5);
        EGLDir ->
            EGLDir
    end,
    EGLNifLocation = filename:join(EGLPrivDir, "beam-egl") ++ ".so",
    LibName = "beam-gl",
    SoName = case code:priv_dir(?MODULE) of
        {error, bad_name} ->
            case filelib:is_dir(filename:join(["..", priv])) of
                true ->
                    filename:join(["..", priv, LibName]);
                _ ->
                    filename:join([priv, LibName])
            end;
        PrivDir ->
            filename:join(PrivDir, LibName)
    end,
    erlang:load_nif(SoName, EGLNifLocation).

-doc """
Return all OpenGL enum groups.

It returns the name of all OpenGL enum groups. The names can be used as an
input for the `enums_/1` function.

```erlang
[
    front_face_direction,
    % ...
    triangle_face
] = gl:enum_groups_().
```

Also see the `?GL_ENUM_GROUPS_` macro.
""".
-spec enum_groups_() -> [atom()].
enum_groups_() ->
    ?GL_ENUM_GROUPS_.

-doc """
Return the OpenGL enums of a given group.

It returns the list of OpenGL enum names of a given group.

```erlang
[
    front_and_back,
    front,
    back
] = gl:enums_(triangle_face).
```

Also see the `?GL_ENUM_GROUPS_` macro.
""".
-spec enums_(atom()) -> [atom()].
enums_(EnumGroup) ->
    maps:get(EnumGroup, ?GL_ENUMS_).

-doc """
Return the raw value of an OpenGL enum.

It returns the raw integer value of an OpenGL enum.

```erlang
16#0408 = gl:enum_value_(front_and_back).
```

Also see the `?GL_ENUM_GROUPS_` macro.
""".
-spec enum_value_(atom()) -> non_neg_integer().
enum_value_(Enum) ->
    maps:get(Enum, ?GL_ENUM_VALUE_).

-doc """
Return the possible OpenGL enums of a given raw value.

It returns the possible OpenGL enums of a given raw value.

```erlang
[foo, bar] = gl:value_enums_(16#0409).
```

> It's useful when an OpenGL function returns a raw value instead of an OpenGL
> enum such as with the `gl:get/x` function.

Also see the `?GL_VALUE_ENUMS_` macro.
""".
-spec value_enums_(non_neg_integer()) -> [atom()].
value_enums_(Value) ->
    maps:get(Value, ?GL_VALUE_ENUMS_).

-doc """
Return the OpenGL enum of a given raw value and the enum group.

It returns the OpenGL enum of a given raw value and the enum group.

```erlang
bar = gl:value_enums_(16#0409, foo).
```

> It's useful when an OpenGL function returns a raw value instead of an OpenGL
> enum such as with the `gl:get/x` function.

Also see the `?GL_VALUE_ENUM_` macro.
""".
-spec value_enum_(non_neg_integer(), atom()) -> atom().
value_enum_(Value, EnumGroup) ->
    maps:get({Value, EnumGroup}, ?GL_VALUE_ENUM_).

-doc """
Disable server-side GL capabilities.

It implements the `glDisable` function

```
gl:disable(scissor_test).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDisable) for more information.
""".
-spec disable(Cap :: enable_cap()) -> ok | {error, atom()}.
disable(Cap) ->
    NewCap = case Cap of
        sample_mask -> ?GL_SAMPLE_MASK;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        stencil_test -> ?GL_STENCIL_TEST;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        cull_face -> ?GL_CULL_FACE;
        scissor_test -> ?GL_SCISSOR_TEST;
        texture_2d -> ?GL_TEXTURE_2D;
        depth_test -> ?GL_DEPTH_TEST;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    ?CALL_RAW_FUNC(glDisable_raw(NewCap)).

-doc """
Order selected framebuffer-region memory transactions.

It implements the `glMemoryBarrierByRegion` function

```
gl:memory_barrier_by_region([framebuffer_barrier_bit]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glMemoryBarrierByRegion) for more information.
""".
-spec memory_barrier_by_region(Barriers :: memory_barrier_mask()) -> ok | {error, atom()}.
memory_barrier_by_region(Barriers) ->
    NewBarriers = lists:foldl(fun(Field, L) ->
        R = case Field of
            all_barrier_bits -> ?GL_ALL_BARRIER_BITS;
            atomic_counter_barrier_bit -> ?GL_ATOMIC_COUNTER_BARRIER_BIT;
            texture_update_barrier_bit -> ?GL_TEXTURE_UPDATE_BARRIER_BIT;
            shader_storage_barrier_bit -> ?GL_SHADER_STORAGE_BARRIER_BIT;
            texture_fetch_barrier_bit -> ?GL_TEXTURE_FETCH_BARRIER_BIT;
            transform_feedback_barrier_bit -> ?GL_TRANSFORM_FEEDBACK_BARRIER_BIT;
            framebuffer_barrier_bit -> ?GL_FRAMEBUFFER_BARRIER_BIT;
            pixel_buffer_barrier_bit -> ?GL_PIXEL_BUFFER_BARRIER_BIT;
            uniform_barrier_bit -> ?GL_UNIFORM_BARRIER_BIT;
            buffer_update_barrier_bit -> ?GL_BUFFER_UPDATE_BARRIER_BIT;
            command_barrier_bit -> ?GL_COMMAND_BARRIER_BIT;
            element_array_barrier_bit -> ?GL_ELEMENT_ARRAY_BARRIER_BIT;
            shader_image_access_barrier_bit -> ?GL_SHADER_IMAGE_ACCESS_BARRIER_BIT;
            vertex_attrib_array_barrier_bit -> ?GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
        end,
        L bor R
    end, 16#00, Barriers),
    ?CALL_RAW_FUNC(glMemoryBarrierByRegion_raw(NewBarriers)).

-type sampler_parameter_value() ::
    gl:int() |
    [gl:int()] |
    gl:float() |
    [gl:float()]
.

-doc """
Set sampler parameters.

It implements the following OpenGL commands:

- `glSamplerParameterfv`
- `glSamplerParameterf`
- `glSamplerParameteriv`
- `glSamplerParameteri`

```
ok = gl:sampler_parameter(f, Sampler, texture_min_lod, 0.0).
ok = gl:sampler_parameter(f, Sampler, texture_max_lod, [1000.0]).
ok = gl:sampler_parameter(i, Sampler, texture_min_filter, 16#2601).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glSamplerParameter) for more information.
""".
-spec sampler_parameter(
    Type :: f | i,
    Sampler :: sampler(),
    ParamName :: sampler_parameter_name(),
    Param :: sampler_parameter_value()
) -> ok | {error, atom()}.
sampler_parameter(f, Sampler, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
    end,

    ?CALL_RAW_FUNC(glSamplerParameterfv_raw(Sampler, NewParamName, Param));
sampler_parameter(f, Sampler, ParamName, Param) ->
    NewParamName = case ParamName of
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
    end,

    ?CALL_RAW_FUNC(glSamplerParameterf_raw(Sampler, NewParamName, Param));
sampler_parameter(i, Sampler, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
    end,

    ?CALL_RAW_FUNC(glSamplerParameteriv_raw(Sampler, NewParamName, Param));
sampler_parameter(i, Sampler, ParamName, Param) ->
    NewParamName = case ParamName of
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
    end,

    ?CALL_RAW_FUNC(glSamplerParameteri_raw(Sampler, NewParamName, Param)).

-doc """
Return the maximum number of vertex shader image uniforms.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_vertex_image_uniforms().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_vertex_image_uniforms() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_vertex_image_uniforms() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VERTEX_IMAGE_UNIFORMS)).

-doc """
Return whether a program object's last link succeeded.

It implements the `glGetProgramiv` function

```
{ok, true} = gl:get_program_link_status(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_link_status(Program :: program()) -> {ok, Status :: gl:boolean()} | {error, atom()}.
get_program_link_status(Program) ->

    ?CALL_RAW_FUNC(glGetProgramiv_raw(Program, ?GL_LINK_STATUS)).

-doc """
Specify a two-dimensional texture subimage.

It implements the `glTexSubImage2D` function

```
ok = gl:tex_sub_image_2d(texture_2d, 0, 0, 0, 1, 1, rgba, unsigned_byte, <<0, 255, 0, 255>>).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexSubImage2D) for more information.
""".
-spec tex_sub_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    OffsetX :: gl:int(),
    OffsetY :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: iodata()
) -> ok | {error, atom()}.
tex_sub_image_2d(Target, Level, OffsetX, OffsetY, Width, Height, Format, Type, Pixels) ->
    Pixels0 = iolist_to_binary(Pixels),
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        luminance_alpha -> ?GL_LUMINANCE_ALPHA;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        luminance -> ?GL_LUMINANCE;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, Width, Height, NewFormat, NewType, Pixels0)).

-doc """
Return the minimum programmable texture gather offset.

It implements the `glGetIntegerv` function

```
{ok, Offset} = gl:get_min_program_texture_gather_offset().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_min_program_texture_gather_offset() -> {ok, Offset :: gl:int()} | {error, atom()}.
get_min_program_texture_gather_offset() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET)).

-doc """
Enable a generic vertex attribute array.

It implements the `glEnableVertexAttribArray` function

```
ok = gl:enable_vertex_attrib_array(0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glEnableVertexAttribArray) for more information.
""".
-spec enable_vertex_attrib_array(Index :: gl:uint()) -> ok | {error, atom()}.
enable_vertex_attrib_array(Index) ->

    ?CALL_RAW_FUNC(glEnableVertexAttribArray_raw(Index)).

-doc """
Specify the clear value for the stencil buffer.

It implements the `glClearStencil` function

```
gl:clear_stencil(0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glClearStencil) for more information.
""".
-spec clear_stencil(Value :: gl:int()) -> ok | {error, atom()}.
clear_stencil(Value) ->

    ?CALL_RAW_FUNC(glClearStencil_raw(Value)).

-doc """
Return the number of active uniform variables in a program.

It implements the `glGetProgramiv` function

```
{ok, Count} = gl:get_program_active_uniforms_count(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_active_uniforms_count(Program :: program()) -> {ok, Count :: gl:int()} | {error, atom()}.
get_program_active_uniforms_count(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_ACTIVE_UNIFORMS)).

-doc """
Bind a generic vertex attribute index to a named attribute variable before linking.

It implements the `glBindAttribLocation` function

```
ok = gl:bind_attrib_location(Program, 0, [<<"pos">>, "ition"]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindAttribLocation) for more information.
""".
-spec bind_attrib_location(
    Program :: program(),
    Index :: gl:uint(),
    Name :: iodata()
) -> ok | {error, atom()}.
bind_attrib_location(Program, Index, Name) ->
    Name0 = iolist_to_binary(Name),

    ?CALL_RAW_FUNC(glBindAttribLocation_raw(Program, Index, Name0)).

-doc """
Associate a vertex attribute and a vertex buffer binding for a vertex array object.

It implements the `glVertexAttribBinding` function

```
gl:vertex_attrib_binding(0, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexAttribBinding) for more information.
""".
-spec vertex_attrib_binding(
    AttribIndex :: gl:uint(),
    BindingIndex :: gl:uint()
) -> ok | {error, atom()}.
vertex_attrib_binding(AttribIndex, BindingIndex) ->

    ?CALL_RAW_FUNC(glVertexAttribBinding_raw(AttribIndex, BindingIndex)).

-doc """
Specify program output variables to record in transform feedback buffers.

It implements the `glTransformFeedbackVaryings` function

```
gl:transform_feedback_varyings(Program, [<<"tf_value">>], interleaved_attribs).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTransformFeedbackVaryings) for more information.
""".
-spec transform_feedback_varyings(
    Program :: program(),
    Varyings :: [iodata()],
    BufferMode :: transform_feedback_buffer_mode()
) -> ok | {error, atom()}.
transform_feedback_varyings(Program, Varyings, BufferMode) ->
    NewBufferMode = case BufferMode of
        interleaved_attribs -> ?GL_INTERLEAVED_ATTRIBS;
        separate_attribs -> ?GL_SEPARATE_ATTRIBS
    end,
    VaryingsNew = lists:map(fun
        (VaryingsItem) when is_list(VaryingsItem) -> iolist_to_binary(VaryingsItem);
        (VaryingsItem) when is_binary(VaryingsItem) -> VaryingsItem
    end, Varyings),
    ?CALL_RAW_FUNC(glTransformFeedbackVaryings_raw(Program, VaryingsNew, NewBufferMode)).

-doc """
Returns the information log for a program object.

It implements the `glGetProgramInfoLog` function

```
{ok, InfoLog} = gl:get_program_info_log(Program, 1024).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramInfoLog) for more information.
""".
-spec get_program_info_log(
    Program :: program(),
    MaxLength :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_program_info_log(Program, MaxLength) ->

    ?CALL_RAW_FUNC(glGetProgramInfoLog_raw(Program, MaxLength)).

-doc """
Allocate immutable storage for a two-dimensional texture.

It implements the `glTexStorage2D` function

```
gl:tex_storage_2d(texture_2d, 1, rgba8, 1, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexStorage2D) for more information.
""".
-spec tex_storage_2d(
    Target :: texture_target(),
    Levels :: gl:sizei(),
    InternalFormat :: sized_internal_format(),
    Width :: gl:sizei(),
    Height :: gl:sizei()
) -> ok | {error, atom()}.
tex_storage_2d(Target, Levels, InternalFormat, Width, Height) ->
    NewInternalFormat = case InternalFormat of
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glTexStorage2D_raw(NewTarget, Levels, NewInternalFormat, Width, Height)).

-doc """
Retrieve the info log string from a program pipeline object.

It implements the `glGetProgramPipelineInfoLog` function

```
{ok, InfoLog} = gl:get_program_pipeline_info_log(Pipeline, 1024).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramPipelineInfoLog) for more information.
""".
-spec get_program_pipeline_info_log(
    Pipeline :: program_pipeline(),
    MaxLength :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_program_pipeline_info_log(Pipeline, MaxLength) ->

    ?CALL_RAW_FUNC(glGetProgramPipelineInfoLog_raw(Pipeline, MaxLength)).

-doc """
Read indexed boolean OpenGL state parameter values.

It implements the `glGetBooleani_v` function

```
{ok, Values} = gl:get_boolean(blend, 0, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetBooleani_v) for more information.
""".
-spec get_boolean(
    ParamName :: state_parameter_name(),
    Index :: gl:uint(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:boolean()]} | {error, atom()}.
get_boolean(ParamName, Index, Count) ->
    NewParamName = case ParamName of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        line_width -> ?GL_LINE_WIDTH;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        depth_bits -> ?GL_DEPTH_BITS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        stencil_ref -> ?GL_STENCIL_REF;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        current_program -> ?GL_CURRENT_PROGRAM;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    ?CALL_RAW_FUNC(glGetBooleani_v_raw(NewParamName, Index, Count)).

-doc """
Return the maximum combined number of image uniforms.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_combined_image_uniforms().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_combined_image_uniforms() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_combined_image_uniforms() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMBINED_IMAGE_UNIFORMS)).

-doc """
Return the numeric precision range and precision for a shader precision type.

It implements the `glGetShaderPrecisionFormat` function

```
{ok, RangeMin, RangeMax, Precision} =
    gl:get_shader_precision_format(fragment_shader, high_float).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetShaderPrecisionFormat) for more information.
""".
-spec get_shader_precision_format(
    ShaderType :: shader_type(),
    PrecisionType :: shader_precision_type()
) -> {ok, RangeMin :: gl:int(), RangeMax :: gl:int(), Precision :: gl:int()} | {error, atom()}.
get_shader_precision_format(ShaderType, PrecisionType) ->
    NewPrecisionType = case PrecisionType of
        high_float -> ?GL_HIGH_FLOAT;
        low_int -> ?GL_LOW_INT;
        medium_int -> ?GL_MEDIUM_INT;
        low_float -> ?GL_LOW_FLOAT;
        medium_float -> ?GL_MEDIUM_FLOAT;
        high_int -> ?GL_HIGH_INT
    end,
    NewShaderType = case ShaderType of
        vertex_shader -> ?GL_VERTEX_SHADER;
        fragment_shader -> ?GL_FRAGMENT_SHADER;
        compute_shader -> ?GL_COMPUTE_SHADER
    end,

    ?CALL_RAW_FUNC(glGetShaderPrecisionFormat_raw(NewShaderType, NewPrecisionType)).

-doc """
Return the maximum combined number of atomic counter buffers.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_combined_atomic_counter_buffers().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_combined_atomic_counter_buffers() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_combined_atomic_counter_buffers() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS)).

-doc """
Returns the size, type, and name of a transform-feedback varying for a program object.

It implements the `glGetTransformFeedbackVarying` function

```
{ok, Size, Type, Name} = gl:get_transform_feedback_varying(Program, 0, MaxLength).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetTransformFeedbackVarying) for more information.
""".
-spec get_transform_feedback_varying(
    Program :: program(),
    Index :: gl:uint(),
    MaxLength :: pos_integer()
) -> {ok, Size :: gl:sizei(), Type :: attribute_type(), Name :: binary()} | {error, atom()}.
get_transform_feedback_varying(Program, Index, MaxLength) ->

    ?CALL_RAW_FUNC(glGetTransformFeedbackVarying_raw(Program, Index, MaxLength)).

-doc """
Return the number of supported shader binary formats.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_num_shader_binary_formats().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_num_shader_binary_formats() -> {ok, Count :: gl:int()} | {error, atom()}.
get_num_shader_binary_formats() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_NUM_SHADER_BINARY_FORMATS)).

-doc """
Delete renderbuffer objects.

It implements the `glDeleteRenderbuffers` function

```
gl:delete_renderbuffers([Renderbuffer]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteRenderbuffers) for more information.
""".
-spec delete_renderbuffers(Renderbuffers :: [renderbuffer()]) -> ok | {error, atom()}.
delete_renderbuffers(Renderbuffers) ->
    N = length(Renderbuffers),
    NewRenderbuffers = << <<ID:32/native>> || ID <- Renderbuffers >>,
    ?CALL_RAW_FUNC(glDeleteRenderbuffers_raw(N, NewRenderbuffers)).

-doc """
Return the maximum number of shader storage buffer bindings.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_shader_storage_buffer_bindings().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_shader_storage_buffer_bindings() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_shader_storage_buffer_bindings() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS)).

-doc """
Set front and back stencil test actions.

It implements the `glStencilOp` function

```
gl:stencil_op(keep, keep, replace).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glStencilOp) for more information.
""".
-spec stencil_op(
    Fail :: stencil_op(),
    ZFail :: stencil_op(),
    ZPass :: stencil_op()
) -> ok | {error, atom()}.
stencil_op(Fail, ZFail, ZPass) ->
    NewZPass = case ZPass of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewZFail = case ZFail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewFail = case Fail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,

    ?CALL_RAW_FUNC(glStencilOp_raw(NewFail, NewZFail, NewZPass)).

-type vertex_attrib_i_value() ::
    vector4(gl:int()) |
    vector4(gl:uint())
.

-doc """
Specify the current integer value of a generic vertex attribute.

It implements the following OpenGL commands:

- `glVertexAttribI4ui`
- `glVertexAttribI4i`

```
ok = gl:vertex_attrib_i(i, 0, {1, 0, 0, 1}).
ok = gl:vertex_attrib_i(ui, 0, {1, 0, 0, 1}).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexAttribI) for more information.
""".
-spec vertex_attrib_i(
    Type :: i | ui,
    Index :: gl:uint(),
    Values :: vertex_attrib_i_value()
) -> ok | {error, atom()}.
vertex_attrib_i(ui, Index, Values) when
    is_tuple(Values) andalso
    tuple_size(Values) =:= 4
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Values),

    ?CALL_RAW_FUNC(glVertexAttribI4ui_raw(Index, V1, V2, V3, V4));
vertex_attrib_i(i, Index, Values) when
    is_tuple(Values) andalso
    tuple_size(Values) =:= 4
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Values),

    ?CALL_RAW_FUNC(glVertexAttribI4i_raw(Index, V1, V2, V3, V4)).

-doc """
Determine if a name corresponds to a renderbuffer object.

It implements the `glIsRenderbuffer` function

```
{ok, true} = gl:is_renderbuffer(Renderbuffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsRenderbuffer) for more information.
""".
-spec is_renderbuffer(Renderbuffer :: renderbuffer()) -> {ok, IsRenderbuffer :: gl:boolean()} | {error, atom()}.
is_renderbuffer(Renderbuffer) ->

    ?CALL_RAW_FUNC(glIsRenderbuffer_raw(Renderbuffer)).

-doc """
Force execution of GL commands in finite time.

It implements the `glFlush` function

```
gl:flush().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFlush) for more information.
""".
-spec flush() -> ok | {error, atom()}.
flush() ->

    ?CALL_RAW_FUNC(glFlush_raw()).

-doc """
Pause transform feedback operation.

It implements the `glPauseTransformFeedback` function

```
gl:pause_transform_feedback().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glPauseTransformFeedback) for more information.
""".
-spec pause_transform_feedback() -> ok | {error, atom()}.
pause_transform_feedback() ->

    ?CALL_RAW_FUNC(glPauseTransformFeedback_raw()).

-doc """
Determine if a name corresponds to a query object.

It implements the `glIsQuery` function

```
{ok, true} = gl:is_query(Query).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsQuery) for more information.
""".
-spec is_query(Query :: query()) -> {ok, IsQuery :: gl:boolean()} | {error, atom()}.
is_query(Query) ->

    ?CALL_RAW_FUNC(glIsQuery_raw(Query)).

-doc """
Determine if a name corresponds to a transform feedback object.

It implements the `glIsTransformFeedback` function

```
{ok, true} = gl:is_transform_feedback(Feedback).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsTransformFeedback) for more information.
""".
-spec is_transform_feedback(Feedback :: transform_feedback()) -> {ok, IsFeedback :: gl:boolean()} | {error, atom()}.
is_transform_feedback(Feedback) ->

    ?CALL_RAW_FUNC(glIsTransformFeedback_raw(Feedback)).

-doc """
Select a color buffer source for pixel reads and framebuffer blits.

It implements the `glReadBuffer` function

```
gl:read_buffer(color_attachment0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glReadBuffer) for more information.
""".
-spec read_buffer(Source :: read_buffer_mode()) -> ok | {error, atom()}.
read_buffer(Source) ->
    NewSource = case Source of
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        none -> ?GL_NONE;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        back -> ?GL_BACK;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        front -> ?GL_FRONT;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,

    ?CALL_RAW_FUNC(glReadBuffer_raw(NewSource)).

-doc """
Read internal-format capability and support query values.

It implements the following OpenGL commands:

- `glGetInternalformativ`

```
{ok, Values} = gl:get_internal_format(i, renderbuffer, rgba8, num_sample_counts, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetInternalformat) for more information.
""".
-spec get_internal_format(
    Type :: i,
    Target :: internal_format_target(),
    InternalFormat :: internal_format(),
    ParamName :: internal_format_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_internal_format(i, Target, InternalFormat, ParamName, Count) ->
    NewParamName = case ParamName of
        num_sample_counts -> ?GL_NUM_SAMPLE_COUNTS;
        texture_compressed -> ?GL_TEXTURE_COMPRESSED;
        samples -> ?GL_SAMPLES;
        image_format_compatibility_type -> ?GL_IMAGE_FORMAT_COMPATIBILITY_TYPE
    end,
    NewInternalFormat = case InternalFormat of
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glGetInternalformativ_raw(NewTarget, NewInternalFormat, NewParamName, Count)).

-doc """
Return the maximum number of compute shader uniform components.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_compute_uniform_components().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_compute_uniform_components() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_compute_uniform_components() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMPUTE_UNIFORM_COMPONENTS)).

-doc """
Return the maximum number of compute shader image uniforms.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_compute_image_uniforms().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_compute_image_uniforms() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_compute_image_uniforms() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMPUTE_IMAGE_UNIFORMS)).

-doc """
Creates a shader object.

It implements the `glCreateShader` function

```
{ok, Shader} = gl:create_shader(vertex_shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCreateShader) for more information.
""".
-spec create_shader(Type :: shader_type()) -> {ok, Shader :: shader()} | {error, atom()}.
create_shader(Type) ->
    NewType = case Type of
        vertex_shader -> ?GL_VERTEX_SHADER;
        fragment_shader -> ?GL_FRAGMENT_SHADER;
        compute_shader -> ?GL_COMPUTE_SHADER
    end,

    ?CALL_RAW_FUNC(glCreateShader_raw(NewType)).

-doc """
Bind a program pipeline to the current context.

It implements the `glBindProgramPipeline` function

```
gl:bind_program_pipeline(Pipeline).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindProgramPipeline) for more information.
""".
-spec bind_program_pipeline(Pipeline :: program_pipeline()) -> ok | {error, atom()}.
bind_program_pipeline(Pipeline) ->

    ?CALL_RAW_FUNC(glBindProgramPipeline_raw(Pipeline)).

-doc """
Return the number of shader objects attached to a program.

It implements the `glGetProgramiv` function

```
{ok, Count} = gl:get_program_attached_shaders_count(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_attached_shaders_count(Program :: program()) -> {ok, Count :: gl:int()} | {error, atom()}.
get_program_attached_shaders_count(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_ATTACHED_SHADERS)).

-doc """
Render multiple instances using indices from the bound element array buffer.

It implements the `glDrawElementsInstanced` function

```
ok = gl:draw_elements_instanced(points, 1, unsigned_byte, 0, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDrawElementsInstanced) for more information.
""".
-spec draw_elements_instanced(
    Mode :: primitive_type(),
    Count :: gl:sizei(),
    Type :: draw_elements_type(),
    Offset :: gl:offset(),
    InstanceCount :: gl:sizei()
) -> ok | {error, atom()}.
draw_elements_instanced(Mode, Count, Type, Offset, InstanceCount) ->
    NewType = case Type of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE
    end,
    NewMode = case Mode of
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        lines -> ?GL_LINES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP
    end,

    ?CALL_RAW_FUNC(glDrawElementsInstanced_raw(NewMode, Count, NewType, Offset, InstanceCount)).

-doc """
Bind a level of a texture to an image unit.

It implements the `glBindImageTexture` function

```
gl:bind_image_texture(0, Texture, 0, false, 0, read_write, rgba8).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindImageTexture) for more information.
""".
-spec bind_image_texture(
    Unit :: gl:uint(),
    Texture :: texture(),
    Level :: gl:int(),
    Layered :: gl:boolean(),
    Layer :: gl:int(),
    Access :: buffer_access(),
    Format :: internal_format()
) -> ok | {error, atom()}.
bind_image_texture(Unit, Texture, Level, Layered, Layer, Access, Format) ->
    NewFormat = case Format of
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewAccess = case Access of
        read_only -> ?GL_READ_ONLY;
        read_write -> ?GL_READ_WRITE;
        write_only -> ?GL_WRITE_ONLY
    end,

    ?CALL_RAW_FUNC(glBindImageTexture_raw(Unit, Texture, Level, Layered, Layer, NewAccess, NewFormat)).

-doc """
Define an array of generic vertex attribute data using the currently bound array buffer.

It implements the `glVertexAttribPointer` function

```
ok = gl:vertex_attrib_pointer(0, 2, float, false, 0, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexAttribPointer) for more information.
""".
-spec vertex_attrib_pointer(
    Index :: gl:uint(),
    Size :: gl:int(),
    Type :: vertex_attrib_pointer_type(),
    Normalized :: gl:boolean(),
    Stride :: gl:sizei(),
    Offset :: gl:offset()
) -> ok | {error, atom()}.
vertex_attrib_pointer(Index, Size, Type, Normalized, Stride, Offset) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        float -> ?GL_FLOAT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        short -> ?GL_SHORT;
        fixed -> ?GL_FIXED;
        int_2_10_10_10_rev -> ?GL_INT_2_10_10_10_REV;
        half_float -> ?GL_HALF_FLOAT
    end,

    ?CALL_RAW_FUNC(glVertexAttribPointer_raw(Index, Size, NewType, Normalized, Stride, Offset)).

-doc """
Return the maximum number of fragment uniform vectors.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_fragment_uniform_vectors().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_fragment_uniform_vectors() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_fragment_uniform_vectors() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_FRAGMENT_UNIFORM_VECTORS)).

-doc """
Return the current pack skipped row count.

It implements the `glGetIntegerv` function

```
{ok, Rows} = gl:get_pack_skip_rows().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_pack_skip_rows() -> {ok, Rows :: gl:int()} | {error, atom()}.
get_pack_skip_rows() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_PACK_SKIP_ROWS)).

-doc """
Read 64-bit integer OpenGL state parameter values.

It implements the `glGetInteger64v` function

```
{ok, Values} = gl:get_integer64(max_element_index, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetInteger64v) for more information.
""".
-spec get_integer64(
    ParamName :: state_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int64()]} | {error, atom()}.
get_integer64(ParamName, Count) ->
    NewParamName = case ParamName of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        line_width -> ?GL_LINE_WIDTH;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        depth_bits -> ?GL_DEPTH_BITS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        stencil_ref -> ?GL_STENCIL_REF;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        current_program -> ?GL_CURRENT_PROGRAM;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    ?CALL_RAW_FUNC(glGetInteger64vValues_raw(NewParamName, Count)).

-doc """
Return the maximum number of fragment shader atomic counter buffers.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_fragment_atomic_counter_buffers().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_fragment_atomic_counter_buffers() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_fragment_atomic_counter_buffers() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS)).

-doc """
Return the maximum combined fragment uniform components.

It implements the `glGetInteger64v` function

```
{ok, Count} = gl:get_max_combined_fragment_uniform_components().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetInteger64v) for more information.
""".
-spec get_max_combined_fragment_uniform_components() -> {ok, Count :: gl:int64()} | {error, atom()}.
get_max_combined_fragment_uniform_components() ->

    ?CALL_RAW_FUNC(glGetInteger64vInteger_raw(?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS)).

-doc """
Return the maximum vertex-attrib binding stride.

It implements the `glGetIntegerv` function

```
{ok, Stride} = gl:get_max_vertex_attrib_stride().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_vertex_attrib_stride() -> {ok, Stride :: gl:int()} | {error, atom()}.
get_max_vertex_attrib_stride() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VERTEX_ATTRIB_STRIDE)).

-doc """
Draw multiple instances of a range of arrays.

It implements the `glDrawArraysInstanced` function

```
gl:draw_arrays_instanced(triangles, 0, 0, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDrawArraysInstanced) for more information.
""".
-spec draw_arrays_instanced(
    Mode :: primitive_type(),
    First :: gl:int(),
    Count :: gl:sizei(),
    InstanceCount :: gl:sizei()
) -> ok | {error, atom()}.
draw_arrays_instanced(Mode, First, Count, InstanceCount) ->
    NewMode = case Mode of
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        lines -> ?GL_LINES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP
    end,

    ?CALL_RAW_FUNC(glDrawArraysInstanced_raw(NewMode, First, Count, InstanceCount)).

-doc """
Render primitives using indices from the bound element array buffer.

It implements the `glDrawElements` function

```
ok = gl:draw_elements(points, 1, unsigned_byte, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDrawElements) for more information.
""".
-spec draw_elements(
    Mode :: primitive_type(),
    Count :: gl:sizei(),
    Type :: draw_elements_type(),
    Offset :: gl:offset()
) -> ok | {error, atom()}.
draw_elements(Mode, Count, Type, Offset) ->
    NewType = case Type of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE
    end,
    NewMode = case Mode of
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        lines -> ?GL_LINES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP
    end,

    ?CALL_RAW_FUNC(glDrawElements_raw(NewMode, Count, NewType, Offset)).

-doc """
Set the scale and units used to calculate depth values.

It implements the `glPolygonOffset` function

```
gl:polygon_offset(1.0, 1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glPolygonOffset) for more information.
""".
-spec polygon_offset(
    Factor :: gl:float(),
    Units :: gl:float()
) -> ok | {error, atom()}.
polygon_offset(Factor, Units) ->

    ?CALL_RAW_FUNC(glPolygonOffset_raw(Factor, Units)).

-doc """
End transform feedback operation.

It implements the `glEndTransformFeedback` function

```
gl:end_transform_feedback().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glEndTransformFeedback) for more information.
""".
-spec end_transform_feedback() -> ok | {error, atom()}.
end_transform_feedback() ->

    ?CALL_RAW_FUNC(glEndTransformFeedback_raw()).

-doc """
Render primitives from an index range in the bound element array buffer.

It implements the `glDrawRangeElements` function

```
ok = gl:draw_range_elements(points, 0, 0, 1, unsigned_byte, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDrawRangeElements) for more information.
""".
-spec draw_range_elements(
    Mode :: primitive_type(),
    Start :: gl:uint(),
    End :: gl:uint(),
    Count :: gl:sizei(),
    Type :: draw_elements_type(),
    Offset :: gl:offset()
) -> ok | {error, atom()}.
draw_range_elements(Mode, Start, End, Count, Type, Offset) ->
    NewType = case Type of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE
    end,
    NewMode = case Mode of
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        lines -> ?GL_LINES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP
    end,

    ?CALL_RAW_FUNC(glDrawRangeElements_raw(NewMode, Start, End, Count, NewType, Offset)).

-doc """
Set the active program object for a program pipeline object.

It implements the `glActiveShaderProgram` function

```
gl:active_shader_program(Pipeline, Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glActiveShaderProgram) for more information.
""".
-spec active_shader_program(
    Pipeline :: program_pipeline(),
    Program :: program()
) -> ok | {error, atom()}.
active_shader_program(Pipeline, Program) ->

    ?CALL_RAW_FUNC(glActiveShaderProgram_raw(Pipeline, Program)).

-doc """
Return the maximum number of compute shader texture image units.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_compute_texture_image_units().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_compute_texture_image_units() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_compute_texture_image_units() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS)).

-doc """
Return the shader source length.

It implements the `glGetShaderiv` function

```
{ok, Length} = gl:get_shader_source_length(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetShaderiv) for more information.
""".
-spec get_shader_source_length(Shader :: shader()) -> {ok, Length :: gl:int()} | {error, atom()}.
get_shader_source_length(Shader) ->

    ?CALL_RAW_FUNC(glGetShaderivInteger_raw(Shader, ?GL_SHADER_SOURCE_LENGTH)).

-doc """
Control the front and back writing of individual bits in the stencil planes.

It implements the `glStencilMask` function

```
gl:stencil_mask(16#FF).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glStencilMask) for more information.
""".
-spec stencil_mask(Mask :: gl:uint()) -> ok | {error, atom()}.
stencil_mask(Mask) ->

    ?CALL_RAW_FUNC(glStencilMask_raw(Mask)).

-doc """
Return the maximum shader-storage block size in bytes.

It implements the `glGetInteger64v` function

```
{ok, Size} = gl:get_max_shader_storage_block_size().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetInteger64v) for more information.
""".
-spec get_max_shader_storage_block_size() -> {ok, Size :: gl:int64()} | {error, atom()}.
get_max_shader_storage_block_size() ->

    ?CALL_RAW_FUNC(glGetInteger64vInteger_raw(?GL_MAX_SHADER_STORAGE_BLOCK_SIZE)).

-doc """
Return the current context minor version.

It implements the `glGetIntegerv` function

```
{ok, Version} = gl:get_minor_version().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_minor_version() -> {ok, Version :: gl:int()} | {error, atom()}.
get_minor_version() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MINOR_VERSION)).

-doc """
Return integer properties for a program resource interface.

It implements the `glGetProgramInterfaceiv` function

```
{ok, [1]} = gl:get_program_interface(Program, uniform_block, active_resources, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramInterfaceiv) for more information.
""".
-spec get_program_interface(
    Program :: program(),
    ProgramInterface :: program_interface(),
    ParamName :: program_interface_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_program_interface(Program, ProgramInterface, ParamName, Count) ->
    NewParamName = case ParamName of
        max_name_length -> ?GL_MAX_NAME_LENGTH;
        max_num_active_variables -> ?GL_MAX_NUM_ACTIVE_VARIABLES;
        active_resources -> ?GL_ACTIVE_RESOURCES
    end,
    NewProgramInterface = case ProgramInterface of
        buffer_variable -> ?GL_BUFFER_VARIABLE;
        shader_storage_block -> ?GL_SHADER_STORAGE_BLOCK;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        uniform -> ?GL_UNIFORM;
        program_input -> ?GL_PROGRAM_INPUT;
        program_output -> ?GL_PROGRAM_OUTPUT;
        transform_feedback_varying -> ?GL_TRANSFORM_FEEDBACK_VARYING;
        uniform_block -> ?GL_UNIFORM_BLOCK
    end,

    ?CALL_RAW_FUNC(glGetProgramInterfaceiv_raw(Program, NewProgramInterface, NewParamName, Count)).

-doc """
Return the name of an indexed resource within a program interface.

It implements the `glGetProgramResourceName` function

```
{ok, Name} = gl:get_program_resource_name(Program, uniform, Index, MaxLength).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramResourceName) for more information.
""".
-spec get_program_resource_name(
    Program :: program(),
    ProgramInterface :: program_interface(),
    Index :: gl:uint(),
    MaxLength :: pos_integer()
) -> {ok, Name :: binary()} | {error, atom()}.
get_program_resource_name(Program, ProgramInterface, Index, MaxLength) ->
    NewProgramInterface = case ProgramInterface of
        buffer_variable -> ?GL_BUFFER_VARIABLE;
        shader_storage_block -> ?GL_SHADER_STORAGE_BLOCK;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        uniform -> ?GL_UNIFORM;
        program_input -> ?GL_PROGRAM_INPUT;
        program_output -> ?GL_PROGRAM_OUTPUT;
        transform_feedback_varying -> ?GL_TRANSFORM_FEEDBACK_VARYING;
        uniform_block -> ?GL_UNIFORM_BLOCK
    end,

    ?CALL_RAW_FUNC(glGetProgramResourceName_raw(Program, NewProgramInterface, Index, MaxLength)).

-doc """
Return the maximum number of depth texture samples.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_depth_texture_samples().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_depth_texture_samples() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_depth_texture_samples() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_DEPTH_TEXTURE_SAMPLES)).

-doc """
Copy a range of data from one buffer object's data store to another.

It implements the `glCopyBufferSubData` function

```
gl:copy_buffer_sub_data(copy_read_buffer, copy_write_buffer, 0, 0, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCopyBufferSubData) for more information.
""".
-spec copy_buffer_sub_data(
    ReadTarget :: copy_buffer_sub_data_target(),
    WriteTarget :: copy_buffer_sub_data_target(),
    ReadOffset :: gl:intptr(),
    WriteOffset :: gl:intptr(),
    Size :: gl:sizeiptr()
) -> ok | {error, atom()}.
copy_buffer_sub_data(ReadTarget, WriteTarget, ReadOffset, WriteOffset, Size) ->
    NewWriteTarget = case WriteTarget of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,
    NewReadTarget = case ReadTarget of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,

    ?CALL_RAW_FUNC(glCopyBufferSubData_raw(NewReadTarget, NewWriteTarget, ReadOffset, WriteOffset, Size)).

-type program_uniform_value() ::
    gl:int() |
    vector2(gl:int()) |
    vector3(gl:int()) |
    vector4(gl:int()) |
    gl:uint() |
    vector2(gl:uint()) |
    vector3(gl:uint()) |
    vector4(gl:uint()) |
    gl:float() |
    vector2(gl:float()) |
    vector3(gl:float()) |
    vector4(gl:float()) |
    [gl:int()] |
    [vector2(gl:int())] |
    [vector3(gl:int())] |
    [vector4(gl:int())] |
    [gl:uint()] |
    [vector2(gl:uint())] |
    [vector3(gl:uint())] |
    [vector4(gl:uint())] |
    [gl:float()] |
    [vector2(gl:float())] |
    [vector3(gl:float())] |
    [vector4(gl:float())]
.

-doc """
Set a scalar or vector uniform value for a specified program object.

It implements the following OpenGL commands:

- `glProgramUniform4fv`
- `glProgramUniform3fv`
- `glProgramUniform2fv`
- `glProgramUniform1fv`
- `glProgramUniform4uiv`
- `glProgramUniform3uiv`
- `glProgramUniform2uiv`
- `glProgramUniform1uiv`
- `glProgramUniform4iv`
- `glProgramUniform3iv`
- `glProgramUniform2iv`
- `glProgramUniform1iv`
- `glProgramUniform4f`
- `glProgramUniform3f`
- `glProgramUniform2f`
- `glProgramUniform1f`
- `glProgramUniform4ui`
- `glProgramUniform3ui`
- `glProgramUniform2ui`
- `glProgramUniform1ui`
- `glProgramUniform4i`
- `glProgramUniform3i`
- `glProgramUniform2i`
- `glProgramUniform1i`

```
ok = gl:program_uniform(f, Program, Location, 1.0).
ok = gl:program_uniform(i, Program, Location, 1).
ok = gl:program_uniform(f, Program, Location, {1.0, 0.0, 0.0, 1.0}).
ok = gl:program_uniform(ui, Program, Location, {1, 0, 0, 1}).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glProgramUniform) for more information.
""".
-spec program_uniform(
    Type :: f | i | ui,
    Program :: program(),
    Location :: gl:int(),
    Value :: program_uniform_value()
) -> ok | {error, atom()}.
program_uniform(f, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniform4fv_raw(Program, Location, Count, NewValue));
program_uniform(f, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniform3fv_raw(Program, Location, Count, NewValue));
program_uniform(f, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniform2fv_raw(Program, Location, Count, NewValue));
program_uniform(f, Program, Location, Value) when is_list(Value) ->
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniform1fv_raw(Program, Location, Count, Value));
program_uniform(ui, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniform4uiv_raw(Program, Location, Count, NewValue));
program_uniform(ui, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniform3uiv_raw(Program, Location, Count, NewValue));
program_uniform(ui, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniform2uiv_raw(Program, Location, Count, NewValue));
program_uniform(ui, Program, Location, Value) when is_list(Value) ->
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniform1uiv_raw(Program, Location, Count, Value));
program_uniform(i, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniform4iv_raw(Program, Location, Count, NewValue));
program_uniform(i, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniform3iv_raw(Program, Location, Count, NewValue));
program_uniform(i, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniform2iv_raw(Program, Location, Count, NewValue));
program_uniform(i, Program, Location, Value) when is_list(Value) ->
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniform1iv_raw(Program, Location, Count, Value));
program_uniform(f, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Value),

    ?CALL_RAW_FUNC(glProgramUniform4f_raw(Program, Location, V1, V2, V3, V4));
program_uniform(f, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Value),

    ?CALL_RAW_FUNC(glProgramUniform3f_raw(Program, Location, V1, V2, V3));
program_uniform(f, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Value),

    ?CALL_RAW_FUNC(glProgramUniform2f_raw(Program, Location, V1, V2));
program_uniform(f, Program, Location, Value) ->

    ?CALL_RAW_FUNC(glProgramUniform1f_raw(Program, Location, Value));
program_uniform(ui, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Value),

    ?CALL_RAW_FUNC(glProgramUniform4ui_raw(Program, Location, V1, V2, V3, V4));
program_uniform(ui, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Value),

    ?CALL_RAW_FUNC(glProgramUniform3ui_raw(Program, Location, V1, V2, V3));
program_uniform(ui, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Value),

    ?CALL_RAW_FUNC(glProgramUniform2ui_raw(Program, Location, V1, V2));
program_uniform(ui, Program, Location, Value) ->

    ?CALL_RAW_FUNC(glProgramUniform1ui_raw(Program, Location, Value));
program_uniform(i, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Value),

    ?CALL_RAW_FUNC(glProgramUniform4i_raw(Program, Location, V1, V2, V3, V4));
program_uniform(i, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Value),

    ?CALL_RAW_FUNC(glProgramUniform3i_raw(Program, Location, V1, V2, V3));
program_uniform(i, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Value),

    ?CALL_RAW_FUNC(glProgramUniform2i_raw(Program, Location, V1, V2));
program_uniform(i, Program, Location, Value) ->

    ?CALL_RAW_FUNC(glProgramUniform1i_raw(Program, Location, Value)).

-doc """
Disable a generic vertex attribute array.

It implements the `glDisableVertexAttribArray` function

```
ok = gl:disable_vertex_attrib_array(0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDisableVertexAttribArray) for more information.
""".
-spec disable_vertex_attrib_array(Index :: gl:uint()) -> ok | {error, atom()}.
disable_vertex_attrib_array(Index) ->

    ?CALL_RAW_FUNC(glDisableVertexAttribArray_raw(Index)).

-doc """
Return whether a program object's last validation succeeded.

It implements the `glGetProgramiv` function

```
{ok, true} = gl:get_program_validation_status(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_validation_status(Program :: program()) -> {ok, Status :: gl:boolean()} | {error, atom()}.
get_program_validation_status(Program) ->

    ?CALL_RAW_FUNC(glGetProgramiv_raw(Program, ?GL_VALIDATE_STATUS)).

-doc """
Specify the clear value for the depth buffer.

It implements the `glClearDepthf` function

```
gl:clear_depth(1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glClearDepthf) for more information.
""".
-spec clear_depth(Depth :: gl:float()) -> ok | {error, atom()}.
clear_depth(Depth) ->

    ?CALL_RAW_FUNC(glClearDepthf_raw(Depth)).

-doc """
Links a program object.

It implements the `glLinkProgram` function

```
ok = gl:link_program(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glLinkProgram) for more information.
""".
-spec link_program(Program :: program()) -> ok | {error, atom()}.
link_program(Program) ->

    ?CALL_RAW_FUNC(glLinkProgram_raw(Program)).

-doc """
Compiles a shader object.

It implements the `glCompileShader` function

```
ok = gl:compile_shader(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCompileShader) for more information.
""".
-spec compile_shader(Shader :: shader()) -> ok | {error, atom()}.
compile_shader(Shader) ->

    ?CALL_RAW_FUNC(glCompileShader_raw(Shader)).

-doc """
Detaches a shader object from a program object.

It implements the `glDetachShader` function

```
ok = gl:detach_shader(Program, Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDetachShader) for more information.
""".
-spec detach_shader(
    Program :: program(),
    Shader :: shader()
) -> ok | {error, atom()}.
detach_shader(Program, Shader) ->

    ?CALL_RAW_FUNC(glDetachShader_raw(Program, Shader)).

-doc """
Create and initialize a buffer object's data store.

It implements the `glBufferData` function

```
ok = gl:buffer_data(array_buffer, <<0, 1, 2, 3>>, static_draw).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBufferData) for more information.
""".
-spec buffer_data(
    Target :: buffer_target(),
    DataOrSize :: iodata() | non_neg_integer(),
    Usage :: buffer_usage()
) -> ok | {error, atom()}.
buffer_data(Target, DataOrSize, Usage) ->
    NewUsage = case Usage of
        stream_draw -> ?GL_STREAM_DRAW;
        dynamic_read -> ?GL_DYNAMIC_READ;
        static_copy -> ?GL_STATIC_COPY;
        stream_read -> ?GL_STREAM_READ;
        stream_copy -> ?GL_STREAM_COPY;
        static_read -> ?GL_STATIC_READ;
        dynamic_copy -> ?GL_DYNAMIC_COPY;
        static_draw -> ?GL_STATIC_DRAW;
        dynamic_draw -> ?GL_DYNAMIC_DRAW
    end,
    {Size, Data} = case DataOrSize of
        Size0 when is_integer(Size0), Size0 >= 0 ->
            {Size0, undefined};
        _ ->
            Data0 = iolist_to_binary(DataOrSize),
            {byte_size(Data0), Data0}
    end,    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,

    ?CALL_RAW_FUNC(glBufferData_raw(NewTarget, Size, Data, NewUsage)).

-doc """
Return the maximum number of explicit uniform locations.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_uniform_locations().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_uniform_locations() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_uniform_locations() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_UNIFORM_LOCATIONS)).

-doc """
Return the maximum uniform block size in bytes.

It implements the `glGetIntegerv` function

```
{ok, Size} = gl:get_max_uniform_block_size().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_uniform_block_size() -> {ok, Size :: gl:int()} | {error, atom()}.
get_max_uniform_block_size() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_UNIFORM_BLOCK_SIZE)).

-doc """
Return the maximum framebuffer height.

It implements the `glGetIntegerv` function

```
{ok, Height} = gl:get_max_framebuffer_height().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_framebuffer_height() -> {ok, Height :: gl:int()} | {error, atom()}.
get_max_framebuffer_height() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_FRAMEBUFFER_HEIGHT)).

-doc """
Return the shader info-log length.

It implements the `glGetShaderiv` function

```
{ok, Length} = gl:get_shader_info_log_length(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetShaderiv) for more information.
""".
-spec get_shader_info_log_length(Shader :: shader()) -> {ok, Length :: gl:int()} | {error, atom()}.
get_shader_info_log_length(Shader) ->

    ?CALL_RAW_FUNC(glGetShaderivInteger_raw(Shader, ?GL_INFO_LOG_LENGTH)).

-doc """
Return the active-uniform indices for a list of uniform names.

It implements the `glGetUniformIndices` function

```
{ok, [Index]} = gl:get_uniform_indices(Program, [<<"u_color">>]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetUniformIndices) for more information.
""".
-spec get_uniform_indices(
    Program :: program(),
    Names :: [iodata()]
) -> {ok, Indices :: [gl:uint()]} | {error, atom()}.
get_uniform_indices(Program, Names) ->
    NamesNew = lists:map(fun
        (NamesItem) when is_list(NamesItem) -> iolist_to_binary(NamesItem);
        (NamesItem) when is_binary(NamesItem) -> NamesItem
    end, Names),
    ?CALL_RAW_FUNC(glGetUniformIndices_raw(Program, NamesNew)).

-doc """
Attaches a shader object to a program object.

It implements the `glAttachShader` function

```
ok = gl:attach_shader(Program, Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glAttachShader) for more information.
""".
-spec attach_shader(
    Program :: program(),
    Shader :: shader()
) -> ok | {error, atom()}.
attach_shader(Program, Shader) ->

    ?CALL_RAW_FUNC(glAttachShader_raw(Program, Shader)).

-doc """
Return the required uniform buffer offset alignment.

It implements the `glGetIntegerv` function

```
{ok, Alignment} = gl:get_uniform_buffer_offset_alignment().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_uniform_buffer_offset_alignment() -> {ok, Alignment :: gl:int()} | {error, atom()}.
get_uniform_buffer_offset_alignment() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT)).

-doc """
Generate mipmaps for the texture bound to a texture target.

It implements the `glGenerateMipmap` function

```
gl:generate_mipmap(texture_2d).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenerateMipmap) for more information.
""".
-spec generate_mipmap(Target :: texture_target()) -> ok | {error, atom()}.
generate_mipmap(Target) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glGenerateMipmap_raw(NewTarget)).

-type tex_parameter_value() ::
    gl:float() |
    [gl:float()] |
    [gl:int()]
.

-doc """
Set texture parameters.

It implements the following OpenGL commands:

- `glTexParameteriv`
- `glTexParameterfv`
- `glTexParameterf`

```
ok = gl:tex_parameter(f, texture_2d, texture_wrap_s, 33071.0).
ok = gl:tex_parameter(f, texture_2d, texture_wrap_t, [33071.0]).
ok = gl:tex_parameter(i, texture_2d, texture_wrap_s, [16#812F]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexParameter) for more information.
""".
-spec tex_parameter(
    Type :: f | i,
    Target :: texture_target(),
    ParamName :: texture_parameter_name(),
    Param :: tex_parameter_value()
) -> ok | {error, atom()}.
tex_parameter(i, Target, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glTexParameteriv_raw(NewTarget, NewParamName, Param));
tex_parameter(f, Target, ParamName, Param) when is_list(Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glTexParameterfv_raw(NewTarget, NewParamName, Param));
tex_parameter(f, Target, ParamName, Param) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glTexParameterf_raw(NewTarget, NewParamName, Param)).

-doc """
Return whether a shader compiler is supported.

It implements the `glGetIntegerv` function

```
{ok, Supported} = gl:get_shader_compiler_supported().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_shader_compiler_supported() -> {ok, Supported :: gl:boolean()} | {error, atom()}.
get_shader_compiler_supported() ->

    ?CALL_RAW_FUNC(glGetIntegervBoolean_raw(?GL_SHADER_COMPILER)).

-doc """
Return the number of active attribute variables in a program.

It implements the `glGetProgramiv` function

```
{ok, Count} = gl:get_program_active_attributes_count(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_active_attributes_count(Program :: program()) -> {ok, Count :: gl:int()} | {error, atom()}.
get_program_active_attributes_count(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_ACTIVE_ATTRIBUTES)).

-doc """
Specify the list of color buffers to draw into.

It implements the `glDrawBuffers` function

```
gl:draw_buffers([color_attachment0]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDrawBuffers) for more information.
""".
-spec draw_buffers(Buffers :: [draw_buffer_mode()]) -> ok | {error, atom()}.
draw_buffers(Buffers) ->
    N = length(Buffers),
    NewBuffers = << <<(case EnumValue of
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        none -> ?GL_NONE;
        front_and_back -> ?GL_FRONT_AND_BACK;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        back -> ?GL_BACK;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        front -> ?GL_FRONT;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end):32/native>> || EnumValue <- Buffers >>,
    ?CALL_RAW_FUNC(glDrawBuffers_raw(N, NewBuffers)).

-doc """
Read framebuffer parameter values for the framebuffer bound to a target.

It implements the `glGetFramebufferParameteriv` function

```
{ok, Values} = gl:get_framebuffer_parameter(framebuffer, framebuffer_default_width, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetFramebufferParameteriv) for more information.
""".
-spec get_framebuffer_parameter(
    Target :: framebuffer_target(),
    ParamName :: framebuffer_query_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_framebuffer_parameter(Target, ParamName, Count) ->
    NewParamName = case ParamName of
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        framebuffer_default_width -> ?GL_FRAMEBUFFER_DEFAULT_WIDTH;
        framebuffer_default_height -> ?GL_FRAMEBUFFER_DEFAULT_HEIGHT;
        framebuffer_default_samples -> ?GL_FRAMEBUFFER_DEFAULT_SAMPLES;
        framebuffer_default_fixed_sample_locations -> ?GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        samples -> ?GL_SAMPLES
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    ?CALL_RAW_FUNC(glGetFramebufferParameteriv_raw(NewTarget, NewParamName, Count)).

-doc """
Bind a buffer object to an indexed buffer target.

It implements the `glBindBufferBase` function

```
gl:bind_buffer_base(transform_feedback_buffer, 0, Buffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindBufferBase) for more information.
""".
-spec bind_buffer_base(
    Target :: buffer_target(),
    Index :: gl:uint(),
    Buffer :: buffer()
) -> ok | {error, atom()}.
bind_buffer_base(Target, Index, Buffer) ->
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,

    ?CALL_RAW_FUNC(glBindBufferBase_raw(NewTarget, Index, Buffer)).

-doc """
Return the sample count for the current framebuffer.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_samples_count().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_samples_count() -> {ok, Count :: gl:int()} | {error, atom()}.
get_samples_count() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_SAMPLES)).

-doc """
Check the completeness status of a framebuffer.

It implements the `glCheckFramebufferStatus` function

```
{ok, framebuffer_complete} = gl:check_framebuffer_status(framebuffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCheckFramebufferStatus) for more information.
""".
-spec check_framebuffer_status(Target :: framebuffer_target()) -> {ok, Status :: framebuffer_status()} | {error, atom()}.
check_framebuffer_status(Target) ->
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    ?CALL_RAW_FUNC(glCheckFramebufferStatus_raw(NewTarget)).

-doc """
Return integer parameter values for a program pipeline object.

It implements the `glGetProgramPipelineiv` function

```
{ok, [Program]} = gl:get_program_pipeline(Pipeline, active_program, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramPipelineiv) for more information.
""".
-spec get_program_pipeline(
    Pipeline :: program_pipeline(),
    ParamName :: program_pipeline_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_program_pipeline(Pipeline, ParamName, Count) ->
    NewParamName = case ParamName of
        vertex_shader -> ?GL_VERTEX_SHADER;
        fragment_shader -> ?GL_FRAGMENT_SHADER;
        active_program -> ?GL_ACTIVE_PROGRAM;
        info_log_length -> ?GL_INFO_LOG_LENGTH
    end,

    ?CALL_RAW_FUNC(glGetProgramPipelineivValues_raw(Pipeline, NewParamName, Count)).

-doc """
Return the maximum active uniform-block name length for a program.

It implements the `glGetProgramiv` function

```
{ok, Length} = gl:get_program_active_uniform_block_max_name_length(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_active_uniform_block_max_name_length(Program :: program()) -> {ok, Length :: gl:int()} | {error, atom()}.
get_program_active_uniform_block_max_name_length(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH)).

-doc """
Determines if a name corresponds to a program object.

It implements the `glIsProgram` function

```
{ok, true} = gl:is_program(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsProgram) for more information.
""".
-spec is_program(Program :: program()) -> {ok, IsProgram :: gl:boolean()} | {error, atom()}.
is_program(Program) ->

    ?CALL_RAW_FUNC(glIsProgram_raw(Program)).

-doc """
Return the current context major version.

It implements the `glGetIntegerv` function

```
{ok, Version} = gl:get_major_version().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_major_version() -> {ok, Version :: gl:int()} | {error, atom()}.
get_major_version() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAJOR_VERSION)).

-doc """
Return the maximum number of framebuffer color attachments.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_color_attachments().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_color_attachments() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_color_attachments() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COLOR_ATTACHMENTS)).

-doc """
Return the current pack skipped pixel count.

It implements the `glGetIntegerv` function

```
{ok, Pixels} = gl:get_pack_skip_pixels().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_pack_skip_pixels() -> {ok, Pixels :: gl:int()} | {error, atom()}.
get_pack_skip_pixels() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_PACK_SKIP_PIXELS)).

-doc """
Determines if a name corresponds to a shader object.

It implements the `glIsShader` function

```
{ok, true} = gl:is_shader(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsShader) for more information.
""".
-spec is_shader(Shader :: shader()) -> {ok, IsShader :: gl:boolean()} | {error, atom()}.
is_shader(Shader) ->

    ?CALL_RAW_FUNC(glIsShader_raw(Shader)).

-doc """
Generate texture names.

It implements the `glGenTextures` function

```
{ok, [Texture]} = gl:gen_textures(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenTextures) for more information.
""".
-spec gen_textures(N :: pos_integer()) -> {ok, Textures :: [texture()]} | {error, atom()}.
gen_textures(N) ->

    ?CALL_RAW_FUNC(glGenTextures_raw(N)).

-doc """
Generate renderbuffer object names.

It implements the `glGenRenderbuffers` function

```
{ok, [Renderbuffer]} = gl:gen_renderbuffers(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenRenderbuffers) for more information.
""".
-spec gen_renderbuffers(N :: pos_integer()) -> {ok, Renderbuffers :: [renderbuffer()]} | {error, atom()}.
gen_renderbuffers(N) ->

    ?CALL_RAW_FUNC(glGenRenderbuffers_raw(N)).

-doc """
Return the maximum number of uniform buffer bindings.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_uniform_buffer_bindings().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_uniform_buffer_bindings() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_uniform_buffer_bindings() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_UNIFORM_BUFFER_BINDINGS)).

-doc """
Load a runtime-format shader binary into one or more shader objects.

It implements the `glShaderBinary` function

```
ok = gl:shader_binary([Shader], BinaryFormat, Binary).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glShaderBinary) for more information.
""".
-spec shader_binary(
    Shaders :: [shader()],
    BinaryFormat :: gl:uint(),
    Binary :: iodata()
) -> ok | {error, atom()}.
shader_binary(Shaders, BinaryFormat, Binary) ->
    Binary0 = iolist_to_binary(Binary),
    Length = byte_size(Binary0),

    ?CALL_RAW_FUNC(glShaderBinary_raw(Shaders, BinaryFormat, Binary0, Length)).

-doc """
Returns the size, type, and name of an active attribute variable for a program object.

It implements the `glGetActiveAttrib` function

```
{ok, Size, Type, Name} = gl:get_active_attrib(Program, 0, MaxLength).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetActiveAttrib) for more information.
""".
-spec get_active_attrib(
    Program :: program(),
    Index :: gl:uint(),
    MaxLength :: pos_integer()
) -> {ok, Size :: gl:int(), Type :: attribute_type(), Name :: binary()} | {error, atom()}.
get_active_attrib(Program, Index, MaxLength) ->

    ?CALL_RAW_FUNC(glGetActiveAttrib_raw(Program, Index, MaxLength)).

-doc """
Validates a program object against current OpenGL state.

It implements the `glValidateProgram` function

```
ok = gl:validate_program(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glValidateProgram) for more information.
""".
-spec validate_program(Program :: program()) -> ok | {error, atom()}.
validate_program(Program) ->

    ?CALL_RAW_FUNC(glValidateProgram_raw(Program)).

-doc """
Return the number of sample buffers for the current framebuffer.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_sample_buffers_count().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_sample_buffers_count() -> {ok, Count :: gl:int()} | {error, atom()}.
get_sample_buffers_count() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_SAMPLE_BUFFERS)).

-doc """
Bind a buffer to a vertex buffer bind point.

It implements the `glBindVertexBuffer` function

```
gl:bind_vertex_buffer(0, Buffer, 0, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindVertexBuffer) for more information.
""".
-spec bind_vertex_buffer(
    BindingIndex :: gl:uint(),
    Buffer :: buffer(),
    Offset :: gl:intptr(),
    Stride :: gl:sizei()
) -> ok | {error, atom()}.
bind_vertex_buffer(BindingIndex, Buffer, Offset, Stride) ->

    ?CALL_RAW_FUNC(glBindVertexBuffer_raw(BindingIndex, Buffer, Offset, Stride)).

-doc """
Return the maximum number of invocations in one compute work group.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_compute_work_group_invocations().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_compute_work_group_invocations() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_compute_work_group_invocations() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS)).

-doc """
Return an indexed string describing the current GL connection.

It implements the `glGetStringi` function

```
{ok, Extension} = gl:get_string(extensions, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetStringi) for more information.
""".
-spec get_string(
    Name :: string_name(),
    Index :: gl:uint()
) -> {ok, String :: binary()} | {error, atom()}.
get_string(Name, Index) ->
    NewName = case Name of
        vendor -> ?GL_VENDOR;
        renderer -> ?GL_RENDERER;
        extensions -> ?GL_EXTENSIONS;
        shading_language_version -> ?GL_SHADING_LANGUAGE_VERSION;
        version -> ?GL_VERSION
    end,

    ?CALL_RAW_FUNC(glGetStringi_raw(NewName, Index)).

-doc """
Specify a three-dimensional texture subimage.

It implements the `glTexSubImage3D` function

```
ok = gl:tex_sub_image_3d(texture_3d, 0, 0, 0, 0, 1, 1, 1, rgba, unsigned_byte, <<0, 255, 0, 255>>).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexSubImage3D) for more information.
""".
-spec tex_sub_image_3d(
    Target :: texture_target(),
    Level :: gl:int(),
    OffsetX :: gl:int(),
    OffsetY :: gl:int(),
    OffsetZ :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Depth :: gl:sizei(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: iodata()
) -> ok | {error, atom()}.
tex_sub_image_3d(Target, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, Format, Type, Pixels) ->
    Pixels0 = iolist_to_binary(Pixels),
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        luminance_alpha -> ?GL_LUMINANCE_ALPHA;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        luminance -> ?GL_LUMINANCE;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glTexSubImage3D_raw(NewTarget, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, NewFormat, NewType, Pixels0)).

-doc """
Order selected memory transactions issued before the barrier.

It implements the `glMemoryBarrier` function

```
gl:memory_barrier([buffer_update_barrier_bit]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glMemoryBarrier) for more information.
""".
-spec memory_barrier(Barriers :: memory_barrier_mask()) -> ok | {error, atom()}.
memory_barrier(Barriers) ->
    NewBarriers = lists:foldl(fun(Field, L) ->
        R = case Field of
            all_barrier_bits -> ?GL_ALL_BARRIER_BITS;
            atomic_counter_barrier_bit -> ?GL_ATOMIC_COUNTER_BARRIER_BIT;
            texture_update_barrier_bit -> ?GL_TEXTURE_UPDATE_BARRIER_BIT;
            shader_storage_barrier_bit -> ?GL_SHADER_STORAGE_BARRIER_BIT;
            texture_fetch_barrier_bit -> ?GL_TEXTURE_FETCH_BARRIER_BIT;
            transform_feedback_barrier_bit -> ?GL_TRANSFORM_FEEDBACK_BARRIER_BIT;
            framebuffer_barrier_bit -> ?GL_FRAMEBUFFER_BARRIER_BIT;
            pixel_buffer_barrier_bit -> ?GL_PIXEL_BUFFER_BARRIER_BIT;
            uniform_barrier_bit -> ?GL_UNIFORM_BARRIER_BIT;
            buffer_update_barrier_bit -> ?GL_BUFFER_UPDATE_BARRIER_BIT;
            command_barrier_bit -> ?GL_COMMAND_BARRIER_BIT;
            element_array_barrier_bit -> ?GL_ELEMENT_ARRAY_BARRIER_BIT;
            shader_image_access_barrier_bit -> ?GL_SHADER_IMAGE_ACCESS_BARRIER_BIT;
            vertex_attrib_array_barrier_bit -> ?GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT
        end,
        L bor R
    end, 16#00, Barriers),
    ?CALL_RAW_FUNC(glMemoryBarrier_raw(NewBarriers)).

-doc """
Copy pixels into a two-dimensional texture image.

It implements the `glCopyTexImage2D` function

```
gl:copy_tex_image_2d(texture_2d, 0, rgba, 0, 0, 1, 1, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCopyTexImage2D) for more information.
""".
-spec copy_tex_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    InternalFormat :: internal_format(),
    X :: gl:int(),
    Y :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Border :: gl:int()
) -> ok | {error, atom()}.
copy_tex_image_2d(Target, Level, InternalFormat, X, Y, Width, Height, Border) ->
    NewInternalFormat = case InternalFormat of
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glCopyTexImage2D_raw(NewTarget, Level, NewInternalFormat, X, Y, Width, Height, Border)).

-doc """
Return the maximum combined number of uniform blocks.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_combined_uniform_blocks().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_combined_uniform_blocks() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_combined_uniform_blocks() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMBINED_UNIFORM_BLOCKS)).

-doc """
Bind a vertex array object.

It implements the `glBindVertexArray` function

```
gl:bind_vertex_array(Array).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindVertexArray) for more information.
""".
-spec bind_vertex_array(Array :: vertex_array() | none) -> ok | {error, atom()}.
bind_vertex_array(Array) ->
    NewArray = case Array of
        none -> 0;
        Array0 when is_integer(Array0), Array0 > 0 -> Array0
    end,

    ?CALL_RAW_FUNC(glBindVertexArray_raw(NewArray)).

-doc """
Set a default parameter for the framebuffer bound to a target.

It implements the `glFramebufferParameteri` function

```
gl:framebuffer_parameter(framebuffer, framebuffer_default_width, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFramebufferParameteri) for more information.
""".
-spec framebuffer_parameter(
    Target :: framebuffer_target(),
    ParamName :: framebuffer_parameter_name(),
    Param :: gl:int()
) -> ok | {error, atom()}.
framebuffer_parameter(Target, ParamName, Param) ->
    NewParamName = case ParamName of
        framebuffer_default_width -> ?GL_FRAMEBUFFER_DEFAULT_WIDTH;
        framebuffer_default_height -> ?GL_FRAMEBUFFER_DEFAULT_HEIGHT;
        framebuffer_default_samples -> ?GL_FRAMEBUFFER_DEFAULT_SAMPLES;
        framebuffer_default_fixed_sample_locations -> ?GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    ?CALL_RAW_FUNC(glFramebufferParameteri_raw(NewTarget, NewParamName, Param)).

-doc """
Invalidate a region of selected attachments of the currently bound framebuffer.

It implements the `glInvalidateSubFramebuffer` function

```
gl:invalidate_sub_framebuffer(framebuffer, [color_attachment0], 0, 0, 1, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glInvalidateSubFramebuffer) for more information.
""".
-spec invalidate_sub_framebuffer(
    Target :: framebuffer_target(),
    Attachments :: [framebuffer_attachment()],
    X :: gl:int(),
    Y :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei()
) -> ok | {error, atom()}.
invalidate_sub_framebuffer(Target, Attachments, X, Y, Width, Height) ->
    NumAttachments = length(Attachments),
    NewAttachments = << <<(case EnumValue of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end):32/native>> || EnumValue <- Attachments >>,    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    ?CALL_RAW_FUNC(glInvalidateSubFramebuffer_raw(NewTarget, NumAttachments, NewAttachments, X, Y, Width, Height)).

-doc """
Read multisample parameter values for a sample index.

It implements the `glGetMultisamplefv` function

```
{ok, Values} = gl:get_multisample(sample_position, 0, 2).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetMultisamplefv) for more information.
""".
-spec get_multisample(
    ParamName :: multisample_parameter_name(),
    Index :: gl:uint(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:float()]} | {error, atom()}.
get_multisample(ParamName, Index, Count) ->
    NewParamName = case ParamName of
        sample_position -> ?GL_SAMPLE_POSITION
    end,

    ?CALL_RAW_FUNC(glGetMultisamplefv_raw(NewParamName, Index, Count)).

-doc """
Copy pixels from the read framebuffer to the draw framebuffer.

It implements the `glBlitFramebuffer` function

```
gl:blit_framebuffer(0, 0, 1, 1, 0, 0, 1, 1, [color_buffer_bit], nearest).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlitFramebuffer) for more information.
""".
-spec blit_framebuffer(
    SrcX0 :: gl:int(),
    SrcY0 :: gl:int(),
    SrcX1 :: gl:int(),
    SrcY1 :: gl:int(),
    DstX0 :: gl:int(),
    DstY0 :: gl:int(),
    DstX1 :: gl:int(),
    DstY1 :: gl:int(),
    Mask :: clear_buffer_mask(),
    Filter :: blit_framebuffer_filter()
) -> ok | {error, atom()}.
blit_framebuffer(SrcX0, SrcY0, SrcX1, SrcY1, DstX0, DstY0, DstX1, DstY1, Mask, Filter) ->
    NewFilter = case Filter of
        linear -> ?GL_LINEAR;
        nearest -> ?GL_NEAREST
    end,
    NewMask = lists:foldl(fun(Field, L) ->
        R = case Field of
            stencil_buffer_bit -> ?GL_STENCIL_BUFFER_BIT;
            color_buffer_bit -> ?GL_COLOR_BUFFER_BIT;
            depth_buffer_bit -> ?GL_DEPTH_BUFFER_BIT
        end,
        L bor R
    end, 16#00, Mask),
    ?CALL_RAW_FUNC(glBlitFramebuffer_raw(SrcX0, SrcY0, SrcX1, SrcY1, DstX0, DstY0, DstX1, DstY1, NewMask, NewFilter)).

-doc """
Return the current unpack image height.

It implements the `glGetIntegerv` function

```
{ok, Height} = gl:get_unpack_image_height().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_unpack_image_height() -> {ok, Height :: gl:int()} | {error, atom()}.
get_unpack_image_height() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_UNPACK_IMAGE_HEIGHT)).

-doc """
Control the front and/or back writing of individual bits in the stencil planes.

It implements the `glStencilMaskSeparate` function

```
gl:stencil_mask_separate(front_and_back, 16#FF).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glStencilMaskSeparate) for more information.
""".
-spec stencil_mask_separate(
    Face :: triangle_face(),
    Mask :: gl:uint()
) -> ok | {error, atom()}.
stencil_mask_separate(Face, Mask) ->
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    ?CALL_RAW_FUNC(glStencilMaskSeparate_raw(NewFace, Mask)).

-doc """
Specify the organization of floating-point vertex attributes.

It implements the `glVertexAttribFormat` function

```
gl:vertex_attrib_format(0, 2, float, false, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexAttribFormat) for more information.
""".
-spec vertex_attrib_format(
    AttribIndex :: gl:uint(),
    Size :: gl:int(),
    Type :: vertex_attrib_type(),
    Normalized :: gl:boolean(),
    RelativeOffset :: gl:uint()
) -> ok | {error, atom()}.
vertex_attrib_format(AttribIndex, Size, Type, Normalized, RelativeOffset) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        float -> ?GL_FLOAT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        short -> ?GL_SHORT;
        fixed -> ?GL_FIXED;
        int_2_10_10_10_rev -> ?GL_INT_2_10_10_10_REV;
        half_float -> ?GL_HALF_FLOAT
    end,

    ?CALL_RAW_FUNC(glVertexAttribFormat_raw(AttribIndex, Size, NewType, Normalized, RelativeOffset)).

-doc """
Define the scissor box.

It implements the `glScissor` function

```
gl:scissor(0, 0, 1, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glScissor) for more information.
""".
-spec scissor(
    X :: gl:int(),
    Y :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei()
) -> ok | {error, atom()}.
scissor(X, Y, Width, Height) ->

    ?CALL_RAW_FUNC(glScissor_raw(X, Y, Width, Height)).

-doc """
Specify a two-dimensional texture image.

It implements the `glTexImage2D` function

```
ok = gl:tex_image_2d(texture_2d, 0, rgba, 1, 1, 0, rgba, unsigned_byte, <<255, 0, 0, 255>>).
ok = gl:tex_image_2d(texture_2d, 0, rgba, 1, 1, 0, rgba, unsigned_byte, none).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexImage2D) for more information.
""".
-spec tex_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    InternalFormat :: internal_format(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Border :: gl:int(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: iodata() | none
) -> ok | {error, atom()}.
tex_image_2d(Target, Level, InternalFormat, Width, Height, Border, Format, Type, Pixels) ->
    Pixels0 = case Pixels of
        none -> undefined;
        _ -> iolist_to_binary(Pixels)
    end,
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        luminance_alpha -> ?GL_LUMINANCE_ALPHA;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        luminance -> ?GL_LUMINANCE;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewInternalFormat = case InternalFormat of
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glTexImage2D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Border, NewFormat, NewType, Pixels0)).

-doc """
Return the location of a named active attribute variable.

It implements the `glGetAttribLocation` function

```
{ok, Location} = gl:get_attrib_location(Program, [<<"pos">>, "ition"]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetAttribLocation) for more information.
""".
-spec get_attrib_location(
    Program :: program(),
    Name :: iodata()
) -> {ok, Location :: gl:int()} | {error, atom()}.
get_attrib_location(Program, Name) ->
    Name0 = iolist_to_binary(Name),

    ?CALL_RAW_FUNC(glGetAttribLocation_raw(Program, Name0)).

-doc """
Delete transform feedback objects.

It implements the `glDeleteTransformFeedbacks` function

```
gl:delete_transform_feedbacks([Feedback]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteTransformFeedbacks) for more information.
""".
-spec delete_transform_feedbacks(Feedbacks :: [transform_feedback()]) -> ok | {error, atom()}.
delete_transform_feedbacks(Feedbacks) ->
    N = length(Feedbacks),
    NewFeedbacks = << <<ID:32/native>> || ID <- Feedbacks >>,
    ?CALL_RAW_FUNC(glDeleteTransformFeedbacks_raw(N, NewFeedbacks)).

-doc """
Return the maximum cube-map texture size.

It implements the `glGetIntegerv` function

```
{ok, Size} = gl:get_max_cube_map_texture_size().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_cube_map_texture_size() -> {ok, Size :: gl:int()} | {error, atom()}.
get_max_cube_map_texture_size() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_MAX_CUBE_MAP_TEXTURE_SIZE)).

-type get_vertex_attrib_value() ::
    gl:float() |
    gl:int()
.

-doc """
Read generic vertex attribute parameter values.

It implements the following OpenGL commands:

- `glGetVertexAttribiv`
- `glGetVertexAttribfv`

```
{ok, Values} = gl:get_vertex_attrib(f, 0, current_vertex_attrib, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetVertexAttrib) for more information.
""".
-spec get_vertex_attrib(
    Type :: f | i,
    Index :: gl:uint(),
    ParamName :: vertex_attrib_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [get_vertex_attrib_value()]} | {error, atom()}.
get_vertex_attrib(i, Index, ParamName, Count) ->
    NewParamName = case ParamName of
        vertex_attrib_array_size -> ?GL_VERTEX_ATTRIB_ARRAY_SIZE;
        vertex_attrib_relative_offset -> ?GL_VERTEX_ATTRIB_RELATIVE_OFFSET;
        vertex_attrib_array_buffer_binding -> ?GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
        vertex_attrib_binding -> ?GL_VERTEX_ATTRIB_BINDING;
        vertex_attrib_array_stride -> ?GL_VERTEX_ATTRIB_ARRAY_STRIDE;
        vertex_attrib_array_normalized -> ?GL_VERTEX_ATTRIB_ARRAY_NORMALIZED;
        vertex_attrib_array_divisor -> ?GL_VERTEX_ATTRIB_ARRAY_DIVISOR;
        vertex_attrib_array_integer -> ?GL_VERTEX_ATTRIB_ARRAY_INTEGER;
        vertex_attrib_array_type -> ?GL_VERTEX_ATTRIB_ARRAY_TYPE;
        current_vertex_attrib -> ?GL_CURRENT_VERTEX_ATTRIB;
        vertex_attrib_array_enabled -> ?GL_VERTEX_ATTRIB_ARRAY_ENABLED
    end,

    ?CALL_RAW_FUNC(glGetVertexAttribiv_raw(Index, NewParamName, Count));
get_vertex_attrib(f, Index, ParamName, Count) ->
    NewParamName = case ParamName of
        vertex_attrib_array_size -> ?GL_VERTEX_ATTRIB_ARRAY_SIZE;
        vertex_attrib_relative_offset -> ?GL_VERTEX_ATTRIB_RELATIVE_OFFSET;
        vertex_attrib_array_buffer_binding -> ?GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
        vertex_attrib_binding -> ?GL_VERTEX_ATTRIB_BINDING;
        vertex_attrib_array_stride -> ?GL_VERTEX_ATTRIB_ARRAY_STRIDE;
        vertex_attrib_array_normalized -> ?GL_VERTEX_ATTRIB_ARRAY_NORMALIZED;
        vertex_attrib_array_divisor -> ?GL_VERTEX_ATTRIB_ARRAY_DIVISOR;
        vertex_attrib_array_integer -> ?GL_VERTEX_ATTRIB_ARRAY_INTEGER;
        vertex_attrib_array_type -> ?GL_VERTEX_ATTRIB_ARRAY_TYPE;
        current_vertex_attrib -> ?GL_CURRENT_VERTEX_ATTRIB;
        vertex_attrib_array_enabled -> ?GL_VERTEX_ATTRIB_ARRAY_ENABLED
    end,

    ?CALL_RAW_FUNC(glGetVertexAttribfv_raw(Index, NewParamName, Count)).

-doc """
Return error information.

It implements the `glGetError` function

```
{ok, no_error} = gl:get_error().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetError) for more information.
""".
-spec get_error() -> {ok, Code :: error_code()} | {error, atom()}.
get_error() ->

    ?CALL_RAW_FUNC_UNCHECKED(glGetError_raw()).

-doc """
Determine if a name corresponds to a vertex array object.

It implements the `glIsVertexArray` function

```
gl:is_vertex_array(Array).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsVertexArray) for more information.
""".
-spec is_vertex_array(Array :: vertex_array()) -> {ok, IsArray :: gl:boolean()} | {error, atom()}.
is_vertex_array(Array) ->

    ?CALL_RAW_FUNC(glIsVertexArray_raw(Array)).

-doc """
Return the program info-log length.

It implements the `glGetProgramiv` function

```
{ok, Length} = gl:get_program_info_log_length(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_info_log_length(Program :: program()) -> {ok, Length :: gl:int()} | {error, atom()}.
get_program_info_log_length(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_INFO_LOG_LENGTH)).

-doc """
Return the maximum number of atomic counter buffer bindings.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_atomic_counter_buffer_bindings().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_atomic_counter_buffer_bindings() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_atomic_counter_buffer_bindings() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS)).

-doc """
Bind a named texture to a texturing target.

It implements the `glBindTexture` function

```
gl:bind_texture(texture_2d, Texture).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindTexture) for more information.
""".
-spec bind_texture(
    Target :: texture_target(),
    Texture :: texture() | none
) -> ok | {error, atom()}.
bind_texture(Target, Texture) ->
    NewTexture = case Texture of
        none -> 0;
        Texture0 when is_integer(Texture0), Texture0 > 0 -> Texture0
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glBindTexture_raw(NewTarget, NewTexture)).

-doc """
Define an array of integer generic vertex attribute data using the currently bound array buffer.

It implements the `glVertexAttribIPointer` function

```
ok = gl:vertex_attrib_i_pointer(1, 2, int, 0, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexAttribIPointer) for more information.
""".
-spec vertex_attrib_i_pointer(
    Index :: gl:uint(),
    Size :: gl:int(),
    Type :: vertex_attrib_i_type(),
    Stride :: gl:sizei(),
    Offset :: gl:offset()
) -> ok | {error, atom()}.
vertex_attrib_i_pointer(Index, Size, Type, Stride, Offset) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        short -> ?GL_SHORT
    end,

    ?CALL_RAW_FUNC(glVertexAttribIPointer_raw(Index, Size, NewType, Stride, Offset)).

-doc """
Return the number of indexed extension strings.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_num_extensions().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_num_extensions() -> {ok, Count :: gl:int()} | {error, atom()}.
get_num_extensions() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_NUM_EXTENSIONS)).

-doc """
Return the maximum number of compute shader atomic counter buffers.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_compute_atomic_counter_buffers().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_compute_atomic_counter_buffers() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_compute_atomic_counter_buffers() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS)).

-doc """
Deletes a shader object.

It implements the `glDeleteShader` function

```
ok = gl:delete_shader(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteShader) for more information.
""".
-spec delete_shader(Shader :: shader()) -> ok | {error, atom()}.
delete_shader(Shader) ->

    ?CALL_RAW_FUNC(glDeleteShader_raw(Shader)).

-doc """
Return the maximum combined vertex uniform components.

It implements the `glGetInteger64v` function

```
{ok, Count} = gl:get_max_combined_vertex_uniform_components().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetInteger64v) for more information.
""".
-spec get_max_combined_vertex_uniform_components() -> {ok, Count :: gl:int64()} | {error, atom()}.
get_max_combined_vertex_uniform_components() ->

    ?CALL_RAW_FUNC(glGetInteger64vInteger_raw(?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS)).

-type get_tex_level_parameter_value() ::
    gl:int() |
    gl:float()
.

-doc """
Read texture level parameter values for a texture bound to a target.

It implements the following OpenGL commands:

- `glGetTexLevelParameterfv`
- `glGetTexLevelParameteriv`

```
{ok, Values} = gl:get_tex_level_parameter(i, texture_2d, 0, texture_width, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetTexLevelParameter) for more information.
""".
-spec get_tex_level_parameter(
    Type :: f | i,
    Target :: texture_target(),
    Level :: gl:int(),
    ParamName :: texture_level_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [get_tex_level_parameter_value()]} | {error, atom()}.
get_tex_level_parameter(f, Target, Level, ParamName, Count) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glGetTexLevelParameterfv_raw(NewTarget, Level, NewParamName, Count));
get_tex_level_parameter(i, Target, Level, ParamName, Count) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glGetTexLevelParameteriv_raw(NewTarget, Level, NewParamName, Count)).

-doc """
Return the maximum number of fragment shader image uniforms.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_fragment_image_uniforms().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_fragment_image_uniforms() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_fragment_image_uniforms() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_FRAGMENT_IMAGE_UNIFORMS)).

-doc """
Specify mapping of depth values from normalized device coordinates to window coordinates.

It implements the `glDepthRangef` function

```
gl:depth_range(0.0, 1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDepthRangef) for more information.
""".
-spec depth_range(
    Near :: gl:float(),
    Far :: gl:float()
) -> ok | {error, atom()}.
depth_range(Near, Far) ->

    ?CALL_RAW_FUNC(glDepthRangef_raw(Near, Far)).

-type uniform_value() ::
    gl:float() |
    [gl:float()] |
    gl:int() |
    [gl:int()] |
    vector2(gl:float()) |
    [vector2(gl:float())] |
    vector2(gl:int()) |
    [vector2(gl:int())] |
    vector3(gl:float()) |
    [vector3(gl:float())] |
    vector3(gl:int()) |
    [vector3(gl:int())] |
    vector4(gl:float()) |
    [vector4(gl:float())] |
    vector4(gl:int()) |
    [vector4(gl:int())] |
    gl:uint() |
    vector2(gl:uint()) |
    vector3(gl:uint()) |
    vector4(gl:uint()) |
    [gl:uint()] |
    [vector2(gl:uint())] |
    [vector3(gl:uint())] |
    [vector4(gl:uint())]
.

-doc """
Set a scalar or vector uniform value for the current program.

It implements the following OpenGL commands:

- `glUniform4uiv`
- `glUniform3uiv`
- `glUniform2uiv`
- `glUniform1uiv`
- `glUniform4ui`
- `glUniform3ui`
- `glUniform2ui`
- `glUniform1ui`
- `glUniform4iv`
- `glUniform4i`
- `glUniform4fv`
- `glUniform4f`
- `glUniform3iv`
- `glUniform3i`
- `glUniform3fv`
- `glUniform3f`
- `glUniform2iv`
- `glUniform2i`
- `glUniform2fv`
- `glUniform2f`
- `glUniform1iv`
- `glUniform1i`
- `glUniform1fv`
- `glUniform1f`

```
ok = gl:uniform(f, Location, 1.0).
ok = gl:uniform(i, Location, 1).
ok = gl:uniform(f, Location, {1.0, 0.0, 0.0, 1.0}).
ok = gl:uniform(i, Location, {1, 0, 0, 1}).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glUniform) for more information.
""".
-spec uniform(
    Type :: f | i | ui,
    Location :: gl:int(),
    Value :: uniform_value()
) -> ok | {error, atom()}.
uniform(ui, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform4uiv_raw(Location, Count, NewValue));
uniform(ui, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform3uiv_raw(Location, Count, NewValue));
uniform(ui, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform2uiv_raw(Location, Count, NewValue));
uniform(ui, Location, Value) when is_list(Value) ->
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform1uiv_raw(Location, Count, Value));
uniform(ui, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Value),

    ?CALL_RAW_FUNC(glUniform4ui_raw(Location, V1, V2, V3, V4));
uniform(ui, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Value),

    ?CALL_RAW_FUNC(glUniform3ui_raw(Location, V1, V2, V3));
uniform(ui, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Value),

    ?CALL_RAW_FUNC(glUniform2ui_raw(Location, V1, V2));
uniform(ui, Location, Value) ->

    ?CALL_RAW_FUNC(glUniform1ui_raw(Location, Value));
uniform(i, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform4iv_raw(Location, Count, NewValue));
uniform(i, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Value),

    ?CALL_RAW_FUNC(glUniform4i_raw(Location, V1, V2, V3, V4));
uniform(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform4fv_raw(Location, Count, NewValue));
uniform(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Value),

    ?CALL_RAW_FUNC(glUniform4f_raw(Location, V1, V2, V3, V4));
uniform(i, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform3iv_raw(Location, Count, NewValue));
uniform(i, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Value),

    ?CALL_RAW_FUNC(glUniform3i_raw(Location, V1, V2, V3));
uniform(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform3fv_raw(Location, Count, NewValue));
uniform(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Value),

    ?CALL_RAW_FUNC(glUniform3f_raw(Location, V1, V2, V3));
uniform(i, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform2iv_raw(Location, Count, NewValue));
uniform(i, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Value),

    ?CALL_RAW_FUNC(glUniform2i_raw(Location, V1, V2));
uniform(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_VECTOR_2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform2fv_raw(Location, Count, NewValue));
uniform(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Value),

    ?CALL_RAW_FUNC(glUniform2f_raw(Location, V1, V2));
uniform(i, Location, Value) when is_list(Value) ->
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform1iv_raw(Location, Count, Value));
uniform(i, Location, Value) ->

    ?CALL_RAW_FUNC(glUniform1i_raw(Location, Value));
uniform(f, Location, Value) when is_list(Value) ->
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniform1fv_raw(Location, Count, Value));
uniform(f, Location, Value) ->

    ?CALL_RAW_FUNC(glUniform1f_raw(Location, Value)).

-doc """
Read indexed integer OpenGL state parameter values.

It implements the `glGetIntegeri_v` function

```
{ok, Values} = gl:get_integer(blend, 0, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegeri_v) for more information.
""".
-spec get_integer(
    ParamName :: state_parameter_name(),
    Index :: gl:uint(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_integer(ParamName, Index, Count) ->
    NewParamName = case ParamName of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        line_width -> ?GL_LINE_WIDTH;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        depth_bits -> ?GL_DEPTH_BITS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        stencil_ref -> ?GL_STENCIL_REF;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        current_program -> ?GL_CURRENT_PROGRAM;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    ?CALL_RAW_FUNC(glGetIntegeri_v_raw(NewParamName, Index, Count)).

-doc """
Set front and back function and reference value for stencil testing.

It implements the `glStencilFunc` function

```
gl:stencil_func(always, 0, 16#FF).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glStencilFunc) for more information.
""".
-spec stencil_func(
    Function :: stencil_function(),
    Ref :: gl:int(),
    Mask :: gl:uint()
) -> ok | {error, atom()}.
stencil_func(Function, Ref, Mask) ->
    NewFunction = case Function of
        equal -> ?GL_EQUAL;
        always -> ?GL_ALWAYS;
        never -> ?GL_NEVER;
        lequal -> ?GL_LEQUAL;
        gequal -> ?GL_GEQUAL;
        greater -> ?GL_GREATER;
        notequal -> ?GL_NOTEQUAL;
        less -> ?GL_LESS
    end,

    ?CALL_RAW_FUNC(glStencilFunc_raw(NewFunction, Ref, Mask)).

-doc """
Return the maximum vertex-attrib relative offset.

It implements the `glGetIntegerv` function

```
{ok, Offset} = gl:get_max_vertex_attrib_relative_offset().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_vertex_attrib_relative_offset() -> {ok, Offset :: gl:int()} | {error, atom()}.
get_max_vertex_attrib_relative_offset() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET)).

-type clear_buffer_value() ::
    [gl:int()] |
    [gl:uint()] |
    [gl:float()]
.

-doc """
Clear a color, depth, or stencil buffer of the current framebuffer.

It implements the following OpenGL commands:

- `glClearBufferfv`
- `glClearBufferuiv`
- `glClearBufferiv`

```
ok = gl:clear_buffer(f, color, 0, [0.0, 0.0, 0.0, 1.0]).
ok = gl:clear_buffer(i, color, 0, [0, 0, 0, 0]).
ok = gl:clear_buffer(ui, color, 0, [0, 0, 0, 0]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glClearBuffer) for more information.
""".
-spec clear_buffer(
    Type :: f | i | ui,
    Buffer :: clear_buffer(),
    DrawBuffer :: gl:int(),
    Value :: clear_buffer_value()
) -> ok | {error, atom()}.
clear_buffer(f, Buffer, DrawBuffer, Value) when is_list(Value) ->
    NewBuffer = case Buffer of
        color -> ?GL_COLOR;
        depth -> ?GL_DEPTH;
        stencil -> ?GL_STENCIL
    end,

    ?CALL_RAW_FUNC(glClearBufferfv_raw(NewBuffer, DrawBuffer, Value));
clear_buffer(ui, Buffer, DrawBuffer, Value) when is_list(Value) ->
    NewBuffer = case Buffer of
        color -> ?GL_COLOR;
        depth -> ?GL_DEPTH;
        stencil -> ?GL_STENCIL
    end,

    ?CALL_RAW_FUNC(glClearBufferuiv_raw(NewBuffer, DrawBuffer, Value));
clear_buffer(i, Buffer, DrawBuffer, Value) when is_list(Value) ->
    NewBuffer = case Buffer of
        color -> ?GL_COLOR;
        depth -> ?GL_DEPTH;
        stencil -> ?GL_STENCIL
    end,

    ?CALL_RAW_FUNC(glClearBufferiv_raw(NewBuffer, DrawBuffer, Value)).

-doc """
Reserve program pipeline object names.

It implements the `glGenProgramPipelines` function

```
{ok, [Pipeline]} = gl:gen_program_pipelines(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenProgramPipelines) for more information.
""".
-spec gen_program_pipelines(N :: pos_integer()) -> {ok, Pipelines :: [program_pipeline()]} | {error, atom()}.
gen_program_pipelines(N) ->

    ?CALL_RAW_FUNC(glGenProgramPipelines_raw(N)).

-doc """
Set the texture wrap mode for the T coordinate.

It implements the `glTexParameteri` function

```
gl:tex_wrap_t(texture_2d, clamp_to_edge).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexParameteri) for more information.
""".
-spec tex_wrap_t(
    Target :: texture_target(),
    Mode :: texture_wrap_mode()
) -> ok | {error, atom()}.
tex_wrap_t(Target, Mode) ->
    NewMode = case Mode of
        repeat -> ?GL_REPEAT;
        clamp_to_edge -> ?GL_CLAMP_TO_EDGE;
        mirrored_repeat -> ?GL_MIRRORED_REPEAT
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glTexParameteri_raw(NewTarget, ?GL_TEXTURE_WRAP_T, NewMode)).

-doc """
Render primitives from array data.

It implements the `glDrawArrays` function

```
ok = gl:draw_arrays(triangles, 0, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDrawArrays) for more information.
""".
-spec draw_arrays(
    Mode :: primitive_type(),
    First :: gl:int(),
    Count :: gl:sizei()
) -> ok | {error, atom()}.
draw_arrays(Mode, First, Count) ->
    NewMode = case Mode of
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        lines -> ?GL_LINES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP
    end,

    ?CALL_RAW_FUNC(glDrawArrays_raw(NewMode, First, Count)).

-doc """
Return the maximum number of color texture samples.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_color_texture_samples().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_color_texture_samples() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_color_texture_samples() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COLOR_TEXTURE_SAMPLES)).

-doc """
Return the maximum number of fragment shader atomic counters.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_fragment_atomic_counters().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_fragment_atomic_counters() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_fragment_atomic_counters() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_FRAGMENT_ATOMIC_COUNTERS)).

-doc """
Return the maximum number of vertex texture image units.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_vertex_texture_image_units().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_vertex_texture_image_units() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_vertex_texture_image_units() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS)).

-doc """
Attach a two-dimensional texture image as a logical buffer of a framebuffer object.

It implements the `glFramebufferTexture2D` function

```
gl:framebuffer_texture_2d(framebuffer, color_attachment0, texture_2d, Texture, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFramebufferTexture2D) for more information.
""".
-spec framebuffer_texture_2d(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    TextureTarget :: texture_target(),
    Texture :: texture(),
    Level :: gl:int()
) -> ok | {error, atom()}.
framebuffer_texture_2d(Target, Attachment, TextureTarget, Texture, Level) ->
    NewTextureTarget = case TextureTarget of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    ?CALL_RAW_FUNC(glFramebufferTexture2D_raw(NewTarget, NewAttachment, NewTextureTarget, Texture, Level)).

-doc """
Delete named textures.

It implements the `glDeleteTextures` function

```
gl:delete_textures([Texture]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteTextures) for more information.
""".
-spec delete_textures(Textures :: [texture()]) -> ok | {error, atom()}.
delete_textures(Textures) ->
    N = length(Textures),
    NewTextures = << <<ID:32/native>> || ID <- Textures >>,
    ?CALL_RAW_FUNC(glDeleteTextures_raw(N, NewTextures)).

-doc """
Return the maximum number of varying vectors.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_varying_vectors().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_varying_vectors() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_varying_vectors() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VARYING_VECTORS)).

-doc """
Invalidate selected attachments of the currently bound framebuffer.

It implements the `glInvalidateFramebuffer` function

```
gl:invalidate_framebuffer(framebuffer, [color_attachment0]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glInvalidateFramebuffer) for more information.
""".
-spec invalidate_framebuffer(
    Target :: framebuffer_target(),
    Attachments :: [framebuffer_attachment()]
) -> ok | {error, atom()}.
invalidate_framebuffer(Target, Attachments) ->
    NumAttachments = length(Attachments),
    NewAttachments = << <<(case EnumValue of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end):32/native>> || EnumValue <- Attachments >>,    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    ?CALL_RAW_FUNC(glInvalidateFramebuffer_raw(NewTarget, NumAttachments, NewAttachments)).

-doc """
Return the current unpack skipped image count.

It implements the `glGetIntegerv` function

```
{ok, Images} = gl:get_unpack_skip_images().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_unpack_skip_images() -> {ok, Images :: gl:int()} | {error, atom()}.
get_unpack_skip_images() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_UNPACK_SKIP_IMAGES)).

-doc """
Specify the organization of integer vertex attributes.

It implements the `glVertexAttribIFormat` function

```
gl:vertex_attrib_i_format(1, 2, int, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexAttribIFormat) for more information.
""".
-spec vertex_attrib_i_format(
    AttribIndex :: gl:uint(),
    Size :: gl:int(),
    Type :: vertex_attrib_i_type(),
    RelativeOffset :: gl:uint()
) -> ok | {error, atom()}.
vertex_attrib_i_format(AttribIndex, Size, Type, RelativeOffset) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        short -> ?GL_SHORT
    end,

    ?CALL_RAW_FUNC(glVertexAttribIFormat_raw(AttribIndex, Size, NewType, RelativeOffset)).

-doc """
Return the maximum combined number of texture image units.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_combined_texture_image_units().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_combined_texture_image_units() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_combined_texture_image_units() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS)).

-doc """
Set the texture minification filter.

It implements the `glTexParameteri` function

```
gl:tex_min_filter(texture_2d, nearest).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexParameteri) for more information.
""".
-spec tex_min_filter(
    Target :: texture_target(),
    Filter :: texture_min_filter()
) -> ok | {error, atom()}.
tex_min_filter(Target, Filter) ->
    NewFilter = case Filter of
        nearest_mipmap_nearest -> ?GL_NEAREST_MIPMAP_NEAREST;
        linear_mipmap_nearest -> ?GL_LINEAR_MIPMAP_NEAREST;
        linear_mipmap_linear -> ?GL_LINEAR_MIPMAP_LINEAR;
        linear -> ?GL_LINEAR;
        nearest -> ?GL_NEAREST;
        nearest_mipmap_linear -> ?GL_NEAREST_MIPMAP_LINEAR
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glTexParameteri_raw(NewTarget, ?GL_TEXTURE_MIN_FILTER, NewFilter)).

-doc """
Set the texture magnification filter.

It implements the `glTexParameteri` function

```
gl:tex_mag_filter(texture_2d, nearest).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexParameteri) for more information.
""".
-spec tex_mag_filter(
    Target :: texture_target(),
    Filter :: texture_mag_filter()
) -> ok | {error, atom()}.
tex_mag_filter(Target, Filter) ->
    NewFilter = case Filter of
        linear -> ?GL_LINEAR;
        nearest -> ?GL_NEAREST
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glTexParameteri_raw(NewTarget, ?GL_TEXTURE_MAG_FILTER, NewFilter)).

-doc """
Return the maximum combined number of shader output resources.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_combined_shader_output_resources().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_combined_shader_output_resources() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_combined_shader_output_resources() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES)).

-doc """
Specify the width of rasterized lines.

It implements the `glLineWidth` function

```
gl:line_width(1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glLineWidth) for more information.
""".
-spec line_width(Width :: gl:float()) -> ok | {error, atom()}.
line_width(Width) ->

    ?CALL_RAW_FUNC(glLineWidth_raw(Width)).

-doc """
Set one word of the sample mask.

It implements the `glSampleMaski` function

```
gl:sample_mask(0, 16#FFFFFFFF).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glSampleMaski) for more information.
""".
-spec sample_mask(
    MaskNumber :: gl:uint(),
    Mask :: gl:uint()
) -> ok | {error, atom()}.
sample_mask(MaskNumber, Mask) ->

    ?CALL_RAW_FUNC(glSampleMaski_raw(MaskNumber, Mask)).

-doc """
Enable or disable writing into the depth buffer.

It implements the `glDepthMask` function

```
gl:depth_mask(true).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDepthMask) for more information.
""".
-spec depth_mask(Flag :: gl:boolean()) -> ok | {error, atom()}.
depth_mask(Flag) ->

    ?CALL_RAW_FUNC(glDepthMask_raw(Flag)).

-doc """
Set the RGB blend equation and the alpha blend equation separately.

It implements the `glBlendEquationSeparate` function

```
gl:blend_equation_separate(func_add, func_add).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlendEquationSeparate) for more information.
""".
-spec blend_equation_separate(
    ModeRGB :: blend_equation_mode(),
    ModeAlpha :: blend_equation_mode()
) -> ok | {error, atom()}.
blend_equation_separate(ModeRGB, ModeAlpha) ->
    NewModeAlpha = case ModeAlpha of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,
    NewModeRGB = case ModeRGB of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,

    ?CALL_RAW_FUNC(glBlendEquationSeparate_raw(NewModeRGB, NewModeAlpha)).

-doc """
Return the number of active uniform blocks in a program.

It implements the `glGetProgramiv` function

```
{ok, Count} = gl:get_program_active_uniform_blocks_count(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_active_uniform_blocks_count(Program :: program()) -> {ok, Count :: gl:int()} | {error, atom()}.
get_program_active_uniform_blocks_count(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_ACTIVE_UNIFORM_BLOCKS)).

-doc """
Return the index of a named resource within a program interface.

It implements the `glGetProgramResourceIndex` function

```
{ok, Index} = gl:get_program_resource_index(Program, uniform, <<"missing">>).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramResourceIndex) for more information.
""".
-spec get_program_resource_index(
    Program :: program(),
    ProgramInterface :: program_interface(),
    Name :: iodata()
) -> {ok, Index :: gl:uint()} | {error, atom()}.
get_program_resource_index(Program, ProgramInterface, Name) ->
    Name0 = iolist_to_binary(Name),
    NewProgramInterface = case ProgramInterface of
        buffer_variable -> ?GL_BUFFER_VARIABLE;
        shader_storage_block -> ?GL_SHADER_STORAGE_BLOCK;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        uniform -> ?GL_UNIFORM;
        program_input -> ?GL_PROGRAM_INPUT;
        program_output -> ?GL_PROGRAM_OUTPUT;
        transform_feedback_varying -> ?GL_TRANSFORM_FEEDBACK_VARYING;
        uniform_block -> ?GL_UNIFORM_BLOCK
    end,

    ?CALL_RAW_FUNC(glGetProgramResourceIndex_raw(Program, NewProgramInterface, Name0)).

-doc """
Copy a two-dimensional region into a three-dimensional texture layer.

It implements the `glCopyTexSubImage3D` function

```
gl:copy_tex_sub_image_3d(texture_3d, 0, 0, 0, 0, 0, 0, 1, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCopyTexSubImage3D) for more information.
""".
-spec copy_tex_sub_image_3d(
    Target :: texture_target(),
    Level :: gl:int(),
    OffsetX :: gl:int(),
    OffsetY :: gl:int(),
    OffsetZ :: gl:int(),
    X :: gl:int(),
    Y :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei()
) -> ok | {error, atom()}.
copy_tex_sub_image_3d(Target, Level, OffsetX, OffsetY, OffsetZ, X, Y, Width, Height) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glCopyTexSubImage3D_raw(NewTarget, Level, OffsetX, OffsetY, OffsetZ, X, Y, Width, Height)).

-doc """
Return the shader storage buffer offset alignment.

It implements the `glGetIntegerv` function

```
{ok, Alignment} = gl:get_shader_storage_buffer_offset_alignment().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_shader_storage_buffer_offset_alignment() -> {ok, Alignment :: gl:int()} | {error, atom()}.
get_shader_storage_buffer_offset_alignment() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT)).

-doc """
Set the viewport.

It implements the `glViewport` function

```
gl:viewport(0, 0, 1, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glViewport) for more information.
""".
-spec viewport(
    X :: gl:int(),
    Y :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei()
) -> ok | {error, atom()}.
viewport(X, Y, Width, Height) ->

    ?CALL_RAW_FUNC(glViewport_raw(X, Y, Width, Height)).

-doc """
Specify a three-dimensional texture image.

It implements the `glTexImage3D` function

```
ok = gl:tex_image_3d(texture_3d, 0, rgba, 1, 1, 1, 0, rgba, unsigned_byte, <<255, 0, 0, 255>>).
ok = gl:tex_image_3d(texture_3d, 0, rgba, 1, 1, 1, 0, rgba, unsigned_byte, none).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexImage3D) for more information.
""".
-spec tex_image_3d(
    Target :: texture_target(),
    Level :: gl:int(),
    InternalFormat :: internal_format(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Depth :: gl:sizei(),
    Border :: gl:int(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    Pixels :: iodata() | none
) -> ok | {error, atom()}.
tex_image_3d(Target, Level, InternalFormat, Width, Height, Depth, Border, Format, Type, Pixels) ->
    Pixels0 = case Pixels of
        none -> undefined;
        _ -> iolist_to_binary(Pixels)
    end,
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        luminance_alpha -> ?GL_LUMINANCE_ALPHA;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        luminance -> ?GL_LUMINANCE;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,
    NewInternalFormat = case InternalFormat of
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glTexImage3D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Depth, Border, NewFormat, NewType, Pixels0)).

-doc """
Specify a two-dimensional texture subimage in a compressed format.

It implements the `glCompressedTexSubImage2D` function

```
ok = gl:compressed_tex_sub_image_2d(texture_2d, 0, 0, 0, 4, 4, compressed_rgba, CompressedBytes).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCompressedTexSubImage2D) for more information.
""".
-spec compressed_tex_sub_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    OffsetX :: gl:int(),
    OffsetY :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Format :: internal_format(),
    ImageData :: iodata()
) -> ok | {error, atom()}.
compressed_tex_sub_image_2d(Target, Level, OffsetX, OffsetY, Width, Height, Format, ImageData) ->
    ImageData0 = iolist_to_binary(ImageData),
    ImageSize = byte_size(ImageData0),
    NewFormat = case Format of
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glCompressedTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, Width, Height, NewFormat, ImageSize, ImageData0)).

-doc """
Read query target parameter values.

It implements the `glGetQueryiv` function

```
{ok, Values} = gl:get_query(any_samples_passed, current_query, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetQueryiv) for more information.
""".
-spec get_query(
    Target :: query_target(),
    ParamName :: query_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_query(Target, ParamName, Count) ->
    NewParamName = case ParamName of
        current_query -> ?GL_CURRENT_QUERY
    end,
    NewTarget = case Target of
        transform_feedback_primitives_written -> ?GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
        any_samples_passed -> ?GL_ANY_SAMPLES_PASSED;
        any_samples_passed_conservative -> ?GL_ANY_SAMPLES_PASSED_CONSERVATIVE
    end,

    ?CALL_RAW_FUNC(glGetQueryiv_raw(NewTarget, NewParamName, Count)).

-doc """
Set the texture wrap mode for the S coordinate.

It implements the `glTexParameteri` function

```
gl:tex_wrap_s(texture_2d, clamp_to_edge).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexParameteri) for more information.
""".
-spec tex_wrap_s(
    Target :: texture_target(),
    Mode :: texture_wrap_mode()
) -> ok | {error, atom()}.
tex_wrap_s(Target, Mode) ->
    NewMode = case Mode of
        repeat -> ?GL_REPEAT;
        clamp_to_edge -> ?GL_CLAMP_TO_EDGE;
        mirrored_repeat -> ?GL_MIRRORED_REPEAT
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glTexParameteri_raw(NewTarget, ?GL_TEXTURE_WRAP_S, NewMode)).

-doc """
Bind a named buffer object.

It implements the `glBindBuffer` function

```
gl:bind_buffer(array_buffer, Buffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindBuffer) for more information.
""".
-spec bind_buffer(
    Target :: buffer_target(),
    Buffer :: buffer() | none
) -> ok | {error, atom()}.
bind_buffer(Target, Buffer) ->
    NewBuffer = case Buffer of
        none -> 0;
        Buffer0 when is_integer(Buffer0), Buffer0 > 0 -> Buffer0
    end,
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,

    ?CALL_RAW_FUNC(glBindBuffer_raw(NewTarget, NewBuffer)).

-doc """
Assign a binding point to an active uniform block.

It implements the `glUniformBlockBinding` function

```
ok = gl:uniform_block_binding(Program, Index, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glUniformBlockBinding) for more information.
""".
-spec uniform_block_binding(
    Program :: program(),
    UniformBlockIndex :: gl:uint(),
    UniformBlockBinding :: gl:uint()
) -> ok | {error, atom()}.
uniform_block_binding(Program, UniformBlockIndex, UniformBlockBinding) ->

    ?CALL_RAW_FUNC(glUniformBlockBinding_raw(Program, UniformBlockIndex, UniformBlockBinding)).

-type uniform_matrix_value() ::
    matrix2(gl:float()) |
    [matrix2(gl:float())] |
    matrix3(gl:float()) |
    [matrix3(gl:float())] |
    matrix4(gl:float()) |
    [matrix4(gl:float())] |
    matrix2x3(gl:float()) |
    [matrix2x3(gl:float())] |
    matrix3x2(gl:float()) |
    [matrix3x2(gl:float())] |
    matrix2x4(gl:float()) |
    [matrix2x4(gl:float())] |
    matrix4x2(gl:float()) |
    [matrix4x2(gl:float())] |
    matrix3x4(gl:float()) |
    [matrix3x4(gl:float())] |
    matrix4x3(gl:float()) |
    [matrix4x3(gl:float())]
.

-doc """
Set one or more matrix uniforms for the current program.

It implements the following OpenGL commands:

- `glUniformMatrix4x3fv`
- `glUniformMatrix4x3fv`
- `glUniformMatrix3x4fv`
- `glUniformMatrix3x4fv`
- `glUniformMatrix4x2fv`
- `glUniformMatrix4x2fv`
- `glUniformMatrix2x4fv`
- `glUniformMatrix2x4fv`
- `glUniformMatrix3x2fv`
- `glUniformMatrix3x2fv`
- `glUniformMatrix2x3fv`
- `glUniformMatrix2x3fv`
- `glUniformMatrix4fv`
- `glUniformMatrix4fv`
- `glUniformMatrix3fv`
- `glUniformMatrix3fv`
- `glUniformMatrix2fv`
- `glUniformMatrix2fv`

```
ok = gl:uniform_matrix(f, Location, {{1.0, 0.0}, {0.0, 1.0}}).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glUniformMatrix) for more information.
""".
-spec uniform_matrix(
    Type :: f,
    Location :: gl:int(),
    Value :: uniform_matrix_value()
) -> ok | {error, atom()}.
uniform_matrix(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_4x3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniformMatrix4x3fv_raw(Location, Count, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 3
->
    NewValue = ?GL_PACK_MATRIX_4x3(Value),

    ?CALL_RAW_FUNC(glUniformMatrix4x3fv_raw(Location, 1, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_3x4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniformMatrix3x4fv_raw(Location, Count, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 4
->
    NewValue = ?GL_PACK_MATRIX_3x4(Value),

    ?CALL_RAW_FUNC(glUniformMatrix3x4fv_raw(Location, 1, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_4x2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniformMatrix4x2fv_raw(Location, Count, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 2
->
    NewValue = ?GL_PACK_MATRIX_4x2(Value),

    ?CALL_RAW_FUNC(glUniformMatrix4x2fv_raw(Location, 1, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_2x4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniformMatrix2x4fv_raw(Location, Count, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 4
->
    NewValue = ?GL_PACK_MATRIX_2x4(Value),

    ?CALL_RAW_FUNC(glUniformMatrix2x4fv_raw(Location, 1, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_3x2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniformMatrix3x2fv_raw(Location, Count, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 2
->
    NewValue = ?GL_PACK_MATRIX_3x2(Value),

    ?CALL_RAW_FUNC(glUniformMatrix3x2fv_raw(Location, 1, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_2x3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniformMatrix2x3fv_raw(Location, Count, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 3
->
    NewValue = ?GL_PACK_MATRIX_2x3(Value),

    ?CALL_RAW_FUNC(glUniformMatrix2x3fv_raw(Location, 1, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_4x4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniformMatrix4fv_raw(Location, Count, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 4
->
    NewValue = ?GL_PACK_MATRIX_4x4(Value),

    ?CALL_RAW_FUNC(glUniformMatrix4fv_raw(Location, 1, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_3x3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniformMatrix3fv_raw(Location, Count, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 3
->
    NewValue = ?GL_PACK_MATRIX_3x3(Value),

    ?CALL_RAW_FUNC(glUniformMatrix3fv_raw(Location, 1, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_2x2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glUniformMatrix2fv_raw(Location, Count, false, NewValue));
uniform_matrix(f, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 2
->
    NewValue = ?GL_PACK_MATRIX_2x2(Value),

    ?CALL_RAW_FUNC(glUniformMatrix2fv_raw(Location, 1, false, NewValue)).

-doc """
Modify the rate at which generic vertex attributes advance.

It implements the `glVertexBindingDivisor` function

```
gl:vertex_binding_divisor(0, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexBindingDivisor) for more information.
""".
-spec vertex_binding_divisor(
    Index :: gl:uint(),
    Divisor :: gl:uint()
) -> ok | {error, atom()}.
vertex_binding_divisor(Index, Divisor) ->

    ?CALL_RAW_FUNC(glVertexBindingDivisor_raw(Index, Divisor)).

-doc """
Return the maximum transform-feedback varying name length for a program.

It implements the `glGetProgramiv` function

```
{ok, Length} = gl:get_program_transform_feedback_varying_max_length(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_transform_feedback_varying_max_length(Program :: program()) -> {ok, Length :: gl:int()} | {error, atom()}.
get_program_transform_feedback_varying_max_length(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH)).

-doc """
Return the maximum number of fragment uniform components.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_fragment_uniform_components().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_fragment_uniform_components() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_fragment_uniform_components() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS)).

-doc """
Return the maximum number of fragment shader storage blocks.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_fragment_shader_storage_blocks().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_fragment_shader_storage_blocks() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_fragment_shader_storage_blocks() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS)).

-doc """
Return whether a program object has been flagged for deletion.

It implements the `glGetProgramiv` function

```
{ok, false} = gl:get_program_delete_status(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_delete_status(Program :: program()) -> {ok, Status :: gl:boolean()} | {error, atom()}.
get_program_delete_status(Program) ->

    ?CALL_RAW_FUNC(glGetProgramiv_raw(Program, ?GL_DELETE_STATUS)).

-doc """
Return the recommended maximum index count for draw-range commands.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_elements_indices().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_elements_indices() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_elements_indices() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_ELEMENTS_INDICES)).

-doc """
Returns the source code string from a shader object.

It implements the `glGetShaderSource` function

```
{ok, Source} = gl:get_shader_source(Shader, 4096).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetShaderSource) for more information.
""".
-spec get_shader_source(
    Shader :: shader(),
    MaxLength :: pos_integer()
) -> {ok, Source :: binary()} | {error, atom()}.
get_shader_source(Shader, MaxLength) ->

    ?CALL_RAW_FUNC(glGetShaderSource_raw(Shader, MaxLength)).

-doc """
Return the maximum active uniform name length for a program.

It implements the `glGetProgramiv` function

```
{ok, Length} = gl:get_program_active_uniform_max_length(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_active_uniform_max_length(Program :: program()) -> {ok, Length :: gl:int()} | {error, atom()}.
get_program_active_uniform_max_length(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_ACTIVE_UNIFORM_MAX_LENGTH)).

-doc """
Return the program binary length.

It implements the `glGetProgramiv` function

```
{ok, Length} = gl:get_program_binary_length(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_binary_length(Program :: program()) -> {ok, Length :: gl:int()} | {error, atom()}.
get_program_binary_length(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_PROGRAM_BINARY_LENGTH)).

-doc """
Specify multisample coverage parameters.

It implements the `glSampleCoverage` function

```
gl:sample_coverage(0.5, false).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glSampleCoverage) for more information.
""".
-spec sample_coverage(
    Value :: gl:float(),
    Invert :: gl:boolean()
) -> ok | {error, atom()}.
sample_coverage(Value, Invert) ->

    ?CALL_RAW_FUNC(glSampleCoverage_raw(Value, Invert)).

-doc """
Set front and/or back stencil test actions.

It implements the `glStencilOpSeparate` function

```
gl:stencil_op_separate(back, keep, keep, replace).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glStencilOpSeparate) for more information.
""".
-spec stencil_op_separate(
    Face :: triangle_face(),
    StencilFail :: stencil_op(),
    DepthPassFail :: stencil_op(),
    DepthPassPass :: stencil_op()
) -> ok | {error, atom()}.
stencil_op_separate(Face, StencilFail, DepthPassFail, DepthPassPass) ->
    NewDepthPassPass = case DepthPassPass of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewDepthPassFail = case DepthPassFail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewStencilFail = case StencilFail of
        replace -> ?GL_REPLACE;
        decr -> ?GL_DECR;
        keep -> ?GL_KEEP;
        decr_wrap -> ?GL_DECR_WRAP;
        zero -> ?GL_ZERO;
        invert -> ?GL_INVERT;
        incr -> ?GL_INCR;
        incr_wrap -> ?GL_INCR_WRAP
    end,
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    ?CALL_RAW_FUNC(glStencilOpSeparate_raw(NewFace, NewStencilFail, NewDepthPassFail, NewDepthPassPass)).

-doc """
Return the program pipeline info-log length.

It implements the `glGetProgramPipelineiv` function

```
{ok, Length} = gl:get_program_pipeline_info_log_length(Pipeline).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramPipelineiv) for more information.
""".
-spec get_program_pipeline_info_log_length(Pipeline :: program_pipeline()) -> {ok, Length :: gl:int()} | {error, atom()}.
get_program_pipeline_info_log_length(Pipeline) ->

    ?CALL_RAW_FUNC(glGetProgramPipelineivInteger_raw(Pipeline, ?GL_INFO_LOG_LENGTH)).

-doc """
Return the location of a named resource within a program interface.

It implements the `glGetProgramResourceLocation` function

```
{ok, Location} = gl:get_program_resource_location(Program, uniform, <<"missing">>).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramResourceLocation) for more information.
""".
-spec get_program_resource_location(
    Program :: program(),
    ProgramInterface :: program_interface(),
    Name :: iodata()
) -> {ok, Location :: gl:int()} | {error, atom()}.
get_program_resource_location(Program, ProgramInterface, Name) ->
    Name0 = iolist_to_binary(Name),
    NewProgramInterface = case ProgramInterface of
        buffer_variable -> ?GL_BUFFER_VARIABLE;
        shader_storage_block -> ?GL_SHADER_STORAGE_BLOCK;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        uniform -> ?GL_UNIFORM;
        program_input -> ?GL_PROGRAM_INPUT;
        program_output -> ?GL_PROGRAM_OUTPUT;
        transform_feedback_varying -> ?GL_TRANSFORM_FEEDBACK_VARYING;
        uniform_block -> ?GL_UNIFORM_BLOCK
    end,

    ?CALL_RAW_FUNC(glGetProgramResourceLocation_raw(Program, NewProgramInterface, Name0)).

-doc """
Return the number of subpixel precision bits.

It implements the `glGetIntegerv` function

```
{ok, Bits} = gl:get_subpixel_bits().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_subpixel_bits() -> {ok, Bits :: gl:int()} | {error, atom()}.
get_subpixel_bits() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_SUBPIXEL_BITS)).

-doc """
Return the maximum framebuffer sample count.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_framebuffer_samples().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_framebuffer_samples() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_framebuffer_samples() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_FRAMEBUFFER_SAMPLES)).

-doc """
Return the maximum number of vertex shader atomic counter buffers.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_vertex_atomic_counter_buffers().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_vertex_atomic_counter_buffers() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_vertex_atomic_counter_buffers() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS)).

-doc """
Load a program object from a driver-provided program binary.

It implements the `glProgramBinary` function

```
ok = gl:program_binary(Program, BinaryFormat, Binary).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glProgramBinary) for more information.
""".
-spec program_binary(
    Program :: program(),
    BinaryFormat :: gl:uint(),
    Binary :: iodata()
) -> ok | {error, atom()}.
program_binary(Program, BinaryFormat, Binary) ->
    Binary0 = iolist_to_binary(Binary),
    Length = byte_size(Binary0),

    ?CALL_RAW_FUNC(glProgramBinary_raw(Program, BinaryFormat, Binary0, Length)).

-doc """
Return the maximum framebuffer width.

It implements the `glGetIntegerv` function

```
{ok, Width} = gl:get_max_framebuffer_width().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_framebuffer_width() -> {ok, Width :: gl:int()} | {error, atom()}.
get_max_framebuffer_width() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_FRAMEBUFFER_WIDTH)).

-doc """
Clear the depth and stencil buffers of the current framebuffer.

It implements the `glClearBufferfi` function

```
ok = gl:clear_buffer_depth_stencil(0, 1.0, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glClearBufferfi) for more information.
""".
-spec clear_buffer_depth_stencil(
    DrawBuffer :: gl:int(),
    Depth :: gl:float(),
    Stencil :: gl:int()
) -> ok | {error, atom()}.
clear_buffer_depth_stencil(DrawBuffer, Depth, Stencil) ->

    ?CALL_RAW_FUNC(glClearBufferfi_raw(?GL_DEPTH_STENCIL, DrawBuffer, Depth, Stencil)).

-doc """
Specify source and destination pixel arithmetic factors.

It implements the `glBlendFunc` function

```
gl:blend_func(src_alpha, one_minus_src_alpha).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlendFunc) for more information.
""".
-spec blend_func(
    SourceFactor :: blending_factor(),
    DestinationFactor :: blending_factor()
) -> ok | {error, atom()}.
blend_func(SourceFactor, DestinationFactor) ->
    NewDestinationFactor = case DestinationFactor of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewSourceFactor = case SourceFactor of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,

    ?CALL_RAW_FUNC(glBlendFunc_raw(NewSourceFactor, NewDestinationFactor)).

-doc """
Bind stages of a program object to a program pipeline.

It implements the `glUseProgramStages` function

```
gl:use_program_stages(Pipeline, [vertex_shader_bit, fragment_shader_bit], Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glUseProgramStages) for more information.
""".
-spec use_program_stages(
    Pipeline :: program_pipeline(),
    Stages :: use_program_stage_mask(),
    Program :: program()
) -> ok | {error, atom()}.
use_program_stages(Pipeline, Stages, Program) ->
    NewStages = lists:foldl(fun(Field, L) ->
        R = case Field of
            all_shader_bits -> ?GL_ALL_SHADER_BITS;
            fragment_shader_bit -> ?GL_FRAGMENT_SHADER_BIT;
            vertex_shader_bit -> ?GL_VERTEX_SHADER_BIT;
            compute_shader_bit -> ?GL_COMPUTE_SHADER_BIT
        end,
        L bor R
    end, 16#00, Stages),
    ?CALL_RAW_FUNC(glUseProgramStages_raw(Pipeline, NewStages, Program)).

-doc """
Return the maximum number of vertex uniform components.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_vertex_uniform_components().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_vertex_uniform_components() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_vertex_uniform_components() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VERTEX_UNIFORM_COMPONENTS)).

-doc """
Delete framebuffer objects.

It implements the `glDeleteFramebuffers` function

```
gl:delete_framebuffers([Framebuffer]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteFramebuffers) for more information.
""".
-spec delete_framebuffers(Framebuffers :: [framebuffer()]) -> ok | {error, atom()}.
delete_framebuffers(Framebuffers) ->
    N = length(Framebuffers),
    NewFramebuffers = << <<ID:32/native>> || ID <- Framebuffers >>,
    ?CALL_RAW_FUNC(glDeleteFramebuffers_raw(N, NewFramebuffers)).

-doc """
Specify implementation-specific hints.

It implements the `glHint` function

```
[Target | _] = gl:enums_(hint_target),
gl:hint(Target, nicest).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glHint) for more information.
""".
-spec hint(
    Target :: hint_target(),
    Mode :: hint_mode()
) -> ok | {error, atom()}.
hint(Target, Mode) ->
    NewMode = case Mode of
        nicest -> ?GL_NICEST;
        dont_care -> ?GL_DONT_CARE;
        fastest -> ?GL_FASTEST
    end,
    NewTarget = case Target of
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        program_binary_retrievable_hint -> ?GL_PROGRAM_BINARY_RETRIEVABLE_HINT;
        generate_mipmap_hint -> ?GL_GENERATE_MIPMAP_HINT
    end,

    ?CALL_RAW_FUNC(glHint_raw(NewTarget, NewMode)).

-doc """
Return the maximum number of compute shader storage blocks.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_compute_shader_storage_blocks().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_compute_shader_storage_blocks() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_compute_shader_storage_blocks() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS)).

-doc """
Read boolean OpenGL state parameter values.

It implements the `glGetBooleanv` function

```
{ok, Values} = gl:get_boolean(depth_writemask, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetBooleanv) for more information.
""".
-spec get_boolean(
    ParamName :: state_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:boolean()]} | {error, atom()}.
get_boolean(ParamName, Count) ->
    NewParamName = case ParamName of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        line_width -> ?GL_LINE_WIDTH;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        depth_bits -> ?GL_DEPTH_BITS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        stencil_ref -> ?GL_STENCIL_REF;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        current_program -> ?GL_CURRENT_PROGRAM;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    ?CALL_RAW_FUNC(glGetBooleanv_raw(NewParamName, Count)).

-doc """
Return the maximum number of transform feedback components that can be written separately.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_transform_feedback_separate_components().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_transform_feedback_separate_components() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_transform_feedback_separate_components() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS)).

-doc """
Start transform feedback operation.

It implements the `glBeginTransformFeedback` function

```
gl:begin_transform_feedback(points).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBeginTransformFeedback) for more information.
""".
-spec begin_transform_feedback(PrimitiveMode :: primitive_type()) -> ok | {error, atom()}.
begin_transform_feedback(PrimitiveMode) ->
    NewPrimitiveMode = case PrimitiveMode of
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        lines -> ?GL_LINES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP
    end,

    ?CALL_RAW_FUNC(glBeginTransformFeedback_raw(NewPrimitiveMode)).

-doc """
Return the maximum number of array texture layers.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_array_texture_layers().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_array_texture_layers() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_array_texture_layers() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_ARRAY_TEXTURE_LAYERS)).

-doc """
Set the constant blend color.

It implements the `glBlendColor` function

```
gl:blend_color(0.25, 0.5, 0.75, 1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlendColor) for more information.
""".
-spec blend_color(
    Red :: gl:float(),
    Green :: gl:float(),
    Blue :: gl:float(),
    Alpha :: gl:float()
) -> ok | {error, atom()}.
blend_color(Red, Green, Blue, Alpha) ->

    ?CALL_RAW_FUNC(glBlendColor_raw(Red, Green, Blue, Alpha)).

-doc """
Allocate immutable multisample storage for a bound two-dimensional multisample texture.

It implements the `glTexStorage2DMultisample` function

```
gl:tex_storage_2d_multisample(texture_2d_multisample, 1, rgba8, 1, 1, true).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexStorage2DMultisample) for more information.
""".
-spec tex_storage_2d_multisample(
    Target :: texture_target(),
    Samples :: gl:sizei(),
    InternalFormat :: sized_internal_format(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    FixedSampleLocations :: gl:boolean()
) -> ok | {error, atom()}.
tex_storage_2d_multisample(Target, Samples, InternalFormat, Width, Height, FixedSampleLocations) ->
    NewInternalFormat = case InternalFormat of
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glTexStorage2DMultisample_raw(NewTarget, Samples, NewInternalFormat, Width, Height, FixedSampleLocations)).

-doc """
Determine if a name corresponds to a program pipeline object.

It implements the `glIsProgramPipeline` function

```
{ok, true} = gl:is_program_pipeline(Pipeline).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsProgramPipeline) for more information.
""".
-spec is_program_pipeline(Pipeline :: program_pipeline()) -> {ok, IsPipeline :: gl:boolean()} | {error, atom()}.
is_program_pipeline(Pipeline) ->

    ?CALL_RAW_FUNC(glIsProgramPipeline_raw(Pipeline)).

-doc """
Delete named buffer objects.

It implements the `glDeleteBuffers` function

```
gl:delete_buffers([Buffer]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteBuffers) for more information.
""".
-spec delete_buffers(Buffers :: [buffer()]) -> ok | {error, atom()}.
delete_buffers(Buffers) ->
    N = length(Buffers),
    NewBuffers = << <<ID:32/native>> || ID <- Buffers >>,
    ?CALL_RAW_FUNC(glDeleteBuffers_raw(N, NewBuffers)).

-doc """
Return the maximum compute shader shared memory size in bytes.

It implements the `glGetIntegerv` function

```
{ok, Size} = gl:get_max_compute_shared_memory_size().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_compute_shared_memory_size() -> {ok, Size :: gl:int()} | {error, atom()}.
get_max_compute_shared_memory_size() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMPUTE_SHARED_MEMORY_SIZE)).

-doc """
Return the maximum number of sample-mask words.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_sample_mask_words().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_sample_mask_words() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_sample_mask_words() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_SAMPLE_MASK_WORDS)).

-doc """
Read attachment parameter values for the framebuffer bound to a target.

It implements the `glGetFramebufferAttachmentParameteriv` function

```
{ok, Values} = gl:get_framebuffer_attachment_parameter(framebuffer, color_attachment0, framebuffer_attachment_object_name, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetFramebufferAttachmentParameteriv) for more information.
""".
-spec get_framebuffer_attachment_parameter(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    ParamName :: framebuffer_attachment_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_framebuffer_attachment_parameter(Target, Attachment, ParamName, Count) ->
    NewParamName = case ParamName of
        framebuffer_attachment_texture_cube_map_face -> ?GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE;
        framebuffer_attachment_depth_size -> ?GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE;
        framebuffer_attachment_red_size -> ?GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE;
        framebuffer_attachment_component_type -> ?GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE;
        framebuffer_attachment_alpha_size -> ?GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE;
        framebuffer_attachment_object_name -> ?GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME;
        framebuffer_attachment_stencil_size -> ?GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE;
        framebuffer_attachment_object_type -> ?GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE;
        framebuffer_attachment_texture_level -> ?GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL;
        framebuffer_attachment_texture_layer -> ?GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER;
        framebuffer_attachment_green_size -> ?GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE;
        framebuffer_attachment_color_encoding -> ?GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING;
        framebuffer_attachment_blue_size -> ?GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE
    end,
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    ?CALL_RAW_FUNC(glGetFramebufferAttachmentParameteriv_raw(NewTarget, NewAttachment, NewParamName, Count)).

-doc """
Return the maximum programmable texture gather offset.

It implements the `glGetIntegerv` function

```
{ok, Offset} = gl:get_max_program_texture_gather_offset().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_program_texture_gather_offset() -> {ok, Offset :: gl:int()} | {error, atom()}.
get_max_program_texture_gather_offset() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET)).

-doc """
Return the maximum number of varying components.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_varying_components().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_varying_components() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_varying_components() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VARYING_COMPONENTS)).

-doc """
Begin a query object on a target.

It implements the `glBeginQuery` function

```
ok = gl:begin_query(any_samples_passed, Query).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBeginQuery) for more information.
""".
-spec begin_query(
    Target :: query_target(),
    Query :: query()
) -> ok | {error, atom()}.
begin_query(Target, Query) ->
    NewTarget = case Target of
        transform_feedback_primitives_written -> ?GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
        any_samples_passed -> ?GL_ANY_SAMPLES_PASSED;
        any_samples_passed_conservative -> ?GL_ANY_SAMPLES_PASSED_CONSERVATIVE
    end,

    ?CALL_RAW_FUNC(glBeginQuery_raw(NewTarget, Query)).

-type program_uniform_matrix_value() ::
    matrix2(gl:float()) |
    [matrix2(gl:float())] |
    matrix3(gl:float()) |
    [matrix3(gl:float())] |
    matrix4(gl:float()) |
    [matrix4(gl:float())] |
    matrix2x3(gl:float()) |
    [matrix2x3(gl:float())] |
    matrix3x2(gl:float()) |
    [matrix3x2(gl:float())] |
    matrix2x4(gl:float()) |
    [matrix2x4(gl:float())] |
    matrix4x2(gl:float()) |
    [matrix4x2(gl:float())] |
    matrix3x4(gl:float()) |
    [matrix3x4(gl:float())] |
    matrix4x3(gl:float()) |
    [matrix4x3(gl:float())]
.

-doc """
Set one or more matrix uniforms for a specified program object.

It implements the following OpenGL commands:

- `glProgramUniformMatrix4x3fv`
- `glProgramUniformMatrix4x3fv`
- `glProgramUniformMatrix3x4fv`
- `glProgramUniformMatrix3x4fv`
- `glProgramUniformMatrix4x2fv`
- `glProgramUniformMatrix4x2fv`
- `glProgramUniformMatrix2x4fv`
- `glProgramUniformMatrix2x4fv`
- `glProgramUniformMatrix3x2fv`
- `glProgramUniformMatrix3x2fv`
- `glProgramUniformMatrix2x3fv`
- `glProgramUniformMatrix2x3fv`
- `glProgramUniformMatrix4fv`
- `glProgramUniformMatrix4fv`
- `glProgramUniformMatrix3fv`
- `glProgramUniformMatrix3fv`
- `glProgramUniformMatrix2fv`
- `glProgramUniformMatrix2fv`

```
ok = gl:program_uniform_matrix(f, Program, Location, {{1.0, 0.0}, {0.0, 1.0}}).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glProgramUniformMatrix) for more information.
""".
-spec program_uniform_matrix(
    Type :: f,
    Program :: program(),
    Location :: gl:int(),
    Value :: program_uniform_matrix_value()
) -> ok | {error, atom()}.
program_uniform_matrix(f, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_4x3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix4x3fv_raw(Program, Location, Count, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 3
->
    NewValue = ?GL_PACK_MATRIX_4x3(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix4x3fv_raw(Program, Location, 1, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_3x4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix3x4fv_raw(Program, Location, Count, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 4
->
    NewValue = ?GL_PACK_MATRIX_3x4(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix3x4fv_raw(Program, Location, 1, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_4x2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix4x2fv_raw(Program, Location, Count, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 2
->
    NewValue = ?GL_PACK_MATRIX_4x2(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix4x2fv_raw(Program, Location, 1, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_2x4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix2x4fv_raw(Program, Location, Count, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 4
->
    NewValue = ?GL_PACK_MATRIX_2x4(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix2x4fv_raw(Program, Location, 1, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_3x2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix3x2fv_raw(Program, Location, Count, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 2
->
    NewValue = ?GL_PACK_MATRIX_3x2(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix3x2fv_raw(Program, Location, 1, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_2x3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix2x3fv_raw(Program, Location, Count, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 3
->
    NewValue = ?GL_PACK_MATRIX_2x3(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix2x3fv_raw(Program, Location, 1, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 4 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 4
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_4x4(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix4fv_raw(Program, Location, Count, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 4 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 4
->
    NewValue = ?GL_PACK_MATRIX_4x4(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix4fv_raw(Program, Location, 1, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 3 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 3
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_3x3(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix3fv_raw(Program, Location, Count, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 3 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 3
->
    NewValue = ?GL_PACK_MATRIX_3x3(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix3fv_raw(Program, Location, 1, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_list(Value) andalso
    is_tuple(hd(Value)) andalso
    tuple_size(hd(Value)) =:= 2 andalso
    is_tuple(element(1, hd(Value))) andalso
    tuple_size(element(1, hd(Value))) =:= 2
->
    NewValue = lists:foldl(fun(Matrix, Acc) -> Acc ++ ?GL_PACK_MATRIX_2x2(Matrix) end, [], Value),
    Count = length(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix2fv_raw(Program, Location, Count, false, NewValue));
program_uniform_matrix(f, Program, Location, Value) when
    is_tuple(Value) andalso
    tuple_size(Value) =:= 2 andalso
    is_tuple(element(1, Value)) andalso
    tuple_size(element(1, Value)) =:= 2
->
    NewValue = ?GL_PACK_MATRIX_2x2(Value),

    ?CALL_RAW_FUNC(glProgramUniformMatrix2fv_raw(Program, Location, 1, false, NewValue)).

-doc """
Return the maximum active attribute name length for a program.

It implements the `glGetProgramiv` function

```
{ok, Length} = gl:get_program_active_attribute_max_length(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_active_attribute_max_length(Program :: program()) -> {ok, Length :: gl:int()} | {error, atom()}.
get_program_active_attribute_max_length(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_ACTIVE_ATTRIBUTE_MAX_LENGTH)).

-doc """
Return the maximum number of vertex uniform blocks.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_vertex_uniform_blocks().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_vertex_uniform_blocks() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_vertex_uniform_blocks() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VERTEX_UNIFORM_BLOCKS)).

-doc """
Return the number of transform-feedback varyings in a program.

It implements the `glGetProgramiv` function

```
{ok, Count} = gl:get_program_transform_feedback_varyings_count(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_transform_feedback_varyings_count(Program :: program()) -> {ok, Count :: gl:int()} | {error, atom()}.
get_program_transform_feedback_varyings_count(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_TRANSFORM_FEEDBACK_VARYINGS)).

-doc """
Release resources consumed by the implementation's shader compiler.

It implements the `glReleaseShaderCompiler` function

```
gl:release_shader_compiler().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glReleaseShaderCompiler) for more information.
""".
-spec release_shader_compiler() -> ok | {error, atom()}.
release_shader_compiler() ->

    ?CALL_RAW_FUNC(glReleaseShaderCompiler_raw()).

-doc """
Set pixel storage modes.

It implements the `glPixelStorei` function

```
gl:pixel_store(unpack_alignment, 1).
gl:pixel_store(pack_alignment, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glPixelStorei) for more information.
""".
-spec pixel_store(
    Name :: pixel_store_parameter(),
    Param :: gl:int()
) -> ok | {error, atom()}.
pixel_store(Name, Param) ->
    NewName = case Name of
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS
    end,

    ?CALL_RAW_FUNC(glPixelStorei_raw(NewName, Param)).

-doc """
Return the maximum number of separate transform feedback attributes.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_transform_feedback_separate_attribs().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_transform_feedback_separate_attribs() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_transform_feedback_separate_attribs() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS)).

-doc """
End the active query object for a target.

It implements the `glEndQuery` function

```
ok = gl:end_query(any_samples_passed).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glEndQuery) for more information.
""".
-spec end_query(Target :: query_target()) -> ok | {error, atom()}.
end_query(Target) ->
    NewTarget = case Target of
        transform_feedback_primitives_written -> ?GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN;
        any_samples_passed -> ?GL_ANY_SAMPLES_PASSED;
        any_samples_passed_conservative -> ?GL_ANY_SAMPLES_PASSED_CONSERVATIVE
    end,

    ?CALL_RAW_FUNC(glEndQuery_raw(NewTarget)).

-doc """
Return a binary representation of a program object's linked executable.

It implements the `glGetProgramBinary` function

```
{ok, BinaryFormat, Binary} = gl:get_program_binary(Program, BinarySize).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramBinary) for more information.
""".
-spec get_program_binary(
    Program :: program(),
    BinarySize :: non_neg_integer()
) -> {ok, BinaryFormat :: gl:uint(), Binary :: binary()} | {error, atom()}.
get_program_binary(Program, BinarySize) ->

    ?CALL_RAW_FUNC(glGetProgramBinary_raw(Program, BinarySize)).

-doc """
Return one integer property value for each active-uniform index.

It implements the `glGetActiveUniformsiv` function

```
{ok, [1]} = gl:get_active_uniforms(Program, [Index], uniform_size).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetActiveUniformsiv) for more information.
""".
-spec get_active_uniforms(
    Program :: program(),
    UniformIndices :: [gl:uint()],
    ParamName :: active_uniform_parameter_name()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_active_uniforms(Program, UniformIndices, ParamName) ->
    NewParamName = case ParamName of
        uniform_type -> ?GL_UNIFORM_TYPE;
        uniform_array_stride -> ?GL_UNIFORM_ARRAY_STRIDE;
        uniform_name_length -> ?GL_UNIFORM_NAME_LENGTH;
        uniform_block_index -> ?GL_UNIFORM_BLOCK_INDEX;
        uniform_is_row_major -> ?GL_UNIFORM_IS_ROW_MAJOR;
        uniform_matrix_stride -> ?GL_UNIFORM_MATRIX_STRIDE;
        uniform_offset -> ?GL_UNIFORM_OFFSET;
        uniform_size -> ?GL_UNIFORM_SIZE
    end,
    NewUniformIndices = case UniformIndices of
        [_ | _] -> << <<ID:32/native>> || ID <- UniformIndices >>;
        _ -> erlang:error(badarg)
    end,
    ?CALL_RAW_FUNC(glGetActiveUniformsiv_raw(Program, NewUniformIndices, NewParamName)).

-doc """
Replaces the source code in a shader object.

It implements the `glShaderSource` function

```
ok = gl:shader_source(Shader, [<<"void main() { gl_Position = vec4(0.0); }">>]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glShaderSource) for more information.
""".
-spec shader_source(
    Shader :: shader(),
    Source :: [iodata()]
) -> ok | {error, atom()}.
shader_source(Shader, Source) ->
    SourceNew = lists:map(fun
        (SourceItem) when is_list(SourceItem) -> iolist_to_binary(SourceItem);
        (SourceItem) when is_binary(SourceItem) -> SourceItem
    end, Source),
    ?CALL_RAW_FUNC(glShaderSource_raw(Shader, SourceNew)).

-doc """
Clear buffers to preset values.

It implements the `glClear` function

```
gl:clear([color_buffer_bit]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glClear) for more information.
""".
-spec clear(Mask :: clear_buffer_mask()) -> ok | {error, atom()}.
clear(Mask) ->
    NewMask = lists:foldl(fun(Field, L) ->
        R = case Field of
            stencil_buffer_bit -> ?GL_STENCIL_BUFFER_BIT;
            color_buffer_bit -> ?GL_COLOR_BUFFER_BIT;
            depth_buffer_bit -> ?GL_DEPTH_BUFFER_BIT
        end,
        L bor R
    end, 16#00, Mask),
    ?CALL_RAW_FUNC(glClear_raw(NewMask)).

-doc """
Attach a renderbuffer as a logical buffer of a framebuffer object.

It implements the `glFramebufferRenderbuffer` function

```
gl:framebuffer_renderbuffer(framebuffer, color_attachment0, renderbuffer, Renderbuffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFramebufferRenderbuffer) for more information.
""".
-spec framebuffer_renderbuffer(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    RenderbufferTarget :: renderbuffer_target(),
    Renderbuffer :: renderbuffer()
) -> ok | {error, atom()}.
framebuffer_renderbuffer(Target, Attachment, RenderbufferTarget, Renderbuffer) ->
    NewRenderbufferTarget = case RenderbufferTarget of
        renderbuffer -> ?GL_RENDERBUFFER
    end,
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    ?CALL_RAW_FUNC(glFramebufferRenderbuffer_raw(NewTarget, NewAttachment, NewRenderbufferTarget, Renderbuffer)).

-doc """
Return the maximum renderbuffer size.

It implements the `glGetIntegerv` function

```
{ok, Size} = gl:get_max_renderbuffer_size().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_renderbuffer_size() -> {ok, Size :: gl:int()} | {error, atom()}.
get_max_renderbuffer_size() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_MAX_RENDERBUFFER_SIZE)).

-doc """
Validate a program pipeline object against current GL state.

It implements the `glValidateProgramPipeline` function

```
gl:validate_program_pipeline(Pipeline).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glValidateProgramPipeline) for more information.
""".
-spec validate_program_pipeline(Pipeline :: program_pipeline()) -> ok | {error, atom()}.
validate_program_pipeline(Pipeline) ->

    ?CALL_RAW_FUNC(glValidateProgramPipeline_raw(Pipeline)).

-doc """
Return the maximum number of interleaved transform feedback components.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_transform_feedback_interleaved_components().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_transform_feedback_interleaved_components() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_transform_feedback_interleaved_components() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS)).

-doc """
Render primitives using command parameters from the bound draw indirect buffer.

It implements the `glDrawArraysIndirect` function

```
ok = gl:draw_arrays_indirect(points, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDrawArraysIndirect) for more information.
""".
-spec draw_arrays_indirect(
    Mode :: primitive_type(),
    Offset :: gl:offset()
) -> ok | {error, atom()}.
draw_arrays_indirect(Mode, Offset) ->
    NewMode = case Mode of
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        lines -> ?GL_LINES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP
    end,

    ?CALL_RAW_FUNC(glDrawArraysIndirect_raw(NewMode, Offset)).

-type get_buffer_parameter_value() ::
    gl:int() |
    gl:int64()
.

-doc """
Read buffer parameter values for the buffer bound to a target.

It implements the following OpenGL commands:

- `glGetBufferParameteri64v`
- `glGetBufferParameteriv`

```
{ok, Values} = gl:get_buffer_parameter(i, array_buffer, buffer_size, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetBufferParameter) for more information.
""".
-spec get_buffer_parameter(
    Type :: i | i64,
    Target :: buffer_target(),
    ParamName :: buffer_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [get_buffer_parameter_value()]} | {error, atom()}.
get_buffer_parameter(i64, Target, ParamName, Count) ->
    NewParamName = case ParamName of
        buffer_usage -> ?GL_BUFFER_USAGE;
        buffer_size -> ?GL_BUFFER_SIZE;
        buffer_access_flags -> ?GL_BUFFER_ACCESS_FLAGS;
        buffer_mapped -> ?GL_BUFFER_MAPPED;
        buffer_map_offset -> ?GL_BUFFER_MAP_OFFSET;
        buffer_map_length -> ?GL_BUFFER_MAP_LENGTH
    end,
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,

    ?CALL_RAW_FUNC(glGetBufferParameteri64v_raw(NewTarget, NewParamName, Count));
get_buffer_parameter(i, Target, ParamName, Count) ->
    NewParamName = case ParamName of
        buffer_usage -> ?GL_BUFFER_USAGE;
        buffer_size -> ?GL_BUFFER_SIZE;
        buffer_access_flags -> ?GL_BUFFER_ACCESS_FLAGS;
        buffer_mapped -> ?GL_BUFFER_MAPPED;
        buffer_map_offset -> ?GL_BUFFER_MAP_OFFSET;
        buffer_map_length -> ?GL_BUFFER_MAP_LENGTH
    end,
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,

    ?CALL_RAW_FUNC(glGetBufferParameteriv_raw(NewTarget, NewParamName, Count)).

-doc """
Return the current unpack alignment.

It implements the `glGetIntegerv` function

```
{ok, Alignment} = gl:get_unpack_alignment().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_unpack_alignment() -> {ok, Alignment :: gl:int()} | {error, atom()}.
get_unpack_alignment() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_UNPACK_ALIGNMENT)).

-doc """
Return the maximum combined number of atomic counters.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_combined_atomic_counters().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_combined_atomic_counters() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_combined_atomic_counters() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMBINED_ATOMIC_COUNTERS)).

-doc """
Return the maximum number of vertex shader output components.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_vertex_output_components().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_vertex_output_components() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_vertex_output_components() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VERTEX_OUTPUT_COMPONENTS)).

-doc """
Copy a two-dimensional texture subimage from the read framebuffer.

It implements the `glCopyTexSubImage2D` function

```
gl:copy_tex_sub_image_2d(texture_2d, 0, 0, 0, 0, 0, 1, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCopyTexSubImage2D) for more information.
""".
-spec copy_tex_sub_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    OffsetX :: gl:int(),
    OffsetY :: gl:int(),
    X :: gl:int(),
    Y :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei()
) -> ok | {error, atom()}.
copy_tex_sub_image_2d(Target, Level, OffsetX, OffsetY, X, Y, Width, Height) ->
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glCopyTexSubImage2D_raw(NewTarget, Level, OffsetX, OffsetY, X, Y, Width, Height)).

-doc """
Returns the size, type, and name of an active uniform variable for a program object.

It implements the `glGetActiveUniform` function

```
{ok, Size, Type, Name} = gl:get_active_uniform(Program, 0, MaxLength).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetActiveUniform) for more information.
""".
-spec get_active_uniform(
    Program :: program(),
    Index :: gl:uint(),
    MaxLength :: pos_integer()
) -> {ok, Size :: gl:int(), Type :: uniform_type(), Name :: binary()} | {error, atom()}.
get_active_uniform(Program, Index, MaxLength) ->

    ?CALL_RAW_FUNC(glGetActiveUniform_raw(Program, Index, MaxLength)).

-doc """
Return the number of active atomic counter buffers in a program.

It implements the `glGetProgramiv` function

```
{ok, Count} = gl:get_program_active_atomic_counter_buffers_count(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_active_atomic_counter_buffers_count(Program :: program()) -> {ok, Count :: gl:int()} | {error, atom()}.
get_program_active_atomic_counter_buffers_count(Program) ->

    ?CALL_RAW_FUNC(glGetProgramivInteger_raw(Program, ?GL_ACTIVE_ATOMIC_COUNTER_BUFFERS)).

-doc """
Establish data storage, format, and dimensions for a renderbuffer object's image.

It implements the `glRenderbufferStorage` function

```
gl:renderbuffer_storage(renderbuffer, rgba4, 1, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glRenderbufferStorage) for more information.
""".
-spec renderbuffer_storage(
    Target :: renderbuffer_target(),
    InternalFormat :: internal_format(),
    Width :: gl:sizei(),
    Height :: gl:sizei()
) -> ok | {error, atom()}.
renderbuffer_storage(Target, InternalFormat, Width, Height) ->
    NewInternalFormat = case InternalFormat of
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    ?CALL_RAW_FUNC(glRenderbufferStorage_raw(NewTarget, NewInternalFormat, Width, Height)).

-doc """
Return the number of compressed texture formats supported.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_num_compressed_texture_formats().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_num_compressed_texture_formats() -> {ok, Count :: gl:int()} | {error, atom()}.
get_num_compressed_texture_formats() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_NUM_COMPRESSED_TEXTURE_FORMATS)).

-doc """
Set front and/or back function and reference value for stencil testing.

It implements the `glStencilFuncSeparate` function

```
gl:stencil_func_separate(front, always, 0, 16#FF).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glStencilFuncSeparate) for more information.
""".
-spec stencil_func_separate(
    Face :: triangle_face(),
    Function :: stencil_function(),
    Ref :: gl:int(),
    Mask :: gl:uint()
) -> ok | {error, atom()}.
stencil_func_separate(Face, Function, Ref, Mask) ->
    NewFunction = case Function of
        equal -> ?GL_EQUAL;
        always -> ?GL_ALWAYS;
        never -> ?GL_NEVER;
        lequal -> ?GL_LEQUAL;
        gequal -> ?GL_GEQUAL;
        greater -> ?GL_GREATER;
        notequal -> ?GL_NOTEQUAL;
        less -> ?GL_LESS
    end,
    NewFace = case Face of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    ?CALL_RAW_FUNC(glStencilFuncSeparate_raw(NewFace, NewFunction, Ref, Mask)).

-doc """
Read integer OpenGL state parameter values.

It implements the `glGetIntegerv` function

```
{ok, Values} = gl:get_integer(pack_alignment, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_integer(
    ParamName :: state_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_integer(ParamName, Count) ->
    NewParamName = case ParamName of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        line_width -> ?GL_LINE_WIDTH;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        depth_bits -> ?GL_DEPTH_BITS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        stencil_ref -> ?GL_STENCIL_REF;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        current_program -> ?GL_CURRENT_PROGRAM;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    ?CALL_RAW_FUNC(glGetIntegervValues_raw(NewParamName, Count)).

-doc """
Return integer properties for an active uniform block.

It implements the `glGetActiveUniformBlockiv` function

```
{ok, [1]} = gl:get_active_uniform_block(Program, BlockIndex, uniform_block_active_uniforms, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetActiveUniformBlockiv) for more information.
""".
-spec get_active_uniform_block(
    Program :: program(),
    UniformBlockIndex :: gl:uint(),
    ParamName :: active_uniform_block_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_active_uniform_block(Program, UniformBlockIndex, ParamName, Count) ->
    NewParamName = case ParamName of
        uniform_block_data_size -> ?GL_UNIFORM_BLOCK_DATA_SIZE;
        uniform_block_active_uniforms -> ?GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS;
        uniform_block_referenced_by_fragment_shader -> ?GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER;
        uniform_block_referenced_by_vertex_shader -> ?GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER;
        uniform_block_binding -> ?GL_UNIFORM_BLOCK_BINDING;
        uniform_block_active_uniform_indices -> ?GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES;
        uniform_block_name_length -> ?GL_UNIFORM_BLOCK_NAME_LENGTH
    end,

    ?CALL_RAW_FUNC(glGetActiveUniformBlockiv_raw(Program, UniformBlockIndex, NewParamName, Count)).

-doc """
Generate vertex array object names.

It implements the `glGenVertexArrays` function

```
{ok, [Array]} = gl:gen_vertex_arrays(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenVertexArrays) for more information.
""".
-spec gen_vertex_arrays(N :: pos_integer()) -> {ok, Arrays :: [vertex_array()]} | {error, atom()}.
gen_vertex_arrays(N) ->

    ?CALL_RAW_FUNC(glGenVertexArrays_raw(N)).

-doc """
Specify the value used for depth buffer comparisons.

It implements the `glDepthFunc` function

```
gl:depth_func(less).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDepthFunc) for more information.
""".
-spec depth_func(Function :: depth_function()) -> ok | {error, atom()}.
depth_func(Function) ->
    NewFunction = case Function of
        equal -> ?GL_EQUAL;
        always -> ?GL_ALWAYS;
        never -> ?GL_NEVER;
        lequal -> ?GL_LEQUAL;
        gequal -> ?GL_GEQUAL;
        greater -> ?GL_GREATER;
        notequal -> ?GL_NOTEQUAL;
        less -> ?GL_LESS
    end,

    ?CALL_RAW_FUNC(glDepthFunc_raw(NewFunction)).

-doc """
Generate framebuffer object names.

It implements the `glGenFramebuffers` function

```
{ok, [Framebuffer]} = gl:gen_framebuffers(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenFramebuffers) for more information.
""".
-spec gen_framebuffers(N :: pos_integer()) -> {ok, Framebuffers :: [framebuffer()]} | {error, atom()}.
gen_framebuffers(N) ->

    ?CALL_RAW_FUNC(glGenFramebuffers_raw(N)).

-doc """
Modify the instance divisor for a generic vertex attribute.

It implements the `glVertexAttribDivisor` function

```
gl:vertex_attrib_divisor(0, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexAttribDivisor) for more information.
""".
-spec vertex_attrib_divisor(
    Index :: gl:uint(),
    Divisor :: gl:uint()
) -> ok | {error, atom()}.
vertex_attrib_divisor(Index, Divisor) ->

    ?CALL_RAW_FUNC(glVertexAttribDivisor_raw(Index, Divisor)).

-doc """
Return the maximum number of fragment texture image units.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_texture_image_units().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_texture_image_units() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_texture_image_units() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_MAX_TEXTURE_IMAGE_UNITS)).

-doc """
Return the minimum programmable texel offset.

It implements the `glGetIntegerv` function

```
{ok, Offset} = gl:get_min_program_texel_offset().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_min_program_texel_offset() -> {ok, Offset :: gl:int()} | {error, atom()}.
get_min_program_texel_offset() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MIN_PROGRAM_TEXEL_OFFSET)).

-type get_vertex_attrib_i_value() ::
    gl:int() |
    gl:uint()
.

-doc """
Read integer vertex attribute parameter values.

It implements the following OpenGL commands:

- `glGetVertexAttribIuiv`
- `glGetVertexAttribIiv`

```
{ok, Values} = gl:get_vertex_attrib_i(i, 0, current_vertex_attrib, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetVertexAttribI) for more information.
""".
-spec get_vertex_attrib_i(
    Type :: i | ui,
    Index :: gl:uint(),
    ParamName :: vertex_attrib_i_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [get_vertex_attrib_i_value()]} | {error, atom()}.
get_vertex_attrib_i(ui, Index, ParamName, Count) ->
    NewParamName = case ParamName of
        vertex_attrib_array_size -> ?GL_VERTEX_ATTRIB_ARRAY_SIZE;
        vertex_attrib_array_buffer_binding -> ?GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
        vertex_attrib_array_stride -> ?GL_VERTEX_ATTRIB_ARRAY_STRIDE;
        vertex_attrib_array_normalized -> ?GL_VERTEX_ATTRIB_ARRAY_NORMALIZED;
        vertex_attrib_array_divisor -> ?GL_VERTEX_ATTRIB_ARRAY_DIVISOR;
        vertex_attrib_array_integer -> ?GL_VERTEX_ATTRIB_ARRAY_INTEGER;
        vertex_attrib_array_type -> ?GL_VERTEX_ATTRIB_ARRAY_TYPE;
        current_vertex_attrib -> ?GL_CURRENT_VERTEX_ATTRIB;
        vertex_attrib_array_enabled -> ?GL_VERTEX_ATTRIB_ARRAY_ENABLED
    end,

    ?CALL_RAW_FUNC(glGetVertexAttribIuiv_raw(Index, NewParamName, Count));
get_vertex_attrib_i(i, Index, ParamName, Count) ->
    NewParamName = case ParamName of
        vertex_attrib_array_size -> ?GL_VERTEX_ATTRIB_ARRAY_SIZE;
        vertex_attrib_array_buffer_binding -> ?GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING;
        vertex_attrib_array_stride -> ?GL_VERTEX_ATTRIB_ARRAY_STRIDE;
        vertex_attrib_array_normalized -> ?GL_VERTEX_ATTRIB_ARRAY_NORMALIZED;
        vertex_attrib_array_divisor -> ?GL_VERTEX_ATTRIB_ARRAY_DIVISOR;
        vertex_attrib_array_integer -> ?GL_VERTEX_ATTRIB_ARRAY_INTEGER;
        vertex_attrib_array_type -> ?GL_VERTEX_ATTRIB_ARRAY_TYPE;
        current_vertex_attrib -> ?GL_CURRENT_VERTEX_ATTRIB;
        vertex_attrib_array_enabled -> ?GL_VERTEX_ATTRIB_ARRAY_ENABLED
    end,

    ?CALL_RAW_FUNC(glGetVertexAttribIiv_raw(Index, NewParamName, Count)).

-doc """
Read floating-point OpenGL state parameter values.

It implements the `glGetFloatv` function

```
{ok, Values} = gl:get_float(line_width, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetFloatv) for more information.
""".
-spec get_float(
    ParamName :: state_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:float()]} | {error, atom()}.
get_float(ParamName, Count) ->
    NewParamName = case ParamName of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        line_width -> ?GL_LINE_WIDTH;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        depth_bits -> ?GL_DEPTH_BITS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        stencil_ref -> ?GL_STENCIL_REF;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        current_program -> ?GL_CURRENT_PROGRAM;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    ?CALL_RAW_FUNC(glGetFloatv_raw(NewParamName, Count)).

-doc """
Allocate immutable storage for a three-dimensional texture.

It implements the `glTexStorage3D` function

```
gl:tex_storage_3d(texture_3d, 1, rgba8, 1, 1, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glTexStorage3D) for more information.
""".
-spec tex_storage_3d(
    Target :: texture_target(),
    Levels :: gl:sizei(),
    InternalFormat :: sized_internal_format(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Depth :: gl:sizei()
) -> ok | {error, atom()}.
tex_storage_3d(Target, Levels, InternalFormat, Width, Height, Depth) ->
    NewInternalFormat = case InternalFormat of
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        rgba16ui -> ?GL_RGBA16UI;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glTexStorage3D_raw(NewTarget, Levels, NewInternalFormat, Width, Height, Depth)).

-doc """
Return the current unpack row length.

It implements the `glGetIntegerv` function

```
{ok, Length} = gl:get_unpack_row_length().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_unpack_row_length() -> {ok, Length :: gl:int()} | {error, atom()}.
get_unpack_row_length() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_UNPACK_ROW_LENGTH)).

-doc """
Enable and disable writing of frame buffer color components.

It implements the `glColorMask` function

```
gl:color_mask(true, true, true, true).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glColorMask) for more information.
""".
-spec color_mask(
    Red :: gl:boolean(),
    Green :: gl:boolean(),
    Blue :: gl:boolean(),
    Alpha :: gl:boolean()
) -> ok | {error, atom()}.
color_mask(Red, Green, Blue, Alpha) ->

    ?CALL_RAW_FUNC(glColorMask_raw(Red, Green, Blue, Alpha)).

-doc """
Return the maximum number of fragment shader input components.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_fragment_input_components().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_fragment_input_components() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_fragment_input_components() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_FRAGMENT_INPUT_COMPONENTS)).

-doc """
Return the maximum number of compute shader atomic counters.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_compute_atomic_counters().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_compute_atomic_counters() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_compute_atomic_counters() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMPUTE_ATOMIC_COUNTERS)).

-doc """
Return the maximum number of vertex-attrib bindings.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_vertex_attrib_bindings().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_vertex_attrib_bindings() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_vertex_attrib_bindings() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VERTEX_ATTRIB_BINDINGS)).

-doc """
Returns shader objects attached to a program, up to the requested capacity.

It implements the `glGetAttachedShaders` function

```
{ok, Shaders} = gl:get_attached_shaders(Program, 2).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetAttachedShaders) for more information.
""".
-spec get_attached_shaders(
    Program :: program(),
    MaxCount :: non_neg_integer()
) -> {ok, Shaders :: [shader()]} | {error, atom()}.
get_attached_shaders(Program, MaxCount) ->

    ?CALL_RAW_FUNC(glGetAttachedShaders_raw(Program, MaxCount)).

-doc """
Establish multisample storage for a renderbuffer object's image.

It implements the `glRenderbufferStorageMultisample` function

```
gl:renderbuffer_storage_multisample(renderbuffer, 1, rgba4, 1, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glRenderbufferStorageMultisample) for more information.
""".
-spec renderbuffer_storage_multisample(
    Target :: renderbuffer_target(),
    Samples :: gl:sizei(),
    InternalFormat :: internal_format(),
    Width :: gl:sizei(),
    Height :: gl:sizei()
) -> ok | {error, atom()}.
renderbuffer_storage_multisample(Target, Samples, InternalFormat, Width, Height) ->
    NewInternalFormat = case InternalFormat of
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    ?CALL_RAW_FUNC(glRenderbufferStorageMultisample_raw(NewTarget, Samples, NewInternalFormat, Width, Height)).

-doc """
Determine if a name corresponds to a texture.

It implements the `glIsTexture` function

```
{ok, true} = gl:is_texture(Texture).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsTexture) for more information.
""".
-spec is_texture(Texture :: texture()) -> {ok, IsTexture :: gl:boolean()} | {error, atom()}.
is_texture(Texture) ->

    ?CALL_RAW_FUNC(glIsTexture_raw(Texture)).

-doc """
Return the maximum combined number of shader storage blocks.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_combined_shader_storage_blocks().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_combined_shader_storage_blocks() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_combined_shader_storage_blocks() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS)).

-doc """
Specify a three-dimensional texture image in a compressed format.

It implements the `glCompressedTexImage3D` function

```
ok = gl:compressed_tex_image_3d(texture_3d, 0, compressed_rgba, 4, 4, 4, 0, CompressedBytes).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCompressedTexImage3D) for more information.
""".
-spec compressed_tex_image_3d(
    Target :: texture_target(),
    Level :: gl:int(),
    InternalFormat :: internal_format(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Depth :: gl:sizei(),
    Border :: gl:int(),
    ImageData :: iodata()
) -> ok | {error, atom()}.
compressed_tex_image_3d(Target, Level, InternalFormat, Width, Height, Depth, Border, ImageData) ->
    ImageData0 = iolist_to_binary(ImageData),
    ImageSize = byte_size(ImageData0),
    NewInternalFormat = case InternalFormat of
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glCompressedTexImage3D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Depth, Border, ImageSize, ImageData0)).

-doc """
Return the maximum number of integer texture samples.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_integer_samples().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_integer_samples() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_integer_samples() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_INTEGER_SAMPLES)).

-doc """
Determine if a name corresponds to a framebuffer object.

It implements the `glIsFramebuffer` function

```
{ok, true} = gl:is_framebuffer(Framebuffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsFramebuffer) for more information.
""".
-spec is_framebuffer(Framebuffer :: framebuffer()) -> {ok, IsFramebuffer :: gl:boolean()} | {error, atom()}.
is_framebuffer(Framebuffer) ->

    ?CALL_RAW_FUNC(glIsFramebuffer_raw(Framebuffer)).

-doc """
Generate sampler object names.

It implements the `glGenSamplers` function

```
{ok, [Sampler]} = gl:gen_samplers(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenSamplers) for more information.
""".
-spec gen_samplers(N :: pos_integer()) -> {ok, Samplers :: [sampler()]} | {error, atom()}.
gen_samplers(N) ->

    ?CALL_RAW_FUNC(glGenSamplers_raw(N)).

-doc """
Return the current unpack skipped pixel count.

It implements the `glGetIntegerv` function

```
{ok, Pixels} = gl:get_unpack_skip_pixels().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_unpack_skip_pixels() -> {ok, Pixels :: gl:int()} | {error, atom()}.
get_unpack_skip_pixels() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_UNPACK_SKIP_PIXELS)).

-doc """
Reserve transform feedback object names.

It implements the `glGenTransformFeedbacks` function

```
{ok, [Feedback]} = gl:gen_transform_feedbacks(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenTransformFeedbacks) for more information.
""".
-spec gen_transform_feedbacks(N :: pos_integer()) -> {ok, Feedbacks :: [transform_feedback()]} | {error, atom()}.
gen_transform_feedbacks(N) ->

    ?CALL_RAW_FUNC(glGenTransformFeedbacks_raw(N)).

-doc """
Return the maximum number of active draw buffers.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_draw_buffers().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_draw_buffers() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_draw_buffers() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_DRAW_BUFFERS)).

-doc """
Determine if a name corresponds to a sampler object.

It implements the `glIsSampler` function

```
{ok, true} = gl:is_sampler(Sampler).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsSampler) for more information.
""".
-spec is_sampler(Sampler :: sampler()) -> {ok, IsSampler :: gl:boolean()} | {error, atom()}.
is_sampler(Sampler) ->

    ?CALL_RAW_FUNC(glIsSampler_raw(Sampler)).

-doc """
Return the recommended maximum vertex count for draw-range commands.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_elements_vertices().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_elements_vertices() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_elements_vertices() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_ELEMENTS_VERTICES)).

-doc """
Define front- and back-facing polygons.

It implements the `glFrontFace` function

```
gl:front_face(ccw).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFrontFace) for more information.
""".
-spec front_face(Mode :: front_face_direction()) -> ok | {error, atom()}.
front_face(Mode) ->
    NewMode = case Mode of
        ccw -> ?GL_CCW;
        cw -> ?GL_CW
    end,

    ?CALL_RAW_FUNC(glFrontFace_raw(NewMode)).

-doc """
Specify the equation used for both the RGB blend equation and the alpha blend equation.

It implements the `glBlendEquation` function

```
gl:blend_equation(func_add).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlendEquation) for more information.
""".
-spec blend_equation(Mode :: blend_equation_mode()) -> ok | {error, atom()}.
blend_equation(Mode) ->
    NewMode = case Mode of
        min -> ?GL_MIN;
        func_reverse_subtract -> ?GL_FUNC_REVERSE_SUBTRACT;
        func_subtract -> ?GL_FUNC_SUBTRACT;
        max -> ?GL_MAX;
        func_add -> ?GL_FUNC_ADD
    end,

    ?CALL_RAW_FUNC(glBlendEquation_raw(NewMode)).

-doc """
Return a string describing the current GL connection.

It implements the `glGetString` function

```
{ok, Version} = gl:get_string(version).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetString) for more information.
""".
-spec get_string(Name :: string_name()) -> {ok, String :: binary()} | {error, atom()}.
get_string(Name) ->
    NewName = case Name of
        vendor -> ?GL_VENDOR;
        renderer -> ?GL_RENDERER;
        extensions -> ?GL_EXTENSIONS;
        shading_language_version -> ?GL_SHADING_LANGUAGE_VERSION;
        version -> ?GL_VERSION
    end,

    ?CALL_RAW_FUNC(glGetString_raw(NewName)).

-doc """
Return whether a program object is separable.

It implements the `glGetProgramiv` function

```
{ok, true} = gl:get_program_separable(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramiv) for more information.
""".
-spec get_program_separable(Program :: program()) -> {ok, Status :: gl:boolean()} | {error, atom()}.
get_program_separable(Program) ->

    ?CALL_RAW_FUNC(glGetProgramiv_raw(Program, ?GL_PROGRAM_SEPARABLE)).

-doc """
Returns the information log for a shader object.

It implements the `glGetShaderInfoLog` function

```
{ok, InfoLog} = gl:get_shader_info_log(Shader, 1024).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetShaderInfoLog) for more information.
""".
-spec get_shader_info_log(
    Shader :: shader(),
    MaxLength :: pos_integer()
) -> {ok, InfoLog :: binary()} | {error, atom()}.
get_shader_info_log(Shader, MaxLength) ->

    ?CALL_RAW_FUNC(glGetShaderInfoLog_raw(Shader, MaxLength)).

-doc """
Delete query objects.

It implements the `glDeleteQueries` function

```
ok = gl:delete_queries([Query]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteQueries) for more information.
""".
-spec delete_queries(Queries :: [query()]) -> ok | {error, atom()}.
delete_queries(Queries) ->
    N = length(Queries),
    NewQueries = << <<ID:32/native>> || ID <- Queries >>,
    ?CALL_RAW_FUNC(glDeleteQueries_raw(N, NewQueries)).

-doc """
Return the maximum number of vertex shader atomic counters.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_vertex_atomic_counters().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_vertex_atomic_counters() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_vertex_atomic_counters() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VERTEX_ATOMIC_COUNTERS)).

-doc """
Generate query object names.

It implements the `glGenQueries` function

```
{ok, [Query]} = gl:gen_queries(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenQueries) for more information.
""".
-spec gen_queries(N :: pos_integer()) -> {ok, Queries :: [query()]} | {error, atom()}.
gen_queries(N) ->

    ?CALL_RAW_FUNC(glGenQueries_raw(N)).

-doc """
Enable server-side GL capabilities.

It implements the `glEnable` function

```
gl:enable(scissor_test).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glEnable) for more information.
""".
-spec enable(Cap :: enable_cap()) -> ok | {error, atom()}.
enable(Cap) ->
    NewCap = case Cap of
        sample_mask -> ?GL_SAMPLE_MASK;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        stencil_test -> ?GL_STENCIL_TEST;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        cull_face -> ?GL_CULL_FACE;
        scissor_test -> ?GL_SCISSOR_TEST;
        texture_2d -> ?GL_TEXTURE_2D;
        depth_test -> ?GL_DEPTH_TEST;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    ?CALL_RAW_FUNC(glEnable_raw(NewCap)).

-doc """
Create and link a separable shader program from one or more source strings.

It implements the `glCreateShaderProgramv` function

```
{ok, Program} = gl:create_shader_program(vertex_shader, [Source]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCreateShaderProgramv) for more information.
""".
-spec create_shader_program(
    ShaderType :: shader_type(),
    Sources :: [iodata()]
) -> {ok, Program :: program()} | {error, atom()}.
create_shader_program(ShaderType, Sources) ->
    SourcesNew = lists:map(fun
        (SourcesItem) when is_list(SourcesItem) -> iolist_to_binary(SourcesItem);
        (SourcesItem) when is_binary(SourcesItem) -> SourcesItem
    end, Sources),    NewShaderType = case ShaderType of
        vertex_shader -> ?GL_VERTEX_SHADER;
        fragment_shader -> ?GL_FRAGMENT_SHADER;
        compute_shader -> ?GL_COMPUTE_SHADER
    end,

    ?CALL_RAW_FUNC(glCreateShaderProgramv_raw(NewShaderType, SourcesNew)).

-doc """
Delete program pipeline objects.

It implements the `glDeleteProgramPipelines` function

```
gl:delete_program_pipelines([Pipeline]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteProgramPipelines) for more information.
""".
-spec delete_program_pipelines(Pipelines :: [program_pipeline()]) -> ok | {error, atom()}.
delete_program_pipelines(Pipelines) ->
    N = length(Pipelines),
    NewPipelines = << <<ID:32/native>> || ID <- Pipelines >>,
    ?CALL_RAW_FUNC(glDeleteProgramPipelines_raw(N, NewPipelines)).

-type get_tex_parameter_value() ::
    gl:float() |
    gl:int()
.

-doc """
Read texture parameter values for the texture bound to a target.

It implements the following OpenGL commands:

- `glGetTexParameteriv`
- `glGetTexParameterfv`

```
{ok, Values} = gl:get_tex_parameter(i, texture_2d, texture_wrap_s, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetTexParameter) for more information.
""".
-spec get_tex_parameter(
    Type :: f | i,
    Target :: texture_target(),
    ParamName :: texture_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [get_tex_parameter_value()]} | {error, atom()}.
get_tex_parameter(i, Target, ParamName, Count) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glGetTexParameteriv_raw(NewTarget, NewParamName, Count));
get_tex_parameter(f, Target, ParamName, Count) ->
    NewParamName = case ParamName of
        texture_width -> ?GL_TEXTURE_WIDTH;
        texture_swizzle_g -> ?GL_TEXTURE_SWIZZLE_G;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_max_level -> ?GL_TEXTURE_MAX_LEVEL;
        texture_internal_format -> ?GL_TEXTURE_INTERNAL_FORMAT;
        texture_red_size -> ?GL_TEXTURE_RED_SIZE;
        texture_green_size -> ?GL_TEXTURE_GREEN_SIZE;
        texture_alpha_size -> ?GL_TEXTURE_ALPHA_SIZE;
        texture_swizzle_b -> ?GL_TEXTURE_SWIZZLE_B;
        texture_blue_size -> ?GL_TEXTURE_BLUE_SIZE;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_base_level -> ?GL_TEXTURE_BASE_LEVEL;
        texture_height -> ?GL_TEXTURE_HEIGHT;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        depth_stencil_texture_mode -> ?GL_DEPTH_STENCIL_TEXTURE_MODE;
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T;
        texture_swizzle_r -> ?GL_TEXTURE_SWIZZLE_R;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_swizzle_a -> ?GL_TEXTURE_SWIZZLE_A
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glGetTexParameterfv_raw(NewTarget, NewParamName, Count)).

-doc """
Determine if a name corresponds to a buffer object.

It implements the `glIsBuffer` function

```
{ok, true} = gl:is_buffer(Buffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsBuffer) for more information.
""".
-spec is_buffer(Buffer :: buffer()) -> {ok, IsBuffer :: gl:boolean()} | {error, atom()}.
is_buffer(Buffer) ->

    ?CALL_RAW_FUNC(glIsBuffer_raw(Buffer)).

-doc """
Specify pixel arithmetic factors for RGB and alpha components separately.

It implements the `glBlendFuncSeparate` function

```
gl:blend_func_separate(src_alpha, one_minus_src_alpha, one, zero).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBlendFuncSeparate) for more information.
""".
-spec blend_func_separate(
    SourceRGB :: blending_factor(),
    DestinationRGB :: blending_factor(),
    SourceAlpha :: blending_factor(),
    DestinationAlpha :: blending_factor()
) -> ok | {error, atom()}.
blend_func_separate(SourceRGB, DestinationRGB, SourceAlpha, DestinationAlpha) ->
    NewDestinationAlpha = case DestinationAlpha of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewSourceAlpha = case SourceAlpha of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewDestinationRGB = case DestinationRGB of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,
    NewSourceRGB = case SourceRGB of
        src_alpha -> ?GL_SRC_ALPHA;
        one -> ?GL_ONE;
        dst_alpha -> ?GL_DST_ALPHA;
        one_minus_dst_alpha -> ?GL_ONE_MINUS_DST_ALPHA;
        one_minus_src_color -> ?GL_ONE_MINUS_SRC_COLOR;
        zero -> ?GL_ZERO;
        src_alpha_saturate -> ?GL_SRC_ALPHA_SATURATE;
        one_minus_constant_color -> ?GL_ONE_MINUS_CONSTANT_COLOR;
        constant_alpha -> ?GL_CONSTANT_ALPHA;
        src_color -> ?GL_SRC_COLOR;
        one_minus_dst_color -> ?GL_ONE_MINUS_DST_COLOR;
        one_minus_src_alpha -> ?GL_ONE_MINUS_SRC_ALPHA;
        dst_color -> ?GL_DST_COLOR;
        one_minus_constant_alpha -> ?GL_ONE_MINUS_CONSTANT_ALPHA;
        constant_color -> ?GL_CONSTANT_COLOR
    end,

    ?CALL_RAW_FUNC(glBlendFuncSeparate_raw(NewSourceRGB, NewDestinationRGB, NewSourceAlpha, NewDestinationAlpha)).

-doc """
Bind a framebuffer to a framebuffer target.

It implements the `glBindFramebuffer` function

```
gl:bind_framebuffer(framebuffer, Framebuffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindFramebuffer) for more information.
""".
-spec bind_framebuffer(
    Target :: framebuffer_target(),
    Framebuffer :: framebuffer()
) -> ok | {error, atom()}.
bind_framebuffer(Target, Framebuffer) ->
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    ?CALL_RAW_FUNC(glBindFramebuffer_raw(NewTarget, Framebuffer)).

-doc """
Bind a renderbuffer to a renderbuffer target.

It implements the `glBindRenderbuffer` function

```
gl:bind_renderbuffer(renderbuffer, Renderbuffer).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindRenderbuffer) for more information.
""".
-spec bind_renderbuffer(
    Target :: renderbuffer_target(),
    Renderbuffer :: renderbuffer()
) -> ok | {error, atom()}.
bind_renderbuffer(Target, Renderbuffer) ->
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    ?CALL_RAW_FUNC(glBindRenderbuffer_raw(NewTarget, Renderbuffer)).

-doc """
Return the maximum number of compute shader uniform blocks.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_compute_uniform_blocks().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_compute_uniform_blocks() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_compute_uniform_blocks() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_COMPUTE_UNIFORM_BLOCKS)).

-doc """
Specify clear values for the color buffers.

It implements the `glClearColor` function

```
gl:clear_color(0.0, 0.0, 0.0, 1.0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glClearColor) for more information.
""".
-spec clear_color(
    Red :: gl:float(),
    Green :: gl:float(),
    Blue :: gl:float(),
    Alpha :: gl:float()
) -> ok | {error, atom()}.
clear_color(Red, Green, Blue, Alpha) ->

    ?CALL_RAW_FUNC(glClearColor_raw(Red, Green, Blue, Alpha)).

-doc """
Return the maximum combined compute uniform components.

It implements the `glGetInteger64v` function

```
{ok, Count} = gl:get_max_combined_compute_uniform_components().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetInteger64v) for more information.
""".
-spec get_max_combined_compute_uniform_components() -> {ok, Count :: gl:int64()} | {error, atom()}.
get_max_combined_compute_uniform_components() ->

    ?CALL_RAW_FUNC(glGetInteger64vInteger_raw(?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS)).

-doc """
Return the index of a named uniform block.

It implements the `glGetUniformBlockIndex` function

```
{ok, Index} = gl:get_uniform_block_index(Program, [<<"Canary">>, "Block"]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetUniformBlockIndex) for more information.
""".
-spec get_uniform_block_index(
    Program :: program(),
    Name :: iodata()
) -> {ok, Index :: gl:uint()} | {error, atom()}.
get_uniform_block_index(Program, Name) ->
    Name0 = iolist_to_binary(Name),

    ?CALL_RAW_FUNC(glGetUniformBlockIndex_raw(Program, Name0)).

-doc """
Return the maximum programmable texel offset.

It implements the `glGetIntegerv` function

```
{ok, Offset} = gl:get_max_program_texel_offset().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_program_texel_offset() -> {ok, Offset :: gl:int()} | {error, atom()}.
get_max_program_texel_offset() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_PROGRAM_TEXEL_OFFSET)).

-doc """
Return the maximum number of vertex shader storage blocks.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_vertex_shader_storage_blocks().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_vertex_shader_storage_blocks() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_vertex_shader_storage_blocks() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS)).

-doc """
Return the maximum supported sample count.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_samples().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_samples() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_samples() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_SAMPLES)).

-doc """
Return the maximum number of vertex attributes.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_vertex_attribs().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_vertex_attribs() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_vertex_attribs() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_MAX_VERTEX_ATTRIBS)).

-doc """
Test whether a capability is enabled.

It implements the `glIsEnabled` function

```
{ok, true} = gl:is_enabled(scissor_test).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glIsEnabled) for more information.
""".
-spec is_enabled(Capability :: enable_cap()) -> {ok, IsEnabled :: gl:boolean()} | {error, atom()}.
is_enabled(Capability) ->
    NewCapability = case Capability of
        sample_mask -> ?GL_SAMPLE_MASK;
        rasterizer_discard -> ?GL_RASTERIZER_DISCARD;
        sample_alpha_to_coverage -> ?GL_SAMPLE_ALPHA_TO_COVERAGE;
        sample_coverage -> ?GL_SAMPLE_COVERAGE;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        stencil_test -> ?GL_STENCIL_TEST;
        blend -> ?GL_BLEND;
        primitive_restart_fixed_index -> ?GL_PRIMITIVE_RESTART_FIXED_INDEX;
        cull_face -> ?GL_CULL_FACE;
        scissor_test -> ?GL_SCISSOR_TEST;
        texture_2d -> ?GL_TEXTURE_2D;
        depth_test -> ?GL_DEPTH_TEST;
        dither -> ?GL_DITHER;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL
    end,

    ?CALL_RAW_FUNC(glIsEnabled_raw(NewCapability)).

-doc """
Delete sampler objects.

It implements the `glDeleteSamplers` function

```
ok = gl:delete_samplers([Sampler]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteSamplers) for more information.
""".
-spec delete_samplers(Samplers :: [sampler()]) -> ok | {error, atom()}.
delete_samplers(Samplers) ->
    N = length(Samplers),
    NewSamplers = << <<ID:32/native>> || ID <- Samplers >>,
    ?CALL_RAW_FUNC(glDeleteSamplers_raw(N, NewSamplers)).

-type vertex_attrib_value() ::
    gl:float() |
    vector2(gl:float()) |
    vector3(gl:float()) |
    vector4(gl:float())
.

-doc """
Specify the current value of a generic vertex attribute.

It implements the following OpenGL commands:

- `glVertexAttrib4f`
- `glVertexAttrib3f`
- `glVertexAttrib2f`
- `glVertexAttrib1f`

```
ok = gl:vertex_attrib(f, 0, 1.0).
ok = gl:vertex_attrib(f, 0, {1.0, 0.0, 0.0, 1.0}).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glVertexAttrib) for more information.
""".
-spec vertex_attrib(
    Type :: f,
    Index :: gl:uint(),
    Values :: vertex_attrib_value()
) -> ok | {error, atom()}.
vertex_attrib(f, Index, Values) when
    is_tuple(Values) andalso
    tuple_size(Values) =:= 4
->
    [V1, V2, V3, V4] = ?GL_PACK_VECTOR_4(Values),

    ?CALL_RAW_FUNC(glVertexAttrib4f_raw(Index, V1, V2, V3, V4));
vertex_attrib(f, Index, Values) when
    is_tuple(Values) andalso
    tuple_size(Values) =:= 3
->
    [V1, V2, V3] = ?GL_PACK_VECTOR_3(Values),

    ?CALL_RAW_FUNC(glVertexAttrib3f_raw(Index, V1, V2, V3));
vertex_attrib(f, Index, Values) when
    is_tuple(Values) andalso
    tuple_size(Values) =:= 2
->
    [V1, V2] = ?GL_PACK_VECTOR_2(Values),

    ?CALL_RAW_FUNC(glVertexAttrib2f_raw(Index, V1, V2));
vertex_attrib(f, Index, Values) ->

    ?CALL_RAW_FUNC(glVertexAttrib1f_raw(Index, Values)).

-doc """
Launch one or more compute work groups.

It implements the `glDispatchCompute` function

```
gl:dispatch_compute(0, 0, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDispatchCompute) for more information.
""".
-spec dispatch_compute(
    NumGroupsX :: gl:uint(),
    NumGroupsY :: gl:uint(),
    NumGroupsZ :: gl:uint()
) -> ok | {error, atom()}.
dispatch_compute(NumGroupsX, NumGroupsY, NumGroupsZ) ->

    ?CALL_RAW_FUNC(glDispatchCompute_raw(NumGroupsX, NumGroupsY, NumGroupsZ)).

-doc """
Return the current unpack skipped row count.

It implements the `glGetIntegerv` function

```
{ok, Rows} = gl:get_unpack_skip_rows().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_unpack_skip_rows() -> {ok, Rows :: gl:int()} | {error, atom()}.
get_unpack_skip_rows() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_UNPACK_SKIP_ROWS)).

-doc """
Return integer properties for an indexed resource within a program interface.

It implements the `glGetProgramResourceiv` function

```
{ok, [Type, Size]} = gl:get_program_resource(Program, uniform, Index, [type, array_size], 2).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramResourceiv) for more information.
""".
-spec get_program_resource(
    Program :: program(),
    ProgramInterface :: program_interface(),
    Index :: gl:uint(),
    Properties :: [program_resource_property()],
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_program_resource(Program, ProgramInterface, Index, Properties, Count) ->
    NewProperties = case Properties of
        [_ | _] -> << <<(case EnumValue of
            atomic_counter_buffer_index -> ?GL_ATOMIC_COUNTER_BUFFER_INDEX;
            name_length -> ?GL_NAME_LENGTH;
            num_active_variables -> ?GL_NUM_ACTIVE_VARIABLES;
            referenced_by_compute_shader -> ?GL_REFERENCED_BY_COMPUTE_SHADER;
            top_level_array_size -> ?GL_TOP_LEVEL_ARRAY_SIZE;
            type -> ?GL_TYPE;
            buffer_binding -> ?GL_BUFFER_BINDING;
            referenced_by_fragment_shader -> ?GL_REFERENCED_BY_FRAGMENT_SHADER;
            array_stride -> ?GL_ARRAY_STRIDE;
            top_level_array_stride -> ?GL_TOP_LEVEL_ARRAY_STRIDE;
            referenced_by_vertex_shader -> ?GL_REFERENCED_BY_VERTEX_SHADER;
            offset -> ?GL_OFFSET;
            uniform -> ?GL_UNIFORM;
            array_size -> ?GL_ARRAY_SIZE;
            active_variables -> ?GL_ACTIVE_VARIABLES;
            block_index -> ?GL_BLOCK_INDEX;
            is_row_major -> ?GL_IS_ROW_MAJOR;
            buffer_data_size -> ?GL_BUFFER_DATA_SIZE;
            matrix_stride -> ?GL_MATRIX_STRIDE;
            location -> ?GL_LOCATION
        end):32/native>> || EnumValue <- Properties >>;
        _ -> erlang:error(badarg)
    end,    NewProgramInterface = case ProgramInterface of
        buffer_variable -> ?GL_BUFFER_VARIABLE;
        shader_storage_block -> ?GL_SHADER_STORAGE_BLOCK;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        uniform -> ?GL_UNIFORM;
        program_input -> ?GL_PROGRAM_INPUT;
        program_output -> ?GL_PROGRAM_OUTPUT;
        transform_feedback_varying -> ?GL_TRANSFORM_FEEDBACK_VARYING;
        uniform_block -> ?GL_UNIFORM_BLOCK
    end,

    ?CALL_RAW_FUNC(glGetProgramResourceiv_raw(Program, NewProgramInterface, Index, NewProperties, Count)).

-doc """
Return whether a program pipeline's last validation succeeded.

It implements the `glGetProgramPipelineiv` function

```
{ok, true} = gl:get_program_pipeline_validation_status(Pipeline).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetProgramPipelineiv) for more information.
""".
-spec get_program_pipeline_validation_status(Pipeline :: program_pipeline()) -> {ok, Status :: gl:boolean()} | {error, atom()}.
get_program_pipeline_validation_status(Pipeline) ->

    ?CALL_RAW_FUNC(glGetProgramPipelineiv_raw(Pipeline, ?GL_VALIDATE_STATUS)).

-doc """
Generate buffer object names.

It implements the `glGenBuffers` function

```
{ok, [Buffer]} = gl:gen_buffers(1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGenBuffers) for more information.
""".
-spec gen_buffers(N :: pos_integer()) -> {ok, Buffers :: [buffer()]} | {error, atom()}.
gen_buffers(N) ->

    ?CALL_RAW_FUNC(glGenBuffers_raw(N)).

-type get_uniform_value() ::
    gl:float() |
    gl:int() |
    gl:uint()
.

-doc """
Read current uniform storage values from a linked program object.

It implements the following OpenGL commands:

- `glGetUniformuiv`
- `glGetUniformiv`
- `glGetUniformfv`

```
{ok, Values} = gl:get_uniform(f, Program, Location, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetUniform) for more information.
""".
-spec get_uniform(
    Type :: f | i | ui,
    Program :: program(),
    Location :: gl:int(),
    Count :: pos_integer()
) -> {ok, Values :: [get_uniform_value()]} | {error, atom()}.
get_uniform(ui, Program, Location, Count) ->

    ?CALL_RAW_FUNC(glGetUniformuiv_raw(Program, Location, Count));
get_uniform(i, Program, Location, Count) ->

    ?CALL_RAW_FUNC(glGetUniformiv_raw(Program, Location, Count));
get_uniform(f, Program, Location, Count) ->

    ?CALL_RAW_FUNC(glGetUniformfv_raw(Program, Location, Count)).

-doc """
Update a subset of a buffer object's data store.

It implements the `glBufferSubData` function

```
ok = gl:buffer_sub_data(array_buffer, 1, <<9, 8>>).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBufferSubData) for more information.
""".
-spec buffer_sub_data(
    Target :: buffer_target(),
    Offset :: gl:intptr(),
    Data :: iodata()
) -> ok | {error, atom()}.
buffer_sub_data(Target, Offset, Data) ->
    Data0 = iolist_to_binary(Data),
    Size = byte_size(Data0),
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,

    ?CALL_RAW_FUNC(glBufferSubData_raw(NewTarget, Offset, Size, Data0)).

-type get_sampler_parameter_value() ::
    gl:int() |
    gl:float()
.

-doc """
Read sampler parameter values.

It implements the following OpenGL commands:

- `glGetSamplerParameterfv`
- `glGetSamplerParameteriv`

```
{ok, Values} = gl:get_sampler_parameter(f, Sampler, texture_min_lod, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetSamplerParameter) for more information.
""".
-spec get_sampler_parameter(
    Type :: f | i,
    Sampler :: sampler(),
    ParamName :: sampler_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [get_sampler_parameter_value()]} | {error, atom()}.
get_sampler_parameter(f, Sampler, ParamName, Count) ->
    NewParamName = case ParamName of
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
    end,

    ?CALL_RAW_FUNC(glGetSamplerParameterfv_raw(Sampler, NewParamName, Count));
get_sampler_parameter(i, Sampler, ParamName, Count) ->
    NewParamName = case ParamName of
        texture_max_lod -> ?GL_TEXTURE_MAX_LOD;
        texture_min_lod -> ?GL_TEXTURE_MIN_LOD;
        texture_min_filter -> ?GL_TEXTURE_MIN_FILTER;
        texture_compare_func -> ?GL_TEXTURE_COMPARE_FUNC;
        texture_wrap_s -> ?GL_TEXTURE_WRAP_S;
        texture_wrap_r -> ?GL_TEXTURE_WRAP_R;
        texture_mag_filter -> ?GL_TEXTURE_MAG_FILTER;
        texture_compare_mode -> ?GL_TEXTURE_COMPARE_MODE;
        texture_wrap_t -> ?GL_TEXTURE_WRAP_T
    end,

    ?CALL_RAW_FUNC(glGetSamplerParameteriv_raw(Sampler, NewParamName, Count)).

-doc """
Select active texture unit.

It implements the `glActiveTexture` function

```
gl:active_texture(texture0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glActiveTexture) for more information.
""".
-spec active_texture(Texture :: texture_unit()) -> ok | {error, atom()}.
active_texture(Texture) ->
    NewTexture = case Texture of
        texture31 -> ?GL_TEXTURE31;
        texture0 -> ?GL_TEXTURE0;
        texture22 -> ?GL_TEXTURE22;
        texture1 -> ?GL_TEXTURE1;
        texture15 -> ?GL_TEXTURE15;
        texture30 -> ?GL_TEXTURE30;
        texture20 -> ?GL_TEXTURE20;
        texture26 -> ?GL_TEXTURE26;
        texture25 -> ?GL_TEXTURE25;
        texture7 -> ?GL_TEXTURE7;
        texture18 -> ?GL_TEXTURE18;
        texture11 -> ?GL_TEXTURE11;
        texture5 -> ?GL_TEXTURE5;
        texture3 -> ?GL_TEXTURE3;
        texture29 -> ?GL_TEXTURE29;
        texture13 -> ?GL_TEXTURE13;
        texture16 -> ?GL_TEXTURE16;
        texture4 -> ?GL_TEXTURE4;
        texture12 -> ?GL_TEXTURE12;
        texture21 -> ?GL_TEXTURE21;
        texture27 -> ?GL_TEXTURE27;
        texture24 -> ?GL_TEXTURE24;
        texture23 -> ?GL_TEXTURE23;
        texture28 -> ?GL_TEXTURE28;
        texture9 -> ?GL_TEXTURE9;
        texture8 -> ?GL_TEXTURE8;
        texture6 -> ?GL_TEXTURE6;
        texture17 -> ?GL_TEXTURE17;
        texture2 -> ?GL_TEXTURE2;
        texture10 -> ?GL_TEXTURE10;
        texture14 -> ?GL_TEXTURE14;
        texture19 -> ?GL_TEXTURE19
    end,

    ?CALL_RAW_FUNC(glActiveTexture_raw(NewTexture)).

-doc """
Return the maximum texture size.

It implements the `glGetIntegerv` function

```
{ok, Size} = gl:get_max_texture_size().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_texture_size() -> {ok, Size :: gl:int()} | {error, atom()}.
get_max_texture_size() ->

    ?CALL_RAW_FUNC(glGetIntegerv_raw(?GL_MAX_TEXTURE_SIZE)).

-doc """
Return whether a shader object has been flagged for deletion.

It implements the `glGetShaderiv` function

```
{ok, false} = gl:get_shader_delete_status(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetShaderiv) for more information.
""".
-spec get_shader_delete_status(Shader :: shader()) -> {ok, Status :: gl:boolean()} | {error, atom()}.
get_shader_delete_status(Shader) ->

    ?CALL_RAW_FUNC(glGetShaderiv_raw(Shader, ?GL_DELETE_STATUS)).

-doc """
Resume transform feedback operation.

It implements the `glResumeTransformFeedback` function

```
gl:resume_transform_feedback().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glResumeTransformFeedback) for more information.
""".
-spec resume_transform_feedback() -> ok | {error, atom()}.
resume_transform_feedback() ->

    ?CALL_RAW_FUNC(glResumeTransformFeedback_raw()).

-doc """
Read indexed 64-bit integer OpenGL state parameter values.

It implements the `glGetInteger64i_v` function

```
{ok, Values} = gl:get_integer64(transform_feedback_buffer_size, 0, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetInteger64i_v) for more information.
""".
-spec get_integer64(
    ParamName :: state_parameter_name(),
    Index :: gl:uint(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int64()]} | {error, atom()}.
get_integer64(ParamName, Index, Count) ->
    NewParamName = case ParamName of
        polygon_offset_units -> ?GL_POLYGON_OFFSET_UNITS;
        texture_binding_3d -> ?GL_TEXTURE_BINDING_3D;
        num_compressed_texture_formats -> ?GL_NUM_COMPRESSED_TEXTURE_FORMATS;
        pixel_pack_buffer_binding -> ?GL_PIXEL_PACK_BUFFER_BINDING;
        stencil_fail -> ?GL_STENCIL_FAIL;
        viewport -> ?GL_VIEWPORT;
        active_texture -> ?GL_ACTIVE_TEXTURE;
        line_width -> ?GL_LINE_WIDTH;
        blend_dst_rgb -> ?GL_BLEND_DST_RGB;
        uniform_buffer_offset_alignment -> ?GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT;
        aliased_point_size_range -> ?GL_ALIASED_POINT_SIZE_RANGE;
        max_fragment_uniform_blocks -> ?GL_MAX_FRAGMENT_UNIFORM_BLOCKS;
        max_varying_components -> ?GL_MAX_VARYING_COMPONENTS;
        blend_src_alpha -> ?GL_BLEND_SRC_ALPHA;
        read_buffer -> ?GL_READ_BUFFER;
        max_array_texture_layers -> ?GL_MAX_ARRAY_TEXTURE_LAYERS;
        texture_binding_2d -> ?GL_TEXTURE_BINDING_2D;
        uniform_buffer_start -> ?GL_UNIFORM_BUFFER_START;
        max_uniform_buffer_bindings -> ?GL_MAX_UNIFORM_BUFFER_BINDINGS;
        stencil_func -> ?GL_STENCIL_FUNC;
        blend_equation -> ?GL_BLEND_EQUATION;
        implementation_color_read_format -> ?GL_IMPLEMENTATION_COLOR_READ_FORMAT;
        max_compute_work_group_count -> ?GL_MAX_COMPUTE_WORK_GROUP_COUNT;
        max_program_texel_offset -> ?GL_MAX_PROGRAM_TEXEL_OFFSET;
        blend_src_rgb -> ?GL_BLEND_SRC_RGB;
        depth_writemask -> ?GL_DEPTH_WRITEMASK;
        dispatch_indirect_buffer_binding -> ?GL_DISPATCH_INDIRECT_BUFFER_BINDING;
        uniform_buffer_binding -> ?GL_UNIFORM_BUFFER_BINDING;
        max_uniform_locations -> ?GL_MAX_UNIFORM_LOCATIONS;
        texture_binding_2d_multisample -> ?GL_TEXTURE_BINDING_2D_MULTISAMPLE;
        max_fragment_shader_storage_blocks -> ?GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS;
        polygon_offset_factor -> ?GL_POLYGON_OFFSET_FACTOR;
        fragment_shader_derivative_hint -> ?GL_FRAGMENT_SHADER_DERIVATIVE_HINT;
        max_cube_map_texture_size -> ?GL_MAX_CUBE_MAP_TEXTURE_SIZE;
        sample_buffers -> ?GL_SAMPLE_BUFFERS;
        depth_range -> ?GL_DEPTH_RANGE;
        max_combined_vertex_uniform_components -> ?GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS;
        transform_feedback_buffer_start -> ?GL_TRANSFORM_FEEDBACK_BUFFER_START;
        subpixel_bits -> ?GL_SUBPIXEL_BITS;
        vertex_binding_offset -> ?GL_VERTEX_BINDING_OFFSET;
        unpack_alignment -> ?GL_UNPACK_ALIGNMENT;
        max_elements_vertices -> ?GL_MAX_ELEMENTS_VERTICES;
        stencil_bits -> ?GL_STENCIL_BITS;
        stencil_test -> ?GL_STENCIL_TEST;
        max_fragment_uniform_components -> ?GL_MAX_FRAGMENT_UNIFORM_COMPONENTS;
        shader_compiler -> ?GL_SHADER_COMPILER;
        color_writemask -> ?GL_COLOR_WRITEMASK;
        stencil_clear_value -> ?GL_STENCIL_CLEAR_VALUE;
        max_integer_samples -> ?GL_MAX_INTEGER_SAMPLES;
        pack_skip_pixels -> ?GL_PACK_SKIP_PIXELS;
        unpack_row_length -> ?GL_UNPACK_ROW_LENGTH;
        max_texture_lod_bias -> ?GL_MAX_TEXTURE_LOD_BIAS;
        stencil_value_mask -> ?GL_STENCIL_VALUE_MASK;
        program_pipeline_binding -> ?GL_PROGRAM_PIPELINE_BINDING;
        blend -> ?GL_BLEND;
        shader_storage_buffer_binding -> ?GL_SHADER_STORAGE_BUFFER_BINDING;
        max_vertex_attrib_bindings -> ?GL_MAX_VERTEX_ATTRIB_BINDINGS;
        uniform_buffer_size -> ?GL_UNIFORM_BUFFER_SIZE;
        max_texture_image_units -> ?GL_MAX_TEXTURE_IMAGE_UNITS;
        max_combined_texture_image_units -> ?GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS;
        max_color_attachments -> ?GL_MAX_COLOR_ATTACHMENTS;
        stencil_back_value_mask -> ?GL_STENCIL_BACK_VALUE_MASK;
        max_vertex_output_components -> ?GL_MAX_VERTEX_OUTPUT_COMPONENTS;
        max_element_index -> ?GL_MAX_ELEMENT_INDEX;
        max_renderbuffer_size -> ?GL_MAX_RENDERBUFFER_SIZE;
        stencil_back_ref -> ?GL_STENCIL_BACK_REF;
        stencil_back_fail -> ?GL_STENCIL_BACK_FAIL;
        unpack_skip_pixels -> ?GL_UNPACK_SKIP_PIXELS;
        depth_clear_value -> ?GL_DEPTH_CLEAR_VALUE;
        max_fragment_input_components -> ?GL_MAX_FRAGMENT_INPUT_COMPONENTS;
        vertex_array_binding -> ?GL_VERTEX_ARRAY_BINDING;
        max_depth_texture_samples -> ?GL_MAX_DEPTH_TEXTURE_SAMPLES;
        num_shader_binary_formats -> ?GL_NUM_SHADER_BINARY_FORMATS;
        max_viewport_dims -> ?GL_MAX_VIEWPORT_DIMS;
        unpack_skip_rows -> ?GL_UNPACK_SKIP_ROWS;
        blend_dst_alpha -> ?GL_BLEND_DST_ALPHA;
        vertex_binding_stride -> ?GL_VERTEX_BINDING_STRIDE;
        num_extensions -> ?GL_NUM_EXTENSIONS;
        depth_bits -> ?GL_DEPTH_BITS;
        max_vertex_shader_storage_blocks -> ?GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS;
        shader_storage_buffer_offset_alignment -> ?GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT;
        max_combined_fragment_uniform_components -> ?GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS;
        transform_feedback_buffer_size -> ?GL_TRANSFORM_FEEDBACK_BUFFER_SIZE;
        max_server_wait_timeout -> ?GL_MAX_SERVER_WAIT_TIMEOUT;
        max_compute_uniform_blocks -> ?GL_MAX_COMPUTE_UNIFORM_BLOCKS;
        minor_version -> ?GL_MINOR_VERSION;
        scissor_box -> ?GL_SCISSOR_BOX;
        stencil_writemask -> ?GL_STENCIL_WRITEMASK;
        max_3d_texture_size -> ?GL_MAX_3D_TEXTURE_SIZE;
        array_buffer_binding -> ?GL_ARRAY_BUFFER_BINDING;
        max_vertex_texture_image_units -> ?GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS;
        sample_coverage_value -> ?GL_SAMPLE_COVERAGE_VALUE;
        cull_face -> ?GL_CULL_FACE;
        max_compute_atomic_counters -> ?GL_MAX_COMPUTE_ATOMIC_COUNTERS;
        unpack_image_height -> ?GL_UNPACK_IMAGE_HEIGHT;
        red_bits -> ?GL_RED_BITS;
        max_texture_size -> ?GL_MAX_TEXTURE_SIZE;
        unpack_skip_images -> ?GL_UNPACK_SKIP_IMAGES;
        stencil_pass_depth_fail -> ?GL_STENCIL_PASS_DEPTH_FAIL;
        texture_binding_cube_map -> ?GL_TEXTURE_BINDING_CUBE_MAP;
        read_framebuffer_binding -> ?GL_READ_FRAMEBUFFER_BINDING;
        renderbuffer_binding -> ?GL_RENDERBUFFER_BINDING;
        max_compute_work_group_size -> ?GL_MAX_COMPUTE_WORK_GROUP_SIZE;
        pack_alignment -> ?GL_PACK_ALIGNMENT;
        vertex_binding_divisor -> ?GL_VERTEX_BINDING_DIVISOR;
        max_combined_atomic_counters -> ?GL_MAX_COMBINED_ATOMIC_COUNTERS;
        stencil_back_pass_depth_pass -> ?GL_STENCIL_BACK_PASS_DEPTH_PASS;
        max_framebuffer_width -> ?GL_MAX_FRAMEBUFFER_WIDTH;
        num_program_binary_formats -> ?GL_NUM_PROGRAM_BINARY_FORMATS;
        stencil_back_pass_depth_fail -> ?GL_STENCIL_BACK_PASS_DEPTH_FAIL;
        max_uniform_block_size -> ?GL_MAX_UNIFORM_BLOCK_SIZE;
        blend_equation_alpha -> ?GL_BLEND_EQUATION_ALPHA;
        blend_color -> ?GL_BLEND_COLOR;
        pixel_unpack_buffer_binding -> ?GL_PIXEL_UNPACK_BUFFER_BINDING;
        texture_binding_2d_array -> ?GL_TEXTURE_BINDING_2D_ARRAY;
        aliased_line_width_range -> ?GL_ALIASED_LINE_WIDTH_RANGE;
        alpha_bits -> ?GL_ALPHA_BITS;
        implementation_color_read_type -> ?GL_IMPLEMENTATION_COLOR_READ_TYPE;
        green_bits -> ?GL_GREEN_BITS;
        max_compute_atomic_counter_buffers -> ?GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS;
        max_vertex_uniform_vectors -> ?GL_MAX_VERTEX_UNIFORM_VECTORS;
        blue_bits -> ?GL_BLUE_BITS;
        max_sample_mask_words -> ?GL_MAX_SAMPLE_MASK_WORDS;
        element_array_buffer_binding -> ?GL_ELEMENT_ARRAY_BUFFER_BINDING;
        samples -> ?GL_SAMPLES;
        sample_coverage_invert -> ?GL_SAMPLE_COVERAGE_INVERT;
        sampler_binding -> ?GL_SAMPLER_BINDING;
        max_fragment_uniform_vectors -> ?GL_MAX_FRAGMENT_UNIFORM_VECTORS;
        max_color_texture_samples -> ?GL_MAX_COLOR_TEXTURE_SAMPLES;
        scissor_test -> ?GL_SCISSOR_TEST;
        max_fragment_atomic_counters -> ?GL_MAX_FRAGMENT_ATOMIC_COUNTERS;
        cull_face_mode -> ?GL_CULL_FACE_MODE;
        max_compute_texture_image_units -> ?GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS;
        stencil_back_writemask -> ?GL_STENCIL_BACK_WRITEMASK;
        program_binary_formats -> ?GL_PROGRAM_BINARY_FORMATS;
        texture_2d -> ?GL_TEXTURE_2D;
        max_vertex_attribs -> ?GL_MAX_VERTEX_ATTRIBS;
        front_face -> ?GL_FRONT_FACE;
        stencil_ref -> ?GL_STENCIL_REF;
        max_vertex_atomic_counters -> ?GL_MAX_VERTEX_ATOMIC_COUNTERS;
        shader_binary_formats -> ?GL_SHADER_BINARY_FORMATS;
        transform_feedback_buffer_binding -> ?GL_TRANSFORM_FEEDBACK_BUFFER_BINDING;
        pack_row_length -> ?GL_PACK_ROW_LENGTH;
        max_vertex_attrib_relative_offset -> ?GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET;
        current_program -> ?GL_CURRENT_PROGRAM;
        max_draw_buffers -> ?GL_MAX_DRAW_BUFFERS;
        max_shader_storage_buffer_bindings -> ?GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS;
        max_framebuffer_height -> ?GL_MAX_FRAMEBUFFER_HEIGHT;
        max_compute_shader_storage_blocks -> ?GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS;
        max_vertex_uniform_components -> ?GL_MAX_VERTEX_UNIFORM_COMPONENTS;
        max_compute_work_group_invocations -> ?GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS;
        major_version -> ?GL_MAJOR_VERSION;
        color_clear_value -> ?GL_COLOR_CLEAR_VALUE;
        max_framebuffer_samples -> ?GL_MAX_FRAMEBUFFER_SAMPLES;
        min_program_texel_offset -> ?GL_MIN_PROGRAM_TEXEL_OFFSET;
        shader_storage_buffer_start -> ?GL_SHADER_STORAGE_BUFFER_START;
        max_combined_shader_storage_blocks -> ?GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS;
        depth_test -> ?GL_DEPTH_TEST;
        max_vertex_uniform_blocks -> ?GL_MAX_VERTEX_UNIFORM_BLOCKS;
        depth_func -> ?GL_DEPTH_FUNC;
        max_compute_uniform_components -> ?GL_MAX_COMPUTE_UNIFORM_COMPONENTS;
        max_elements_indices -> ?GL_MAX_ELEMENTS_INDICES;
        blend_equation_rgb -> ?GL_BLEND_EQUATION_RGB;
        pack_skip_rows -> ?GL_PACK_SKIP_ROWS;
        draw_framebuffer_binding -> ?GL_DRAW_FRAMEBUFFER_BINDING;
        max_combined_uniform_blocks -> ?GL_MAX_COMBINED_UNIFORM_BLOCKS;
        stencil_pass_depth_pass -> ?GL_STENCIL_PASS_DEPTH_PASS;
        stencil_back_func -> ?GL_STENCIL_BACK_FUNC;
        max_combined_compute_uniform_components -> ?GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS;
        dither -> ?GL_DITHER;
        shader_storage_buffer_size -> ?GL_SHADER_STORAGE_BUFFER_SIZE;
        polygon_offset_fill -> ?GL_POLYGON_OFFSET_FILL;
        compressed_texture_formats -> ?GL_COMPRESSED_TEXTURE_FORMATS;
        max_varying_vectors -> ?GL_MAX_VARYING_VECTORS
    end,

    ?CALL_RAW_FUNC(glGetInteger64i_v_raw(NewParamName, Index, Count)).

-doc """
Return the maximum number of image units.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_image_units().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_image_units() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_image_units() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_IMAGE_UNITS)).

-doc """
Block until all GL execution is complete.

It implements the `glFinish` function

```
gl:finish().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFinish) for more information.
""".
-spec finish() -> ok | {error, atom()}.
finish() ->

    ?CALL_RAW_FUNC(glFinish_raw()).

-doc """
Read renderbuffer parameter values for the renderbuffer bound to a target.

It implements the `glGetRenderbufferParameteriv` function

```
{ok, Values} = gl:get_renderbuffer_parameter(renderbuffer, renderbuffer_width, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetRenderbufferParameteriv) for more information.
""".
-spec get_renderbuffer_parameter(
    Target :: renderbuffer_target(),
    ParamName :: renderbuffer_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:int()]} | {error, atom()}.
get_renderbuffer_parameter(Target, ParamName, Count) ->
    NewParamName = case ParamName of
        renderbuffer_depth_size -> ?GL_RENDERBUFFER_DEPTH_SIZE;
        renderbuffer_internal_format -> ?GL_RENDERBUFFER_INTERNAL_FORMAT;
        renderbuffer_height -> ?GL_RENDERBUFFER_HEIGHT;
        renderbuffer_stencil_size -> ?GL_RENDERBUFFER_STENCIL_SIZE;
        renderbuffer_width -> ?GL_RENDERBUFFER_WIDTH;
        renderbuffer_samples -> ?GL_RENDERBUFFER_SAMPLES;
        renderbuffer_red_size -> ?GL_RENDERBUFFER_RED_SIZE;
        renderbuffer_green_size -> ?GL_RENDERBUFFER_GREEN_SIZE;
        renderbuffer_alpha_size -> ?GL_RENDERBUFFER_ALPHA_SIZE;
        renderbuffer_blue_size -> ?GL_RENDERBUFFER_BLUE_SIZE
    end,
    NewTarget = case Target of
        renderbuffer -> ?GL_RENDERBUFFER
    end,

    ?CALL_RAW_FUNC(glGetRenderbufferParameteriv_raw(NewTarget, NewParamName, Count)).

-doc """
Delete vertex array objects.

It implements the `glDeleteVertexArrays` function

```
gl:delete_vertex_arrays([Array]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteVertexArrays) for more information.
""".
-spec delete_vertex_arrays(Arrays :: [vertex_array()]) -> ok | {error, atom()}.
delete_vertex_arrays(Arrays) ->
    N = length(Arrays),
    NewArrays = << <<ID:32/native>> || ID <- Arrays >>,
    ?CALL_RAW_FUNC(glDeleteVertexArrays_raw(N, NewArrays)).

-doc """
Specify a three-dimensional texture subimage in a compressed format.

It implements the `glCompressedTexSubImage3D` function

```
ok = gl:compressed_tex_sub_image_3d(texture_3d, 0, 0, 0, 0, 4, 4, 4, compressed_rgba, CompressedBytes).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCompressedTexSubImage3D) for more information.
""".
-spec compressed_tex_sub_image_3d(
    Target :: texture_target(),
    Level :: gl:int(),
    OffsetX :: gl:int(),
    OffsetY :: gl:int(),
    OffsetZ :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Depth :: gl:sizei(),
    Format :: internal_format(),
    ImageData :: iodata()
) -> ok | {error, atom()}.
compressed_tex_sub_image_3d(Target, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, Format, ImageData) ->
    ImageData0 = iolist_to_binary(ImageData),
    ImageSize = byte_size(ImageData0),
    NewFormat = case Format of
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glCompressedTexSubImage3D_raw(NewTarget, Level, OffsetX, OffsetY, OffsetZ, Width, Height, Depth, NewFormat, ImageSize, ImageData0)).

-doc """
Return the number of supported program binary formats.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_num_program_binary_formats().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_num_program_binary_formats() -> {ok, Count :: gl:int()} | {error, atom()}.
get_num_program_binary_formats() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_NUM_PROGRAM_BINARY_FORMATS)).

-doc """
Read query object result values.

It implements the following OpenGL commands:

- `glGetQueryObjectuiv`

```
{ok, Values} = gl:get_query_object(ui, Query, query_result, 1).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetQueryObject) for more information.
""".
-spec get_query_object(
    Type :: ui,
    Query :: query(),
    ParamName :: query_object_parameter_name(),
    Count :: pos_integer()
) -> {ok, Values :: [gl:uint()]} | {error, atom()}.
get_query_object(ui, Query, ParamName, Count) ->
    NewParamName = case ParamName of
        query_result_available -> ?GL_QUERY_RESULT_AVAILABLE;
        query_result -> ?GL_QUERY_RESULT
    end,

    ?CALL_RAW_FUNC(glGetQueryObjectuiv_raw(Query, NewParamName, Count)).

-doc """
Bind a range within a buffer object to an indexed buffer target.

It implements the `glBindBufferRange` function

```
gl:bind_buffer_range(transform_feedback_buffer, 0, Buffer, 0, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindBufferRange) for more information.
""".
-spec bind_buffer_range(
    Target :: buffer_target(),
    Index :: gl:uint(),
    Buffer :: buffer(),
    Offset :: gl:intptr(),
    Size :: gl:sizeiptr()
) -> ok | {error, atom()}.
bind_buffer_range(Target, Index, Buffer, Offset, Size) ->
    NewTarget = case Target of
        element_array_buffer -> ?GL_ELEMENT_ARRAY_BUFFER;
        atomic_counter_buffer -> ?GL_ATOMIC_COUNTER_BUFFER;
        uniform_buffer -> ?GL_UNIFORM_BUFFER;
        copy_write_buffer -> ?GL_COPY_WRITE_BUFFER;
        shader_storage_buffer -> ?GL_SHADER_STORAGE_BUFFER;
        draw_indirect_buffer -> ?GL_DRAW_INDIRECT_BUFFER;
        transform_feedback_buffer -> ?GL_TRANSFORM_FEEDBACK_BUFFER;
        pixel_pack_buffer -> ?GL_PIXEL_PACK_BUFFER;
        copy_read_buffer -> ?GL_COPY_READ_BUFFER;
        array_buffer -> ?GL_ARRAY_BUFFER;
        dispatch_indirect_buffer -> ?GL_DISPATCH_INDIRECT_BUFFER;
        pixel_unpack_buffer -> ?GL_PIXEL_UNPACK_BUFFER
    end,

    ?CALL_RAW_FUNC(glBindBufferRange_raw(NewTarget, Index, Buffer, Offset, Size)).

-doc """
Return whether a shader object's last compile succeeded.

It implements the `glGetShaderiv` function

```
{ok, true} = gl:get_shader_compile_status(Shader).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetShaderiv) for more information.
""".
-spec get_shader_compile_status(Shader :: shader()) -> {ok, Status :: gl:boolean()} | {error, atom()}.
get_shader_compile_status(Shader) ->

    ?CALL_RAW_FUNC(glGetShaderiv_raw(Shader, ?GL_COMPILE_STATUS)).

-doc """
Return the maximum three-dimensional texture size.

It implements the `glGetIntegerv` function

```
{ok, Size} = gl:get_max_3d_texture_size().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_3d_texture_size() -> {ok, Size :: gl:int()} | {error, atom()}.
get_max_3d_texture_size() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_3D_TEXTURE_SIZE)).

-doc """
Creates a program object.

It implements the `glCreateProgram` function

```
{ok, Program} = gl:create_program().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCreateProgram) for more information.
""".
-spec create_program() -> {ok, Program :: program()} | {error, atom()}.
create_program() ->

    ?CALL_RAW_FUNC(glCreateProgram_raw()).

-doc """
Return the name of an active uniform block by index.

It implements the `glGetActiveUniformBlockName` function

```
{ok, Name} = gl:get_active_uniform_block_name(Program, BlockIndex, MaxLength).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetActiveUniformBlockName) for more information.
""".
-spec get_active_uniform_block_name(
    Program :: program(),
    UniformBlockIndex :: gl:uint(),
    MaxLength :: pos_integer()
) -> {ok, Name :: binary()} | {error, atom()}.
get_active_uniform_block_name(Program, UniformBlockIndex, MaxLength) ->

    ?CALL_RAW_FUNC(glGetActiveUniformBlockName_raw(Program, UniformBlockIndex, MaxLength)).

-doc """
Specify a two-dimensional texture image in a compressed format.

It implements the `glCompressedTexImage2D` function

```
ok = gl:compressed_tex_image_2d(texture_2d, 0, compressed_rgba, 4, 4, 0, CompressedBytes).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCompressedTexImage2D) for more information.
""".
-spec compressed_tex_image_2d(
    Target :: texture_target(),
    Level :: gl:int(),
    InternalFormat :: internal_format(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Border :: gl:int(),
    ImageData :: iodata()
) -> ok | {error, atom()}.
compressed_tex_image_2d(Target, Level, InternalFormat, Width, Height, Border, ImageData) ->
    ImageData0 = iolist_to_binary(ImageData),
    ImageSize = byte_size(ImageData0),
    NewInternalFormat = case InternalFormat of
        rg8 -> ?GL_RG8;
        depth32f_stencil8 -> ?GL_DEPTH32F_STENCIL8;
        r16ui -> ?GL_R16UI;
        depth_component24 -> ?GL_DEPTH_COMPONENT24;
        rgba -> ?GL_RGBA;
        rg8_snorm -> ?GL_RG8_SNORM;
        compressed_srgb8_alpha8_etc2_eac -> ?GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC;
        rgba16f -> ?GL_RGBA16F;
        compressed_rgb8_etc2 -> ?GL_COMPRESSED_RGB8_ETC2;
        rg32i -> ?GL_RG32I;
        stencil_index -> ?GL_STENCIL_INDEX;
        rgb5_a1 -> ?GL_RGB5_A1;
        rgb9_e5 -> ?GL_RGB9_E5;
        r11f_g11f_b10f -> ?GL_R11F_G11F_B10F;
        rgb10_a2ui -> ?GL_RGB10_A2UI;
        r8_snorm -> ?GL_R8_SNORM;
        rgba8ui -> ?GL_RGBA8UI;
        r8i -> ?GL_R8I;
        srgb8_alpha8 -> ?GL_SRGB8_ALPHA8;
        rgb8_snorm -> ?GL_RGB8_SNORM;
        depth_component -> ?GL_DEPTH_COMPONENT;
        depth24_stencil8 -> ?GL_DEPTH24_STENCIL8;
        r8ui -> ?GL_R8UI;
        depth_component32f -> ?GL_DEPTH_COMPONENT32F;
        rgba4 -> ?GL_RGBA4;
        rgb16f -> ?GL_RGB16F;
        red -> ?GL_RED;
        rgba8 -> ?GL_RGBA8;
        rgb32i -> ?GL_RGB32I;
        rgba32f -> ?GL_RGBA32F;
        rg16f -> ?GL_RG16F;
        compressed_srgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        r16i -> ?GL_R16I;
        rgb8ui -> ?GL_RGB8UI;
        r32ui -> ?GL_R32UI;
        srgb -> ?GL_SRGB;
        rgba16ui -> ?GL_RGBA16UI;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        srgb8 -> ?GL_SRGB8;
        rgb10_a2 -> ?GL_RGB10_A2;
        rgb565 -> ?GL_RGB565;
        rg16i -> ?GL_RG16I;
        r16f -> ?GL_R16F;
        rgb32f -> ?GL_RGB32F;
        compressed_rgba8_etc2_eac -> ?GL_COMPRESSED_RGBA8_ETC2_EAC;
        rgb8i -> ?GL_RGB8I;
        rgba16i -> ?GL_RGBA16I;
        rg8i -> ?GL_RG8I;
        r32f -> ?GL_R32F;
        compressed_signed_r11_eac -> ?GL_COMPRESSED_SIGNED_R11_EAC;
        compressed_srgb8_etc2 -> ?GL_COMPRESSED_SRGB8_ETC2;
        r8 -> ?GL_R8;
        rg32f -> ?GL_RG32F;
        depth_component16 -> ?GL_DEPTH_COMPONENT16;
        rg -> ?GL_RG;
        rg16ui -> ?GL_RG16UI;
        rgba32i -> ?GL_RGBA32I;
        rgb16i -> ?GL_RGB16I;
        compressed_signed_rg11_eac -> ?GL_COMPRESSED_SIGNED_RG11_EAC;
        compressed_rgb8_punchthrough_alpha1_etc2 -> ?GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2;
        compressed_r11_eac -> ?GL_COMPRESSED_R11_EAC;
        rgba32ui -> ?GL_RGBA32UI;
        rgb -> ?GL_RGB;
        rgba8_snorm -> ?GL_RGBA8_SNORM;
        rgba8i -> ?GL_RGBA8I;
        rg8ui -> ?GL_RG8UI;
        rgb32ui -> ?GL_RGB32UI;
        rgb16ui -> ?GL_RGB16UI;
        rg32ui -> ?GL_RG32UI;
        stencil_index8 -> ?GL_STENCIL_INDEX8;
        compressed_rg11_eac -> ?GL_COMPRESSED_RG11_EAC;
        rgb8 -> ?GL_RGB8;
        r32i -> ?GL_R32I
    end,
    NewTarget = case Target of
        texture_cube_map_positive_z -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
        texture_cube_map -> ?GL_TEXTURE_CUBE_MAP;
        texture_cube_map_negative_x -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
        texture_cube_map_positive_y -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
        texture_cube_map_negative_y -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
        renderbuffer -> ?GL_RENDERBUFFER;
        texture_3d -> ?GL_TEXTURE_3D;
        texture_cube_map_positive_x -> ?GL_TEXTURE_CUBE_MAP_POSITIVE_X;
        texture_cube_map_negative_z -> ?GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
        texture_2d_array -> ?GL_TEXTURE_2D_ARRAY;
        texture_2d -> ?GL_TEXTURE_2D;
        texture_2d_multisample -> ?GL_TEXTURE_2D_MULTISAMPLE
    end,

    ?CALL_RAW_FUNC(glCompressedTexImage2D_raw(NewTarget, Level, NewInternalFormat, Width, Height, Border, ImageSize, ImageData0)).

-doc """
Attach a single layer of a texture object as a logical buffer of a framebuffer object.

It implements the `glFramebufferTextureLayer` function

```
gl:framebuffer_texture_layer(framebuffer, color_attachment0, Texture, 0, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glFramebufferTextureLayer) for more information.
""".
-spec framebuffer_texture_layer(
    Target :: framebuffer_target(),
    Attachment :: framebuffer_attachment(),
    Texture :: texture(),
    Level :: gl:int(),
    Layer :: gl:int()
) -> ok | {error, atom()}.
framebuffer_texture_layer(Target, Attachment, Texture, Level, Layer) ->
    NewAttachment = case Attachment of
        stencil_attachment -> ?GL_STENCIL_ATTACHMENT;
        color_attachment14 -> ?GL_COLOR_ATTACHMENT14;
        color_attachment24 -> ?GL_COLOR_ATTACHMENT24;
        color_attachment30 -> ?GL_COLOR_ATTACHMENT30;
        color_attachment28 -> ?GL_COLOR_ATTACHMENT28;
        depth_attachment -> ?GL_DEPTH_ATTACHMENT;
        color_attachment31 -> ?GL_COLOR_ATTACHMENT31;
        color_attachment3 -> ?GL_COLOR_ATTACHMENT3;
        color_attachment27 -> ?GL_COLOR_ATTACHMENT27;
        color_attachment10 -> ?GL_COLOR_ATTACHMENT10;
        depth_stencil_attachment -> ?GL_DEPTH_STENCIL_ATTACHMENT;
        color_attachment1 -> ?GL_COLOR_ATTACHMENT1;
        color_attachment20 -> ?GL_COLOR_ATTACHMENT20;
        color_attachment15 -> ?GL_COLOR_ATTACHMENT15;
        color_attachment8 -> ?GL_COLOR_ATTACHMENT8;
        color_attachment26 -> ?GL_COLOR_ATTACHMENT26;
        color_attachment9 -> ?GL_COLOR_ATTACHMENT9;
        color_attachment18 -> ?GL_COLOR_ATTACHMENT18;
        color_attachment4 -> ?GL_COLOR_ATTACHMENT4;
        color_attachment12 -> ?GL_COLOR_ATTACHMENT12;
        color_attachment7 -> ?GL_COLOR_ATTACHMENT7;
        color_attachment17 -> ?GL_COLOR_ATTACHMENT17;
        color_attachment0 -> ?GL_COLOR_ATTACHMENT0;
        color_attachment23 -> ?GL_COLOR_ATTACHMENT23;
        color_attachment25 -> ?GL_COLOR_ATTACHMENT25;
        color_attachment11 -> ?GL_COLOR_ATTACHMENT11;
        color_attachment5 -> ?GL_COLOR_ATTACHMENT5;
        color_attachment22 -> ?GL_COLOR_ATTACHMENT22;
        color_attachment19 -> ?GL_COLOR_ATTACHMENT19;
        color_attachment13 -> ?GL_COLOR_ATTACHMENT13;
        color_attachment29 -> ?GL_COLOR_ATTACHMENT29;
        color_attachment6 -> ?GL_COLOR_ATTACHMENT6;
        color_attachment21 -> ?GL_COLOR_ATTACHMENT21;
        color_attachment16 -> ?GL_COLOR_ATTACHMENT16;
        color_attachment2 -> ?GL_COLOR_ATTACHMENT2
    end,
    NewTarget = case Target of
        read_framebuffer -> ?GL_READ_FRAMEBUFFER;
        framebuffer -> ?GL_FRAMEBUFFER;
        draw_framebuffer -> ?GL_DRAW_FRAMEBUFFER
    end,

    ?CALL_RAW_FUNC(glFramebufferTextureLayer_raw(NewTarget, NewAttachment, Texture, Level, Layer)).

-doc """
Launch one or more compute work groups using parameters stored in a buffer.

It implements the `glDispatchComputeIndirect` function

```
gl:dispatch_compute_indirect(0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDispatchComputeIndirect) for more information.
""".
-spec dispatch_compute_indirect(Indirect :: gl:intptr()) -> ok | {error, atom()}.
dispatch_compute_indirect(Indirect) ->

    ?CALL_RAW_FUNC(glDispatchComputeIndirect_raw(Indirect)).

-doc """
Specify whether front- or back-facing facets can be culled.

It implements the `glCullFace` function

```
gl:cull_face(front_and_back).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glCullFace) for more information.
""".
-spec cull_face(Mode :: triangle_face()) -> ok | {error, atom()}.
cull_face(Mode) ->
    NewMode = case Mode of
        front_and_back -> ?GL_FRONT_AND_BACK;
        back -> ?GL_BACK;
        front -> ?GL_FRONT
    end,

    ?CALL_RAW_FUNC(glCullFace_raw(NewMode)).

-doc """
Render indexed primitives using command parameters from the bound draw indirect buffer.

It implements the `glDrawElementsIndirect` function

```
ok = gl:draw_elements_indirect(points, unsigned_byte, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDrawElementsIndirect) for more information.
""".
-spec draw_elements_indirect(
    Mode :: primitive_type(),
    Type :: draw_elements_type(),
    Offset :: gl:offset()
) -> ok | {error, atom()}.
draw_elements_indirect(Mode, Type, Offset) ->
    NewType = case Type of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        unsigned_byte -> ?GL_UNSIGNED_BYTE
    end,
    NewMode = case Mode of
        triangles -> ?GL_TRIANGLES;
        triangle_strip -> ?GL_TRIANGLE_STRIP;
        line_strip -> ?GL_LINE_STRIP;
        lines -> ?GL_LINES;
        triangle_fan -> ?GL_TRIANGLE_FAN;
        points -> ?GL_POINTS;
        line_loop -> ?GL_LINE_LOOP
    end,

    ?CALL_RAW_FUNC(glDrawElementsIndirect_raw(NewMode, NewType, Offset)).

-doc """
Return the maximum number of vertex uniform vectors.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_vertex_uniform_vectors().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_vertex_uniform_vectors() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_vertex_uniform_vectors() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_VERTEX_UNIFORM_VECTORS)).

-doc """
Installs a program object as part of current rendering state.

It implements the `glUseProgram` function

```
ok = gl:use_program(Program).
ok = gl:use_program(none).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glUseProgram) for more information.
""".
-spec use_program(Program :: program() | none) -> ok | {error, atom()}.
use_program(Program) ->
    NewProgram = case Program of
        none -> 0;
        Program0 when is_integer(Program0), Program0 > 0 -> Program0
    end,

    ?CALL_RAW_FUNC(glUseProgram_raw(NewProgram)).

-doc """
Return the maximum number of fragment uniform blocks.

It implements the `glGetIntegerv` function

```
{ok, Count} = gl:get_max_fragment_uniform_blocks().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_max_fragment_uniform_blocks() -> {ok, Count :: gl:int()} | {error, atom()}.
get_max_fragment_uniform_blocks() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_MAX_FRAGMENT_UNIFORM_BLOCKS)).

-doc """
Bind a sampler object to a texture unit.

It implements the `glBindSampler` function

```
gl:bind_sampler(0, Sampler).
gl:bind_sampler(0, none).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindSampler) for more information.
""".
-spec bind_sampler(
    Unit :: gl:uint(),
    Sampler :: sampler() | none
) -> ok | {error, atom()}.
bind_sampler(Unit, Sampler) ->
    NewSampler = case Sampler of
        none -> 0;
        Sampler0 when is_integer(Sampler0), Sampler0 > 0 -> Sampler0
    end,

    ?CALL_RAW_FUNC(glBindSampler_raw(Unit, NewSampler)).

-doc """
Read a block of pixels from the frame buffer.

It implements the `glReadPixels` function

```
{ok, Pixels} = gl:read_pixels(0, 0, 1, 1, rgba, unsigned_byte, 4).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glReadPixels) for more information.
""".
-spec read_pixels(
    X :: gl:int(),
    Y :: gl:int(),
    Width :: gl:sizei(),
    Height :: gl:sizei(),
    Format :: pixel_format(),
    Type :: pixel_type(),
    PixelsSize :: non_neg_integer()
) -> {ok, Pixels :: binary()} | {error, atom()}.
read_pixels(X, Y, Width, Height, Format, Type, PixelsSize) ->
    NewType = case Type of
        byte -> ?GL_BYTE;
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        unsigned_int -> ?GL_UNSIGNED_INT;
        int -> ?GL_INT;
        unsigned_short_4_4_4_4 -> ?GL_UNSIGNED_SHORT_4_4_4_4;
        unsigned_int_5_9_9_9_rev -> ?GL_UNSIGNED_INT_5_9_9_9_REV;
        float -> ?GL_FLOAT;
        unsigned_int_24_8 -> ?GL_UNSIGNED_INT_24_8;
        unsigned_byte -> ?GL_UNSIGNED_BYTE;
        unsigned_int_2_10_10_10_rev -> ?GL_UNSIGNED_INT_2_10_10_10_REV;
        unsigned_int_10f_11f_11f_rev -> ?GL_UNSIGNED_INT_10F_11F_11F_REV;
        unsigned_short_5_5_5_1 -> ?GL_UNSIGNED_SHORT_5_5_5_1;
        float_32_unsigned_int_24_8_rev -> ?GL_FLOAT_32_UNSIGNED_INT_24_8_REV;
        short -> ?GL_SHORT;
        unsigned_short_5_6_5 -> ?GL_UNSIGNED_SHORT_5_6_5;
        half_float -> ?GL_HALF_FLOAT
    end,
    NewFormat = case Format of
        unsigned_short -> ?GL_UNSIGNED_SHORT;
        rgba -> ?GL_RGBA;
        rg_integer -> ?GL_RG_INTEGER;
        stencil_index -> ?GL_STENCIL_INDEX;
        red_integer -> ?GL_RED_INTEGER;
        unsigned_int -> ?GL_UNSIGNED_INT;
        luminance_alpha -> ?GL_LUMINANCE_ALPHA;
        depth_component -> ?GL_DEPTH_COMPONENT;
        red -> ?GL_RED;
        green -> ?GL_GREEN;
        depth_stencil -> ?GL_DEPTH_STENCIL;
        alpha -> ?GL_ALPHA;
        blue -> ?GL_BLUE;
        rg -> ?GL_RG;
        rgb_integer -> ?GL_RGB_INTEGER;
        rgb -> ?GL_RGB;
        luminance -> ?GL_LUMINANCE;
        rgba_integer -> ?GL_RGBA_INTEGER
    end,

    ?CALL_RAW_FUNC(glReadPixels_raw(X, Y, Width, Height, NewFormat, NewType, PixelsSize)).

-doc """
Deletes a program object.

It implements the `glDeleteProgram` function

```
ok = gl:delete_program(Program).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glDeleteProgram) for more information.
""".
-spec delete_program(Program :: program()) -> ok | {error, atom()}.
delete_program(Program) ->

    ?CALL_RAW_FUNC(glDeleteProgram_raw(Program)).

-doc """
Return the current pack alignment.

It implements the `glGetIntegerv` function

```
{ok, Alignment} = gl:get_pack_alignment().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_pack_alignment() -> {ok, Alignment :: gl:int()} | {error, atom()}.
get_pack_alignment() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_PACK_ALIGNMENT)).

-doc """
Return the color number bound to a named fragment shader output variable.

It implements the `glGetFragDataLocation` function

```
{ok, Location} = gl:get_frag_data_location(Program, <<"frag_color">>).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetFragDataLocation) for more information.
""".
-spec get_frag_data_location(
    Program :: program(),
    Name :: iodata()
) -> {ok, Location :: gl:int()} | {error, atom()}.
get_frag_data_location(Program, Name) ->
    Name0 = iolist_to_binary(Name),

    ?CALL_RAW_FUNC(glGetFragDataLocation_raw(Program, Name0)).

-doc """
Return the location of a named uniform variable.

It implements the `glGetUniformLocation` function

```
{ok, Location} = gl:get_uniform_location(Program, [<<"u_">>, "color"]).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetUniformLocation) for more information.
""".
-spec get_uniform_location(
    Program :: program(),
    Name :: iodata()
) -> {ok, Location :: gl:int()} | {error, atom()}.
get_uniform_location(Program, Name) ->
    Name0 = iolist_to_binary(Name),

    ?CALL_RAW_FUNC(glGetUniformLocation_raw(Program, Name0)).

-doc """
Set a program object parameter.

It implements the `glProgramParameteri` function

```
gl:program_parameter(Program, program_binary_retrievable_hint, 0).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glProgramParameteri) for more information.
""".
-spec program_parameter(
    Program :: program(),
    ParamName :: program_parameter_p_name(),
    Value :: gl:int()
) -> ok | {error, atom()}.
program_parameter(Program, ParamName, Value) ->
    NewParamName = case ParamName of
        program_separable -> ?GL_PROGRAM_SEPARABLE;
        program_binary_retrievable_hint -> ?GL_PROGRAM_BINARY_RETRIEVABLE_HINT
    end,

    ?CALL_RAW_FUNC(glProgramParameteri_raw(Program, NewParamName, Value)).

-doc """
Return the maximum atomic-counter buffer size in bytes.

It implements the `glGetInteger64v` function

```
{ok, Size} = gl:get_max_atomic_counter_buffer_size().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetInteger64v) for more information.
""".
-spec get_max_atomic_counter_buffer_size() -> {ok, Size :: gl:int64()} | {error, atom()}.
get_max_atomic_counter_buffer_size() ->

    ?CALL_RAW_FUNC(glGetInteger64vInteger_raw(?GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE)).

-doc """
Return the current pack row length.

It implements the `glGetIntegerv` function

```
{ok, Length} = gl:get_pack_row_length().
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glGetIntegerv) for more information.
""".
-spec get_pack_row_length() -> {ok, Length :: gl:int()} | {error, atom()}.
get_pack_row_length() ->

    ?CALL_RAW_FUNC(glGetIntegervInteger_raw(?GL_PACK_ROW_LENGTH)).

-doc """
Bind a transform feedback object.

It implements the `glBindTransformFeedback` function

```
gl:bind_transform_feedback(transform_feedback, Feedback).
```

Consult the documentation of the underlying [OpenGL function](https://docs.gl/es3/glBindTransformFeedback) for more information.
""".
-spec bind_transform_feedback(
    Target :: transform_feedback_target(),
    Feedback :: transform_feedback()
) -> ok | {error, atom()}.
bind_transform_feedback(Target, Feedback) ->
    NewTarget = case Target of
        transform_feedback -> ?GL_TRANSFORM_FEEDBACK
    end,

    ?CALL_RAW_FUNC(glBindTransformFeedback_raw(NewTarget, Feedback)).


glDisable_raw(_Cap) ->
    erlang:nif_error(nif_library_not_loaded).

glMemoryBarrierByRegion_raw(_Barriers) ->
    erlang:nif_error(nif_library_not_loaded).

glSamplerParameterf_raw(_Sampler, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glSamplerParameterfv_raw(_Sampler, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glSamplerParameteri_raw(_Sampler, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glSamplerParameteriv_raw(_Sampler, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glGetIntegervInteger_raw(_PName) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramiv_raw(_Program, _PName) ->
    erlang:nif_error(nif_library_not_loaded).

glTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _Width, _Height, _Format, _Type, _Pixels) ->
    erlang:nif_error(nif_library_not_loaded).

glEnableVertexAttribArray_raw(_Index) ->
    erlang:nif_error(nif_library_not_loaded).

glClearStencil_raw(_Value) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramivInteger_raw(_Program, _PName) ->
    erlang:nif_error(nif_library_not_loaded).

glBindAttribLocation_raw(_Program, _Index, _Name) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribBinding_raw(_AttribIndex, _BindingIndex) ->
    erlang:nif_error(nif_library_not_loaded).

glTransformFeedbackVaryings_raw(_Program, _Varyings, _BufferMode) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramInfoLog_raw(_Program, _MaxLength) ->
    erlang:nif_error(nif_library_not_loaded).

glTexStorage2D_raw(_Target, _Levels, _InternalFormat, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramPipelineInfoLog_raw(_Pipeline, _MaxLength) ->
    erlang:nif_error(nif_library_not_loaded).

glGetBooleani_v_raw(_ParamName, _Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetShaderPrecisionFormat_raw(_ShaderType, _PrecisionType) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTransformFeedbackVarying_raw(_Program, _Index, _MaxLength) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteRenderbuffers_raw(_N, _Renderbuffers) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilOp_raw(_Fail, _ZFail, _ZPass) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI4i_raw(_Index, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribI4ui_raw(_Index, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glIsRenderbuffer_raw(_Renderbuffer) ->
    erlang:nif_error(nif_library_not_loaded).

glFlush_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glPauseTransformFeedback_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glIsQuery_raw(_Query) ->
    erlang:nif_error(nif_library_not_loaded).

glIsTransformFeedback_raw(_Feedback) ->
    erlang:nif_error(nif_library_not_loaded).

glReadBuffer_raw(_Source) ->
    erlang:nif_error(nif_library_not_loaded).

glGetInternalformativ_raw(_Target, _InternalFormat, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glCreateShader_raw(_Type) ->
    erlang:nif_error(nif_library_not_loaded).

glBindProgramPipeline_raw(_Pipeline) ->
    erlang:nif_error(nif_library_not_loaded).

glDrawElementsInstanced_raw(_Mode, _Count, _Type, _Offset, _InstanceCount) ->
    erlang:nif_error(nif_library_not_loaded).

glBindImageTexture_raw(_Unit, _Texture, _Level, _Layered, _Layer, _Access, _Format) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribPointer_raw(_Index, _Size, _Type, _Normalized, _Stride, _Offset) ->
    erlang:nif_error(nif_library_not_loaded).

glGetInteger64vValues_raw(_ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetInteger64vInteger_raw(_PName) ->
    erlang:nif_error(nif_library_not_loaded).

glDrawArraysInstanced_raw(_Mode, _First, _Count, _InstanceCount) ->
    erlang:nif_error(nif_library_not_loaded).

glDrawElements_raw(_Mode, _Count, _Type, _Offset) ->
    erlang:nif_error(nif_library_not_loaded).

glPolygonOffset_raw(_Factor, _Units) ->
    erlang:nif_error(nif_library_not_loaded).

glEndTransformFeedback_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glDrawRangeElements_raw(_Mode, _Start, _End, _Count, _Type, _Offset) ->
    erlang:nif_error(nif_library_not_loaded).

glActiveShaderProgram_raw(_Pipeline, _Program) ->
    erlang:nif_error(nif_library_not_loaded).

glGetShaderivInteger_raw(_Shader, _PName) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilMask_raw(_Mask) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramInterfaceiv_raw(_Program, _ProgramInterface, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramResourceName_raw(_Program, _ProgramInterface, _Index, _MaxLength) ->
    erlang:nif_error(nif_library_not_loaded).

glCopyBufferSubData_raw(_ReadTarget, _WriteTarget, _ReadOffset, _WriteOffset, _Size) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform1f_raw(_Program, _Location, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform1fv_raw(_Program, _Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform1i_raw(_Program, _Location, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform1iv_raw(_Program, _Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform1ui_raw(_Program, _Location, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform1uiv_raw(_Program, _Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform2f_raw(_Program, _Location, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform2fv_raw(_Program, _Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform2i_raw(_Program, _Location, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform2iv_raw(_Program, _Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform2ui_raw(_Program, _Location, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform2uiv_raw(_Program, _Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform3f_raw(_Program, _Location, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform3fv_raw(_Program, _Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform3i_raw(_Program, _Location, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform3iv_raw(_Program, _Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform3ui_raw(_Program, _Location, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform3uiv_raw(_Program, _Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform4f_raw(_Program, _Location, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform4fv_raw(_Program, _Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform4i_raw(_Program, _Location, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform4iv_raw(_Program, _Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform4ui_raw(_Program, _Location, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniform4uiv_raw(_Program, _Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glDisableVertexAttribArray_raw(_Index) ->
    erlang:nif_error(nif_library_not_loaded).

glClearDepthf_raw(_Depth) ->
    erlang:nif_error(nif_library_not_loaded).

glLinkProgram_raw(_Program) ->
    erlang:nif_error(nif_library_not_loaded).

glCompileShader_raw(_Shader) ->
    erlang:nif_error(nif_library_not_loaded).

glDetachShader_raw(_Program, _Shader) ->
    erlang:nif_error(nif_library_not_loaded).

glBufferData_raw(_Target, _Size, _Data, _Usage) ->
    erlang:nif_error(nif_library_not_loaded).

glGetUniformIndices_raw(_Program, _Names) ->
    erlang:nif_error(nif_library_not_loaded).

glAttachShader_raw(_Program, _Shader) ->
    erlang:nif_error(nif_library_not_loaded).

glGenerateMipmap_raw(_Target) ->
    erlang:nif_error(nif_library_not_loaded).

glTexParameterf_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glTexParameterfv_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glTexParameteriv_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glGetIntegervBoolean_raw(_PName) ->
    erlang:nif_error(nif_library_not_loaded).

glDrawBuffers_raw(_N, _Buffers) ->
    erlang:nif_error(nif_library_not_loaded).

glGetFramebufferParameteriv_raw(_Target, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glBindBufferBase_raw(_Target, _Index, _Buffer) ->
    erlang:nif_error(nif_library_not_loaded).

glGetIntegerv_raw(_PName) ->
    erlang:nif_error(nif_library_not_loaded).

glCheckFramebufferStatus_raw(_Target) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramPipelineivValues_raw(_Pipeline, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glIsProgram_raw(_Program) ->
    erlang:nif_error(nif_library_not_loaded).

glIsShader_raw(_Shader) ->
    erlang:nif_error(nif_library_not_loaded).

glGenTextures_raw(_Textures) ->
    erlang:nif_error(nif_library_not_loaded).

glGenRenderbuffers_raw(_Renderbuffers) ->
    erlang:nif_error(nif_library_not_loaded).

glShaderBinary_raw(_Shaders, _BinaryFormat, _Binary, _Length) ->
    erlang:nif_error(nif_library_not_loaded).

glGetActiveAttrib_raw(_Program, _Index, _MaxLength) ->
    erlang:nif_error(nif_library_not_loaded).

glValidateProgram_raw(_Program) ->
    erlang:nif_error(nif_library_not_loaded).

glBindVertexBuffer_raw(_BindingIndex, _Buffer, _Offset, _Stride) ->
    erlang:nif_error(nif_library_not_loaded).

glGetStringi_raw(_Name, _Index) ->
    erlang:nif_error(nif_library_not_loaded).

glTexSubImage3D_raw(_Target, _Level, _OffsetX, _OffsetY, _OffsetZ, _Width, _Height, _Depth, _Format, _Type, _Pixels) ->
    erlang:nif_error(nif_library_not_loaded).

glMemoryBarrier_raw(_Barriers) ->
    erlang:nif_error(nif_library_not_loaded).

glCopyTexImage2D_raw(_Target, _Level, _InternalFormat, _X, _Y, _Width, _Height, _Border) ->
    erlang:nif_error(nif_library_not_loaded).

glBindVertexArray_raw(_Array) ->
    erlang:nif_error(nif_library_not_loaded).

glFramebufferParameteri_raw(_Target, _ParamName, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glInvalidateSubFramebuffer_raw(_Target, _NumAttachments, _Attachments, _X, _Y, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glGetMultisamplefv_raw(_ParamName, _Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glBlitFramebuffer_raw(_SrcX0, _SrcY0, _SrcX1, _SrcY1, _DstX0, _DstY0, _DstX1, _DstY1, _Mask, _Filter) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilMaskSeparate_raw(_Face, _Mask) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribFormat_raw(_AttribIndex, _Size, _Type, _Normalized, _RelativeOffset) ->
    erlang:nif_error(nif_library_not_loaded).

glScissor_raw(_X, _Y, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glTexImage2D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Border, _Format, _Type, _Pixels) ->
    erlang:nif_error(nif_library_not_loaded).

glGetAttribLocation_raw(_Program, _Name) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteTransformFeedbacks_raw(_N, _Feedbacks) ->
    erlang:nif_error(nif_library_not_loaded).

glGetVertexAttribfv_raw(_Index, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetVertexAttribiv_raw(_Index, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetError_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glIsVertexArray_raw(_Array) ->
    erlang:nif_error(nif_library_not_loaded).

glBindTexture_raw(_Target, _Texture) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribIPointer_raw(_Index, _Size, _Type, _Stride, _Offset) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteShader_raw(_Shader) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTexLevelParameterfv_raw(_Target, _Level, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTexLevelParameteriv_raw(_Target, _Level, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glDepthRangef_raw(_Near, _Far) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1f_raw(_Location, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1fv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1i_raw(_Location, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1iv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1ui_raw(_Location, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform1uiv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2f_raw(_Location, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2fv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2i_raw(_Location, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2iv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2ui_raw(_Location, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform2uiv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3f_raw(_Location, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3fv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3i_raw(_Location, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3iv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3ui_raw(_Location, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform3uiv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4f_raw(_Location, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4fv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4i_raw(_Location, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4iv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4ui_raw(_Location, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glUniform4uiv_raw(_Location, _Count, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glGetIntegeri_v_raw(_ParamName, _Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilFunc_raw(_Function, _Ref, _Mask) ->
    erlang:nif_error(nif_library_not_loaded).

glClearBufferfv_raw(_Buffer, _DrawBuffer, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glClearBufferiv_raw(_Buffer, _DrawBuffer, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glClearBufferuiv_raw(_Buffer, _DrawBuffer, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glGenProgramPipelines_raw(_Pipelines) ->
    erlang:nif_error(nif_library_not_loaded).

glTexParameteri_raw(_Target, _ParameterName, _Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glDrawArrays_raw(_Mode, _First, _Count) ->
    erlang:nif_error(nif_library_not_loaded).

glFramebufferTexture2D_raw(_Target, _Attachment, _TextureTarget, _Texture, _Level) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteTextures_raw(_N, _Textures) ->
    erlang:nif_error(nif_library_not_loaded).

glInvalidateFramebuffer_raw(_Target, _NumAttachments, _Attachments) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribIFormat_raw(_AttribIndex, _Size, _Type, _RelativeOffset) ->
    erlang:nif_error(nif_library_not_loaded).

glLineWidth_raw(_Width) ->
    erlang:nif_error(nif_library_not_loaded).

glSampleMaski_raw(_MaskNumber, _Mask) ->
    erlang:nif_error(nif_library_not_loaded).

glDepthMask_raw(_Flag) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendEquationSeparate_raw(_ModeRGB, _ModeAlpha) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramResourceIndex_raw(_Program, _ProgramInterface, _Name) ->
    erlang:nif_error(nif_library_not_loaded).

glCopyTexSubImage3D_raw(_Target, _Level, _OffsetX, _OffsetY, _OffsetZ, _X, _Y, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glViewport_raw(_X, _Y, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glTexImage3D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Depth, _Border, _Format, _Type, _Pixels) ->
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _Width, _Height, _Format, _ImageSize, _ImageData) ->
    erlang:nif_error(nif_library_not_loaded).

glGetQueryiv_raw(_Target, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glBindBuffer_raw(_Target, _Buffer) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformBlockBinding_raw(_Program, _UniformBlockIndex, _UniformBlockBinding) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix2fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix2x3fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix2x4fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix3fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix3x2fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix3x4fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix4fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix4x2fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glUniformMatrix4x3fv_raw(_Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexBindingDivisor_raw(_Index, _Divisor) ->
    erlang:nif_error(nif_library_not_loaded).

glGetShaderSource_raw(_Shader, _MaxLength) ->
    erlang:nif_error(nif_library_not_loaded).

glSampleCoverage_raw(_Value, _Invert) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilOpSeparate_raw(_Face, _StencilFail, _DepthPassFail, _DepthPassPass) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramPipelineivInteger_raw(_Pipeline, _PName) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramResourceLocation_raw(_Program, _ProgramInterface, _Name) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramBinary_raw(_Program, _BinaryFormat, _Binary, _Length) ->
    erlang:nif_error(nif_library_not_loaded).

glClearBufferfi_raw(_Buffer, _DrawBuffer, _Depth, _Stencil) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendFunc_raw(_SourceFactor, _DestinationFactor) ->
    erlang:nif_error(nif_library_not_loaded).

glUseProgramStages_raw(_Pipeline, _Stages, _Program) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteFramebuffers_raw(_N, _Framebuffers) ->
    erlang:nif_error(nif_library_not_loaded).

glHint_raw(_Target, _Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glGetBooleanv_raw(_ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glBeginTransformFeedback_raw(_PrimitiveMode) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendColor_raw(_Red, _Green, _Blue, _Alpha) ->
    erlang:nif_error(nif_library_not_loaded).

glTexStorage2DMultisample_raw(_Target, _Samples, _InternalFormat, _Width, _Height, _FixedSampleLocations) ->
    erlang:nif_error(nif_library_not_loaded).

glIsProgramPipeline_raw(_Pipeline) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteBuffers_raw(_N, _Buffers) ->
    erlang:nif_error(nif_library_not_loaded).

glGetFramebufferAttachmentParameteriv_raw(_Target, _Attachment, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glBeginQuery_raw(_Target, _Query) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniformMatrix2fv_raw(_Program, _Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniformMatrix2x3fv_raw(_Program, _Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniformMatrix2x4fv_raw(_Program, _Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniformMatrix3fv_raw(_Program, _Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniformMatrix3x2fv_raw(_Program, _Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniformMatrix3x4fv_raw(_Program, _Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniformMatrix4fv_raw(_Program, _Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniformMatrix4x2fv_raw(_Program, _Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramUniformMatrix4x3fv_raw(_Program, _Location, _Count, _Transpose, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glReleaseShaderCompiler_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glPixelStorei_raw(_Name, _Param) ->
    erlang:nif_error(nif_library_not_loaded).

glEndQuery_raw(_Target) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramBinary_raw(_Program, _Binary) ->
    erlang:nif_error(nif_library_not_loaded).

glGetActiveUniformsiv_raw(_Program, _UniformIndices, _ParamName) ->
    erlang:nif_error(nif_library_not_loaded).

glShaderSource_raw(_Shader, _Source) ->
    erlang:nif_error(nif_library_not_loaded).

glClear_raw(_Mask) ->
    erlang:nif_error(nif_library_not_loaded).

glFramebufferRenderbuffer_raw(_Target, _Attachment, _RenderbufferTarget, _Renderbuffer) ->
    erlang:nif_error(nif_library_not_loaded).

glValidateProgramPipeline_raw(_Pipeline) ->
    erlang:nif_error(nif_library_not_loaded).

glDrawArraysIndirect_raw(_Mode, _Offset) ->
    erlang:nif_error(nif_library_not_loaded).

glGetBufferParameteri64v_raw(_Target, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetBufferParameteriv_raw(_Target, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glCopyTexSubImage2D_raw(_Target, _Level, _OffsetX, _OffsetY, _X, _Y, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glGetActiveUniform_raw(_Program, _Index, _MaxLength) ->
    erlang:nif_error(nif_library_not_loaded).

glRenderbufferStorage_raw(_Target, _InternalFormat, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glStencilFuncSeparate_raw(_Face, _Function, _Ref, _Mask) ->
    erlang:nif_error(nif_library_not_loaded).

glGetIntegervValues_raw(_ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetActiveUniformBlockiv_raw(_Program, _UniformBlockIndex, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGenVertexArrays_raw(_Arrays) ->
    erlang:nif_error(nif_library_not_loaded).

glDepthFunc_raw(_Function) ->
    erlang:nif_error(nif_library_not_loaded).

glGenFramebuffers_raw(_Framebuffers) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttribDivisor_raw(_Index, _Divisor) ->
    erlang:nif_error(nif_library_not_loaded).

glGetVertexAttribIiv_raw(_Index, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetVertexAttribIuiv_raw(_Index, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetFloatv_raw(_ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glTexStorage3D_raw(_Target, _Levels, _InternalFormat, _Width, _Height, _Depth) ->
    erlang:nif_error(nif_library_not_loaded).

glColorMask_raw(_Red, _Green, _Blue, _Alpha) ->
    erlang:nif_error(nif_library_not_loaded).

glGetAttachedShaders_raw(_Program, _MaxCount) ->
    erlang:nif_error(nif_library_not_loaded).

glRenderbufferStorageMultisample_raw(_Target, _Samples, _InternalFormat, _Width, _Height) ->
    erlang:nif_error(nif_library_not_loaded).

glIsTexture_raw(_Texture) ->
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexImage3D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Depth, _Border, _ImageSize, _ImageData) ->
    erlang:nif_error(nif_library_not_loaded).

glIsFramebuffer_raw(_Framebuffer) ->
    erlang:nif_error(nif_library_not_loaded).

glGenSamplers_raw(_Samplers) ->
    erlang:nif_error(nif_library_not_loaded).

glGenTransformFeedbacks_raw(_Feedbacks) ->
    erlang:nif_error(nif_library_not_loaded).

glIsSampler_raw(_Sampler) ->
    erlang:nif_error(nif_library_not_loaded).

glFrontFace_raw(_Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendEquation_raw(_Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glGetString_raw(_Name) ->
    erlang:nif_error(nif_library_not_loaded).

glGetShaderInfoLog_raw(_Shader, _MaxLength) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteQueries_raw(_N, _Queries) ->
    erlang:nif_error(nif_library_not_loaded).

glGenQueries_raw(_Queries) ->
    erlang:nif_error(nif_library_not_loaded).

glEnable_raw(_Cap) ->
    erlang:nif_error(nif_library_not_loaded).

glCreateShaderProgramv_raw(_ShaderType, _Sources) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteProgramPipelines_raw(_N, _Pipelines) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTexParameterfv_raw(_Target, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetTexParameteriv_raw(_Target, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glIsBuffer_raw(_Buffer) ->
    erlang:nif_error(nif_library_not_loaded).

glBlendFuncSeparate_raw(_SourceRGB, _DestinationRGB, _SourceAlpha, _DestinationAlpha) ->
    erlang:nif_error(nif_library_not_loaded).

glBindFramebuffer_raw(_Target, _Framebuffer) ->
    erlang:nif_error(nif_library_not_loaded).

glBindRenderbuffer_raw(_Target, _Renderbuffer) ->
    erlang:nif_error(nif_library_not_loaded).

glClearColor_raw(_Red, _Green, _Blue, _Alpha) ->
    erlang:nif_error(nif_library_not_loaded).

glGetUniformBlockIndex_raw(_Program, _Name) ->
    erlang:nif_error(nif_library_not_loaded).

glIsEnabled_raw(_Capability) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteSamplers_raw(_N, _Samplers) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib1f_raw(_Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib2f_raw(_Index, _V1, _V2) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib3f_raw(_Index, _V1, _V2, _V3) ->
    erlang:nif_error(nif_library_not_loaded).

glVertexAttrib4f_raw(_Index, _V1, _V2, _V3, _V4) ->
    erlang:nif_error(nif_library_not_loaded).

glDispatchCompute_raw(_NumGroupsX, _NumGroupsY, _NumGroupsZ) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramResourceiv_raw(_Program, _ProgramInterface, _Index, _Properties, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetProgramPipelineiv_raw(_Pipeline, _PName) ->
    erlang:nif_error(nif_library_not_loaded).

glGenBuffers_raw(_Buffers) ->
    erlang:nif_error(nif_library_not_loaded).

glGetUniformfv_raw(_Program, _Location, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetUniformiv_raw(_Program, _Location, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetUniformuiv_raw(_Program, _Location, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glBufferSubData_raw(_Target, _Offset, _Size, _Data) ->
    erlang:nif_error(nif_library_not_loaded).

glGetSamplerParameterfv_raw(_Sampler, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glGetSamplerParameteriv_raw(_Sampler, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glActiveTexture_raw(_Texture) ->
    erlang:nif_error(nif_library_not_loaded).

glGetShaderiv_raw(_Shader, _PName) ->
    erlang:nif_error(nif_library_not_loaded).

glResumeTransformFeedback_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glGetInteger64i_v_raw(_ParamName, _Index, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glFinish_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glGetRenderbufferParameteriv_raw(_Target, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteVertexArrays_raw(_N, _Arrays) ->
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexSubImage3D_raw(_Target, _Level, _OffsetX, _OffsetY, _OffsetZ, _Width, _Height, _Depth, _Format, _ImageSize, _ImageData) ->
    erlang:nif_error(nif_library_not_loaded).

glGetQueryObjectuiv_raw(_Query, _ParamName, _Values) ->
    erlang:nif_error(nif_library_not_loaded).

glBindBufferRange_raw(_Target, _Index, _Buffer, _Offset, _Size) ->
    erlang:nif_error(nif_library_not_loaded).

glCreateProgram_raw() ->
    erlang:nif_error(nif_library_not_loaded).

glGetActiveUniformBlockName_raw(_Program, _UniformBlockIndex, _MaxLength) ->
    erlang:nif_error(nif_library_not_loaded).

glCompressedTexImage2D_raw(_Target, _Level, _InternalFormat, _Width, _Height, _Border, _ImageSize, _ImageData) ->
    erlang:nif_error(nif_library_not_loaded).

glFramebufferTextureLayer_raw(_Target, _Attachment, _Texture, _Level, _Layer) ->
    erlang:nif_error(nif_library_not_loaded).

glDispatchComputeIndirect_raw(_Indirect) ->
    erlang:nif_error(nif_library_not_loaded).

glCullFace_raw(_Mode) ->
    erlang:nif_error(nif_library_not_loaded).

glDrawElementsIndirect_raw(_Mode, _Type, _Offset) ->
    erlang:nif_error(nif_library_not_loaded).

glUseProgram_raw(_Program) ->
    erlang:nif_error(nif_library_not_loaded).

glBindSampler_raw(_Unit, _Sampler) ->
    erlang:nif_error(nif_library_not_loaded).

glReadPixels_raw(_X, _Y, _Width, _Height, _Format, _Type, _Pixels) ->
    erlang:nif_error(nif_library_not_loaded).

glDeleteProgram_raw(_Program) ->
    erlang:nif_error(nif_library_not_loaded).

glGetFragDataLocation_raw(_Program, _Name) ->
    erlang:nif_error(nif_library_not_loaded).

glGetUniformLocation_raw(_Program, _Name) ->
    erlang:nif_error(nif_library_not_loaded).

glProgramParameteri_raw(_Program, _ParamName, _Value) ->
    erlang:nif_error(nif_library_not_loaded).

glBindTransformFeedback_raw(_Target, _Feedback) ->
    erlang:nif_error(nif_library_not_loaded).

