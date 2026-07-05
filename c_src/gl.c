// This file is generated. Do not edit!

#include <string.h>
#include <stdio.h>
#include <limits.h>
#include <stdint.h>
#include <pthread.h>
#include <dlfcn.h>
#include <erl_nif.h>
#include <EGL/egl.h>
#include <GLES3/gl32.h>

static ERL_NIF_TERM beam_atom_color_attachment24;
static ERL_NIF_TERM beam_atom_texture11;
static ERL_NIF_TERM beam_atom_uniform_buffer_start;
static ERL_NIF_TERM beam_atom_texture_min_filter;
static ERL_NIF_TERM beam_atom_front_face;
static ERL_NIF_TERM beam_atom_num_sample_counts;
static ERL_NIF_TERM beam_atom_low_float;
static ERL_NIF_TERM beam_atom_r32ui;
static ERL_NIF_TERM beam_atom_generate_mipmap_hint;
static ERL_NIF_TERM beam_atom_vertex_binding_offset;
static ERL_NIF_TERM beam_atom_uniform_block_active_uniform_indices;
static ERL_NIF_TERM beam_atom_one;
static ERL_NIF_TERM beam_atom_unsigned_int_image_2d_array;
static ERL_NIF_TERM beam_atom_buffer_binding;
static ERL_NIF_TERM beam_atom_triangle_fan;
static ERL_NIF_TERM beam_atom_out_of_memory;
static ERL_NIF_TERM beam_atom_red_bits;
static ERL_NIF_TERM beam_atom_depth_attachment;
static ERL_NIF_TERM beam_atom_one_minus_dst_color;
static ERL_NIF_TERM beam_atom_unsigned_int_24_8;
static ERL_NIF_TERM beam_atom_blend_equation;
static ERL_NIF_TERM beam_atom_sampler_2d_array;
static ERL_NIF_TERM beam_atom_texture13;
static ERL_NIF_TERM beam_atom_framebuffer_attachment_texture_cube_map_face;
static ERL_NIF_TERM beam_atom_func_subtract;
static ERL_NIF_TERM beam_atom_nicest;
static ERL_NIF_TERM beam_atom_blend_equation_alpha;
static ERL_NIF_TERM beam_atom_stencil_attachment;
static ERL_NIF_TERM beam_atom_texture15;
static ERL_NIF_TERM beam_atom_sampler_2d_multisample;
static ERL_NIF_TERM beam_atom_replace;
static ERL_NIF_TERM beam_atom_texture_cube_map;
static ERL_NIF_TERM beam_atom_depth_component16;
static ERL_NIF_TERM beam_atom_copy_read_buffer;
static ERL_NIF_TERM beam_atom_major_version;
static ERL_NIF_TERM beam_atom_unpack_skip_rows;
static ERL_NIF_TERM beam_atom_stencil_test;
static ERL_NIF_TERM beam_atom_never;
static ERL_NIF_TERM beam_atom_vertex_shader;
static ERL_NIF_TERM beam_atom_max_vertex_uniform_blocks;
static ERL_NIF_TERM beam_atom_unsigned_int_sampler_cube;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_stride;
static ERL_NIF_TERM beam_atom_texture3;
static ERL_NIF_TERM beam_atom_read_buffer;
static ERL_NIF_TERM beam_atom_vertex_binding_divisor;
static ERL_NIF_TERM beam_atom_pack_skip_pixels;
static ERL_NIF_TERM beam_atom_compressed_signed_rg11_eac;
static ERL_NIF_TERM beam_atom_fixed;
static ERL_NIF_TERM beam_atom_color_attachment28;
static ERL_NIF_TERM beam_atom_transform_feedback_buffer_binding;
static ERL_NIF_TERM beam_atom_uniform_name_length;
static ERL_NIF_TERM beam_atom_color_attachment17;
static ERL_NIF_TERM beam_atom_framebuffer_attachment_blue_size;
static ERL_NIF_TERM beam_atom_color_attachment9;
static ERL_NIF_TERM beam_atom_depth_buffer_bit;
static ERL_NIF_TERM beam_atom_framebuffer_attachment_red_size;
static ERL_NIF_TERM beam_atom_polygon_offset_fill;
static ERL_NIF_TERM beam_atom_max_server_wait_timeout;
static ERL_NIF_TERM beam_atom_texture_fetch_barrier_bit;
static ERL_NIF_TERM beam_atom_uniform_matrix_stride;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_barrier_bit;
static ERL_NIF_TERM beam_atom_front_and_back;
static ERL_NIF_TERM beam_atom_pixel_unpack_buffer_binding;
static ERL_NIF_TERM beam_atom_pack_row_length;
static ERL_NIF_TERM beam_atom_referenced_by_fragment_shader;
static ERL_NIF_TERM beam_atom_decr_wrap;
static ERL_NIF_TERM beam_atom_shader_storage_block;
static ERL_NIF_TERM beam_atom_unsigned_int_5_9_9_9_rev;
static ERL_NIF_TERM beam_atom_stencil_back_writemask;
static ERL_NIF_TERM beam_atom_array_buffer_binding;
static ERL_NIF_TERM beam_atom_num_active_variables;
static ERL_NIF_TERM beam_atom_polygon_offset_units;
static ERL_NIF_TERM beam_atom_num_program_binary_formats;
static ERL_NIF_TERM beam_atom_min;
static ERL_NIF_TERM beam_atom_max_sample_mask_words;
static ERL_NIF_TERM beam_atom_int_sampler_cube;
static ERL_NIF_TERM beam_atom_texture_wrap_r;
static ERL_NIF_TERM beam_atom_src_color;
static ERL_NIF_TERM beam_atom_linear_mipmap_nearest;
static ERL_NIF_TERM beam_atom_read_framebuffer_binding;
static ERL_NIF_TERM beam_atom_atomic_counter_barrier_bit;
static ERL_NIF_TERM beam_atom_texture1;
static ERL_NIF_TERM beam_atom_pixel_buffer_barrier_bit;
static ERL_NIF_TERM beam_atom_max_vertex_output_components;
static ERL_NIF_TERM beam_atom_dispatch_indirect_buffer;
static ERL_NIF_TERM beam_atom_rgb;
static ERL_NIF_TERM beam_atom_color_clear_value;
static ERL_NIF_TERM beam_atom_color_attachment0;
static ERL_NIF_TERM beam_atom_unsigned_short;
static ERL_NIF_TERM beam_atom_blue_bits;
static ERL_NIF_TERM beam_atom_renderbuffer_height;
static ERL_NIF_TERM beam_atom_max_fragment_input_components;
static ERL_NIF_TERM beam_atom_float_vec4;
static ERL_NIF_TERM beam_atom_lines;
static ERL_NIF_TERM beam_atom_buffer_map_offset;
static ERL_NIF_TERM beam_atom_vertex_shader_bit;
static ERL_NIF_TERM beam_atom_element_array_barrier_bit;
static ERL_NIF_TERM beam_atom_max_draw_buffers;
static ERL_NIF_TERM beam_atom_minor_version;
static ERL_NIF_TERM beam_atom_luminance_alpha;
static ERL_NIF_TERM beam_atom_unsigned_short_5_6_5;
static ERL_NIF_TERM beam_atom_scissor_box;
static ERL_NIF_TERM beam_atom_unsigned_int_10f_11f_11f_rev;
static ERL_NIF_TERM beam_atom_max_renderbuffer_size;
static ERL_NIF_TERM beam_atom_mirrored_repeat;
static ERL_NIF_TERM beam_atom_short;
static ERL_NIF_TERM beam_atom_max_fragment_atomic_counters;
static ERL_NIF_TERM beam_atom_atomic_counter_buffer;
static ERL_NIF_TERM beam_atom_rg8i;
static ERL_NIF_TERM beam_atom_int_sampler_2d;
static ERL_NIF_TERM beam_atom_pixel_unpack_buffer;
static ERL_NIF_TERM beam_atom_renderbuffer_internal_format;
static ERL_NIF_TERM beam_atom_color_buffer_bit;
static ERL_NIF_TERM beam_atom_rgb9_e5;
static ERL_NIF_TERM beam_atom_texture2;
static ERL_NIF_TERM beam_atom_color_attachment29;
static ERL_NIF_TERM beam_atom_max_depth_texture_samples;
static ERL_NIF_TERM beam_atom_rgba32i;
static ERL_NIF_TERM beam_atom_rg8_snorm;
static ERL_NIF_TERM beam_atom_green_bits;
static ERL_NIF_TERM beam_atom_texture30;
static ERL_NIF_TERM beam_atom_compressed_signed_r11_eac;
static ERL_NIF_TERM beam_atom_green;
static ERL_NIF_TERM beam_atom_texture_max_lod;
static ERL_NIF_TERM beam_atom_float_mat4x3;
static ERL_NIF_TERM beam_atom_transform_feedback_buffer_start;
static ERL_NIF_TERM beam_atom_src_alpha;
static ERL_NIF_TERM beam_atom_buffer_size;
static ERL_NIF_TERM beam_atom_texture_height;
static ERL_NIF_TERM beam_atom_transform_feedback_varying;
static ERL_NIF_TERM beam_atom_alpha_bits;
static ERL_NIF_TERM beam_atom_renderbuffer_samples;
static ERL_NIF_TERM beam_atom_depth_stencil_attachment;
static ERL_NIF_TERM beam_atom_max_varying_components;
static ERL_NIF_TERM beam_atom_color_attachment20;
static ERL_NIF_TERM beam_atom_texture_binding_cube_map;
static ERL_NIF_TERM beam_atom_unsigned_int_image_cube;
static ERL_NIF_TERM beam_atom_depth_stencil;
static ERL_NIF_TERM beam_atom_vertex_binding_stride;
static ERL_NIF_TERM beam_atom_depth_bits;
static ERL_NIF_TERM beam_atom_shader_image_access_barrier_bit;
static ERL_NIF_TERM beam_atom_rgb8i;
static ERL_NIF_TERM beam_atom_extensions;
static ERL_NIF_TERM beam_atom_unpack_skip_images;
static ERL_NIF_TERM beam_atom_rg8;
static ERL_NIF_TERM beam_atom_program_output;
static ERL_NIF_TERM beam_atom_rgba16f;
static ERL_NIF_TERM beam_atom_texture7;
static ERL_NIF_TERM beam_atom_depth32f_stencil8;
static ERL_NIF_TERM beam_atom_aliased_line_width_range;
static ERL_NIF_TERM beam_atom_max_vertex_uniform_vectors;
static ERL_NIF_TERM beam_atom_texture23;
static ERL_NIF_TERM beam_atom_primitive_restart_fixed_index;
static ERL_NIF_TERM beam_atom_texture_mag_filter;
static ERL_NIF_TERM beam_atom_renderbuffer_alpha_size;
static ERL_NIF_TERM beam_atom_vertex_attrib_relative_offset;
static ERL_NIF_TERM beam_atom_points;
static ERL_NIF_TERM beam_atom_unpack_skip_pixels;
static ERL_NIF_TERM beam_atom_shader_storage_buffer_start;
static ERL_NIF_TERM beam_atom_element_array_buffer;
static ERL_NIF_TERM beam_atom_type;
static ERL_NIF_TERM beam_atom_max_combined_fragment_uniform_components;
static ERL_NIF_TERM beam_atom_texture_swizzle_g;
static ERL_NIF_TERM beam_atom_color;
static ERL_NIF_TERM beam_atom_buffer_mapped;
static ERL_NIF_TERM beam_atom_texture_3d;
static ERL_NIF_TERM beam_atom_unsigned_byte;
static ERL_NIF_TERM beam_atom_stencil_value_mask;
static ERL_NIF_TERM beam_atom_nearest_mipmap_nearest;
static ERL_NIF_TERM beam_atom_stencil_clear_value;
static ERL_NIF_TERM beam_atom_int_image_2d_array;
static ERL_NIF_TERM beam_atom_texture_swizzle_r;
static ERL_NIF_TERM beam_atom_blend_src_rgb;
static ERL_NIF_TERM beam_atom_uniform_block_binding;
static ERL_NIF_TERM beam_atom_max_compute_atomic_counters;
static ERL_NIF_TERM beam_atom_copy_write_buffer;
static ERL_NIF_TERM beam_atom_depth_component;
static ERL_NIF_TERM beam_atom_sample_coverage_invert;
static ERL_NIF_TERM beam_atom_rg16ui;
static ERL_NIF_TERM beam_atom_transform_feedback_buffer_size;
static ERL_NIF_TERM beam_atom_unsigned_int_2_10_10_10_rev;
static ERL_NIF_TERM beam_atom_texture9;
static ERL_NIF_TERM beam_atom_rg16f;
static ERL_NIF_TERM beam_atom_implementation_color_read_format;
static ERL_NIF_TERM beam_atom_bool_vec3;
static ERL_NIF_TERM beam_atom_unsigned_int_image_2d;
static ERL_NIF_TERM beam_atom_framebuffer_attachment_component_type;
static ERL_NIF_TERM beam_atom_stencil_pass_depth_pass;
static ERL_NIF_TERM beam_atom_color_attachment31;
static ERL_NIF_TERM beam_atom_unsigned_short_5_5_5_1;
static ERL_NIF_TERM beam_atom_blend_equation_rgb;
static ERL_NIF_TERM beam_atom_image_2d_array;
static ERL_NIF_TERM beam_atom_one_minus_constant_color;
static ERL_NIF_TERM beam_atom_unsigned_int_sampler_3d;
static ERL_NIF_TERM beam_atom_atomic_counter_buffer_index;
static ERL_NIF_TERM beam_atom_uniform_block_name_length;
static ERL_NIF_TERM beam_atom_half_float;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_divisor;
static ERL_NIF_TERM beam_atom_rasterizer_discard;
static ERL_NIF_TERM beam_atom_framebuffer_default_samples;
static ERL_NIF_TERM beam_atom_greater;
static ERL_NIF_TERM beam_atom_max_program_texel_offset;
static ERL_NIF_TERM beam_atom_query_result;
static ERL_NIF_TERM beam_atom_stencil_index8;
static ERL_NIF_TERM beam_atom_texture_min_lod;
static ERL_NIF_TERM beam_atom_framebuffer_attachment_object_name;
static ERL_NIF_TERM beam_atom_max_compute_work_group_invocations;
static ERL_NIF_TERM beam_atom_color_attachment15;
static ERL_NIF_TERM beam_atom_max_fragment_uniform_components;
static ERL_NIF_TERM beam_atom_linear_mipmap_linear;
static ERL_NIF_TERM beam_atom_r32f;
static ERL_NIF_TERM beam_atom_dst_color;
static ERL_NIF_TERM beam_atom_framebuffer_unsupported;
static ERL_NIF_TERM beam_atom_color_attachment27;
static ERL_NIF_TERM beam_atom_color_attachment21;
static ERL_NIF_TERM beam_atom_program_binary_retrievable_hint;
static ERL_NIF_TERM beam_atom_buffer_access_flags;
static ERL_NIF_TERM beam_atom_blue;
static ERL_NIF_TERM beam_atom_texture_wrap_s;
static ERL_NIF_TERM beam_atom_texture_2d;
static ERL_NIF_TERM beam_atom_high_int;
static ERL_NIF_TERM beam_atom_color_attachment13;
static ERL_NIF_TERM beam_atom_read_write;
static ERL_NIF_TERM beam_atom_texture_binding_3d;
static ERL_NIF_TERM beam_atom_rgb8_snorm;
static ERL_NIF_TERM beam_atom_unsigned_int_vec4;
static ERL_NIF_TERM beam_atom_renderbuffer_width;
static ERL_NIF_TERM beam_atom_aliased_point_size_range;
static ERL_NIF_TERM beam_atom_sampler_2d_shadow;
static ERL_NIF_TERM beam_atom_polygon_offset_factor;
static ERL_NIF_TERM beam_atom_texture_green_size;
static ERL_NIF_TERM beam_atom_stream_copy;
static ERL_NIF_TERM beam_atom_dispatch_indirect_buffer_binding;
static ERL_NIF_TERM beam_atom_texture_swizzle_a;
static ERL_NIF_TERM beam_atom_invalid_enum;
static ERL_NIF_TERM beam_atom_uniform_offset;
static ERL_NIF_TERM beam_atom_rgb5_a1;
static ERL_NIF_TERM beam_atom_max_elements_vertices;
static ERL_NIF_TERM beam_atom_texture_cube_map_positive_y;
static ERL_NIF_TERM beam_atom_color_attachment19;
static ERL_NIF_TERM beam_atom_texture_red_size;
static ERL_NIF_TERM beam_atom_renderbuffer_stencil_size;
static ERL_NIF_TERM beam_atom_framebuffer_default_fixed_sample_locations;
static ERL_NIF_TERM beam_atom_bool;
static ERL_NIF_TERM beam_atom_interleaved_attribs;
static ERL_NIF_TERM beam_atom_src_alpha_saturate;
static ERL_NIF_TERM beam_atom_texture_cube_map_positive_z;
static ERL_NIF_TERM beam_atom_min_program_texel_offset;
static ERL_NIF_TERM beam_atom_high_float;
static ERL_NIF_TERM beam_atom_constant_color;
static ERL_NIF_TERM beam_atom_one_minus_src_alpha;
static ERL_NIF_TERM beam_atom_texture18;
static ERL_NIF_TERM beam_atom_rgba4;
static ERL_NIF_TERM beam_atom_uniform_buffer_size;
static ERL_NIF_TERM beam_atom_int_vec4;
static ERL_NIF_TERM beam_atom_stencil_back_pass_depth_fail;
static ERL_NIF_TERM beam_atom_cull_face_mode;
static ERL_NIF_TERM beam_atom_depth_writemask;
static ERL_NIF_TERM beam_atom_framebuffer_attachment_color_encoding;
static ERL_NIF_TERM beam_atom_texture_width;
static ERL_NIF_TERM beam_atom_compute_shader;
static ERL_NIF_TERM beam_atom_max_combined_shader_storage_blocks;
static ERL_NIF_TERM beam_atom_max_vertex_uniform_components;
static ERL_NIF_TERM beam_atom_framebuffer_default_width;
static ERL_NIF_TERM beam_atom_max_compute_work_group_count;
static ERL_NIF_TERM beam_atom_int_vec2;
static ERL_NIF_TERM beam_atom_renderbuffer_blue_size;
static ERL_NIF_TERM beam_atom_sampler_cube_shadow;
static ERL_NIF_TERM beam_atom_stencil;
static ERL_NIF_TERM beam_atom_referenced_by_compute_shader;
static ERL_NIF_TERM beam_atom_uniform_block_referenced_by_fragment_shader;
static ERL_NIF_TERM beam_atom_num_compressed_texture_formats;
static ERL_NIF_TERM beam_atom_active_texture;
static ERL_NIF_TERM beam_atom_max_compute_uniform_blocks;
static ERL_NIF_TERM beam_atom_framebuffer_attachment_depth_size;
static ERL_NIF_TERM beam_atom_fastest;
static ERL_NIF_TERM beam_atom_color_attachment16;
static ERL_NIF_TERM beam_atom_texture17;
static ERL_NIF_TERM beam_atom_uniform_array_stride;
static ERL_NIF_TERM beam_atom_unsigned_int_sampler_2d;
static ERL_NIF_TERM beam_atom_program_pipeline_binding;
static ERL_NIF_TERM beam_atom_stencil_bits;
static ERL_NIF_TERM beam_atom_max_color_texture_samples;
static ERL_NIF_TERM beam_atom_no_error;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_normalized;
static ERL_NIF_TERM beam_atom_one_minus_constant_alpha;
static ERL_NIF_TERM beam_atom_color_attachment26;
static ERL_NIF_TERM beam_atom_depth;
static ERL_NIF_TERM beam_atom_rgba8_snorm;
static ERL_NIF_TERM beam_atom_cw;
static ERL_NIF_TERM beam_atom_r8i;
static ERL_NIF_TERM beam_atom_max_texture_image_units;
static ERL_NIF_TERM beam_atom_front;
static ERL_NIF_TERM beam_atom_framebuffer_attachment_texture_layer;
static ERL_NIF_TERM beam_atom_stencil_back_fail;
static ERL_NIF_TERM beam_atom_shader_binary_formats;
static ERL_NIF_TERM beam_atom_max_elements_indices;
static ERL_NIF_TERM beam_atom_invalid_value;
static ERL_NIF_TERM beam_atom_is_row_major;
static ERL_NIF_TERM beam_atom_r16ui;
static ERL_NIF_TERM beam_atom_rg8ui;
static ERL_NIF_TERM beam_atom_sample_buffers;
static ERL_NIF_TERM beam_atom_array_stride;
static ERL_NIF_TERM beam_atom_color_attachment10;
static ERL_NIF_TERM beam_atom_max_viewport_dims;
static ERL_NIF_TERM beam_atom_max_uniform_locations;
static ERL_NIF_TERM beam_atom_transform_feedback_buffer;
static ERL_NIF_TERM beam_atom_srgb8_alpha8;
static ERL_NIF_TERM beam_atom_luminance;
static ERL_NIF_TERM beam_atom_image_format_compatibility_type;
static ERL_NIF_TERM beam_atom_unsigned_int_sampler_2d_multisample;
static ERL_NIF_TERM beam_atom_bool_vec4;
static ERL_NIF_TERM beam_atom_decr;
static ERL_NIF_TERM beam_atom_stencil_func;
static ERL_NIF_TERM beam_atom_program_input;
static ERL_NIF_TERM beam_atom_texture21;
static ERL_NIF_TERM beam_atom_max_vertex_attrib_relative_offset;
static ERL_NIF_TERM beam_atom_color_attachment7;
static ERL_NIF_TERM beam_atom_max_3d_texture_size;
static ERL_NIF_TERM beam_atom_color_attachment12;
static ERL_NIF_TERM beam_atom_max_shader_storage_buffer_bindings;
static ERL_NIF_TERM beam_atom_blend;
static ERL_NIF_TERM beam_atom_rg_integer;
static ERL_NIF_TERM beam_atom_compressed_srgb8_punchthrough_alpha1_etc2;
static ERL_NIF_TERM beam_atom_max_num_active_variables;
static ERL_NIF_TERM beam_atom_texture12;
static ERL_NIF_TERM beam_atom_uniform_block_index;
static ERL_NIF_TERM beam_atom_color_attachment25;
static ERL_NIF_TERM beam_atom_texture_cube_map_negative_x;
static ERL_NIF_TERM beam_atom_framebuffer_attachment_alpha_size;
static ERL_NIF_TERM beam_atom_shader_storage_buffer;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_size;
static ERL_NIF_TERM beam_atom_srgb8;
static ERL_NIF_TERM beam_atom_int_sampler_2d_multisample;
static ERL_NIF_TERM beam_atom_texture6;
static ERL_NIF_TERM beam_atom_query_result_available;
static ERL_NIF_TERM beam_atom_uniform_type;
static ERL_NIF_TERM beam_atom_color_attachment3;
static ERL_NIF_TERM beam_atom_renderbuffer;
static ERL_NIF_TERM beam_atom_depth_test;
static ERL_NIF_TERM beam_atom_func_add;
static ERL_NIF_TERM beam_atom_float_mat4x2;
static ERL_NIF_TERM beam_atom_texture_2d_array;
static ERL_NIF_TERM beam_atom_max_fragment_uniform_vectors;
static ERL_NIF_TERM beam_atom_pixel_pack_buffer;
static ERL_NIF_TERM beam_atom_max_color_attachments;
static ERL_NIF_TERM beam_atom_renderer;
static ERL_NIF_TERM beam_atom_buffer_update_barrier_bit;
static ERL_NIF_TERM beam_atom_sampler_binding;
static ERL_NIF_TERM beam_atom_max_combined_vertex_uniform_components;
static ERL_NIF_TERM beam_atom_nearest;
static ERL_NIF_TERM beam_atom_bool_vec2;
static ERL_NIF_TERM beam_atom_texture20;
static ERL_NIF_TERM beam_atom_array_size;
static ERL_NIF_TERM beam_atom_max_element_index;
static ERL_NIF_TERM beam_atom_stencil_fail;
static ERL_NIF_TERM beam_atom_unpack_alignment;
static ERL_NIF_TERM beam_atom_max_vertex_atomic_counters;
static ERL_NIF_TERM beam_atom_srgb;
static ERL_NIF_TERM beam_atom_max_name_length;
static ERL_NIF_TERM beam_atom_r8ui;
static ERL_NIF_TERM beam_atom_float_mat4;
static ERL_NIF_TERM beam_atom_max_framebuffer_width;
static ERL_NIF_TERM beam_atom_sampler_2d_array_shadow;
static ERL_NIF_TERM beam_atom_one_minus_src_color;
static ERL_NIF_TERM beam_atom_stencil_ref;
static ERL_NIF_TERM beam_atom_texture25;
static ERL_NIF_TERM beam_atom_rgba8ui;
static ERL_NIF_TERM beam_atom_r32i;
static ERL_NIF_TERM beam_atom_notequal;
static ERL_NIF_TERM beam_atom_dst_alpha;
static ERL_NIF_TERM beam_atom_color_attachment8;
static ERL_NIF_TERM beam_atom_incr;
static ERL_NIF_TERM beam_atom_texture_blue_size;
static ERL_NIF_TERM beam_atom_rgb8ui;
static ERL_NIF_TERM beam_atom_stencil_back_ref;
static ERL_NIF_TERM beam_atom_all_shader_bits;
static ERL_NIF_TERM beam_atom_texture_binding_2d_multisample;
static ERL_NIF_TERM beam_atom_float_mat3x4;
static ERL_NIF_TERM beam_atom_line_width;
static ERL_NIF_TERM beam_atom_current_vertex_attrib;
static ERL_NIF_TERM beam_atom_vertex_attrib_binding;
static ERL_NIF_TERM beam_atom_texture5;
static ERL_NIF_TERM beam_atom_max_combined_compute_uniform_components;
static ERL_NIF_TERM beam_atom_rgb_integer;
static ERL_NIF_TERM beam_atom_dynamic_draw;
static ERL_NIF_TERM beam_atom_low_int;
static ERL_NIF_TERM beam_atom_blend_src_alpha;
static ERL_NIF_TERM beam_atom_buffer_map_length;
static ERL_NIF_TERM beam_atom_texture_swizzle_b;
static ERL_NIF_TERM beam_atom_int_2_10_10_10_rev;
static ERL_NIF_TERM beam_atom_referenced_by_vertex_shader;
static ERL_NIF_TERM beam_atom_unsigned_int_sampler_2d_array;
static ERL_NIF_TERM beam_atom_max_integer_samples;
static ERL_NIF_TERM beam_atom_uniform_buffer;
static ERL_NIF_TERM beam_atom_framebuffer_attachment_stencil_size;
static ERL_NIF_TERM beam_atom_fragment_shader_derivative_hint;
static ERL_NIF_TERM beam_atom_shader_storage_buffer_size;
static ERL_NIF_TERM beam_atom_location;
static ERL_NIF_TERM beam_atom_renderbuffer_green_size;
static ERL_NIF_TERM beam_atom_shader_storage_barrier_bit;
static ERL_NIF_TERM beam_atom_constant_alpha;
static ERL_NIF_TERM beam_atom_max_framebuffer_height;
static ERL_NIF_TERM beam_atom_keep;
static ERL_NIF_TERM beam_atom_texture14;
static ERL_NIF_TERM beam_atom_sample_position;
static ERL_NIF_TERM beam_atom_rgb10_a2;
static ERL_NIF_TERM beam_atom_sample_mask;
static ERL_NIF_TERM beam_atom_rgb16ui;
static ERL_NIF_TERM beam_atom_stencil_writemask;
static ERL_NIF_TERM beam_atom_max_varying_vectors;
static ERL_NIF_TERM beam_atom_max_vertex_attrib_bindings;
static ERL_NIF_TERM beam_atom_uniform_block_referenced_by_vertex_shader;
static ERL_NIF_TERM beam_atom_unsigned_int_vec3;
static ERL_NIF_TERM beam_atom_program_separable;
static ERL_NIF_TERM beam_atom_texture28;
static ERL_NIF_TERM beam_atom_max_combined_atomic_counters;
static ERL_NIF_TERM beam_atom_top_level_array_size;
static ERL_NIF_TERM beam_atom_float_mat3x2;
static ERL_NIF_TERM beam_atom_texture27;
static ERL_NIF_TERM beam_atom_color_attachment14;
static ERL_NIF_TERM beam_atom_blend_dst_alpha;
static ERL_NIF_TERM beam_atom_unsigned_short_4_4_4_4;
static ERL_NIF_TERM beam_atom_rg32i;
static ERL_NIF_TERM beam_atom_nearest_mipmap_linear;
static ERL_NIF_TERM beam_atom_fragment_shader_bit;
static ERL_NIF_TERM beam_atom_framebuffer_incomplete_attachment;
static ERL_NIF_TERM beam_atom_static_read;
static ERL_NIF_TERM beam_atom_rgba8i;
static ERL_NIF_TERM beam_atom_invalid_framebuffer_operation;
static ERL_NIF_TERM beam_atom_texture_compressed;
static ERL_NIF_TERM beam_atom_offset;
static ERL_NIF_TERM beam_atom_info_log_length;
static ERL_NIF_TERM beam_atom_texture_compare_func;
static ERL_NIF_TERM beam_atom_compute_shader_bit;
static ERL_NIF_TERM beam_atom_framebuffer_attachment_texture_level;
static ERL_NIF_TERM beam_atom_rgba_integer;
static ERL_NIF_TERM beam_atom_texture10;
static ERL_NIF_TERM beam_atom_texture8;
static ERL_NIF_TERM beam_atom_texture22;
static ERL_NIF_TERM beam_atom_equal;
static ERL_NIF_TERM beam_atom_depth_clear_value;
static ERL_NIF_TERM beam_atom_depth_range;
static ERL_NIF_TERM beam_atom_float;
static ERL_NIF_TERM beam_atom_max_compute_atomic_counter_buffers;
static ERL_NIF_TERM beam_atom_max_vertex_texture_image_units;
static ERL_NIF_TERM beam_atom_rgb32ui;
static ERL_NIF_TERM beam_atom_max_vertex_shader_storage_blocks;
static ERL_NIF_TERM beam_atom_texture16;
static ERL_NIF_TERM beam_atom_func_reverse_subtract;
static ERL_NIF_TERM beam_atom_compressed_srgb8_etc2;
static ERL_NIF_TERM beam_atom_compressed_texture_formats;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_type;
static ERL_NIF_TERM beam_atom_sample_alpha_to_coverage;
static ERL_NIF_TERM beam_atom_r8;
static ERL_NIF_TERM beam_atom_texture_wrap_t;
static ERL_NIF_TERM beam_atom_sampler_cube;
static ERL_NIF_TERM beam_atom_clamp_to_edge;
static ERL_NIF_TERM beam_atom_rgb32f;
static ERL_NIF_TERM beam_atom_texture26;
static ERL_NIF_TERM beam_atom_float_32_unsigned_int_24_8_rev;
static ERL_NIF_TERM beam_atom_current_program;
static ERL_NIF_TERM beam_atom_red_integer;
static ERL_NIF_TERM beam_atom_sample_coverage;
static ERL_NIF_TERM beam_atom_compressed_rgba8_etc2_eac;
static ERL_NIF_TERM beam_atom_float_vec2;
static ERL_NIF_TERM beam_atom_one_minus_dst_alpha;
static ERL_NIF_TERM beam_atom_texture_max_level;
static ERL_NIF_TERM beam_atom_back;
static ERL_NIF_TERM beam_atom_color_attachment2;
static ERL_NIF_TERM beam_atom_red;
static ERL_NIF_TERM beam_atom_depth_stencil_texture_mode;
static ERL_NIF_TERM beam_atom_color_attachment18;
static ERL_NIF_TERM beam_atom_dynamic_read;
static ERL_NIF_TERM beam_atom_current_query;
static ERL_NIF_TERM beam_atom_texture24;
static ERL_NIF_TERM beam_atom_uniform;
static ERL_NIF_TERM beam_atom_texture29;
static ERL_NIF_TERM beam_atom_image_cube;
static ERL_NIF_TERM beam_atom_color_attachment1;
static ERL_NIF_TERM beam_atom_scissor_test;
static ERL_NIF_TERM beam_atom_max_compute_texture_image_units;
static ERL_NIF_TERM beam_atom_any_samples_passed;
static ERL_NIF_TERM beam_atom_compressed_r11_eac;
static ERL_NIF_TERM beam_atom_write_only;
static ERL_NIF_TERM beam_atom_max_compute_shader_storage_blocks;
static ERL_NIF_TERM beam_atom_rg;
static ERL_NIF_TERM beam_atom_read_framebuffer;
static ERL_NIF_TERM beam_atom_renderbuffer_red_size;
static ERL_NIF_TERM beam_atom_shader_storage_buffer_binding;
static ERL_NIF_TERM beam_atom_texture_cube_map_negative_y;
static ERL_NIF_TERM beam_atom_rgba16i;
static ERL_NIF_TERM beam_atom_max_framebuffer_samples;
static ERL_NIF_TERM beam_atom_static_draw;
static ERL_NIF_TERM beam_atom_r16f;
static ERL_NIF_TERM beam_atom_rgba32f;
static ERL_NIF_TERM beam_atom_max_combined_texture_image_units;
static ERL_NIF_TERM beam_atom_max_texture_lod_bias;
static ERL_NIF_TERM beam_atom_implementation_color_read_type;
static ERL_NIF_TERM beam_atom_framebuffer_incomplete_missing_attachment;
static ERL_NIF_TERM beam_atom_rgb16i;
static ERL_NIF_TERM beam_atom_num_shader_binary_formats;
static ERL_NIF_TERM beam_atom_max_cube_map_texture_size;
static ERL_NIF_TERM beam_atom_max_fragment_shader_storage_blocks;
static ERL_NIF_TERM beam_atom_uniform_block_active_uniforms;
static ERL_NIF_TERM beam_atom_texture31;
static ERL_NIF_TERM beam_atom_rgb10_a2ui;
static ERL_NIF_TERM beam_atom_rgba16ui;
static ERL_NIF_TERM beam_atom_lequal;
static ERL_NIF_TERM beam_atom_buffer_usage;
static ERL_NIF_TERM beam_atom_byte;
static ERL_NIF_TERM beam_atom_samples;
static ERL_NIF_TERM beam_atom_color_attachment11;
static ERL_NIF_TERM beam_atom_depth_component32f;
static ERL_NIF_TERM beam_atom_max_uniform_block_size;
static ERL_NIF_TERM beam_atom_stream_read;
static ERL_NIF_TERM beam_atom_zero;
static ERL_NIF_TERM beam_atom_transform_feedback_barrier_bit;
static ERL_NIF_TERM beam_atom_gequal;
static ERL_NIF_TERM beam_atom_framebuffer_default_height;
static ERL_NIF_TERM beam_atom_texture_cube_map_positive_x;
static ERL_NIF_TERM beam_atom_texture_base_level;
static ERL_NIF_TERM beam_atom_color_attachment6;
static ERL_NIF_TERM beam_atom_max_combined_uniform_blocks;
static ERL_NIF_TERM beam_atom_pack_alignment;
static ERL_NIF_TERM beam_atom_draw_framebuffer_binding;
static ERL_NIF_TERM beam_atom_shading_language_version;
static ERL_NIF_TERM beam_atom_framebuffer_attachment_object_type;
static ERL_NIF_TERM beam_atom_matrix_stride;
static ERL_NIF_TERM beam_atom_rgb32i;
static ERL_NIF_TERM beam_atom_ccw;
static ERL_NIF_TERM beam_atom_fragment_shader;
static ERL_NIF_TERM beam_atom_triangles;
static ERL_NIF_TERM beam_atom_blend_dst_rgb;
static ERL_NIF_TERM beam_atom_color_attachment22;
static ERL_NIF_TERM beam_atom_stencil_index;
static ERL_NIF_TERM beam_atom_uniform_barrier_bit;
static ERL_NIF_TERM beam_atom_texture19;
static ERL_NIF_TERM beam_atom_stencil_pass_depth_fail;
static ERL_NIF_TERM beam_atom_compressed_rgb8_etc2;
static ERL_NIF_TERM beam_atom_renderbuffer_depth_size;
static ERL_NIF_TERM beam_atom_framebuffer_attachment_green_size;
static ERL_NIF_TERM beam_atom_uniform_block_data_size;
static ERL_NIF_TERM beam_atom_active_program;
static ERL_NIF_TERM beam_atom_dont_care;
static ERL_NIF_TERM beam_atom_uniform_buffer_binding;
static ERL_NIF_TERM beam_atom_medium_float;
static ERL_NIF_TERM beam_atom_r8_snorm;
static ERL_NIF_TERM beam_atom_texture_internal_format;
static ERL_NIF_TERM beam_atom_repeat;
static ERL_NIF_TERM beam_atom_command_barrier_bit;
static ERL_NIF_TERM beam_atom_rgb8;
static ERL_NIF_TERM beam_atom_rg32f;
static ERL_NIF_TERM beam_atom_linear;
static ERL_NIF_TERM beam_atom_vertex_array_binding;
static ERL_NIF_TERM beam_atom_depth_func;
static ERL_NIF_TERM beam_atom_invert;
static ERL_NIF_TERM beam_atom_dither;
static ERL_NIF_TERM beam_atom_color_attachment23;
static ERL_NIF_TERM beam_atom_name_length;
static ERL_NIF_TERM beam_atom_texture0;
static ERL_NIF_TERM beam_atom_max_array_texture_layers;
static ERL_NIF_TERM beam_atom_color_attachment5;
static ERL_NIF_TERM beam_atom_program_binary_formats;
static ERL_NIF_TERM beam_atom_int;
static ERL_NIF_TERM beam_atom_line_loop;
static ERL_NIF_TERM beam_atom_separate_attribs;
static ERL_NIF_TERM beam_atom_max_vertex_attribs;
static ERL_NIF_TERM beam_atom_r16i;
static ERL_NIF_TERM beam_atom_transform_feedback;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_integer;
static ERL_NIF_TERM beam_atom_max_fragment_uniform_blocks;
static ERL_NIF_TERM beam_atom_read_only;
static ERL_NIF_TERM beam_atom_float_mat2;
static ERL_NIF_TERM beam_atom_texture_2d_multisample;
static ERL_NIF_TERM beam_atom_active_resources;
static ERL_NIF_TERM beam_atom_sample_coverage_value;
static ERL_NIF_TERM beam_atom_alpha;
static ERL_NIF_TERM beam_atom_buffer_data_size;
static ERL_NIF_TERM beam_atom_sampler_2d;
static ERL_NIF_TERM beam_atom_int_sampler_2d_array;
static ERL_NIF_TERM beam_atom_shader_storage_buffer_offset_alignment;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_enabled;
static ERL_NIF_TERM beam_atom_rgba;
static ERL_NIF_TERM beam_atom_texture_alpha_size;
static ERL_NIF_TERM beam_atom_unsigned_int_image_3d;
static ERL_NIF_TERM beam_atom_buffer_variable;
static ERL_NIF_TERM beam_atom_uniform_block;
static ERL_NIF_TERM beam_atom_framebuffer_complete;
static ERL_NIF_TERM beam_atom_unpack_row_length;
static ERL_NIF_TERM beam_atom_static_copy;
static ERL_NIF_TERM beam_atom_rgba32ui;
static ERL_NIF_TERM beam_atom_pixel_pack_buffer_binding;
static ERL_NIF_TERM beam_atom_texture_compare_mode;
static ERL_NIF_TERM beam_atom_image_2d;
static ERL_NIF_TERM beam_atom_rgb16f;
static ERL_NIF_TERM beam_atom_compressed_srgb8_alpha8_etc2_eac;
static ERL_NIF_TERM beam_atom_color_attachment4;
static ERL_NIF_TERM beam_atom_cull_face;
static ERL_NIF_TERM beam_atom_float_mat2x4;
static ERL_NIF_TERM beam_atom_num_extensions;
static ERL_NIF_TERM beam_atom_incr_wrap;
static ERL_NIF_TERM beam_atom_vendor;
static ERL_NIF_TERM beam_atom_viewport;
static ERL_NIF_TERM beam_atom_sampler_3d;
static ERL_NIF_TERM beam_atom_color_writemask;
static ERL_NIF_TERM beam_atom_draw_framebuffer;
static ERL_NIF_TERM beam_atom_element_array_buffer_binding;
static ERL_NIF_TERM beam_atom_unpack_image_height;
static ERL_NIF_TERM beam_atom_uniform_is_row_major;
static ERL_NIF_TERM beam_atom_rg16i;
static ERL_NIF_TERM beam_atom_blend_color;
static ERL_NIF_TERM beam_atom_int_image_cube;
static ERL_NIF_TERM beam_atom_r11f_g11f_b10f;
static ERL_NIF_TERM beam_atom_active_variables;
static ERL_NIF_TERM beam_atom_subpixel_bits;
static ERL_NIF_TERM beam_atom_framebuffer_incomplete_multisample;
static ERL_NIF_TERM beam_atom_image_3d;
static ERL_NIF_TERM beam_atom_block_index;
static ERL_NIF_TERM beam_atom_framebuffer;
static ERL_NIF_TERM beam_atom_texture_cube_map_negative_z;
static ERL_NIF_TERM beam_atom_none;
static ERL_NIF_TERM beam_atom_compressed_rg11_eac;
static ERL_NIF_TERM beam_atom_dynamic_copy;
static ERL_NIF_TERM beam_atom_compressed_rgb8_punchthrough_alpha1_etc2;
static ERL_NIF_TERM beam_atom_transform_feedback_primitives_written;
static ERL_NIF_TERM beam_atom_always;
static ERL_NIF_TERM beam_atom_stream_draw;
static ERL_NIF_TERM beam_atom_draw_indirect_buffer;
static ERL_NIF_TERM beam_atom_stencil_back_pass_depth_pass;
static ERL_NIF_TERM beam_atom_invalid_operation;
static ERL_NIF_TERM beam_atom_depth24_stencil8;
static ERL_NIF_TERM beam_atom_float_vec3;
static ERL_NIF_TERM beam_atom_any_samples_passed_conservative;
static ERL_NIF_TERM beam_atom_line_strip;
static ERL_NIF_TERM beam_atom_float_mat2x3;
static ERL_NIF_TERM beam_atom_array_buffer;
static ERL_NIF_TERM beam_atom_max;
static ERL_NIF_TERM beam_atom_uniform_buffer_offset_alignment;
static ERL_NIF_TERM beam_atom_int_image_2d;
static ERL_NIF_TERM beam_atom_framebuffer_barrier_bit;
static ERL_NIF_TERM beam_atom_rgba8;
static ERL_NIF_TERM beam_atom_texture_binding_2d_array;
static ERL_NIF_TERM beam_atom_depth_component24;
static ERL_NIF_TERM beam_atom_max_compute_work_group_size;
static ERL_NIF_TERM beam_atom_max_texture_size;
static ERL_NIF_TERM beam_atom_pack_skip_rows;
static ERL_NIF_TERM beam_atom_texture_update_barrier_bit;
static ERL_NIF_TERM beam_atom_texture_binding_2d;
static ERL_NIF_TERM beam_atom_stencil_back_value_mask;
static ERL_NIF_TERM beam_atom_vertex_attrib_array_buffer_binding;
static ERL_NIF_TERM beam_atom_int_sampler_3d;
static ERL_NIF_TERM beam_atom_stencil_buffer_bit;
static ERL_NIF_TERM beam_atom_triangle_strip;
static ERL_NIF_TERM beam_atom_renderbuffer_binding;
static ERL_NIF_TERM beam_atom_version;
static ERL_NIF_TERM beam_atom_texture4;
static ERL_NIF_TERM beam_atom_shader_compiler;
static ERL_NIF_TERM beam_atom_color_attachment30;
static ERL_NIF_TERM beam_atom_uniform_size;
static ERL_NIF_TERM beam_atom_top_level_array_stride;
static ERL_NIF_TERM beam_atom_stencil_back_func;
static ERL_NIF_TERM beam_atom_unsigned_int_vec2;
static ERL_NIF_TERM beam_atom_float_mat3;
static ERL_NIF_TERM beam_atom_unsigned_int;
static ERL_NIF_TERM beam_atom_all_barrier_bits;
static ERL_NIF_TERM beam_atom_medium_int;
static ERL_NIF_TERM beam_atom_rg32ui;
static ERL_NIF_TERM beam_atom_int_image_3d;
static ERL_NIF_TERM beam_atom_rgb565;
static ERL_NIF_TERM beam_atom_max_compute_uniform_components;
static ERL_NIF_TERM beam_atom_less;
static ERL_NIF_TERM beam_atom_max_uniform_buffer_bindings;
static ERL_NIF_TERM beam_atom_int_vec3;
static ERL_NIF_TERM beam_atom_framebuffer_undefined;
static void* egl_nif_lib_handle = NULL;
typedef ERL_NIF_TERM (*execute_command_fn)(
    ERL_NIF_TERM (*function)(ErlNifEnv*, int, const ERL_NIF_TERM[]),
    ErlNifEnv*,
    int,
    ERL_NIF_TERM* []
);
execute_command_fn egl_nif_execute_command = NULL;

static int nif_module_load(ErlNifEnv *env, void **priv_data, ERL_NIF_TERM arg)
{
    (void)priv_data;
char beam_egl_so_path[1024];
if (!enif_get_string(env, arg, beam_egl_so_path, sizeof(beam_egl_so_path), ERL_NIF_LATIN1)) {
    fprintf(stderr, "failed to read EGL binding library path from argument\n");
    return -1;
}

egl_nif_lib_handle = dlopen(beam_egl_so_path, RTLD_NOW);
if (!egl_nif_lib_handle) {
    fprintf(stderr, "failed to load beam-egl.so: %s\n", dlerror());
    return -1;
}

egl_nif_execute_command = dlsym(egl_nif_lib_handle, "egl_execute_command");
if (!egl_nif_execute_command) {
    fprintf(stderr, "failed to load symbol egl_execute_command: %s\n", dlerror());
    dlclose(egl_nif_lib_handle);
    return -1;
}


    beam_atom_color_attachment24 = enif_make_atom(env, "color_attachment24");
    beam_atom_texture11 = enif_make_atom(env, "texture11");
    beam_atom_uniform_buffer_start = enif_make_atom(env, "uniform_buffer_start");
    beam_atom_texture_min_filter = enif_make_atom(env, "texture_min_filter");
    beam_atom_front_face = enif_make_atom(env, "front_face");
    beam_atom_num_sample_counts = enif_make_atom(env, "num_sample_counts");
    beam_atom_low_float = enif_make_atom(env, "low_float");
    beam_atom_r32ui = enif_make_atom(env, "r32ui");
    beam_atom_generate_mipmap_hint = enif_make_atom(env, "generate_mipmap_hint");
    beam_atom_vertex_binding_offset = enif_make_atom(env, "vertex_binding_offset");
    beam_atom_uniform_block_active_uniform_indices = enif_make_atom(env, "uniform_block_active_uniform_indices");
    beam_atom_one = enif_make_atom(env, "one");
    beam_atom_unsigned_int_image_2d_array = enif_make_atom(env, "unsigned_int_image_2d_array");
    beam_atom_buffer_binding = enif_make_atom(env, "buffer_binding");
    beam_atom_triangle_fan = enif_make_atom(env, "triangle_fan");
    beam_atom_out_of_memory = enif_make_atom(env, "out_of_memory");
    beam_atom_red_bits = enif_make_atom(env, "red_bits");
    beam_atom_depth_attachment = enif_make_atom(env, "depth_attachment");
    beam_atom_one_minus_dst_color = enif_make_atom(env, "one_minus_dst_color");
    beam_atom_unsigned_int_24_8 = enif_make_atom(env, "unsigned_int_24_8");
    beam_atom_blend_equation = enif_make_atom(env, "blend_equation");
    beam_atom_sampler_2d_array = enif_make_atom(env, "sampler_2d_array");
    beam_atom_texture13 = enif_make_atom(env, "texture13");
    beam_atom_framebuffer_attachment_texture_cube_map_face = enif_make_atom(env, "framebuffer_attachment_texture_cube_map_face");
    beam_atom_func_subtract = enif_make_atom(env, "func_subtract");
    beam_atom_nicest = enif_make_atom(env, "nicest");
    beam_atom_blend_equation_alpha = enif_make_atom(env, "blend_equation_alpha");
    beam_atom_stencil_attachment = enif_make_atom(env, "stencil_attachment");
    beam_atom_texture15 = enif_make_atom(env, "texture15");
    beam_atom_sampler_2d_multisample = enif_make_atom(env, "sampler_2d_multisample");
    beam_atom_replace = enif_make_atom(env, "replace");
    beam_atom_texture_cube_map = enif_make_atom(env, "texture_cube_map");
    beam_atom_depth_component16 = enif_make_atom(env, "depth_component16");
    beam_atom_copy_read_buffer = enif_make_atom(env, "copy_read_buffer");
    beam_atom_major_version = enif_make_atom(env, "major_version");
    beam_atom_unpack_skip_rows = enif_make_atom(env, "unpack_skip_rows");
    beam_atom_stencil_test = enif_make_atom(env, "stencil_test");
    beam_atom_never = enif_make_atom(env, "never");
    beam_atom_vertex_shader = enif_make_atom(env, "vertex_shader");
    beam_atom_max_vertex_uniform_blocks = enif_make_atom(env, "max_vertex_uniform_blocks");
    beam_atom_unsigned_int_sampler_cube = enif_make_atom(env, "unsigned_int_sampler_cube");
    beam_atom_vertex_attrib_array_stride = enif_make_atom(env, "vertex_attrib_array_stride");
    beam_atom_texture3 = enif_make_atom(env, "texture3");
    beam_atom_read_buffer = enif_make_atom(env, "read_buffer");
    beam_atom_vertex_binding_divisor = enif_make_atom(env, "vertex_binding_divisor");
    beam_atom_pack_skip_pixels = enif_make_atom(env, "pack_skip_pixels");
    beam_atom_compressed_signed_rg11_eac = enif_make_atom(env, "compressed_signed_rg11_eac");
    beam_atom_fixed = enif_make_atom(env, "fixed");
    beam_atom_color_attachment28 = enif_make_atom(env, "color_attachment28");
    beam_atom_transform_feedback_buffer_binding = enif_make_atom(env, "transform_feedback_buffer_binding");
    beam_atom_uniform_name_length = enif_make_atom(env, "uniform_name_length");
    beam_atom_color_attachment17 = enif_make_atom(env, "color_attachment17");
    beam_atom_framebuffer_attachment_blue_size = enif_make_atom(env, "framebuffer_attachment_blue_size");
    beam_atom_color_attachment9 = enif_make_atom(env, "color_attachment9");
    beam_atom_depth_buffer_bit = enif_make_atom(env, "depth_buffer_bit");
    beam_atom_framebuffer_attachment_red_size = enif_make_atom(env, "framebuffer_attachment_red_size");
    beam_atom_polygon_offset_fill = enif_make_atom(env, "polygon_offset_fill");
    beam_atom_max_server_wait_timeout = enif_make_atom(env, "max_server_wait_timeout");
    beam_atom_texture_fetch_barrier_bit = enif_make_atom(env, "texture_fetch_barrier_bit");
    beam_atom_uniform_matrix_stride = enif_make_atom(env, "uniform_matrix_stride");
    beam_atom_vertex_attrib_array_barrier_bit = enif_make_atom(env, "vertex_attrib_array_barrier_bit");
    beam_atom_front_and_back = enif_make_atom(env, "front_and_back");
    beam_atom_pixel_unpack_buffer_binding = enif_make_atom(env, "pixel_unpack_buffer_binding");
    beam_atom_pack_row_length = enif_make_atom(env, "pack_row_length");
    beam_atom_referenced_by_fragment_shader = enif_make_atom(env, "referenced_by_fragment_shader");
    beam_atom_decr_wrap = enif_make_atom(env, "decr_wrap");
    beam_atom_shader_storage_block = enif_make_atom(env, "shader_storage_block");
    beam_atom_unsigned_int_5_9_9_9_rev = enif_make_atom(env, "unsigned_int_5_9_9_9_rev");
    beam_atom_stencil_back_writemask = enif_make_atom(env, "stencil_back_writemask");
    beam_atom_array_buffer_binding = enif_make_atom(env, "array_buffer_binding");
    beam_atom_num_active_variables = enif_make_atom(env, "num_active_variables");
    beam_atom_polygon_offset_units = enif_make_atom(env, "polygon_offset_units");
    beam_atom_num_program_binary_formats = enif_make_atom(env, "num_program_binary_formats");
    beam_atom_min = enif_make_atom(env, "min");
    beam_atom_max_sample_mask_words = enif_make_atom(env, "max_sample_mask_words");
    beam_atom_int_sampler_cube = enif_make_atom(env, "int_sampler_cube");
    beam_atom_texture_wrap_r = enif_make_atom(env, "texture_wrap_r");
    beam_atom_src_color = enif_make_atom(env, "src_color");
    beam_atom_linear_mipmap_nearest = enif_make_atom(env, "linear_mipmap_nearest");
    beam_atom_read_framebuffer_binding = enif_make_atom(env, "read_framebuffer_binding");
    beam_atom_atomic_counter_barrier_bit = enif_make_atom(env, "atomic_counter_barrier_bit");
    beam_atom_texture1 = enif_make_atom(env, "texture1");
    beam_atom_pixel_buffer_barrier_bit = enif_make_atom(env, "pixel_buffer_barrier_bit");
    beam_atom_max_vertex_output_components = enif_make_atom(env, "max_vertex_output_components");
    beam_atom_dispatch_indirect_buffer = enif_make_atom(env, "dispatch_indirect_buffer");
    beam_atom_rgb = enif_make_atom(env, "rgb");
    beam_atom_color_clear_value = enif_make_atom(env, "color_clear_value");
    beam_atom_color_attachment0 = enif_make_atom(env, "color_attachment0");
    beam_atom_unsigned_short = enif_make_atom(env, "unsigned_short");
    beam_atom_blue_bits = enif_make_atom(env, "blue_bits");
    beam_atom_renderbuffer_height = enif_make_atom(env, "renderbuffer_height");
    beam_atom_max_fragment_input_components = enif_make_atom(env, "max_fragment_input_components");
    beam_atom_float_vec4 = enif_make_atom(env, "float_vec4");
    beam_atom_lines = enif_make_atom(env, "lines");
    beam_atom_buffer_map_offset = enif_make_atom(env, "buffer_map_offset");
    beam_atom_vertex_shader_bit = enif_make_atom(env, "vertex_shader_bit");
    beam_atom_element_array_barrier_bit = enif_make_atom(env, "element_array_barrier_bit");
    beam_atom_max_draw_buffers = enif_make_atom(env, "max_draw_buffers");
    beam_atom_minor_version = enif_make_atom(env, "minor_version");
    beam_atom_luminance_alpha = enif_make_atom(env, "luminance_alpha");
    beam_atom_unsigned_short_5_6_5 = enif_make_atom(env, "unsigned_short_5_6_5");
    beam_atom_scissor_box = enif_make_atom(env, "scissor_box");
    beam_atom_unsigned_int_10f_11f_11f_rev = enif_make_atom(env, "unsigned_int_10f_11f_11f_rev");
    beam_atom_max_renderbuffer_size = enif_make_atom(env, "max_renderbuffer_size");
    beam_atom_mirrored_repeat = enif_make_atom(env, "mirrored_repeat");
    beam_atom_short = enif_make_atom(env, "short");
    beam_atom_max_fragment_atomic_counters = enif_make_atom(env, "max_fragment_atomic_counters");
    beam_atom_atomic_counter_buffer = enif_make_atom(env, "atomic_counter_buffer");
    beam_atom_rg8i = enif_make_atom(env, "rg8i");
    beam_atom_int_sampler_2d = enif_make_atom(env, "int_sampler_2d");
    beam_atom_pixel_unpack_buffer = enif_make_atom(env, "pixel_unpack_buffer");
    beam_atom_renderbuffer_internal_format = enif_make_atom(env, "renderbuffer_internal_format");
    beam_atom_color_buffer_bit = enif_make_atom(env, "color_buffer_bit");
    beam_atom_rgb9_e5 = enif_make_atom(env, "rgb9_e5");
    beam_atom_texture2 = enif_make_atom(env, "texture2");
    beam_atom_color_attachment29 = enif_make_atom(env, "color_attachment29");
    beam_atom_max_depth_texture_samples = enif_make_atom(env, "max_depth_texture_samples");
    beam_atom_rgba32i = enif_make_atom(env, "rgba32i");
    beam_atom_rg8_snorm = enif_make_atom(env, "rg8_snorm");
    beam_atom_green_bits = enif_make_atom(env, "green_bits");
    beam_atom_texture30 = enif_make_atom(env, "texture30");
    beam_atom_compressed_signed_r11_eac = enif_make_atom(env, "compressed_signed_r11_eac");
    beam_atom_green = enif_make_atom(env, "green");
    beam_atom_texture_max_lod = enif_make_atom(env, "texture_max_lod");
    beam_atom_float_mat4x3 = enif_make_atom(env, "float_mat4x3");
    beam_atom_transform_feedback_buffer_start = enif_make_atom(env, "transform_feedback_buffer_start");
    beam_atom_src_alpha = enif_make_atom(env, "src_alpha");
    beam_atom_buffer_size = enif_make_atom(env, "buffer_size");
    beam_atom_texture_height = enif_make_atom(env, "texture_height");
    beam_atom_transform_feedback_varying = enif_make_atom(env, "transform_feedback_varying");
    beam_atom_alpha_bits = enif_make_atom(env, "alpha_bits");
    beam_atom_renderbuffer_samples = enif_make_atom(env, "renderbuffer_samples");
    beam_atom_depth_stencil_attachment = enif_make_atom(env, "depth_stencil_attachment");
    beam_atom_max_varying_components = enif_make_atom(env, "max_varying_components");
    beam_atom_color_attachment20 = enif_make_atom(env, "color_attachment20");
    beam_atom_texture_binding_cube_map = enif_make_atom(env, "texture_binding_cube_map");
    beam_atom_unsigned_int_image_cube = enif_make_atom(env, "unsigned_int_image_cube");
    beam_atom_depth_stencil = enif_make_atom(env, "depth_stencil");
    beam_atom_vertex_binding_stride = enif_make_atom(env, "vertex_binding_stride");
    beam_atom_depth_bits = enif_make_atom(env, "depth_bits");
    beam_atom_shader_image_access_barrier_bit = enif_make_atom(env, "shader_image_access_barrier_bit");
    beam_atom_rgb8i = enif_make_atom(env, "rgb8i");
    beam_atom_extensions = enif_make_atom(env, "extensions");
    beam_atom_unpack_skip_images = enif_make_atom(env, "unpack_skip_images");
    beam_atom_rg8 = enif_make_atom(env, "rg8");
    beam_atom_program_output = enif_make_atom(env, "program_output");
    beam_atom_rgba16f = enif_make_atom(env, "rgba16f");
    beam_atom_texture7 = enif_make_atom(env, "texture7");
    beam_atom_depth32f_stencil8 = enif_make_atom(env, "depth32f_stencil8");
    beam_atom_aliased_line_width_range = enif_make_atom(env, "aliased_line_width_range");
    beam_atom_max_vertex_uniform_vectors = enif_make_atom(env, "max_vertex_uniform_vectors");
    beam_atom_texture23 = enif_make_atom(env, "texture23");
    beam_atom_primitive_restart_fixed_index = enif_make_atom(env, "primitive_restart_fixed_index");
    beam_atom_texture_mag_filter = enif_make_atom(env, "texture_mag_filter");
    beam_atom_renderbuffer_alpha_size = enif_make_atom(env, "renderbuffer_alpha_size");
    beam_atom_vertex_attrib_relative_offset = enif_make_atom(env, "vertex_attrib_relative_offset");
    beam_atom_points = enif_make_atom(env, "points");
    beam_atom_unpack_skip_pixels = enif_make_atom(env, "unpack_skip_pixels");
    beam_atom_shader_storage_buffer_start = enif_make_atom(env, "shader_storage_buffer_start");
    beam_atom_element_array_buffer = enif_make_atom(env, "element_array_buffer");
    beam_atom_type = enif_make_atom(env, "type");
    beam_atom_max_combined_fragment_uniform_components = enif_make_atom(env, "max_combined_fragment_uniform_components");
    beam_atom_texture_swizzle_g = enif_make_atom(env, "texture_swizzle_g");
    beam_atom_color = enif_make_atom(env, "color");
    beam_atom_buffer_mapped = enif_make_atom(env, "buffer_mapped");
    beam_atom_texture_3d = enif_make_atom(env, "texture_3d");
    beam_atom_unsigned_byte = enif_make_atom(env, "unsigned_byte");
    beam_atom_stencil_value_mask = enif_make_atom(env, "stencil_value_mask");
    beam_atom_nearest_mipmap_nearest = enif_make_atom(env, "nearest_mipmap_nearest");
    beam_atom_stencil_clear_value = enif_make_atom(env, "stencil_clear_value");
    beam_atom_int_image_2d_array = enif_make_atom(env, "int_image_2d_array");
    beam_atom_texture_swizzle_r = enif_make_atom(env, "texture_swizzle_r");
    beam_atom_blend_src_rgb = enif_make_atom(env, "blend_src_rgb");
    beam_atom_uniform_block_binding = enif_make_atom(env, "uniform_block_binding");
    beam_atom_max_compute_atomic_counters = enif_make_atom(env, "max_compute_atomic_counters");
    beam_atom_copy_write_buffer = enif_make_atom(env, "copy_write_buffer");
    beam_atom_depth_component = enif_make_atom(env, "depth_component");
    beam_atom_sample_coverage_invert = enif_make_atom(env, "sample_coverage_invert");
    beam_atom_rg16ui = enif_make_atom(env, "rg16ui");
    beam_atom_transform_feedback_buffer_size = enif_make_atom(env, "transform_feedback_buffer_size");
    beam_atom_unsigned_int_2_10_10_10_rev = enif_make_atom(env, "unsigned_int_2_10_10_10_rev");
    beam_atom_texture9 = enif_make_atom(env, "texture9");
    beam_atom_rg16f = enif_make_atom(env, "rg16f");
    beam_atom_implementation_color_read_format = enif_make_atom(env, "implementation_color_read_format");
    beam_atom_bool_vec3 = enif_make_atom(env, "bool_vec3");
    beam_atom_unsigned_int_image_2d = enif_make_atom(env, "unsigned_int_image_2d");
    beam_atom_framebuffer_attachment_component_type = enif_make_atom(env, "framebuffer_attachment_component_type");
    beam_atom_stencil_pass_depth_pass = enif_make_atom(env, "stencil_pass_depth_pass");
    beam_atom_color_attachment31 = enif_make_atom(env, "color_attachment31");
    beam_atom_unsigned_short_5_5_5_1 = enif_make_atom(env, "unsigned_short_5_5_5_1");
    beam_atom_blend_equation_rgb = enif_make_atom(env, "blend_equation_rgb");
    beam_atom_image_2d_array = enif_make_atom(env, "image_2d_array");
    beam_atom_one_minus_constant_color = enif_make_atom(env, "one_minus_constant_color");
    beam_atom_unsigned_int_sampler_3d = enif_make_atom(env, "unsigned_int_sampler_3d");
    beam_atom_atomic_counter_buffer_index = enif_make_atom(env, "atomic_counter_buffer_index");
    beam_atom_uniform_block_name_length = enif_make_atom(env, "uniform_block_name_length");
    beam_atom_half_float = enif_make_atom(env, "half_float");
    beam_atom_vertex_attrib_array_divisor = enif_make_atom(env, "vertex_attrib_array_divisor");
    beam_atom_rasterizer_discard = enif_make_atom(env, "rasterizer_discard");
    beam_atom_framebuffer_default_samples = enif_make_atom(env, "framebuffer_default_samples");
    beam_atom_greater = enif_make_atom(env, "greater");
    beam_atom_max_program_texel_offset = enif_make_atom(env, "max_program_texel_offset");
    beam_atom_query_result = enif_make_atom(env, "query_result");
    beam_atom_stencil_index8 = enif_make_atom(env, "stencil_index8");
    beam_atom_texture_min_lod = enif_make_atom(env, "texture_min_lod");
    beam_atom_framebuffer_attachment_object_name = enif_make_atom(env, "framebuffer_attachment_object_name");
    beam_atom_max_compute_work_group_invocations = enif_make_atom(env, "max_compute_work_group_invocations");
    beam_atom_color_attachment15 = enif_make_atom(env, "color_attachment15");
    beam_atom_max_fragment_uniform_components = enif_make_atom(env, "max_fragment_uniform_components");
    beam_atom_linear_mipmap_linear = enif_make_atom(env, "linear_mipmap_linear");
    beam_atom_r32f = enif_make_atom(env, "r32f");
    beam_atom_dst_color = enif_make_atom(env, "dst_color");
    beam_atom_framebuffer_unsupported = enif_make_atom(env, "framebuffer_unsupported");
    beam_atom_color_attachment27 = enif_make_atom(env, "color_attachment27");
    beam_atom_color_attachment21 = enif_make_atom(env, "color_attachment21");
    beam_atom_program_binary_retrievable_hint = enif_make_atom(env, "program_binary_retrievable_hint");
    beam_atom_buffer_access_flags = enif_make_atom(env, "buffer_access_flags");
    beam_atom_blue = enif_make_atom(env, "blue");
    beam_atom_texture_wrap_s = enif_make_atom(env, "texture_wrap_s");
    beam_atom_texture_2d = enif_make_atom(env, "texture_2d");
    beam_atom_high_int = enif_make_atom(env, "high_int");
    beam_atom_color_attachment13 = enif_make_atom(env, "color_attachment13");
    beam_atom_read_write = enif_make_atom(env, "read_write");
    beam_atom_texture_binding_3d = enif_make_atom(env, "texture_binding_3d");
    beam_atom_rgb8_snorm = enif_make_atom(env, "rgb8_snorm");
    beam_atom_unsigned_int_vec4 = enif_make_atom(env, "unsigned_int_vec4");
    beam_atom_renderbuffer_width = enif_make_atom(env, "renderbuffer_width");
    beam_atom_aliased_point_size_range = enif_make_atom(env, "aliased_point_size_range");
    beam_atom_sampler_2d_shadow = enif_make_atom(env, "sampler_2d_shadow");
    beam_atom_polygon_offset_factor = enif_make_atom(env, "polygon_offset_factor");
    beam_atom_texture_green_size = enif_make_atom(env, "texture_green_size");
    beam_atom_stream_copy = enif_make_atom(env, "stream_copy");
    beam_atom_dispatch_indirect_buffer_binding = enif_make_atom(env, "dispatch_indirect_buffer_binding");
    beam_atom_texture_swizzle_a = enif_make_atom(env, "texture_swizzle_a");
    beam_atom_invalid_enum = enif_make_atom(env, "invalid_enum");
    beam_atom_uniform_offset = enif_make_atom(env, "uniform_offset");
    beam_atom_rgb5_a1 = enif_make_atom(env, "rgb5_a1");
    beam_atom_max_elements_vertices = enif_make_atom(env, "max_elements_vertices");
    beam_atom_texture_cube_map_positive_y = enif_make_atom(env, "texture_cube_map_positive_y");
    beam_atom_color_attachment19 = enif_make_atom(env, "color_attachment19");
    beam_atom_texture_red_size = enif_make_atom(env, "texture_red_size");
    beam_atom_renderbuffer_stencil_size = enif_make_atom(env, "renderbuffer_stencil_size");
    beam_atom_framebuffer_default_fixed_sample_locations = enif_make_atom(env, "framebuffer_default_fixed_sample_locations");
    beam_atom_bool = enif_make_atom(env, "bool");
    beam_atom_interleaved_attribs = enif_make_atom(env, "interleaved_attribs");
    beam_atom_src_alpha_saturate = enif_make_atom(env, "src_alpha_saturate");
    beam_atom_texture_cube_map_positive_z = enif_make_atom(env, "texture_cube_map_positive_z");
    beam_atom_min_program_texel_offset = enif_make_atom(env, "min_program_texel_offset");
    beam_atom_high_float = enif_make_atom(env, "high_float");
    beam_atom_constant_color = enif_make_atom(env, "constant_color");
    beam_atom_one_minus_src_alpha = enif_make_atom(env, "one_minus_src_alpha");
    beam_atom_texture18 = enif_make_atom(env, "texture18");
    beam_atom_rgba4 = enif_make_atom(env, "rgba4");
    beam_atom_uniform_buffer_size = enif_make_atom(env, "uniform_buffer_size");
    beam_atom_int_vec4 = enif_make_atom(env, "int_vec4");
    beam_atom_stencil_back_pass_depth_fail = enif_make_atom(env, "stencil_back_pass_depth_fail");
    beam_atom_cull_face_mode = enif_make_atom(env, "cull_face_mode");
    beam_atom_depth_writemask = enif_make_atom(env, "depth_writemask");
    beam_atom_framebuffer_attachment_color_encoding = enif_make_atom(env, "framebuffer_attachment_color_encoding");
    beam_atom_texture_width = enif_make_atom(env, "texture_width");
    beam_atom_compute_shader = enif_make_atom(env, "compute_shader");
    beam_atom_max_combined_shader_storage_blocks = enif_make_atom(env, "max_combined_shader_storage_blocks");
    beam_atom_max_vertex_uniform_components = enif_make_atom(env, "max_vertex_uniform_components");
    beam_atom_framebuffer_default_width = enif_make_atom(env, "framebuffer_default_width");
    beam_atom_max_compute_work_group_count = enif_make_atom(env, "max_compute_work_group_count");
    beam_atom_int_vec2 = enif_make_atom(env, "int_vec2");
    beam_atom_renderbuffer_blue_size = enif_make_atom(env, "renderbuffer_blue_size");
    beam_atom_sampler_cube_shadow = enif_make_atom(env, "sampler_cube_shadow");
    beam_atom_stencil = enif_make_atom(env, "stencil");
    beam_atom_referenced_by_compute_shader = enif_make_atom(env, "referenced_by_compute_shader");
    beam_atom_uniform_block_referenced_by_fragment_shader = enif_make_atom(env, "uniform_block_referenced_by_fragment_shader");
    beam_atom_num_compressed_texture_formats = enif_make_atom(env, "num_compressed_texture_formats");
    beam_atom_active_texture = enif_make_atom(env, "active_texture");
    beam_atom_max_compute_uniform_blocks = enif_make_atom(env, "max_compute_uniform_blocks");
    beam_atom_framebuffer_attachment_depth_size = enif_make_atom(env, "framebuffer_attachment_depth_size");
    beam_atom_fastest = enif_make_atom(env, "fastest");
    beam_atom_color_attachment16 = enif_make_atom(env, "color_attachment16");
    beam_atom_texture17 = enif_make_atom(env, "texture17");
    beam_atom_uniform_array_stride = enif_make_atom(env, "uniform_array_stride");
    beam_atom_unsigned_int_sampler_2d = enif_make_atom(env, "unsigned_int_sampler_2d");
    beam_atom_program_pipeline_binding = enif_make_atom(env, "program_pipeline_binding");
    beam_atom_stencil_bits = enif_make_atom(env, "stencil_bits");
    beam_atom_max_color_texture_samples = enif_make_atom(env, "max_color_texture_samples");
    beam_atom_no_error = enif_make_atom(env, "no_error");
    beam_atom_vertex_attrib_array_normalized = enif_make_atom(env, "vertex_attrib_array_normalized");
    beam_atom_one_minus_constant_alpha = enif_make_atom(env, "one_minus_constant_alpha");
    beam_atom_color_attachment26 = enif_make_atom(env, "color_attachment26");
    beam_atom_depth = enif_make_atom(env, "depth");
    beam_atom_rgba8_snorm = enif_make_atom(env, "rgba8_snorm");
    beam_atom_cw = enif_make_atom(env, "cw");
    beam_atom_r8i = enif_make_atom(env, "r8i");
    beam_atom_max_texture_image_units = enif_make_atom(env, "max_texture_image_units");
    beam_atom_front = enif_make_atom(env, "front");
    beam_atom_framebuffer_attachment_texture_layer = enif_make_atom(env, "framebuffer_attachment_texture_layer");
    beam_atom_stencil_back_fail = enif_make_atom(env, "stencil_back_fail");
    beam_atom_shader_binary_formats = enif_make_atom(env, "shader_binary_formats");
    beam_atom_max_elements_indices = enif_make_atom(env, "max_elements_indices");
    beam_atom_invalid_value = enif_make_atom(env, "invalid_value");
    beam_atom_is_row_major = enif_make_atom(env, "is_row_major");
    beam_atom_r16ui = enif_make_atom(env, "r16ui");
    beam_atom_rg8ui = enif_make_atom(env, "rg8ui");
    beam_atom_sample_buffers = enif_make_atom(env, "sample_buffers");
    beam_atom_array_stride = enif_make_atom(env, "array_stride");
    beam_atom_color_attachment10 = enif_make_atom(env, "color_attachment10");
    beam_atom_max_viewport_dims = enif_make_atom(env, "max_viewport_dims");
    beam_atom_max_uniform_locations = enif_make_atom(env, "max_uniform_locations");
    beam_atom_transform_feedback_buffer = enif_make_atom(env, "transform_feedback_buffer");
    beam_atom_srgb8_alpha8 = enif_make_atom(env, "srgb8_alpha8");
    beam_atom_luminance = enif_make_atom(env, "luminance");
    beam_atom_image_format_compatibility_type = enif_make_atom(env, "image_format_compatibility_type");
    beam_atom_unsigned_int_sampler_2d_multisample = enif_make_atom(env, "unsigned_int_sampler_2d_multisample");
    beam_atom_bool_vec4 = enif_make_atom(env, "bool_vec4");
    beam_atom_decr = enif_make_atom(env, "decr");
    beam_atom_stencil_func = enif_make_atom(env, "stencil_func");
    beam_atom_program_input = enif_make_atom(env, "program_input");
    beam_atom_texture21 = enif_make_atom(env, "texture21");
    beam_atom_max_vertex_attrib_relative_offset = enif_make_atom(env, "max_vertex_attrib_relative_offset");
    beam_atom_color_attachment7 = enif_make_atom(env, "color_attachment7");
    beam_atom_max_3d_texture_size = enif_make_atom(env, "max_3d_texture_size");
    beam_atom_color_attachment12 = enif_make_atom(env, "color_attachment12");
    beam_atom_max_shader_storage_buffer_bindings = enif_make_atom(env, "max_shader_storage_buffer_bindings");
    beam_atom_blend = enif_make_atom(env, "blend");
    beam_atom_rg_integer = enif_make_atom(env, "rg_integer");
    beam_atom_compressed_srgb8_punchthrough_alpha1_etc2 = enif_make_atom(env, "compressed_srgb8_punchthrough_alpha1_etc2");
    beam_atom_max_num_active_variables = enif_make_atom(env, "max_num_active_variables");
    beam_atom_texture12 = enif_make_atom(env, "texture12");
    beam_atom_uniform_block_index = enif_make_atom(env, "uniform_block_index");
    beam_atom_color_attachment25 = enif_make_atom(env, "color_attachment25");
    beam_atom_texture_cube_map_negative_x = enif_make_atom(env, "texture_cube_map_negative_x");
    beam_atom_framebuffer_attachment_alpha_size = enif_make_atom(env, "framebuffer_attachment_alpha_size");
    beam_atom_shader_storage_buffer = enif_make_atom(env, "shader_storage_buffer");
    beam_atom_vertex_attrib_array_size = enif_make_atom(env, "vertex_attrib_array_size");
    beam_atom_srgb8 = enif_make_atom(env, "srgb8");
    beam_atom_int_sampler_2d_multisample = enif_make_atom(env, "int_sampler_2d_multisample");
    beam_atom_texture6 = enif_make_atom(env, "texture6");
    beam_atom_query_result_available = enif_make_atom(env, "query_result_available");
    beam_atom_uniform_type = enif_make_atom(env, "uniform_type");
    beam_atom_color_attachment3 = enif_make_atom(env, "color_attachment3");
    beam_atom_renderbuffer = enif_make_atom(env, "renderbuffer");
    beam_atom_depth_test = enif_make_atom(env, "depth_test");
    beam_atom_func_add = enif_make_atom(env, "func_add");
    beam_atom_float_mat4x2 = enif_make_atom(env, "float_mat4x2");
    beam_atom_texture_2d_array = enif_make_atom(env, "texture_2d_array");
    beam_atom_max_fragment_uniform_vectors = enif_make_atom(env, "max_fragment_uniform_vectors");
    beam_atom_pixel_pack_buffer = enif_make_atom(env, "pixel_pack_buffer");
    beam_atom_max_color_attachments = enif_make_atom(env, "max_color_attachments");
    beam_atom_renderer = enif_make_atom(env, "renderer");
    beam_atom_buffer_update_barrier_bit = enif_make_atom(env, "buffer_update_barrier_bit");
    beam_atom_sampler_binding = enif_make_atom(env, "sampler_binding");
    beam_atom_max_combined_vertex_uniform_components = enif_make_atom(env, "max_combined_vertex_uniform_components");
    beam_atom_nearest = enif_make_atom(env, "nearest");
    beam_atom_bool_vec2 = enif_make_atom(env, "bool_vec2");
    beam_atom_texture20 = enif_make_atom(env, "texture20");
    beam_atom_array_size = enif_make_atom(env, "array_size");
    beam_atom_max_element_index = enif_make_atom(env, "max_element_index");
    beam_atom_stencil_fail = enif_make_atom(env, "stencil_fail");
    beam_atom_unpack_alignment = enif_make_atom(env, "unpack_alignment");
    beam_atom_max_vertex_atomic_counters = enif_make_atom(env, "max_vertex_atomic_counters");
    beam_atom_srgb = enif_make_atom(env, "srgb");
    beam_atom_max_name_length = enif_make_atom(env, "max_name_length");
    beam_atom_r8ui = enif_make_atom(env, "r8ui");
    beam_atom_float_mat4 = enif_make_atom(env, "float_mat4");
    beam_atom_max_framebuffer_width = enif_make_atom(env, "max_framebuffer_width");
    beam_atom_sampler_2d_array_shadow = enif_make_atom(env, "sampler_2d_array_shadow");
    beam_atom_one_minus_src_color = enif_make_atom(env, "one_minus_src_color");
    beam_atom_stencil_ref = enif_make_atom(env, "stencil_ref");
    beam_atom_texture25 = enif_make_atom(env, "texture25");
    beam_atom_rgba8ui = enif_make_atom(env, "rgba8ui");
    beam_atom_r32i = enif_make_atom(env, "r32i");
    beam_atom_notequal = enif_make_atom(env, "notequal");
    beam_atom_dst_alpha = enif_make_atom(env, "dst_alpha");
    beam_atom_color_attachment8 = enif_make_atom(env, "color_attachment8");
    beam_atom_incr = enif_make_atom(env, "incr");
    beam_atom_texture_blue_size = enif_make_atom(env, "texture_blue_size");
    beam_atom_rgb8ui = enif_make_atom(env, "rgb8ui");
    beam_atom_stencil_back_ref = enif_make_atom(env, "stencil_back_ref");
    beam_atom_all_shader_bits = enif_make_atom(env, "all_shader_bits");
    beam_atom_texture_binding_2d_multisample = enif_make_atom(env, "texture_binding_2d_multisample");
    beam_atom_float_mat3x4 = enif_make_atom(env, "float_mat3x4");
    beam_atom_line_width = enif_make_atom(env, "line_width");
    beam_atom_current_vertex_attrib = enif_make_atom(env, "current_vertex_attrib");
    beam_atom_vertex_attrib_binding = enif_make_atom(env, "vertex_attrib_binding");
    beam_atom_texture5 = enif_make_atom(env, "texture5");
    beam_atom_max_combined_compute_uniform_components = enif_make_atom(env, "max_combined_compute_uniform_components");
    beam_atom_rgb_integer = enif_make_atom(env, "rgb_integer");
    beam_atom_dynamic_draw = enif_make_atom(env, "dynamic_draw");
    beam_atom_low_int = enif_make_atom(env, "low_int");
    beam_atom_blend_src_alpha = enif_make_atom(env, "blend_src_alpha");
    beam_atom_buffer_map_length = enif_make_atom(env, "buffer_map_length");
    beam_atom_texture_swizzle_b = enif_make_atom(env, "texture_swizzle_b");
    beam_atom_int_2_10_10_10_rev = enif_make_atom(env, "int_2_10_10_10_rev");
    beam_atom_referenced_by_vertex_shader = enif_make_atom(env, "referenced_by_vertex_shader");
    beam_atom_unsigned_int_sampler_2d_array = enif_make_atom(env, "unsigned_int_sampler_2d_array");
    beam_atom_max_integer_samples = enif_make_atom(env, "max_integer_samples");
    beam_atom_uniform_buffer = enif_make_atom(env, "uniform_buffer");
    beam_atom_framebuffer_attachment_stencil_size = enif_make_atom(env, "framebuffer_attachment_stencil_size");
    beam_atom_fragment_shader_derivative_hint = enif_make_atom(env, "fragment_shader_derivative_hint");
    beam_atom_shader_storage_buffer_size = enif_make_atom(env, "shader_storage_buffer_size");
    beam_atom_location = enif_make_atom(env, "location");
    beam_atom_renderbuffer_green_size = enif_make_atom(env, "renderbuffer_green_size");
    beam_atom_shader_storage_barrier_bit = enif_make_atom(env, "shader_storage_barrier_bit");
    beam_atom_constant_alpha = enif_make_atom(env, "constant_alpha");
    beam_atom_max_framebuffer_height = enif_make_atom(env, "max_framebuffer_height");
    beam_atom_keep = enif_make_atom(env, "keep");
    beam_atom_texture14 = enif_make_atom(env, "texture14");
    beam_atom_sample_position = enif_make_atom(env, "sample_position");
    beam_atom_rgb10_a2 = enif_make_atom(env, "rgb10_a2");
    beam_atom_sample_mask = enif_make_atom(env, "sample_mask");
    beam_atom_rgb16ui = enif_make_atom(env, "rgb16ui");
    beam_atom_stencil_writemask = enif_make_atom(env, "stencil_writemask");
    beam_atom_max_varying_vectors = enif_make_atom(env, "max_varying_vectors");
    beam_atom_max_vertex_attrib_bindings = enif_make_atom(env, "max_vertex_attrib_bindings");
    beam_atom_uniform_block_referenced_by_vertex_shader = enif_make_atom(env, "uniform_block_referenced_by_vertex_shader");
    beam_atom_unsigned_int_vec3 = enif_make_atom(env, "unsigned_int_vec3");
    beam_atom_program_separable = enif_make_atom(env, "program_separable");
    beam_atom_texture28 = enif_make_atom(env, "texture28");
    beam_atom_max_combined_atomic_counters = enif_make_atom(env, "max_combined_atomic_counters");
    beam_atom_top_level_array_size = enif_make_atom(env, "top_level_array_size");
    beam_atom_float_mat3x2 = enif_make_atom(env, "float_mat3x2");
    beam_atom_texture27 = enif_make_atom(env, "texture27");
    beam_atom_color_attachment14 = enif_make_atom(env, "color_attachment14");
    beam_atom_blend_dst_alpha = enif_make_atom(env, "blend_dst_alpha");
    beam_atom_unsigned_short_4_4_4_4 = enif_make_atom(env, "unsigned_short_4_4_4_4");
    beam_atom_rg32i = enif_make_atom(env, "rg32i");
    beam_atom_nearest_mipmap_linear = enif_make_atom(env, "nearest_mipmap_linear");
    beam_atom_fragment_shader_bit = enif_make_atom(env, "fragment_shader_bit");
    beam_atom_framebuffer_incomplete_attachment = enif_make_atom(env, "framebuffer_incomplete_attachment");
    beam_atom_static_read = enif_make_atom(env, "static_read");
    beam_atom_rgba8i = enif_make_atom(env, "rgba8i");
    beam_atom_invalid_framebuffer_operation = enif_make_atom(env, "invalid_framebuffer_operation");
    beam_atom_texture_compressed = enif_make_atom(env, "texture_compressed");
    beam_atom_offset = enif_make_atom(env, "offset");
    beam_atom_info_log_length = enif_make_atom(env, "info_log_length");
    beam_atom_texture_compare_func = enif_make_atom(env, "texture_compare_func");
    beam_atom_compute_shader_bit = enif_make_atom(env, "compute_shader_bit");
    beam_atom_framebuffer_attachment_texture_level = enif_make_atom(env, "framebuffer_attachment_texture_level");
    beam_atom_rgba_integer = enif_make_atom(env, "rgba_integer");
    beam_atom_texture10 = enif_make_atom(env, "texture10");
    beam_atom_texture8 = enif_make_atom(env, "texture8");
    beam_atom_texture22 = enif_make_atom(env, "texture22");
    beam_atom_equal = enif_make_atom(env, "equal");
    beam_atom_depth_clear_value = enif_make_atom(env, "depth_clear_value");
    beam_atom_depth_range = enif_make_atom(env, "depth_range");
    beam_atom_float = enif_make_atom(env, "float");
    beam_atom_max_compute_atomic_counter_buffers = enif_make_atom(env, "max_compute_atomic_counter_buffers");
    beam_atom_max_vertex_texture_image_units = enif_make_atom(env, "max_vertex_texture_image_units");
    beam_atom_rgb32ui = enif_make_atom(env, "rgb32ui");
    beam_atom_max_vertex_shader_storage_blocks = enif_make_atom(env, "max_vertex_shader_storage_blocks");
    beam_atom_texture16 = enif_make_atom(env, "texture16");
    beam_atom_func_reverse_subtract = enif_make_atom(env, "func_reverse_subtract");
    beam_atom_compressed_srgb8_etc2 = enif_make_atom(env, "compressed_srgb8_etc2");
    beam_atom_compressed_texture_formats = enif_make_atom(env, "compressed_texture_formats");
    beam_atom_vertex_attrib_array_type = enif_make_atom(env, "vertex_attrib_array_type");
    beam_atom_sample_alpha_to_coverage = enif_make_atom(env, "sample_alpha_to_coverage");
    beam_atom_r8 = enif_make_atom(env, "r8");
    beam_atom_texture_wrap_t = enif_make_atom(env, "texture_wrap_t");
    beam_atom_sampler_cube = enif_make_atom(env, "sampler_cube");
    beam_atom_clamp_to_edge = enif_make_atom(env, "clamp_to_edge");
    beam_atom_rgb32f = enif_make_atom(env, "rgb32f");
    beam_atom_texture26 = enif_make_atom(env, "texture26");
    beam_atom_float_32_unsigned_int_24_8_rev = enif_make_atom(env, "float_32_unsigned_int_24_8_rev");
    beam_atom_current_program = enif_make_atom(env, "current_program");
    beam_atom_red_integer = enif_make_atom(env, "red_integer");
    beam_atom_sample_coverage = enif_make_atom(env, "sample_coverage");
    beam_atom_compressed_rgba8_etc2_eac = enif_make_atom(env, "compressed_rgba8_etc2_eac");
    beam_atom_float_vec2 = enif_make_atom(env, "float_vec2");
    beam_atom_one_minus_dst_alpha = enif_make_atom(env, "one_minus_dst_alpha");
    beam_atom_texture_max_level = enif_make_atom(env, "texture_max_level");
    beam_atom_back = enif_make_atom(env, "back");
    beam_atom_color_attachment2 = enif_make_atom(env, "color_attachment2");
    beam_atom_red = enif_make_atom(env, "red");
    beam_atom_depth_stencil_texture_mode = enif_make_atom(env, "depth_stencil_texture_mode");
    beam_atom_color_attachment18 = enif_make_atom(env, "color_attachment18");
    beam_atom_dynamic_read = enif_make_atom(env, "dynamic_read");
    beam_atom_current_query = enif_make_atom(env, "current_query");
    beam_atom_texture24 = enif_make_atom(env, "texture24");
    beam_atom_uniform = enif_make_atom(env, "uniform");
    beam_atom_texture29 = enif_make_atom(env, "texture29");
    beam_atom_image_cube = enif_make_atom(env, "image_cube");
    beam_atom_color_attachment1 = enif_make_atom(env, "color_attachment1");
    beam_atom_scissor_test = enif_make_atom(env, "scissor_test");
    beam_atom_max_compute_texture_image_units = enif_make_atom(env, "max_compute_texture_image_units");
    beam_atom_any_samples_passed = enif_make_atom(env, "any_samples_passed");
    beam_atom_compressed_r11_eac = enif_make_atom(env, "compressed_r11_eac");
    beam_atom_write_only = enif_make_atom(env, "write_only");
    beam_atom_max_compute_shader_storage_blocks = enif_make_atom(env, "max_compute_shader_storage_blocks");
    beam_atom_rg = enif_make_atom(env, "rg");
    beam_atom_read_framebuffer = enif_make_atom(env, "read_framebuffer");
    beam_atom_renderbuffer_red_size = enif_make_atom(env, "renderbuffer_red_size");
    beam_atom_shader_storage_buffer_binding = enif_make_atom(env, "shader_storage_buffer_binding");
    beam_atom_texture_cube_map_negative_y = enif_make_atom(env, "texture_cube_map_negative_y");
    beam_atom_rgba16i = enif_make_atom(env, "rgba16i");
    beam_atom_max_framebuffer_samples = enif_make_atom(env, "max_framebuffer_samples");
    beam_atom_static_draw = enif_make_atom(env, "static_draw");
    beam_atom_r16f = enif_make_atom(env, "r16f");
    beam_atom_rgba32f = enif_make_atom(env, "rgba32f");
    beam_atom_max_combined_texture_image_units = enif_make_atom(env, "max_combined_texture_image_units");
    beam_atom_max_texture_lod_bias = enif_make_atom(env, "max_texture_lod_bias");
    beam_atom_implementation_color_read_type = enif_make_atom(env, "implementation_color_read_type");
    beam_atom_framebuffer_incomplete_missing_attachment = enif_make_atom(env, "framebuffer_incomplete_missing_attachment");
    beam_atom_rgb16i = enif_make_atom(env, "rgb16i");
    beam_atom_num_shader_binary_formats = enif_make_atom(env, "num_shader_binary_formats");
    beam_atom_max_cube_map_texture_size = enif_make_atom(env, "max_cube_map_texture_size");
    beam_atom_max_fragment_shader_storage_blocks = enif_make_atom(env, "max_fragment_shader_storage_blocks");
    beam_atom_uniform_block_active_uniforms = enif_make_atom(env, "uniform_block_active_uniforms");
    beam_atom_texture31 = enif_make_atom(env, "texture31");
    beam_atom_rgb10_a2ui = enif_make_atom(env, "rgb10_a2ui");
    beam_atom_rgba16ui = enif_make_atom(env, "rgba16ui");
    beam_atom_lequal = enif_make_atom(env, "lequal");
    beam_atom_buffer_usage = enif_make_atom(env, "buffer_usage");
    beam_atom_byte = enif_make_atom(env, "byte");
    beam_atom_samples = enif_make_atom(env, "samples");
    beam_atom_color_attachment11 = enif_make_atom(env, "color_attachment11");
    beam_atom_depth_component32f = enif_make_atom(env, "depth_component32f");
    beam_atom_max_uniform_block_size = enif_make_atom(env, "max_uniform_block_size");
    beam_atom_stream_read = enif_make_atom(env, "stream_read");
    beam_atom_zero = enif_make_atom(env, "zero");
    beam_atom_transform_feedback_barrier_bit = enif_make_atom(env, "transform_feedback_barrier_bit");
    beam_atom_gequal = enif_make_atom(env, "gequal");
    beam_atom_framebuffer_default_height = enif_make_atom(env, "framebuffer_default_height");
    beam_atom_texture_cube_map_positive_x = enif_make_atom(env, "texture_cube_map_positive_x");
    beam_atom_texture_base_level = enif_make_atom(env, "texture_base_level");
    beam_atom_color_attachment6 = enif_make_atom(env, "color_attachment6");
    beam_atom_max_combined_uniform_blocks = enif_make_atom(env, "max_combined_uniform_blocks");
    beam_atom_pack_alignment = enif_make_atom(env, "pack_alignment");
    beam_atom_draw_framebuffer_binding = enif_make_atom(env, "draw_framebuffer_binding");
    beam_atom_shading_language_version = enif_make_atom(env, "shading_language_version");
    beam_atom_framebuffer_attachment_object_type = enif_make_atom(env, "framebuffer_attachment_object_type");
    beam_atom_matrix_stride = enif_make_atom(env, "matrix_stride");
    beam_atom_rgb32i = enif_make_atom(env, "rgb32i");
    beam_atom_ccw = enif_make_atom(env, "ccw");
    beam_atom_fragment_shader = enif_make_atom(env, "fragment_shader");
    beam_atom_triangles = enif_make_atom(env, "triangles");
    beam_atom_blend_dst_rgb = enif_make_atom(env, "blend_dst_rgb");
    beam_atom_color_attachment22 = enif_make_atom(env, "color_attachment22");
    beam_atom_stencil_index = enif_make_atom(env, "stencil_index");
    beam_atom_uniform_barrier_bit = enif_make_atom(env, "uniform_barrier_bit");
    beam_atom_texture19 = enif_make_atom(env, "texture19");
    beam_atom_stencil_pass_depth_fail = enif_make_atom(env, "stencil_pass_depth_fail");
    beam_atom_compressed_rgb8_etc2 = enif_make_atom(env, "compressed_rgb8_etc2");
    beam_atom_renderbuffer_depth_size = enif_make_atom(env, "renderbuffer_depth_size");
    beam_atom_framebuffer_attachment_green_size = enif_make_atom(env, "framebuffer_attachment_green_size");
    beam_atom_uniform_block_data_size = enif_make_atom(env, "uniform_block_data_size");
    beam_atom_active_program = enif_make_atom(env, "active_program");
    beam_atom_dont_care = enif_make_atom(env, "dont_care");
    beam_atom_uniform_buffer_binding = enif_make_atom(env, "uniform_buffer_binding");
    beam_atom_medium_float = enif_make_atom(env, "medium_float");
    beam_atom_r8_snorm = enif_make_atom(env, "r8_snorm");
    beam_atom_texture_internal_format = enif_make_atom(env, "texture_internal_format");
    beam_atom_repeat = enif_make_atom(env, "repeat");
    beam_atom_command_barrier_bit = enif_make_atom(env, "command_barrier_bit");
    beam_atom_rgb8 = enif_make_atom(env, "rgb8");
    beam_atom_rg32f = enif_make_atom(env, "rg32f");
    beam_atom_linear = enif_make_atom(env, "linear");
    beam_atom_vertex_array_binding = enif_make_atom(env, "vertex_array_binding");
    beam_atom_depth_func = enif_make_atom(env, "depth_func");
    beam_atom_invert = enif_make_atom(env, "invert");
    beam_atom_dither = enif_make_atom(env, "dither");
    beam_atom_color_attachment23 = enif_make_atom(env, "color_attachment23");
    beam_atom_name_length = enif_make_atom(env, "name_length");
    beam_atom_texture0 = enif_make_atom(env, "texture0");
    beam_atom_max_array_texture_layers = enif_make_atom(env, "max_array_texture_layers");
    beam_atom_color_attachment5 = enif_make_atom(env, "color_attachment5");
    beam_atom_program_binary_formats = enif_make_atom(env, "program_binary_formats");
    beam_atom_int = enif_make_atom(env, "int");
    beam_atom_line_loop = enif_make_atom(env, "line_loop");
    beam_atom_separate_attribs = enif_make_atom(env, "separate_attribs");
    beam_atom_max_vertex_attribs = enif_make_atom(env, "max_vertex_attribs");
    beam_atom_r16i = enif_make_atom(env, "r16i");
    beam_atom_transform_feedback = enif_make_atom(env, "transform_feedback");
    beam_atom_vertex_attrib_array_integer = enif_make_atom(env, "vertex_attrib_array_integer");
    beam_atom_max_fragment_uniform_blocks = enif_make_atom(env, "max_fragment_uniform_blocks");
    beam_atom_read_only = enif_make_atom(env, "read_only");
    beam_atom_float_mat2 = enif_make_atom(env, "float_mat2");
    beam_atom_texture_2d_multisample = enif_make_atom(env, "texture_2d_multisample");
    beam_atom_active_resources = enif_make_atom(env, "active_resources");
    beam_atom_sample_coverage_value = enif_make_atom(env, "sample_coverage_value");
    beam_atom_alpha = enif_make_atom(env, "alpha");
    beam_atom_buffer_data_size = enif_make_atom(env, "buffer_data_size");
    beam_atom_sampler_2d = enif_make_atom(env, "sampler_2d");
    beam_atom_int_sampler_2d_array = enif_make_atom(env, "int_sampler_2d_array");
    beam_atom_shader_storage_buffer_offset_alignment = enif_make_atom(env, "shader_storage_buffer_offset_alignment");
    beam_atom_vertex_attrib_array_enabled = enif_make_atom(env, "vertex_attrib_array_enabled");
    beam_atom_rgba = enif_make_atom(env, "rgba");
    beam_atom_texture_alpha_size = enif_make_atom(env, "texture_alpha_size");
    beam_atom_unsigned_int_image_3d = enif_make_atom(env, "unsigned_int_image_3d");
    beam_atom_buffer_variable = enif_make_atom(env, "buffer_variable");
    beam_atom_uniform_block = enif_make_atom(env, "uniform_block");
    beam_atom_framebuffer_complete = enif_make_atom(env, "framebuffer_complete");
    beam_atom_unpack_row_length = enif_make_atom(env, "unpack_row_length");
    beam_atom_static_copy = enif_make_atom(env, "static_copy");
    beam_atom_rgba32ui = enif_make_atom(env, "rgba32ui");
    beam_atom_pixel_pack_buffer_binding = enif_make_atom(env, "pixel_pack_buffer_binding");
    beam_atom_texture_compare_mode = enif_make_atom(env, "texture_compare_mode");
    beam_atom_image_2d = enif_make_atom(env, "image_2d");
    beam_atom_rgb16f = enif_make_atom(env, "rgb16f");
    beam_atom_compressed_srgb8_alpha8_etc2_eac = enif_make_atom(env, "compressed_srgb8_alpha8_etc2_eac");
    beam_atom_color_attachment4 = enif_make_atom(env, "color_attachment4");
    beam_atom_cull_face = enif_make_atom(env, "cull_face");
    beam_atom_float_mat2x4 = enif_make_atom(env, "float_mat2x4");
    beam_atom_num_extensions = enif_make_atom(env, "num_extensions");
    beam_atom_incr_wrap = enif_make_atom(env, "incr_wrap");
    beam_atom_vendor = enif_make_atom(env, "vendor");
    beam_atom_viewport = enif_make_atom(env, "viewport");
    beam_atom_sampler_3d = enif_make_atom(env, "sampler_3d");
    beam_atom_color_writemask = enif_make_atom(env, "color_writemask");
    beam_atom_draw_framebuffer = enif_make_atom(env, "draw_framebuffer");
    beam_atom_element_array_buffer_binding = enif_make_atom(env, "element_array_buffer_binding");
    beam_atom_unpack_image_height = enif_make_atom(env, "unpack_image_height");
    beam_atom_uniform_is_row_major = enif_make_atom(env, "uniform_is_row_major");
    beam_atom_rg16i = enif_make_atom(env, "rg16i");
    beam_atom_blend_color = enif_make_atom(env, "blend_color");
    beam_atom_int_image_cube = enif_make_atom(env, "int_image_cube");
    beam_atom_r11f_g11f_b10f = enif_make_atom(env, "r11f_g11f_b10f");
    beam_atom_active_variables = enif_make_atom(env, "active_variables");
    beam_atom_subpixel_bits = enif_make_atom(env, "subpixel_bits");
    beam_atom_framebuffer_incomplete_multisample = enif_make_atom(env, "framebuffer_incomplete_multisample");
    beam_atom_image_3d = enif_make_atom(env, "image_3d");
    beam_atom_block_index = enif_make_atom(env, "block_index");
    beam_atom_framebuffer = enif_make_atom(env, "framebuffer");
    beam_atom_texture_cube_map_negative_z = enif_make_atom(env, "texture_cube_map_negative_z");
    beam_atom_none = enif_make_atom(env, "none");
    beam_atom_compressed_rg11_eac = enif_make_atom(env, "compressed_rg11_eac");
    beam_atom_dynamic_copy = enif_make_atom(env, "dynamic_copy");
    beam_atom_compressed_rgb8_punchthrough_alpha1_etc2 = enif_make_atom(env, "compressed_rgb8_punchthrough_alpha1_etc2");
    beam_atom_transform_feedback_primitives_written = enif_make_atom(env, "transform_feedback_primitives_written");
    beam_atom_always = enif_make_atom(env, "always");
    beam_atom_stream_draw = enif_make_atom(env, "stream_draw");
    beam_atom_draw_indirect_buffer = enif_make_atom(env, "draw_indirect_buffer");
    beam_atom_stencil_back_pass_depth_pass = enif_make_atom(env, "stencil_back_pass_depth_pass");
    beam_atom_invalid_operation = enif_make_atom(env, "invalid_operation");
    beam_atom_depth24_stencil8 = enif_make_atom(env, "depth24_stencil8");
    beam_atom_float_vec3 = enif_make_atom(env, "float_vec3");
    beam_atom_any_samples_passed_conservative = enif_make_atom(env, "any_samples_passed_conservative");
    beam_atom_line_strip = enif_make_atom(env, "line_strip");
    beam_atom_float_mat2x3 = enif_make_atom(env, "float_mat2x3");
    beam_atom_array_buffer = enif_make_atom(env, "array_buffer");
    beam_atom_max = enif_make_atom(env, "max");
    beam_atom_uniform_buffer_offset_alignment = enif_make_atom(env, "uniform_buffer_offset_alignment");
    beam_atom_int_image_2d = enif_make_atom(env, "int_image_2d");
    beam_atom_framebuffer_barrier_bit = enif_make_atom(env, "framebuffer_barrier_bit");
    beam_atom_rgba8 = enif_make_atom(env, "rgba8");
    beam_atom_texture_binding_2d_array = enif_make_atom(env, "texture_binding_2d_array");
    beam_atom_depth_component24 = enif_make_atom(env, "depth_component24");
    beam_atom_max_compute_work_group_size = enif_make_atom(env, "max_compute_work_group_size");
    beam_atom_max_texture_size = enif_make_atom(env, "max_texture_size");
    beam_atom_pack_skip_rows = enif_make_atom(env, "pack_skip_rows");
    beam_atom_texture_update_barrier_bit = enif_make_atom(env, "texture_update_barrier_bit");
    beam_atom_texture_binding_2d = enif_make_atom(env, "texture_binding_2d");
    beam_atom_stencil_back_value_mask = enif_make_atom(env, "stencil_back_value_mask");
    beam_atom_vertex_attrib_array_buffer_binding = enif_make_atom(env, "vertex_attrib_array_buffer_binding");
    beam_atom_int_sampler_3d = enif_make_atom(env, "int_sampler_3d");
    beam_atom_stencil_buffer_bit = enif_make_atom(env, "stencil_buffer_bit");
    beam_atom_triangle_strip = enif_make_atom(env, "triangle_strip");
    beam_atom_renderbuffer_binding = enif_make_atom(env, "renderbuffer_binding");
    beam_atom_version = enif_make_atom(env, "version");
    beam_atom_texture4 = enif_make_atom(env, "texture4");
    beam_atom_shader_compiler = enif_make_atom(env, "shader_compiler");
    beam_atom_color_attachment30 = enif_make_atom(env, "color_attachment30");
    beam_atom_uniform_size = enif_make_atom(env, "uniform_size");
    beam_atom_top_level_array_stride = enif_make_atom(env, "top_level_array_stride");
    beam_atom_stencil_back_func = enif_make_atom(env, "stencil_back_func");
    beam_atom_unsigned_int_vec2 = enif_make_atom(env, "unsigned_int_vec2");
    beam_atom_float_mat3 = enif_make_atom(env, "float_mat3");
    beam_atom_unsigned_int = enif_make_atom(env, "unsigned_int");
    beam_atom_all_barrier_bits = enif_make_atom(env, "all_barrier_bits");
    beam_atom_medium_int = enif_make_atom(env, "medium_int");
    beam_atom_rg32ui = enif_make_atom(env, "rg32ui");
    beam_atom_int_image_3d = enif_make_atom(env, "int_image_3d");
    beam_atom_rgb565 = enif_make_atom(env, "rgb565");
    beam_atom_max_compute_uniform_components = enif_make_atom(env, "max_compute_uniform_components");
    beam_atom_less = enif_make_atom(env, "less");
    beam_atom_max_uniform_buffer_bindings = enif_make_atom(env, "max_uniform_buffer_bindings");
    beam_atom_int_vec3 = enif_make_atom(env, "int_vec3");
    beam_atom_framebuffer_undefined = enif_make_atom(env, "framebuffer_undefined");
    return 0;
}

static void nif_module_unload(ErlNifEnv* caller_env, void* priv_data)
{
    (void)caller_env;
    (void)priv_data;
}
ERL_NIF_TERM custom_enif_make_bool(ErlNifEnv* env, GLboolean val) {
    return enif_make_atom(env, val == GL_TRUE ? "true" : "false");
}
int custom_enif_get_bool(ErlNifEnv* env, ERL_NIF_TERM term, GLboolean* bp) {
    if (enif_is_identical(term, enif_make_atom(env, "true"))) {
        *bp = GL_TRUE;
        return 1;
    } else if (enif_is_identical(term, enif_make_atom(env, "false"))) {
        *bp = GL_FALSE;
        return 1;
    } else {
        return 0;
    }
}

static ERL_NIF_TERM nif_glDisable_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glDisable(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDisable(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDisable_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glMemoryBarrierByRegion_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLbitfield arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLbitfield)arg_0_tmp;

    glMemoryBarrierByRegion(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glMemoryBarrierByRegion(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glMemoryBarrierByRegion_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glSamplerParameterf_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;

    glSamplerParameterf(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glSamplerParameterf(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSamplerParameterf_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glSamplerParameterfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_2_array = enif_alloc(sizeof(GLfloat) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLfloat)arg_2_val;
    }

    glSamplerParameterfv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glSamplerParameterfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSamplerParameterfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glSamplerParameteri_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;

    glSamplerParameteri(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glSamplerParameteri(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSamplerParameteri_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glSamplerParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glSamplerParameteriv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glSamplerParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSamplerParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetIntegervInteger_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint out_1;

    glGetIntegerv(arg_0, &out_1);

    ERL_NIF_TERM out_1_ret = enif_make_int(env, out_1);
    return enif_make_tuple(env, 1,
        out_1_ret
    );
}

static ERL_NIF_TERM nif_glGetIntegervInteger(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetIntegervInteger_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint out_2;

    glGetProgramiv(arg_0, arg_1, &out_2);

    ERL_NIF_TERM out_2_ret = enif_make_atom(env, out_2 != 0 ? "true" : "false");
    return enif_make_tuple(env, 1,
        out_2_ret
    );
}

static ERL_NIF_TERM nif_glGetProgramiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;
    GLenum arg_6;
    unsigned int arg_6_tmp;
    if (!enif_get_uint(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLenum)arg_6_tmp;
    GLenum arg_7;
    unsigned int arg_7_tmp;
    if (!enif_get_uint(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLenum)arg_7_tmp;
    ErlNifBinary arg_8;
    if (!enif_inspect_binary(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glTexSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, (void*)arg_8.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexSubImage2D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glEnableVertexAttribArray_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glEnableVertexAttribArray(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glEnableVertexAttribArray(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEnableVertexAttribArray_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glClearStencil_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;

    glClearStencil(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glClearStencil(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearStencil_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramivInteger_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint out_2;

    glGetProgramiv(arg_0, arg_1, &out_2);

    ERL_NIF_TERM out_2_ret = enif_make_int(env, out_2);
    return enif_make_tuple(env, 1,
        out_2_ret
    );
}

static ERL_NIF_TERM nif_glGetProgramivInteger(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramivInteger_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindAttribLocation_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    ErlNifBinary arg_2;
    if (!enif_inspect_binary(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLchar* arg_2_string = (GLchar*)enif_alloc(arg_2.size + 1);
    if (!arg_2_string) {
        return enif_make_badarg(env);
    }
    if (arg_2.size > 0) {
        memcpy(arg_2_string, arg_2.data, arg_2.size);
    }
    arg_2_string[arg_2.size] = '\0';

    glBindAttribLocation(arg_0, arg_1, (const GLchar*)arg_2_string);

    enif_free(arg_2_string);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindAttribLocation(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindAttribLocation_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribBinding_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glVertexAttribBinding(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribBinding(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribBinding_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTransformFeedbackVaryings_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    if (!enif_is_list(env, argv[1])) {
        return enif_make_badarg(env);
    }

    ERL_NIF_TERM arg_1_list = argv[1];
    ERL_NIF_TERM arg_1_head;

    unsigned arg_1_count = 0;
    ERL_NIF_TERM arg_1_tmp_list = arg_1_list;
    while (!enif_is_empty_list(env, arg_1_tmp_list)) {
        if (!enif_get_list_cell(env, arg_1_tmp_list, &arg_1_head, &arg_1_tmp_list)) {
            return enif_make_badarg(env);
        }
        if (!enif_is_binary(env, arg_1_head)) {
            return enif_make_badarg(env);
        }
        arg_1_count++;
    }

    if (arg_1_count == 0) {
        return enif_make_badarg(env);
    }

    GLchar** arg_1_strings = enif_alloc(sizeof(GLchar*) * arg_1_count);
    if (!arg_1_strings) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    for (unsigned arg_1_j = 0; arg_1_j < arg_1_count; arg_1_j++) {
        arg_1_strings[arg_1_j] = NULL;
    }

    arg_1_tmp_list = arg_1_list;
    unsigned arg_1_i = 0;
    while (!enif_is_empty_list(env, arg_1_tmp_list)) {
        enif_get_list_cell(env, arg_1_tmp_list, &arg_1_head, &arg_1_tmp_list);
        ErlNifBinary arg_1_binary;
        if (!enif_inspect_binary(env, arg_1_head, &arg_1_binary)) {
            for (unsigned arg_1_j = 0; arg_1_j < arg_1_i; arg_1_j++) {
                enif_free(arg_1_strings[arg_1_j]);
            }
            enif_free(arg_1_strings);
            return enif_make_badarg(env);
        }

        GLchar* arg_1_string = (GLchar*)enif_alloc(arg_1_binary.size + 1);
        if (!arg_1_string) {
            for (unsigned arg_1_j = 0; arg_1_j < arg_1_i; arg_1_j++) {
                enif_free(arg_1_strings[arg_1_j]);
            }
            enif_free(arg_1_strings);
            return enif_make_tuple2(env,
                enif_make_atom(env, "error"),
                enif_make_atom(env, "out_of_memory")
            );
        }
        if (arg_1_binary.size > 0) {
            memcpy(arg_1_string, arg_1_binary.data, arg_1_binary.size);
        }
        arg_1_string[arg_1_binary.size] = '\0';
        arg_1_strings[arg_1_i] = arg_1_string;
        arg_1_i++;
    }
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;

    glTransformFeedbackVaryings(arg_0, (GLsizei)arg_1_count, (const GLchar* const*)arg_1_strings, arg_2);

    for (unsigned arg_1_j = 0; arg_1_j < arg_1_count; arg_1_j++) {
        enif_free(arg_1_strings[arg_1_j]);
    }
    enif_free(arg_1_strings);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTransformFeedbackVaryings(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTransformFeedbackVaryings_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramInfoLog_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_max_length_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_max_length_tmp)) {
        return enif_make_badarg(env);
    }

    if (arg_1_max_length_tmp == 0) {
        return enif_make_badarg(env);
    }

    GLsizei arg_1_max_length = (GLsizei)arg_1_max_length_tmp;
    GLchar* arg_1_info_log = (GLchar*)enif_alloc(arg_1_max_length_tmp);
    if (!arg_1_info_log) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_1_length = 0;

    glGetProgramInfoLog(arg_0, arg_1_max_length, &arg_1_length, arg_1_info_log);

    ERL_NIF_TERM arg_1_result;
    unsigned char* arg_1_bin = enif_make_new_binary(env, arg_1_length, &arg_1_result);
    if (arg_1_bin && arg_1_length > 0) {
        memcpy(arg_1_bin, arg_1_info_log, arg_1_length);
    }
    enif_free(arg_1_info_log);
    return enif_make_tuple(env, 1,
        arg_1_result
    );
}

static ERL_NIF_TERM nif_glGetProgramInfoLog(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramInfoLog_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexStorage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;

    glTexStorage2D(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexStorage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexStorage2D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramPipelineInfoLog_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_max_length_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_max_length_tmp)) {
        return enif_make_badarg(env);
    }

    if (arg_1_max_length_tmp == 0) {
        return enif_make_badarg(env);
    }

    GLsizei arg_1_max_length = (GLsizei)arg_1_max_length_tmp;
    GLchar* arg_1_info_log = (GLchar*)enif_alloc(arg_1_max_length_tmp);
    if (!arg_1_info_log) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_1_length = 0;

    glGetProgramPipelineInfoLog(arg_0, arg_1_max_length, &arg_1_length, arg_1_info_log);

    ERL_NIF_TERM arg_1_result;
    unsigned char* arg_1_bin = enif_make_new_binary(env, arg_1_length, &arg_1_result);
    if (arg_1_bin && arg_1_length > 0) {
        memcpy(arg_1_bin, arg_1_info_log, arg_1_length);
    }
    enif_free(arg_1_info_log);
    return enif_make_tuple(env, 1,
        arg_1_result
    );
}

static ERL_NIF_TERM nif_glGetProgramPipelineInfoLog(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramPipelineInfoLog_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetBooleani_v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLboolean* arg_2_values = enif_alloc(sizeof(GLboolean) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetBooleani_v(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, custom_enif_make_bool(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetBooleani_v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetBooleani_v_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetShaderPrecisionFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint arg_2_range[2] = {0, 0};
    GLint arg_2_precision = 0;

    glGetShaderPrecisionFormat(arg_0, arg_1, arg_2_range, &arg_2_precision);

    ERL_NIF_TERM arg_2_range_min_ret = enif_make_int(env, arg_2_range[0]);
    ERL_NIF_TERM arg_2_range_max_ret = enif_make_int(env, arg_2_range[1]);
    ERL_NIF_TERM arg_2_precision_ret = enif_make_int(env, arg_2_precision);
    return enif_make_tuple(env, 3,
        arg_2_range_min_ret,
        arg_2_range_max_ret,
        arg_2_precision_ret
    );
}

static ERL_NIF_TERM nif_glGetShaderPrecisionFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetShaderPrecisionFormat_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetTransformFeedbackVarying_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    unsigned int arg_2_max_length_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_max_length_tmp)) {
        return enif_make_badarg(env);
    }

    if (arg_2_max_length_tmp == 0) {
        return enif_make_badarg(env);
    }

    GLsizei arg_2_max_length = (GLsizei)arg_2_max_length_tmp;
    GLchar* arg_2_name = (GLchar*)enif_alloc(arg_2_max_length_tmp);
    if (!arg_2_name) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_2_length = 0;
    GLsizei arg_2_size;
    GLenum arg_2_type;

    glGetTransformFeedbackVarying(arg_0, arg_1, arg_2_max_length, &arg_2_length, &arg_2_size, &arg_2_type, arg_2_name);

    ERL_NIF_TERM arg_2_size_ret = enif_make_int(env, arg_2_size);
    ERL_NIF_TERM arg_2_type_ret;
    switch (arg_2_type) {
        case GL_INT_VEC2: arg_2_type_ret = beam_atom_int_vec2; break;
        case GL_SAMPLER_2D_MULTISAMPLE: arg_2_type_ret = beam_atom_sampler_2d_multisample; break;
        case GL_FLOAT_MAT3: arg_2_type_ret = beam_atom_float_mat3; break;
        case GL_UNSIGNED_INT_SAMPLER_2D_ARRAY: arg_2_type_ret = beam_atom_unsigned_int_sampler_2d_array; break;
        case GL_UNSIGNED_INT_SAMPLER_CUBE: arg_2_type_ret = beam_atom_unsigned_int_sampler_cube; break;
        case GL_INT_SAMPLER_3D: arg_2_type_ret = beam_atom_int_sampler_3d; break;
        case GL_UNSIGNED_INT: arg_2_type_ret = beam_atom_unsigned_int; break;
        case GL_INT: arg_2_type_ret = beam_atom_int; break;
        case GL_UNSIGNED_INT_VEC2: arg_2_type_ret = beam_atom_unsigned_int_vec2; break;
        case GL_FLOAT_MAT2x3: arg_2_type_ret = beam_atom_float_mat2x3; break;
        case GL_BOOL_VEC2: arg_2_type_ret = beam_atom_bool_vec2; break;
        case GL_FLOAT_MAT4x2: arg_2_type_ret = beam_atom_float_mat4x2; break;
        case GL_BOOL: arg_2_type_ret = beam_atom_bool; break;
        case GL_INT_VEC3: arg_2_type_ret = beam_atom_int_vec3; break;
        case GL_INT_IMAGE_2D: arg_2_type_ret = beam_atom_int_image_2d; break;
        case GL_FLOAT_MAT3x4: arg_2_type_ret = beam_atom_float_mat3x4; break;
        case GL_BOOL_VEC4: arg_2_type_ret = beam_atom_bool_vec4; break;
        case GL_INT_SAMPLER_2D_ARRAY: arg_2_type_ret = beam_atom_int_sampler_2d_array; break;
        case GL_FLOAT_VEC4: arg_2_type_ret = beam_atom_float_vec4; break;
        case GL_UNSIGNED_INT_VEC4: arg_2_type_ret = beam_atom_unsigned_int_vec4; break;
        case GL_FLOAT_MAT2: arg_2_type_ret = beam_atom_float_mat2; break;
        case GL_UNSIGNED_INT_VEC3: arg_2_type_ret = beam_atom_unsigned_int_vec3; break;
        case GL_SAMPLER_2D_ARRAY_SHADOW: arg_2_type_ret = beam_atom_sampler_2d_array_shadow; break;
        case GL_IMAGE_2D: arg_2_type_ret = beam_atom_image_2d; break;
        case GL_FLOAT: arg_2_type_ret = beam_atom_float; break;
        case GL_FLOAT_MAT3x2: arg_2_type_ret = beam_atom_float_mat3x2; break;
        case GL_UNSIGNED_INT_IMAGE_2D: arg_2_type_ret = beam_atom_unsigned_int_image_2d; break;
        case GL_INT_SAMPLER_2D: arg_2_type_ret = beam_atom_int_sampler_2d; break;
        case GL_SAMPLER_3D: arg_2_type_ret = beam_atom_sampler_3d; break;
        case GL_IMAGE_2D_ARRAY: arg_2_type_ret = beam_atom_image_2d_array; break;
        case GL_FLOAT_VEC3: arg_2_type_ret = beam_atom_float_vec3; break;
        case GL_UNSIGNED_INT_SAMPLER_3D: arg_2_type_ret = beam_atom_unsigned_int_sampler_3d; break;
        case GL_IMAGE_3D: arg_2_type_ret = beam_atom_image_3d; break;
        case GL_FLOAT_MAT4x3: arg_2_type_ret = beam_atom_float_mat4x3; break;
        case GL_SAMPLER_2D: arg_2_type_ret = beam_atom_sampler_2d; break;
        case GL_SAMPLER_CUBE_SHADOW: arg_2_type_ret = beam_atom_sampler_cube_shadow; break;
        case GL_INT_SAMPLER_CUBE: arg_2_type_ret = beam_atom_int_sampler_cube; break;
        case GL_INT_IMAGE_3D: arg_2_type_ret = beam_atom_int_image_3d; break;
        case GL_INT_IMAGE_2D_ARRAY: arg_2_type_ret = beam_atom_int_image_2d_array; break;
        case GL_UNSIGNED_INT_IMAGE_3D: arg_2_type_ret = beam_atom_unsigned_int_image_3d; break;
        case GL_FLOAT_VEC2: arg_2_type_ret = beam_atom_float_vec2; break;
        case GL_SAMPLER_2D_SHADOW: arg_2_type_ret = beam_atom_sampler_2d_shadow; break;
        case GL_INT_SAMPLER_2D_MULTISAMPLE: arg_2_type_ret = beam_atom_int_sampler_2d_multisample; break;
        case GL_BOOL_VEC3: arg_2_type_ret = beam_atom_bool_vec3; break;
        case GL_INT_IMAGE_CUBE: arg_2_type_ret = beam_atom_int_image_cube; break;
        case GL_FLOAT_MAT4: arg_2_type_ret = beam_atom_float_mat4; break;
        case GL_UNSIGNED_INT_SAMPLER_2D: arg_2_type_ret = beam_atom_unsigned_int_sampler_2d; break;
        case GL_IMAGE_CUBE: arg_2_type_ret = beam_atom_image_cube; break;
        case GL_UNSIGNED_INT_IMAGE_CUBE: arg_2_type_ret = beam_atom_unsigned_int_image_cube; break;
        case GL_INT_VEC4: arg_2_type_ret = beam_atom_int_vec4; break;
        case GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE: arg_2_type_ret = beam_atom_unsigned_int_sampler_2d_multisample; break;
        case GL_UNSIGNED_INT_IMAGE_2D_ARRAY: arg_2_type_ret = beam_atom_unsigned_int_image_2d_array; break;
        case GL_FLOAT_MAT2x4: arg_2_type_ret = beam_atom_float_mat2x4; break;
        case GL_SAMPLER_CUBE: arg_2_type_ret = beam_atom_sampler_cube; break;
        default: arg_2_type_ret = enif_make_atom(env, "unknown"); break;
    }
    ERL_NIF_TERM arg_2_name_ret;
    unsigned char* arg_2_bin = enif_make_new_binary(env, arg_2_length, &arg_2_name_ret);
    if (arg_2_bin && arg_2_length > 0) {
        memcpy(arg_2_bin, arg_2_name, arg_2_length);
    }
    enif_free(arg_2_name);
    return enif_make_tuple(env, 3,
        arg_2_size_ret,
        arg_2_type_ret,
        arg_2_name_ret
    );
}

static ERL_NIF_TERM nif_glGetTransformFeedbackVarying(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTransformFeedbackVarying_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteRenderbuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteRenderbuffers(arg_0, (void*)arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteRenderbuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteRenderbuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glStencilOp_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;

    glStencilOp(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glStencilOp(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilOp_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI4i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;

    glVertexAttribI4i(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI4i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI4i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribI4ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;
    GLuint arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;

    glVertexAttribI4ui(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribI4ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribI4ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsRenderbuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsRenderbuffer(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsRenderbuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsRenderbuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glFlush_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    glFlush();

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glFlush(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFlush_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glPauseTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    glPauseTransformFeedback();

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glPauseTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPauseTransformFeedback_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsQuery_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsQuery(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsQuery(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsQuery_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsTransformFeedback(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsTransformFeedback_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glReadBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glReadBuffer(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glReadBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glReadBuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetInternalformativ_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    ErlNifUInt64 arg_3_count_tmp;
    if (!enif_get_uint64(env, argv[3], &arg_3_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_3_count_tmp == 0 || arg_3_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3_count = (GLsizei)arg_3_count_tmp;
    GLint* arg_3_values = enif_alloc(sizeof(GLint) * (size_t)arg_3_count);
    if (!arg_3_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetInternalformativ(arg_0, arg_1, arg_2, arg_3_count, arg_3_values);

    ERL_NIF_TERM arg_3_ret = enif_make_list(env, 0);
    for (int i = arg_3_count-1; i >= 0; i--) {
    arg_3_ret = enif_make_list_cell(env, enif_make_int(env, arg_3_values[i]), arg_3_ret);
    }
    enif_free(arg_3_values);
    return enif_make_tuple(env, 1,
        arg_3_ret
    );
}

static ERL_NIF_TERM nif_glGetInternalformativ(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetInternalformativ_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCreateShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    GLuint ret = glCreateShader(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glCreateShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateShader_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindProgramPipeline_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glBindProgramPipeline(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindProgramPipeline(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindProgramPipeline_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDrawElementsInstanced_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    ErlNifUInt64 arg_3;
    if (!enif_get_uint64(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    if (arg_3 > UINTPTR_MAX) {
        return enif_make_badarg(env);
    }

    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;

    glDrawElementsInstanced(arg_0, arg_1, arg_2, (GLvoid*)(uintptr_t)arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDrawElementsInstanced(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawElementsInstanced_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindImageTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLenum arg_5;
    unsigned int arg_5_tmp;
    if (!enif_get_uint(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLenum)arg_5_tmp;
    GLenum arg_6;
    unsigned int arg_6_tmp;
    if (!enif_get_uint(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLenum)arg_6_tmp;

    glBindImageTexture(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindImageTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindImageTexture_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribPointer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    ErlNifUInt64 arg_5;
    if (!enif_get_uint64(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }

    if (arg_5 > UINTPTR_MAX) {
        return enif_make_badarg(env);
    }


    glVertexAttribPointer(arg_0, arg_1, arg_2, arg_3, arg_4, (GLvoid*)(uintptr_t)arg_5);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribPointer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribPointer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetInteger64vValues_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    ErlNifUInt64 arg_1_count_tmp;
    if (!enif_get_uint64(env, argv[1], &arg_1_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_1_count_tmp == 0 || arg_1_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_count = (GLsizei)arg_1_count_tmp;
    GLint64* arg_1_values = enif_alloc(sizeof(GLint64) * (size_t)arg_1_count);
    if (!arg_1_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetInteger64v(arg_0, arg_1_values);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_count-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_int64(env, arg_1_values[i]), arg_1_ret);
    }
    enif_free(arg_1_values);
    return enif_make_tuple(env, 1,
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetInteger64vValues(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetInteger64vValues_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetInteger64vInteger_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint64 out_1;

    glGetInteger64v(arg_0, &out_1);

    ERL_NIF_TERM out_1_ret = enif_make_int64(env, out_1);
    return enif_make_tuple(env, 1,
        out_1_ret
    );
}

static ERL_NIF_TERM nif_glGetInteger64vInteger(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetInteger64vInteger_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDrawArraysInstanced_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;

    glDrawArraysInstanced(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDrawArraysInstanced(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawArraysInstanced_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDrawElements_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    ErlNifUInt64 arg_3;
    if (!enif_get_uint64(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    if (arg_3 > UINTPTR_MAX) {
        return enif_make_badarg(env);
    }


    glDrawElements(arg_0, arg_1, arg_2, (GLvoid*)(uintptr_t)arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDrawElements(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawElements_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glPolygonOffset_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;

    glPolygonOffset(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glPolygonOffset(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPolygonOffset_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glEndTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    glEndTransformFeedback();

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glEndTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEndTransformFeedback_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDrawRangeElements_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLenum arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLenum)arg_4_tmp;
    ErlNifUInt64 arg_5;
    if (!enif_get_uint64(env, argv[5], &arg_5)) {
        return enif_make_badarg(env);
    }

    if (arg_5 > UINTPTR_MAX) {
        return enif_make_badarg(env);
    }


    glDrawRangeElements(arg_0, arg_1, arg_2, arg_3, arg_4, (GLvoid*)(uintptr_t)arg_5);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDrawRangeElements(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawRangeElements_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glActiveShaderProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glActiveShaderProgram(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glActiveShaderProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glActiveShaderProgram_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetShaderivInteger_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint out_2;

    glGetShaderiv(arg_0, arg_1, &out_2);

    ERL_NIF_TERM out_2_ret = enif_make_int(env, out_2);
    return enif_make_tuple(env, 1,
        out_2_ret
    );
}

static ERL_NIF_TERM nif_glGetShaderivInteger(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetShaderivInteger_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glStencilMask_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glStencilMask(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glStencilMask(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilMask_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramInterfaceiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    ErlNifUInt64 arg_3_count_tmp;
    if (!enif_get_uint64(env, argv[3], &arg_3_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_3_count_tmp == 0 || arg_3_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3_count = (GLsizei)arg_3_count_tmp;
    GLint* arg_3_values = enif_alloc(sizeof(GLint) * (size_t)arg_3_count);
    if (!arg_3_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetProgramInterfaceiv(arg_0, arg_1, arg_2, arg_3_values);

    ERL_NIF_TERM arg_3_ret = enif_make_list(env, 0);
    for (int i = arg_3_count-1; i >= 0; i--) {
    arg_3_ret = enif_make_list_cell(env, enif_make_int(env, arg_3_values[i]), arg_3_ret);
    }
    enif_free(arg_3_values);
    return enif_make_tuple(env, 1,
        arg_3_ret
    );
}

static ERL_NIF_TERM nif_glGetProgramInterfaceiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramInterfaceiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramResourceName_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    unsigned int arg_3_max_length_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_max_length_tmp)) {
        return enif_make_badarg(env);
    }

    if (arg_3_max_length_tmp == 0) {
        return enif_make_badarg(env);
    }

    GLsizei arg_3_max_length = (GLsizei)arg_3_max_length_tmp;
    GLchar* arg_3_info_log = (GLchar*)enif_alloc(arg_3_max_length_tmp);
    if (!arg_3_info_log) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_3_length = 0;

    glGetProgramResourceName(arg_0, arg_1, arg_2, arg_3_max_length, &arg_3_length, arg_3_info_log);

    ERL_NIF_TERM arg_3_result;
    unsigned char* arg_3_bin = enif_make_new_binary(env, arg_3_length, &arg_3_result);
    if (arg_3_bin && arg_3_length > 0) {
        memcpy(arg_3_bin, arg_3_info_log, arg_3_length);
    }
    enif_free(arg_3_info_log);
    return enif_make_tuple(env, 1,
        arg_3_result
    );
}

static ERL_NIF_TERM nif_glGetProgramResourceName(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramResourceName_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCopyBufferSubData_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLintptr arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLintptr)arg_2_tmp;
    GLintptr arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLintptr)arg_3_tmp;
    GLsizeiptr arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizeiptr)arg_4_tmp;

    glCopyBufferSubData(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCopyBufferSubData(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyBufferSubData_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform1f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;

    glProgramUniform1f(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform1f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform1f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform1fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glProgramUniform1fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform1fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform1fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform1i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;

    glProgramUniform1i(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform1i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform1i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform1iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_3_array = enif_alloc(sizeof(GLint) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        int arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_int(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLint)arg_3_val;
    }

    glProgramUniform1iv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform1iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform1iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform1ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glProgramUniform1ui(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform1ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform1ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform1uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_3_array = enif_alloc(sizeof(GLuint) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        unsigned int arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_uint(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLuint)arg_3_val;
    }

    glProgramUniform1uiv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform1uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform1uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform2f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;

    glProgramUniform2f(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform2f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform2f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform2fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glProgramUniform2fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform2fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform2fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform2i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;

    glProgramUniform2i(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform2i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform2i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform2iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_3_array = enif_alloc(sizeof(GLint) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        int arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_int(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLint)arg_3_val;
    }

    glProgramUniform2iv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform2iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform2iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform2ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glProgramUniform2ui(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform2ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform2ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform2uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_3_array = enif_alloc(sizeof(GLuint) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        unsigned int arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_uint(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLuint)arg_3_val;
    }

    glProgramUniform2uiv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform2uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform2uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform3f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;
    GLfloat arg_4;
    double arg_4_tmp;
    if (!enif_get_double(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLfloat)arg_4_tmp;

    glProgramUniform3f(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform3f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform3f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform3fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glProgramUniform3fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform3fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform3fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform3i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;

    glProgramUniform3i(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform3i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform3i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform3iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_3_array = enif_alloc(sizeof(GLint) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        int arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_int(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLint)arg_3_val;
    }

    glProgramUniform3iv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform3iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform3iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform3ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;
    GLuint arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;

    glProgramUniform3ui(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform3ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform3ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform3uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_3_array = enif_alloc(sizeof(GLuint) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        unsigned int arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_uint(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLuint)arg_3_val;
    }

    glProgramUniform3uiv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform3uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform3uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform4f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;
    GLfloat arg_4;
    double arg_4_tmp;
    if (!enif_get_double(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLfloat)arg_4_tmp;
    GLfloat arg_5;
    double arg_5_tmp;
    if (!enif_get_double(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLfloat)arg_5_tmp;

    glProgramUniform4f(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform4f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform4f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform4fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glProgramUniform4fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform4fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform4fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform4i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLint arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLint)arg_5_tmp;

    glProgramUniform4i(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform4i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform4i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform4iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_3_array = enif_alloc(sizeof(GLint) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        int arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_int(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLint)arg_3_val;
    }

    glProgramUniform4iv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform4iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform4iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform4ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;
    GLuint arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;
    GLuint arg_5;
    unsigned int arg_5_tmp;
    if (!enif_get_uint(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLuint)arg_5_tmp;

    glProgramUniform4ui(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform4ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform4ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniform4uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_3_array = enif_alloc(sizeof(GLuint) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        unsigned int arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_uint(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLuint)arg_3_val;
    }

    glProgramUniform4uiv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniform4uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniform4uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDisableVertexAttribArray_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glDisableVertexAttribArray(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDisableVertexAttribArray(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDisableVertexAttribArray_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glClearDepthf_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;

    glClearDepthf(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glClearDepthf(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearDepthf_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glLinkProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glLinkProgram(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glLinkProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glLinkProgram_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCompileShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glCompileShader(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCompileShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompileShader_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDetachShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glDetachShader(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDetachShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDetachShader_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBufferData_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLsizeiptr arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizeiptr)arg_1_tmp;
    const void* arg_2 = NULL;
    ErlNifBinary arg_2_bin;
    if (enif_is_identical(argv[2], enif_make_atom(env, "undefined"))) {
        arg_2 = NULL;
    }
    else if (enif_inspect_binary(env, argv[2], &arg_2_bin)) {
        arg_2 = arg_2_bin.data;
    }
    else {
        return enif_make_badarg(env);
    }
    GLenum arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLenum)arg_3_tmp;

    glBufferData(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBufferData(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBufferData_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetUniformIndices_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    if (!enif_is_list(env, argv[1])) {
        return enif_make_badarg(env);
    }

    ERL_NIF_TERM arg_1_list = argv[1];
    ERL_NIF_TERM arg_1_head;

    unsigned arg_1_count = 0;
    ERL_NIF_TERM arg_1_tmp_list = arg_1_list;
    while (!enif_is_empty_list(env, arg_1_tmp_list)) {
        if (!enif_get_list_cell(env, arg_1_tmp_list, &arg_1_head, &arg_1_tmp_list)) {
            return enif_make_badarg(env);
        }
        if (!enif_is_binary(env, arg_1_head)) {
            return enif_make_badarg(env);
        }
        arg_1_count++;
    }

    if (arg_1_count == 0) {
        return enif_make_badarg(env);
    }

    GLchar** arg_1_strings = enif_alloc(sizeof(GLchar*) * arg_1_count);
    if (!arg_1_strings) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    for (unsigned arg_1_j = 0; arg_1_j < arg_1_count; arg_1_j++) {
        arg_1_strings[arg_1_j] = NULL;
    }

    arg_1_tmp_list = arg_1_list;
    unsigned arg_1_i = 0;
    while (!enif_is_empty_list(env, arg_1_tmp_list)) {
        enif_get_list_cell(env, arg_1_tmp_list, &arg_1_head, &arg_1_tmp_list);
        ErlNifBinary arg_1_binary;
        if (!enif_inspect_binary(env, arg_1_head, &arg_1_binary)) {
            for (unsigned arg_1_j = 0; arg_1_j < arg_1_i; arg_1_j++) {
                enif_free(arg_1_strings[arg_1_j]);
            }
            enif_free(arg_1_strings);
            return enif_make_badarg(env);
        }

        GLchar* arg_1_string = (GLchar*)enif_alloc(arg_1_binary.size + 1);
        if (!arg_1_string) {
            for (unsigned arg_1_j = 0; arg_1_j < arg_1_i; arg_1_j++) {
                enif_free(arg_1_strings[arg_1_j]);
            }
            enif_free(arg_1_strings);
            return enif_make_tuple2(env,
                enif_make_atom(env, "error"),
                enif_make_atom(env, "out_of_memory")
            );
        }
        if (arg_1_binary.size > 0) {
            memcpy(arg_1_string, arg_1_binary.data, arg_1_binary.size);
        }
        arg_1_string[arg_1_binary.size] = '\0';
        arg_1_strings[arg_1_i] = arg_1_string;
        arg_1_i++;
    }
    if ((size_t)arg_1_count == 0 || (size_t)arg_1_count > (size_t)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei out_2_count = (GLsizei)arg_1_count;
    GLuint* out_2_values = enif_alloc(sizeof(GLuint) * (size_t)out_2_count);
    if (!out_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetUniformIndices(arg_0, (GLsizei)arg_1_count, (const GLchar* const*)arg_1_strings, out_2_values);

    for (unsigned arg_1_j = 0; arg_1_j < arg_1_count; arg_1_j++) {
        enif_free(arg_1_strings[arg_1_j]);
    }
    enif_free(arg_1_strings);

    ERL_NIF_TERM out_2_ret = enif_make_list(env, 0);
    for (int i = out_2_count-1; i >= 0; i--) {
    out_2_ret = enif_make_list_cell(env, enif_make_uint(env, out_2_values[i]), out_2_ret);
    }
    enif_free(out_2_values);
    return enif_make_tuple(env, 1,
        out_2_ret
    );
}

static ERL_NIF_TERM nif_glGetUniformIndices(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetUniformIndices_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glAttachShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glAttachShader(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glAttachShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glAttachShader_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenerateMipmap_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glGenerateMipmap(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glGenerateMipmap(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenerateMipmap_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexParameterf_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;

    glTexParameterf(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexParameterf(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexParameterf_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexParameterfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_2_array = enif_alloc(sizeof(GLfloat) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLfloat)arg_2_val;
    }

    glTexParameterfv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexParameterfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexParameterfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glTexParameteriv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetIntegervBoolean_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint out_1;

    glGetIntegerv(arg_0, &out_1);

    ERL_NIF_TERM out_1_ret = enif_make_atom(env, out_1 != 0 ? "true" : "false");
    return enif_make_tuple(env, 1,
        out_1_ret
    );
}

static ERL_NIF_TERM nif_glGetIntegervBoolean(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetIntegervBoolean_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDrawBuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDrawBuffers(arg_0, (void*)arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDrawBuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawBuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetFramebufferParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLint* arg_2_values = enif_alloc(sizeof(GLint) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetFramebufferParameteriv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetFramebufferParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetFramebufferParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindBufferBase_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glBindBufferBase(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindBufferBase(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindBufferBase_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetIntegerv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint out_1;

    glGetIntegerv(arg_0, &out_1);

    ERL_NIF_TERM out_1_ret = enif_make_int(env, out_1);
    return enif_make_tuple(env, 1,
        out_1_ret
    );
}

static ERL_NIF_TERM nif_glGetIntegerv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetIntegerv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCheckFramebufferStatus_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    GLenum ret = glCheckFramebufferStatus(arg_0);

    ERL_NIF_TERM ret_0;
    switch (ret) {
        case GL_FRAMEBUFFER_COMPLETE: ret_0 = beam_atom_framebuffer_complete; break;
        case GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE: ret_0 = beam_atom_framebuffer_incomplete_multisample; break;
        case GL_FRAMEBUFFER_UNDEFINED: ret_0 = beam_atom_framebuffer_undefined; break;
        case GL_FRAMEBUFFER_UNSUPPORTED: ret_0 = beam_atom_framebuffer_unsupported; break;
        case GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT: ret_0 = beam_atom_framebuffer_incomplete_missing_attachment; break;
        case GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT: ret_0 = beam_atom_framebuffer_incomplete_attachment; break;
        default: ret_0 = enif_make_atom(env, "unknown"); break;
    }
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glCheckFramebufferStatus(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCheckFramebufferStatus_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramPipelineivValues_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLint* arg_2_values = enif_alloc(sizeof(GLint) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetProgramPipelineiv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetProgramPipelineivValues(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramPipelineivValues_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsProgram(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsProgram_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsShader(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsShader_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenTextures_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenTextures(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenTextures(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenTextures_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenRenderbuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenRenderbuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenRenderbuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenRenderbuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glShaderBinary_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_count_tmp;
    if (!enif_get_list_length(env, argv[0], &arg_0_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_0_count_tmp == 0 || arg_0_count_tmp > (unsigned int)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_0_count = (GLsizei)arg_0_count_tmp;
    ERL_NIF_TERM arg_0_tail = argv[0];
    ERL_NIF_TERM arg_0_head;
    GLuint* arg_0_objects = enif_alloc(sizeof(GLuint) * arg_0_count_tmp);
    if (!arg_0_objects) {
        if (arg_0_objects) enif_free(arg_0_objects);
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    for (unsigned int arg_0_i = 0; arg_0_i < arg_0_count_tmp; arg_0_i++) {
        if (!enif_get_list_cell(env, arg_0_tail, &arg_0_head, &arg_0_tail)) {
        if (arg_0_objects) enif_free(arg_0_objects);
            return enif_make_badarg(env);
        }
        unsigned int arg_0_object_tmp;
        if (!enif_get_uint(env, arg_0_head, &arg_0_object_tmp) || arg_0_object_tmp == 0) {
        if (arg_0_objects) enif_free(arg_0_objects);
            return enif_make_badarg(env);
        }
        arg_0_objects[arg_0_i] = (GLuint)arg_0_object_tmp;
    }
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifBinary arg_2;
    if (!enif_inspect_binary(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;

    glShaderBinary(arg_0_count, (const GLuint*)arg_0_objects, arg_1, (void*)arg_2.data, arg_3);

    enif_free(arg_0_objects);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glShaderBinary(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glShaderBinary_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetActiveAttrib_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    unsigned int arg_2_max_length_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_max_length_tmp)) {
        return enif_make_badarg(env);
    }

    if (arg_2_max_length_tmp == 0) {
        return enif_make_badarg(env);
    }

    GLsizei arg_2_max_length = (GLsizei)arg_2_max_length_tmp;
    GLchar* arg_2_name = (GLchar*)enif_alloc(arg_2_max_length_tmp);
    if (!arg_2_name) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_2_length = 0;
    GLint arg_2_size;
    GLenum arg_2_type;

    glGetActiveAttrib(arg_0, arg_1, arg_2_max_length, &arg_2_length, &arg_2_size, &arg_2_type, arg_2_name);

    ERL_NIF_TERM arg_2_size_ret = enif_make_int(env, arg_2_size);
    ERL_NIF_TERM arg_2_type_ret;
    switch (arg_2_type) {
        case GL_INT_VEC2: arg_2_type_ret = beam_atom_int_vec2; break;
        case GL_SAMPLER_2D_MULTISAMPLE: arg_2_type_ret = beam_atom_sampler_2d_multisample; break;
        case GL_FLOAT_MAT3: arg_2_type_ret = beam_atom_float_mat3; break;
        case GL_UNSIGNED_INT_SAMPLER_2D_ARRAY: arg_2_type_ret = beam_atom_unsigned_int_sampler_2d_array; break;
        case GL_UNSIGNED_INT_SAMPLER_CUBE: arg_2_type_ret = beam_atom_unsigned_int_sampler_cube; break;
        case GL_INT_SAMPLER_3D: arg_2_type_ret = beam_atom_int_sampler_3d; break;
        case GL_UNSIGNED_INT: arg_2_type_ret = beam_atom_unsigned_int; break;
        case GL_INT: arg_2_type_ret = beam_atom_int; break;
        case GL_UNSIGNED_INT_VEC2: arg_2_type_ret = beam_atom_unsigned_int_vec2; break;
        case GL_FLOAT_MAT2x3: arg_2_type_ret = beam_atom_float_mat2x3; break;
        case GL_BOOL_VEC2: arg_2_type_ret = beam_atom_bool_vec2; break;
        case GL_FLOAT_MAT4x2: arg_2_type_ret = beam_atom_float_mat4x2; break;
        case GL_BOOL: arg_2_type_ret = beam_atom_bool; break;
        case GL_INT_VEC3: arg_2_type_ret = beam_atom_int_vec3; break;
        case GL_INT_IMAGE_2D: arg_2_type_ret = beam_atom_int_image_2d; break;
        case GL_FLOAT_MAT3x4: arg_2_type_ret = beam_atom_float_mat3x4; break;
        case GL_BOOL_VEC4: arg_2_type_ret = beam_atom_bool_vec4; break;
        case GL_INT_SAMPLER_2D_ARRAY: arg_2_type_ret = beam_atom_int_sampler_2d_array; break;
        case GL_FLOAT_VEC4: arg_2_type_ret = beam_atom_float_vec4; break;
        case GL_UNSIGNED_INT_VEC4: arg_2_type_ret = beam_atom_unsigned_int_vec4; break;
        case GL_FLOAT_MAT2: arg_2_type_ret = beam_atom_float_mat2; break;
        case GL_UNSIGNED_INT_VEC3: arg_2_type_ret = beam_atom_unsigned_int_vec3; break;
        case GL_SAMPLER_2D_ARRAY_SHADOW: arg_2_type_ret = beam_atom_sampler_2d_array_shadow; break;
        case GL_IMAGE_2D: arg_2_type_ret = beam_atom_image_2d; break;
        case GL_FLOAT: arg_2_type_ret = beam_atom_float; break;
        case GL_FLOAT_MAT3x2: arg_2_type_ret = beam_atom_float_mat3x2; break;
        case GL_UNSIGNED_INT_IMAGE_2D: arg_2_type_ret = beam_atom_unsigned_int_image_2d; break;
        case GL_INT_SAMPLER_2D: arg_2_type_ret = beam_atom_int_sampler_2d; break;
        case GL_SAMPLER_3D: arg_2_type_ret = beam_atom_sampler_3d; break;
        case GL_IMAGE_2D_ARRAY: arg_2_type_ret = beam_atom_image_2d_array; break;
        case GL_FLOAT_VEC3: arg_2_type_ret = beam_atom_float_vec3; break;
        case GL_UNSIGNED_INT_SAMPLER_3D: arg_2_type_ret = beam_atom_unsigned_int_sampler_3d; break;
        case GL_IMAGE_3D: arg_2_type_ret = beam_atom_image_3d; break;
        case GL_FLOAT_MAT4x3: arg_2_type_ret = beam_atom_float_mat4x3; break;
        case GL_SAMPLER_2D: arg_2_type_ret = beam_atom_sampler_2d; break;
        case GL_SAMPLER_CUBE_SHADOW: arg_2_type_ret = beam_atom_sampler_cube_shadow; break;
        case GL_INT_SAMPLER_CUBE: arg_2_type_ret = beam_atom_int_sampler_cube; break;
        case GL_INT_IMAGE_3D: arg_2_type_ret = beam_atom_int_image_3d; break;
        case GL_INT_IMAGE_2D_ARRAY: arg_2_type_ret = beam_atom_int_image_2d_array; break;
        case GL_UNSIGNED_INT_IMAGE_3D: arg_2_type_ret = beam_atom_unsigned_int_image_3d; break;
        case GL_FLOAT_VEC2: arg_2_type_ret = beam_atom_float_vec2; break;
        case GL_SAMPLER_2D_SHADOW: arg_2_type_ret = beam_atom_sampler_2d_shadow; break;
        case GL_INT_SAMPLER_2D_MULTISAMPLE: arg_2_type_ret = beam_atom_int_sampler_2d_multisample; break;
        case GL_BOOL_VEC3: arg_2_type_ret = beam_atom_bool_vec3; break;
        case GL_INT_IMAGE_CUBE: arg_2_type_ret = beam_atom_int_image_cube; break;
        case GL_FLOAT_MAT4: arg_2_type_ret = beam_atom_float_mat4; break;
        case GL_UNSIGNED_INT_SAMPLER_2D: arg_2_type_ret = beam_atom_unsigned_int_sampler_2d; break;
        case GL_IMAGE_CUBE: arg_2_type_ret = beam_atom_image_cube; break;
        case GL_UNSIGNED_INT_IMAGE_CUBE: arg_2_type_ret = beam_atom_unsigned_int_image_cube; break;
        case GL_INT_VEC4: arg_2_type_ret = beam_atom_int_vec4; break;
        case GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE: arg_2_type_ret = beam_atom_unsigned_int_sampler_2d_multisample; break;
        case GL_UNSIGNED_INT_IMAGE_2D_ARRAY: arg_2_type_ret = beam_atom_unsigned_int_image_2d_array; break;
        case GL_FLOAT_MAT2x4: arg_2_type_ret = beam_atom_float_mat2x4; break;
        case GL_SAMPLER_CUBE: arg_2_type_ret = beam_atom_sampler_cube; break;
        default: arg_2_type_ret = enif_make_atom(env, "unknown"); break;
    }
    ERL_NIF_TERM arg_2_name_ret;
    unsigned char* arg_2_bin = enif_make_new_binary(env, arg_2_length, &arg_2_name_ret);
    if (arg_2_bin && arg_2_length > 0) {
        memcpy(arg_2_bin, arg_2_name, arg_2_length);
    }
    enif_free(arg_2_name);
    return enif_make_tuple(env, 3,
        arg_2_size_ret,
        arg_2_type_ret,
        arg_2_name_ret
    );
}

static ERL_NIF_TERM nif_glGetActiveAttrib(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetActiveAttrib_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glValidateProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glValidateProgram(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glValidateProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glValidateProgram_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindVertexBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLintptr arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLintptr)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;

    glBindVertexBuffer(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindVertexBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindVertexBuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetStringi_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    const GLubyte* ret = glGetStringi(arg_0, arg_1);

    size_t ret_len = ret ? strlen((const char*)ret) : 0;
    ErlNifBinary ret_tmp;
    if (!enif_alloc_binary(ret_len, &ret_tmp)) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    if (ret_len > 0) {
        memcpy(ret_tmp.data, ret, ret_len);
    }
    ERL_NIF_TERM ret_0 = enif_make_binary(env, &ret_tmp);

    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetStringi(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetStringi_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexSubImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;
    GLsizei arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLsizei)arg_6_tmp;
    GLsizei arg_7;
    int arg_7_tmp;
    if (!enif_get_int(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLsizei)arg_7_tmp;
    GLenum arg_8;
    unsigned int arg_8_tmp;
    if (!enif_get_uint(env, argv[8], &arg_8_tmp)) {
        return enif_make_badarg(env);
    }
    arg_8 = (GLenum)arg_8_tmp;
    GLenum arg_9;
    unsigned int arg_9_tmp;
    if (!enif_get_uint(env, argv[9], &arg_9_tmp)) {
        return enif_make_badarg(env);
    }
    arg_9 = (GLenum)arg_9_tmp;
    ErlNifBinary arg_10;
    if (!enif_inspect_binary(env, argv[10], &arg_10)) {
        return enif_make_badarg(env);
    }

    glTexSubImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9, (void*)arg_10.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexSubImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexSubImage3D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glMemoryBarrier_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLbitfield arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLbitfield)arg_0_tmp;

    glMemoryBarrier(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glMemoryBarrier(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glMemoryBarrier_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCopyTexImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;
    GLsizei arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLsizei)arg_6_tmp;
    GLint arg_7;
    int arg_7_tmp;
    if (!enif_get_int(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLint)arg_7_tmp;

    glCopyTexImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCopyTexImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexImage2D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindVertexArray_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glBindVertexArray(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindVertexArray(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindVertexArray_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glFramebufferParameteri_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;

    glFramebufferParameteri(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glFramebufferParameteri(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFramebufferParameteri_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glInvalidateSubFramebuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    ErlNifBinary arg_2;
    if (!enif_inspect_binary(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;
    GLsizei arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLsizei)arg_6_tmp;

    glInvalidateSubFramebuffer(arg_0, arg_1, (void*)arg_2.data, arg_3, arg_4, arg_5, arg_6);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glInvalidateSubFramebuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glInvalidateSubFramebuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetMultisamplefv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLfloat* arg_2_values = enif_alloc(sizeof(GLfloat) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetMultisamplefv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetMultisamplefv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetMultisamplefv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlitFramebuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLint arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLint)arg_5_tmp;
    GLint arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLint)arg_6_tmp;
    GLint arg_7;
    int arg_7_tmp;
    if (!enif_get_int(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLint)arg_7_tmp;
    GLbitfield arg_8;
    unsigned int arg_8_tmp;
    if (!enif_get_uint(env, argv[8], &arg_8_tmp)) {
        return enif_make_badarg(env);
    }
    arg_8 = (GLbitfield)arg_8_tmp;
    GLenum arg_9;
    unsigned int arg_9_tmp;
    if (!enif_get_uint(env, argv[9], &arg_9_tmp)) {
        return enif_make_badarg(env);
    }
    arg_9 = (GLenum)arg_9_tmp;

    glBlitFramebuffer(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlitFramebuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlitFramebuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glStencilMaskSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glStencilMaskSeparate(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glStencilMaskSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilMaskSeparate_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    GLuint arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;

    glVertexAttribFormat(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribFormat_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glScissor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;

    glScissor(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glScissor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glScissor_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    GLint arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLint)arg_5_tmp;
    GLenum arg_6;
    unsigned int arg_6_tmp;
    if (!enif_get_uint(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLenum)arg_6_tmp;
    GLenum arg_7;
    unsigned int arg_7_tmp;
    if (!enif_get_uint(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLenum)arg_7_tmp;
    const void* arg_8 = NULL;
    ErlNifBinary arg_8_bin;
    if (enif_is_identical(argv[8], enif_make_atom(env, "undefined"))) {
        arg_8 = NULL;
    }
    else if (enif_inspect_binary(env, argv[8], &arg_8_bin)) {
        arg_8 = arg_8_bin.data;
    }
    else {
        return enif_make_badarg(env);
    }

    glTexImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexImage2D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetAttribLocation_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLchar* arg_1_string = (GLchar*)enif_alloc(arg_1.size + 1);
    if (!arg_1_string) {
        return enif_make_badarg(env);
    }
    if (arg_1.size > 0) {
        memcpy(arg_1_string, arg_1.data, arg_1.size);
    }
    arg_1_string[arg_1.size] = '\0';

    GLint ret = glGetAttribLocation(arg_0, (const GLchar*)arg_1_string);

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    enif_free(arg_1_string);
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetAttribLocation(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetAttribLocation_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteTransformFeedbacks_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteTransformFeedbacks(arg_0, (void*)arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteTransformFeedbacks(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteTransformFeedbacks_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetVertexAttribfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLfloat* arg_2_values = enif_alloc(sizeof(GLfloat) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetVertexAttribfv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetVertexAttribfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetVertexAttribfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetVertexAttribiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLint* arg_2_values = enif_alloc(sizeof(GLint) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetVertexAttribiv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetVertexAttribiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetVertexAttribiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetError_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    GLenum ret = glGetError();

    ERL_NIF_TERM ret_0;
    switch (ret) {
        case GL_INVALID_VALUE: ret_0 = beam_atom_invalid_value; break;
        case GL_NO_ERROR: ret_0 = beam_atom_no_error; break;
        case GL_OUT_OF_MEMORY: ret_0 = beam_atom_out_of_memory; break;
        case GL_INVALID_OPERATION: ret_0 = beam_atom_invalid_operation; break;
        case GL_INVALID_FRAMEBUFFER_OPERATION: ret_0 = beam_atom_invalid_framebuffer_operation; break;
        case GL_INVALID_ENUM: ret_0 = beam_atom_invalid_enum; break;
        default: ret_0 = enif_make_atom(env, "unknown"); break;
    }
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetError(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetError_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsVertexArray_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsVertexArray(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsVertexArray(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsVertexArray_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindTexture(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindTexture_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribIPointer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    ErlNifUInt64 arg_4;
    if (!enif_get_uint64(env, argv[4], &arg_4)) {
        return enif_make_badarg(env);
    }

    if (arg_4 > UINTPTR_MAX) {
        return enif_make_badarg(env);
    }


    glVertexAttribIPointer(arg_0, arg_1, arg_2, arg_3, (GLvoid*)(uintptr_t)arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribIPointer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribIPointer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteShader_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glDeleteShader(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteShader(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteShader_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetTexLevelParameterfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    ErlNifUInt64 arg_3_count_tmp;
    if (!enif_get_uint64(env, argv[3], &arg_3_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_3_count_tmp == 0 || arg_3_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3_count = (GLsizei)arg_3_count_tmp;
    GLfloat* arg_3_values = enif_alloc(sizeof(GLfloat) * (size_t)arg_3_count);
    if (!arg_3_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetTexLevelParameterfv(arg_0, arg_1, arg_2, arg_3_values);

    ERL_NIF_TERM arg_3_ret = enif_make_list(env, 0);
    for (int i = arg_3_count-1; i >= 0; i--) {
    arg_3_ret = enif_make_list_cell(env, enif_make_double(env, arg_3_values[i]), arg_3_ret);
    }
    enif_free(arg_3_values);
    return enif_make_tuple(env, 1,
        arg_3_ret
    );
}

static ERL_NIF_TERM nif_glGetTexLevelParameterfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTexLevelParameterfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetTexLevelParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    ErlNifUInt64 arg_3_count_tmp;
    if (!enif_get_uint64(env, argv[3], &arg_3_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_3_count_tmp == 0 || arg_3_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3_count = (GLsizei)arg_3_count_tmp;
    GLint* arg_3_values = enif_alloc(sizeof(GLint) * (size_t)arg_3_count);
    if (!arg_3_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetTexLevelParameteriv(arg_0, arg_1, arg_2, arg_3_values);

    ERL_NIF_TERM arg_3_ret = enif_make_list(env, 0);
    for (int i = arg_3_count-1; i >= 0; i--) {
    arg_3_ret = enif_make_list_cell(env, enif_make_int(env, arg_3_values[i]), arg_3_ret);
    }
    enif_free(arg_3_values);
    return enif_make_tuple(env, 1,
        arg_3_ret
    );
}

static ERL_NIF_TERM nif_glGetTexLevelParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTexLevelParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDepthRangef_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;

    glDepthRangef(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDepthRangef(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDepthRangef_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform1f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;

    glUniform1f(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform1f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform1f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform1fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_2_array = enif_alloc(sizeof(GLfloat) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLfloat)arg_2_val;
    }

    glUniform1fv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform1fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform1fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform1i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;

    glUniform1i(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform1i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform1i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform1iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glUniform1iv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform1iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform1iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform1ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glUniform1ui(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform1ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform1ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform1uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_2_array = enif_alloc(sizeof(GLuint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        unsigned int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_uint(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLuint)arg_2_val;
    }

    glUniform1uiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform1uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform1uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform2f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;

    glUniform2f(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform2f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform2f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform2fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_2_array = enif_alloc(sizeof(GLfloat) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLfloat)arg_2_val;
    }

    glUniform2fv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform2fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform2fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform2i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;

    glUniform2i(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform2i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform2i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform2iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glUniform2iv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform2iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform2iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform2ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glUniform2ui(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform2ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform2ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform2uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_2_array = enif_alloc(sizeof(GLuint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        unsigned int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_uint(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLuint)arg_2_val;
    }

    glUniform2uiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform2uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform2uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform3f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;

    glUniform3f(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform3f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform3f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform3fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_2_array = enif_alloc(sizeof(GLfloat) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLfloat)arg_2_val;
    }

    glUniform3fv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform3fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform3fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform3i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;

    glUniform3i(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform3i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform3i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform3iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glUniform3iv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform3iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform3iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform3ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glUniform3ui(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform3ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform3ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform3uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_2_array = enif_alloc(sizeof(GLuint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        unsigned int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_uint(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLuint)arg_2_val;
    }

    glUniform3uiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform3uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform3uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform4f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;
    GLfloat arg_4;
    double arg_4_tmp;
    if (!enif_get_double(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLfloat)arg_4_tmp;

    glUniform4f(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform4f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform4f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform4fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_2_array = enif_alloc(sizeof(GLfloat) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLfloat)arg_2_val;
    }

    glUniform4fv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform4fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform4fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform4i_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;

    glUniform4i(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform4i(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform4i_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform4iv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glUniform4iv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform4iv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform4iv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform4ui_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;
    GLuint arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLuint)arg_4_tmp;

    glUniform4ui(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform4ui(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform4ui_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniform4uiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_2_array = enif_alloc(sizeof(GLuint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        unsigned int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_uint(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLuint)arg_2_val;
    }

    glUniform4uiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniform4uiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniform4uiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetIntegeri_v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLint* arg_2_values = enif_alloc(sizeof(GLint) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetIntegeri_v(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetIntegeri_v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetIntegeri_v_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glStencilFunc_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glStencilFunc(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glStencilFunc(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilFunc_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glClearBufferfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_2_array = enif_alloc(sizeof(GLfloat) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        double arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_double(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLfloat)arg_2_val;
    }

    glClearBufferfv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glClearBufferfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearBufferfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glClearBufferiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLint* arg_2_array = enif_alloc(sizeof(GLint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_int(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLint)arg_2_val;
    }

    glClearBufferiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glClearBufferiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearBufferiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glClearBufferuiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    unsigned int arg_2_length;
    if (!enif_get_list_length(env, argv[2], &arg_2_length)) {
        return enif_make_badarg(env);
    }
    GLuint* arg_2_array = enif_alloc(sizeof(GLuint) * arg_2_length);
    if (!arg_2_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_2_head, arg_2_tail = argv[2];
    for (unsigned i = 0; i < arg_2_length; i++) {
        unsigned int arg_2_val;
        if (!enif_get_list_cell(env, arg_2_tail, &arg_2_head, &arg_2_tail) ||
            !enif_get_uint(env, arg_2_head, &arg_2_val)) {
            enif_free(arg_2_array);
            return enif_make_badarg(env);
        }
        arg_2_array[i] = (GLuint)arg_2_val;
    }

    glClearBufferuiv(arg_0, arg_1, arg_2_array);

    enif_free(arg_2_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glClearBufferuiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearBufferuiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenProgramPipelines_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenProgramPipelines(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenProgramPipelines(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenProgramPipelines_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexParameteri_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;

    glTexParameteri(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexParameteri(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexParameteri_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDrawArrays_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;

    glDrawArrays(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDrawArrays(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawArrays_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glFramebufferTexture2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;

    glFramebufferTexture2D(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glFramebufferTexture2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFramebufferTexture2D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteTextures_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteTextures(arg_0, (void*)arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteTextures(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteTextures_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glInvalidateFramebuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    ErlNifBinary arg_2;
    if (!enif_inspect_binary(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }

    glInvalidateFramebuffer(arg_0, arg_1, (void*)arg_2.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glInvalidateFramebuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glInvalidateFramebuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribIFormat_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glVertexAttribIFormat(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribIFormat(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribIFormat_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glLineWidth_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;

    glLineWidth(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glLineWidth(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glLineWidth_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glSampleMaski_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glSampleMaski(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glSampleMaski(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSampleMaski_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDepthMask_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLboolean arg_0;
    if (enif_compare(argv[0], enif_make_atom(env, "true")) == 0) {
        arg_0 = GL_TRUE;
    } else if (enif_compare(argv[0], enif_make_atom(env, "false")) == 0) {
        arg_0 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }

    glDepthMask(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDepthMask(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDepthMask_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlendEquationSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;

    glBlendEquationSeparate(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlendEquationSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendEquationSeparate_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramResourceIndex_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifBinary arg_2;
    if (!enif_inspect_binary(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLchar* arg_2_string = (GLchar*)enif_alloc(arg_2.size + 1);
    if (!arg_2_string) {
        return enif_make_badarg(env);
    }
    if (arg_2.size > 0) {
        memcpy(arg_2_string, arg_2.data, arg_2.size);
    }
    arg_2_string[arg_2.size] = '\0';

    GLuint ret = glGetProgramResourceIndex(arg_0, arg_1, (const GLchar*)arg_2_string);

    ERL_NIF_TERM ret_0 = enif_make_uint(env, ret);
    enif_free(arg_2_string);
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetProgramResourceIndex(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramResourceIndex_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCopyTexSubImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLint arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLint)arg_5_tmp;
    GLint arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLint)arg_6_tmp;
    GLsizei arg_7;
    int arg_7_tmp;
    if (!enif_get_int(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLsizei)arg_7_tmp;
    GLsizei arg_8;
    int arg_8_tmp;
    if (!enif_get_int(env, argv[8], &arg_8_tmp)) {
        return enif_make_badarg(env);
    }
    arg_8 = (GLsizei)arg_8_tmp;

    glCopyTexSubImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCopyTexSubImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexSubImage3D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glViewport_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;

    glViewport(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glViewport(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glViewport_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;
    GLint arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLint)arg_6_tmp;
    GLenum arg_7;
    unsigned int arg_7_tmp;
    if (!enif_get_uint(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLenum)arg_7_tmp;
    GLenum arg_8;
    unsigned int arg_8_tmp;
    if (!enif_get_uint(env, argv[8], &arg_8_tmp)) {
        return enif_make_badarg(env);
    }
    arg_8 = (GLenum)arg_8_tmp;
    const void* arg_9 = NULL;
    ErlNifBinary arg_9_bin;
    if (enif_is_identical(argv[9], enif_make_atom(env, "undefined"))) {
        arg_9 = NULL;
    }
    else if (enif_inspect_binary(env, argv[9], &arg_9_bin)) {
        arg_9 = arg_9_bin.data;
    }
    else {
        return enif_make_badarg(env);
    }

    glTexImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexImage3D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCompressedTexSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;
    GLenum arg_6;
    unsigned int arg_6_tmp;
    if (!enif_get_uint(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLenum)arg_6_tmp;
    GLsizei arg_7;
    int arg_7_tmp;
    if (!enif_get_int(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLsizei)arg_7_tmp;
    ErlNifBinary arg_8;
    if (!enif_inspect_binary(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glCompressedTexSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, (void*)arg_8.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCompressedTexSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTexSubImage2D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetQueryiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLint* arg_2_values = enif_alloc(sizeof(GLint) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetQueryiv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetQueryiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetQueryiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindBuffer(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindBuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformBlockBinding_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glUniformBlockBinding(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformBlockBinding(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformBlockBinding_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix2fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix2fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix2fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix2fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix2x3fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix2x3fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix2x3fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix2x3fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix2x4fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix2x4fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix2x4fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix2x4fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix3fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix3fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix3fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix3fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix3x2fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix3x2fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix3x2fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix3x2fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix3x4fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix3x4fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix3x4fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix3x4fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix4fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix4fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix4fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix4fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix4x2fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix4x2fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix4x2fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix4x2fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUniformMatrix4x3fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_3_length;
    if (!enif_get_list_length(env, argv[3], &arg_3_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_3_array = enif_alloc(sizeof(GLfloat) * arg_3_length);
    if (!arg_3_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_3_head, arg_3_tail = argv[3];
    for (unsigned i = 0; i < arg_3_length; i++) {
        double arg_3_val;
        if (!enif_get_list_cell(env, arg_3_tail, &arg_3_head, &arg_3_tail) ||
            !enif_get_double(env, arg_3_head, &arg_3_val)) {
            enif_free(arg_3_array);
            return enif_make_badarg(env);
        }
        arg_3_array[i] = (GLfloat)arg_3_val;
    }

    glUniformMatrix4x3fv(arg_0, arg_1, arg_2, arg_3_array);

    enif_free(arg_3_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUniformMatrix4x3fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUniformMatrix4x3fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexBindingDivisor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glVertexBindingDivisor(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexBindingDivisor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexBindingDivisor_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetShaderSource_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_max_length_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_max_length_tmp)) {
        return enif_make_badarg(env);
    }

    if (arg_1_max_length_tmp == 0) {
        return enif_make_badarg(env);
    }

    GLsizei arg_1_max_length = (GLsizei)arg_1_max_length_tmp;
    GLchar* arg_1_info_log = (GLchar*)enif_alloc(arg_1_max_length_tmp);
    if (!arg_1_info_log) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_1_length = 0;

    glGetShaderSource(arg_0, arg_1_max_length, &arg_1_length, arg_1_info_log);

    ERL_NIF_TERM arg_1_result;
    unsigned char* arg_1_bin = enif_make_new_binary(env, arg_1_length, &arg_1_result);
    if (arg_1_bin && arg_1_length > 0) {
        memcpy(arg_1_bin, arg_1_info_log, arg_1_length);
    }
    enif_free(arg_1_info_log);
    return enif_make_tuple(env, 1,
        arg_1_result
    );
}

static ERL_NIF_TERM nif_glGetShaderSource(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetShaderSource_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glSampleCoverage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;
    GLboolean arg_1;
    if (enif_compare(argv[1], enif_make_atom(env, "true")) == 0) {
        arg_1 = GL_TRUE;
    } else if (enif_compare(argv[1], enif_make_atom(env, "false")) == 0) {
        arg_1 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }

    glSampleCoverage(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glSampleCoverage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glSampleCoverage_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glStencilOpSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLenum arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLenum)arg_3_tmp;

    glStencilOpSeparate(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glStencilOpSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilOpSeparate_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramPipelineivInteger_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint out_2;

    glGetProgramPipelineiv(arg_0, arg_1, &out_2);

    ERL_NIF_TERM out_2_ret = enif_make_int(env, out_2);
    return enif_make_tuple(env, 1,
        out_2_ret
    );
}

static ERL_NIF_TERM nif_glGetProgramPipelineivInteger(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramPipelineivInteger_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramResourceLocation_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifBinary arg_2;
    if (!enif_inspect_binary(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLchar* arg_2_string = (GLchar*)enif_alloc(arg_2.size + 1);
    if (!arg_2_string) {
        return enif_make_badarg(env);
    }
    if (arg_2.size > 0) {
        memcpy(arg_2_string, arg_2.data, arg_2.size);
    }
    arg_2_string[arg_2.size] = '\0';

    GLint ret = glGetProgramResourceLocation(arg_0, arg_1, (const GLchar*)arg_2_string);

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    enif_free(arg_2_string);
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetProgramResourceLocation(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramResourceLocation_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramBinary_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifBinary arg_2;
    if (!enif_inspect_binary(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;

    glProgramBinary(arg_0, arg_1, (void*)arg_2.data, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramBinary(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramBinary_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glClearBufferfi_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;

    glClearBufferfi(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glClearBufferfi(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearBufferfi_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlendFunc_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;

    glBlendFunc(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlendFunc(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendFunc_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUseProgramStages_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLbitfield arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLbitfield)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glUseProgramStages(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUseProgramStages(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUseProgramStages_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteFramebuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteFramebuffers(arg_0, (void*)arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteFramebuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteFramebuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glHint_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;

    glHint(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glHint(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glHint_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetBooleanv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    ErlNifUInt64 arg_1_count_tmp;
    if (!enif_get_uint64(env, argv[1], &arg_1_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_1_count_tmp == 0 || arg_1_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_count = (GLsizei)arg_1_count_tmp;
    GLboolean* arg_1_values = enif_alloc(sizeof(GLboolean) * (size_t)arg_1_count);
    if (!arg_1_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetBooleanv(arg_0, arg_1_values);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_count-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, custom_enif_make_bool(env, arg_1_values[i]), arg_1_ret);
    }
    enif_free(arg_1_values);
    return enif_make_tuple(env, 1,
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetBooleanv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetBooleanv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBeginTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glBeginTransformFeedback(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBeginTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBeginTransformFeedback_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlendColor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;

    glBlendColor(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlendColor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendColor_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexStorage2DMultisample_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    GLboolean arg_5;
    if (enif_compare(argv[5], enif_make_atom(env, "true")) == 0) {
        arg_5 = GL_TRUE;
    } else if (enif_compare(argv[5], enif_make_atom(env, "false")) == 0) {
        arg_5 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }

    glTexStorage2DMultisample(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexStorage2DMultisample(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexStorage2DMultisample_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsProgramPipeline_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsProgramPipeline(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsProgramPipeline(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsProgramPipeline_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteBuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteBuffers(arg_0, (void*)arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteBuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteBuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetFramebufferAttachmentParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    ErlNifUInt64 arg_3_count_tmp;
    if (!enif_get_uint64(env, argv[3], &arg_3_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_3_count_tmp == 0 || arg_3_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3_count = (GLsizei)arg_3_count_tmp;
    GLint* arg_3_values = enif_alloc(sizeof(GLint) * (size_t)arg_3_count);
    if (!arg_3_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetFramebufferAttachmentParameteriv(arg_0, arg_1, arg_2, arg_3_values);

    ERL_NIF_TERM arg_3_ret = enif_make_list(env, 0);
    for (int i = arg_3_count-1; i >= 0; i--) {
    arg_3_ret = enif_make_list_cell(env, enif_make_int(env, arg_3_values[i]), arg_3_ret);
    }
    enif_free(arg_3_values);
    return enif_make_tuple(env, 1,
        arg_3_ret
    );
}

static ERL_NIF_TERM nif_glGetFramebufferAttachmentParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetFramebufferAttachmentParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBeginQuery_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBeginQuery(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBeginQuery(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBeginQuery_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix2fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_4_length;
    if (!enif_get_list_length(env, argv[4], &arg_4_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_4_array = enif_alloc(sizeof(GLfloat) * arg_4_length);
    if (!arg_4_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_4_head, arg_4_tail = argv[4];
    for (unsigned i = 0; i < arg_4_length; i++) {
        double arg_4_val;
        if (!enif_get_list_cell(env, arg_4_tail, &arg_4_head, &arg_4_tail) ||
            !enif_get_double(env, arg_4_head, &arg_4_val)) {
            enif_free(arg_4_array);
            return enif_make_badarg(env);
        }
        arg_4_array[i] = (GLfloat)arg_4_val;
    }

    glProgramUniformMatrix2fv(arg_0, arg_1, arg_2, arg_3, arg_4_array);

    enif_free(arg_4_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix2fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniformMatrix2fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix2x3fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_4_length;
    if (!enif_get_list_length(env, argv[4], &arg_4_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_4_array = enif_alloc(sizeof(GLfloat) * arg_4_length);
    if (!arg_4_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_4_head, arg_4_tail = argv[4];
    for (unsigned i = 0; i < arg_4_length; i++) {
        double arg_4_val;
        if (!enif_get_list_cell(env, arg_4_tail, &arg_4_head, &arg_4_tail) ||
            !enif_get_double(env, arg_4_head, &arg_4_val)) {
            enif_free(arg_4_array);
            return enif_make_badarg(env);
        }
        arg_4_array[i] = (GLfloat)arg_4_val;
    }

    glProgramUniformMatrix2x3fv(arg_0, arg_1, arg_2, arg_3, arg_4_array);

    enif_free(arg_4_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix2x3fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniformMatrix2x3fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix2x4fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_4_length;
    if (!enif_get_list_length(env, argv[4], &arg_4_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_4_array = enif_alloc(sizeof(GLfloat) * arg_4_length);
    if (!arg_4_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_4_head, arg_4_tail = argv[4];
    for (unsigned i = 0; i < arg_4_length; i++) {
        double arg_4_val;
        if (!enif_get_list_cell(env, arg_4_tail, &arg_4_head, &arg_4_tail) ||
            !enif_get_double(env, arg_4_head, &arg_4_val)) {
            enif_free(arg_4_array);
            return enif_make_badarg(env);
        }
        arg_4_array[i] = (GLfloat)arg_4_val;
    }

    glProgramUniformMatrix2x4fv(arg_0, arg_1, arg_2, arg_3, arg_4_array);

    enif_free(arg_4_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix2x4fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniformMatrix2x4fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix3fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_4_length;
    if (!enif_get_list_length(env, argv[4], &arg_4_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_4_array = enif_alloc(sizeof(GLfloat) * arg_4_length);
    if (!arg_4_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_4_head, arg_4_tail = argv[4];
    for (unsigned i = 0; i < arg_4_length; i++) {
        double arg_4_val;
        if (!enif_get_list_cell(env, arg_4_tail, &arg_4_head, &arg_4_tail) ||
            !enif_get_double(env, arg_4_head, &arg_4_val)) {
            enif_free(arg_4_array);
            return enif_make_badarg(env);
        }
        arg_4_array[i] = (GLfloat)arg_4_val;
    }

    glProgramUniformMatrix3fv(arg_0, arg_1, arg_2, arg_3, arg_4_array);

    enif_free(arg_4_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix3fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniformMatrix3fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix3x2fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_4_length;
    if (!enif_get_list_length(env, argv[4], &arg_4_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_4_array = enif_alloc(sizeof(GLfloat) * arg_4_length);
    if (!arg_4_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_4_head, arg_4_tail = argv[4];
    for (unsigned i = 0; i < arg_4_length; i++) {
        double arg_4_val;
        if (!enif_get_list_cell(env, arg_4_tail, &arg_4_head, &arg_4_tail) ||
            !enif_get_double(env, arg_4_head, &arg_4_val)) {
            enif_free(arg_4_array);
            return enif_make_badarg(env);
        }
        arg_4_array[i] = (GLfloat)arg_4_val;
    }

    glProgramUniformMatrix3x2fv(arg_0, arg_1, arg_2, arg_3, arg_4_array);

    enif_free(arg_4_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix3x2fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniformMatrix3x2fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix3x4fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_4_length;
    if (!enif_get_list_length(env, argv[4], &arg_4_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_4_array = enif_alloc(sizeof(GLfloat) * arg_4_length);
    if (!arg_4_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_4_head, arg_4_tail = argv[4];
    for (unsigned i = 0; i < arg_4_length; i++) {
        double arg_4_val;
        if (!enif_get_list_cell(env, arg_4_tail, &arg_4_head, &arg_4_tail) ||
            !enif_get_double(env, arg_4_head, &arg_4_val)) {
            enif_free(arg_4_array);
            return enif_make_badarg(env);
        }
        arg_4_array[i] = (GLfloat)arg_4_val;
    }

    glProgramUniformMatrix3x4fv(arg_0, arg_1, arg_2, arg_3, arg_4_array);

    enif_free(arg_4_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix3x4fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniformMatrix3x4fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix4fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_4_length;
    if (!enif_get_list_length(env, argv[4], &arg_4_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_4_array = enif_alloc(sizeof(GLfloat) * arg_4_length);
    if (!arg_4_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_4_head, arg_4_tail = argv[4];
    for (unsigned i = 0; i < arg_4_length; i++) {
        double arg_4_val;
        if (!enif_get_list_cell(env, arg_4_tail, &arg_4_head, &arg_4_tail) ||
            !enif_get_double(env, arg_4_head, &arg_4_val)) {
            enif_free(arg_4_array);
            return enif_make_badarg(env);
        }
        arg_4_array[i] = (GLfloat)arg_4_val;
    }

    glProgramUniformMatrix4fv(arg_0, arg_1, arg_2, arg_3, arg_4_array);

    enif_free(arg_4_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix4fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniformMatrix4fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix4x2fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_4_length;
    if (!enif_get_list_length(env, argv[4], &arg_4_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_4_array = enif_alloc(sizeof(GLfloat) * arg_4_length);
    if (!arg_4_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_4_head, arg_4_tail = argv[4];
    for (unsigned i = 0; i < arg_4_length; i++) {
        double arg_4_val;
        if (!enif_get_list_cell(env, arg_4_tail, &arg_4_head, &arg_4_tail) ||
            !enif_get_double(env, arg_4_head, &arg_4_val)) {
            enif_free(arg_4_array);
            return enif_make_badarg(env);
        }
        arg_4_array[i] = (GLfloat)arg_4_val;
    }

    glProgramUniformMatrix4x2fv(arg_0, arg_1, arg_2, arg_3, arg_4_array);

    enif_free(arg_4_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix4x2fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniformMatrix4x2fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix4x3fv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    unsigned int arg_4_length;
    if (!enif_get_list_length(env, argv[4], &arg_4_length)) {
        return enif_make_badarg(env);
    }
    GLfloat* arg_4_array = enif_alloc(sizeof(GLfloat) * arg_4_length);
    if (!arg_4_array) {
        return enif_make_tuple2(env, enif_make_atom(env, "error"), enif_make_atom(env, "out_of_memory"));
    }
    ERL_NIF_TERM arg_4_head, arg_4_tail = argv[4];
    for (unsigned i = 0; i < arg_4_length; i++) {
        double arg_4_val;
        if (!enif_get_list_cell(env, arg_4_tail, &arg_4_head, &arg_4_tail) ||
            !enif_get_double(env, arg_4_head, &arg_4_val)) {
            enif_free(arg_4_array);
            return enif_make_badarg(env);
        }
        arg_4_array[i] = (GLfloat)arg_4_val;
    }

    glProgramUniformMatrix4x3fv(arg_0, arg_1, arg_2, arg_3, arg_4_array);

    enif_free(arg_4_array);
    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramUniformMatrix4x3fv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramUniformMatrix4x3fv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glReleaseShaderCompiler_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    glReleaseShaderCompiler();

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glReleaseShaderCompiler(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glReleaseShaderCompiler_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glPixelStorei_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;

    glPixelStorei(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glPixelStorei(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glPixelStorei_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glEndQuery_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glEndQuery(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glEndQuery(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEndQuery_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramBinary_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    ErlNifUInt64 arg_1_size;
    if (!enif_get_uint64(env, argv[1], &arg_1_size)) {
        return enif_make_badarg(env);
    }
    if (arg_1_size > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    unsigned char* arg_1_data = NULL;
    if (arg_1_size > 0) {
        arg_1_data = enif_alloc((size_t)arg_1_size);
        if (!arg_1_data) {
            return enif_make_tuple2(env,
                enif_make_atom(env, "error"),
                enif_make_atom(env, "out_of_memory")
            );
        }
    }
    GLsizei arg_1_length = 0;
    GLenum arg_1_format = 0;

    glGetProgramBinary(arg_0, (GLsizei)arg_1_size, &arg_1_length, &arg_1_format, arg_1_data);

    if (arg_1_length < 0) {
        arg_1_length = 0;
    }
    if ((ErlNifUInt64)arg_1_length > arg_1_size) {
        arg_1_length = (GLsizei)arg_1_size;
    }
    ERL_NIF_TERM arg_1_format_ret = enif_make_uint(env, arg_1_format);
    ERL_NIF_TERM arg_1_binary_ret;
    unsigned char* arg_1_bin = enif_make_new_binary(env, (size_t)arg_1_length, &arg_1_binary_ret);
    if (arg_1_bin == NULL && arg_1_length > 0) {
        if (arg_1_data) {
            enif_free(arg_1_data);
        }
        return enif_make_badarg(env);
    }
    if (arg_1_data && arg_1_length > 0) {
        memcpy(arg_1_bin, arg_1_data, (size_t)arg_1_length);
    }
    if (arg_1_data) {
        enif_free(arg_1_data);
    }
    return enif_make_tuple(env, 2,
        arg_1_format_ret,
        arg_1_binary_ret
    );
}

static ERL_NIF_TERM nif_glGetProgramBinary(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramBinary_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetActiveUniformsiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    if (arg_1.size == 0 || arg_1.size % sizeof(GLuint) != 0) {
        return enif_make_badarg(env);
    }
    size_t arg_1_count_tmp = arg_1.size / sizeof(GLuint);
    if (arg_1_count_tmp > (size_t)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_count = (GLsizei)arg_1_count_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    if ((size_t)arg_1_count == 0 || (size_t)arg_1_count > (size_t)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei out_3_count = (GLsizei)arg_1_count;
    GLint* out_3_values = enif_alloc(sizeof(GLint) * (size_t)out_3_count);
    if (!out_3_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetActiveUniformsiv(arg_0, arg_1_count, (const GLuint*)arg_1.data, arg_2, out_3_values);

    ERL_NIF_TERM out_3_ret = enif_make_list(env, 0);
    for (int i = out_3_count-1; i >= 0; i--) {
    out_3_ret = enif_make_list_cell(env, enif_make_int(env, out_3_values[i]), out_3_ret);
    }
    enif_free(out_3_values);
    return enif_make_tuple(env, 1,
        out_3_ret
    );
}

static ERL_NIF_TERM nif_glGetActiveUniformsiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetActiveUniformsiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glShaderSource_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    if (!enif_is_list(env, argv[1])) {
        return enif_make_badarg(env);
    }

    ERL_NIF_TERM arg_1_list = argv[1];
    ERL_NIF_TERM arg_1_head;

    unsigned arg_1_count = 0;
    ERL_NIF_TERM arg_1_tmp_list = arg_1_list;
    while (!enif_is_empty_list(env, arg_1_tmp_list)) {
        if (!enif_get_list_cell(env, arg_1_tmp_list, &arg_1_head, &arg_1_tmp_list)) {
            return enif_make_badarg(env);
        }
        if (!enif_is_binary(env, arg_1_head)) {
            return enif_make_badarg(env);
        }
        arg_1_count++;
    }

    if (arg_1_count == 0) {
        return enif_make_badarg(env);
    }

    const GLchar** arg_1_strings = enif_alloc(sizeof(GLchar*) * arg_1_count);
    GLint* arg_1_lengths = enif_alloc(sizeof(GLint) * arg_1_count);
    ErlNifBinary* arg_1_binaries = enif_alloc(sizeof(ErlNifBinary) * arg_1_count);
    if (!arg_1_strings || !arg_1_lengths || !arg_1_binaries) {
        if (arg_1_strings) enif_free(arg_1_strings);
        if (arg_1_lengths) enif_free(arg_1_lengths);
        if (arg_1_binaries) enif_free(arg_1_binaries);
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    arg_1_tmp_list = arg_1_list;
    unsigned arg_1_i = 0;
    while (!enif_is_empty_list(env, arg_1_tmp_list)) {
        enif_get_list_cell(env, arg_1_tmp_list, &arg_1_head, &arg_1_tmp_list);
        if (!enif_inspect_binary(env, arg_1_head, &arg_1_binaries[arg_1_i])) {
            for (unsigned arg_1_j = 0; arg_1_j < arg_1_i; arg_1_j++) {
                enif_release_binary(&arg_1_binaries[arg_1_j]);
            }
            enif_free(arg_1_strings);
            enif_free(arg_1_lengths);
            enif_free(arg_1_binaries);
            return enif_make_badarg(env);
        }

        arg_1_strings[arg_1_i] = (const GLchar*)arg_1_binaries[arg_1_i].data;
        arg_1_lengths[arg_1_i] = (GLint)arg_1_binaries[arg_1_i].size;
        arg_1_i++;
    }

    glShaderSource(arg_0, (GLsizei)arg_1_count, arg_1_strings, arg_1_lengths);

    for (unsigned arg_1_j = 0; arg_1_j < arg_1_count; arg_1_j++) {
        enif_release_binary(&arg_1_binaries[arg_1_j]);
    }
    enif_free(arg_1_strings);
    enif_free(arg_1_lengths);
    enif_free(arg_1_binaries);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glShaderSource(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glShaderSource_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glClear_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLbitfield arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLbitfield)arg_0_tmp;

    glClear(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glClear(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClear_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glFramebufferRenderbuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glFramebufferRenderbuffer(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glFramebufferRenderbuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFramebufferRenderbuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glValidateProgramPipeline_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glValidateProgramPipeline(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glValidateProgramPipeline(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glValidateProgramPipeline_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDrawArraysIndirect_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    ErlNifUInt64 arg_1;
    if (!enif_get_uint64(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    if (arg_1 > UINTPTR_MAX) {
        return enif_make_badarg(env);
    }


    glDrawArraysIndirect(arg_0, (GLvoid*)(uintptr_t)arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDrawArraysIndirect(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawArraysIndirect_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetBufferParameteri64v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLint64* arg_2_values = enif_alloc(sizeof(GLint64) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetBufferParameteri64v(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int64(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetBufferParameteri64v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetBufferParameteri64v_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetBufferParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLint* arg_2_values = enif_alloc(sizeof(GLint) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetBufferParameteriv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetBufferParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetBufferParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCopyTexSubImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLint arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLint)arg_5_tmp;
    GLsizei arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLsizei)arg_6_tmp;
    GLsizei arg_7;
    int arg_7_tmp;
    if (!enif_get_int(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLsizei)arg_7_tmp;

    glCopyTexSubImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCopyTexSubImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCopyTexSubImage2D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetActiveUniform_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    unsigned int arg_2_max_length_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_max_length_tmp)) {
        return enif_make_badarg(env);
    }

    if (arg_2_max_length_tmp == 0) {
        return enif_make_badarg(env);
    }

    GLsizei arg_2_max_length = (GLsizei)arg_2_max_length_tmp;
    GLchar* arg_2_name = (GLchar*)enif_alloc(arg_2_max_length_tmp);
    if (!arg_2_name) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_2_length = 0;
    GLint arg_2_size;
    GLenum arg_2_type;

    glGetActiveUniform(arg_0, arg_1, arg_2_max_length, &arg_2_length, &arg_2_size, &arg_2_type, arg_2_name);

    ERL_NIF_TERM arg_2_size_ret = enif_make_int(env, arg_2_size);
    ERL_NIF_TERM arg_2_type_ret;
    switch (arg_2_type) {
        case GL_INT_VEC2: arg_2_type_ret = beam_atom_int_vec2; break;
        case GL_SAMPLER_2D_ARRAY: arg_2_type_ret = beam_atom_sampler_2d_array; break;
        case GL_SAMPLER_2D_MULTISAMPLE: arg_2_type_ret = beam_atom_sampler_2d_multisample; break;
        case GL_FLOAT_MAT3: arg_2_type_ret = beam_atom_float_mat3; break;
        case GL_UNSIGNED_INT_SAMPLER_2D_ARRAY: arg_2_type_ret = beam_atom_unsigned_int_sampler_2d_array; break;
        case GL_UNSIGNED_INT_SAMPLER_CUBE: arg_2_type_ret = beam_atom_unsigned_int_sampler_cube; break;
        case GL_INT_SAMPLER_3D: arg_2_type_ret = beam_atom_int_sampler_3d; break;
        case GL_UNSIGNED_INT: arg_2_type_ret = beam_atom_unsigned_int; break;
        case GL_INT: arg_2_type_ret = beam_atom_int; break;
        case GL_UNSIGNED_INT_VEC2: arg_2_type_ret = beam_atom_unsigned_int_vec2; break;
        case GL_FLOAT_MAT2x3: arg_2_type_ret = beam_atom_float_mat2x3; break;
        case GL_BOOL_VEC2: arg_2_type_ret = beam_atom_bool_vec2; break;
        case GL_FLOAT_MAT4x2: arg_2_type_ret = beam_atom_float_mat4x2; break;
        case GL_BOOL: arg_2_type_ret = beam_atom_bool; break;
        case GL_INT_VEC3: arg_2_type_ret = beam_atom_int_vec3; break;
        case GL_FLOAT_MAT3x4: arg_2_type_ret = beam_atom_float_mat3x4; break;
        case GL_BOOL_VEC4: arg_2_type_ret = beam_atom_bool_vec4; break;
        case GL_INT_SAMPLER_2D_ARRAY: arg_2_type_ret = beam_atom_int_sampler_2d_array; break;
        case GL_FLOAT_VEC4: arg_2_type_ret = beam_atom_float_vec4; break;
        case GL_UNSIGNED_INT_VEC4: arg_2_type_ret = beam_atom_unsigned_int_vec4; break;
        case GL_FLOAT_MAT2: arg_2_type_ret = beam_atom_float_mat2; break;
        case GL_UNSIGNED_INT_VEC3: arg_2_type_ret = beam_atom_unsigned_int_vec3; break;
        case GL_SAMPLER_2D_ARRAY_SHADOW: arg_2_type_ret = beam_atom_sampler_2d_array_shadow; break;
        case GL_FLOAT: arg_2_type_ret = beam_atom_float; break;
        case GL_FLOAT_MAT3x2: arg_2_type_ret = beam_atom_float_mat3x2; break;
        case GL_INT_SAMPLER_2D: arg_2_type_ret = beam_atom_int_sampler_2d; break;
        case GL_SAMPLER_3D: arg_2_type_ret = beam_atom_sampler_3d; break;
        case GL_FLOAT_VEC3: arg_2_type_ret = beam_atom_float_vec3; break;
        case GL_UNSIGNED_INT_SAMPLER_3D: arg_2_type_ret = beam_atom_unsigned_int_sampler_3d; break;
        case GL_FLOAT_MAT4x3: arg_2_type_ret = beam_atom_float_mat4x3; break;
        case GL_SAMPLER_2D: arg_2_type_ret = beam_atom_sampler_2d; break;
        case GL_SAMPLER_CUBE_SHADOW: arg_2_type_ret = beam_atom_sampler_cube_shadow; break;
        case GL_INT_SAMPLER_CUBE: arg_2_type_ret = beam_atom_int_sampler_cube; break;
        case GL_FLOAT_VEC2: arg_2_type_ret = beam_atom_float_vec2; break;
        case GL_SAMPLER_2D_SHADOW: arg_2_type_ret = beam_atom_sampler_2d_shadow; break;
        case GL_INT_SAMPLER_2D_MULTISAMPLE: arg_2_type_ret = beam_atom_int_sampler_2d_multisample; break;
        case GL_BOOL_VEC3: arg_2_type_ret = beam_atom_bool_vec3; break;
        case GL_FLOAT_MAT4: arg_2_type_ret = beam_atom_float_mat4; break;
        case GL_UNSIGNED_INT_SAMPLER_2D: arg_2_type_ret = beam_atom_unsigned_int_sampler_2d; break;
        case GL_INT_VEC4: arg_2_type_ret = beam_atom_int_vec4; break;
        case GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE: arg_2_type_ret = beam_atom_unsigned_int_sampler_2d_multisample; break;
        case GL_FLOAT_MAT2x4: arg_2_type_ret = beam_atom_float_mat2x4; break;
        case GL_SAMPLER_CUBE: arg_2_type_ret = beam_atom_sampler_cube; break;
        default: arg_2_type_ret = enif_make_atom(env, "unknown"); break;
    }
    ERL_NIF_TERM arg_2_name_ret;
    unsigned char* arg_2_bin = enif_make_new_binary(env, arg_2_length, &arg_2_name_ret);
    if (arg_2_bin && arg_2_length > 0) {
        memcpy(arg_2_bin, arg_2_name, arg_2_length);
    }
    enif_free(arg_2_name);
    return enif_make_tuple(env, 3,
        arg_2_size_ret,
        arg_2_type_ret,
        arg_2_name_ret
    );
}

static ERL_NIF_TERM nif_glGetActiveUniform(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetActiveUniform_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glRenderbufferStorage_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;

    glRenderbufferStorage(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glRenderbufferStorage(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glRenderbufferStorage_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glStencilFuncSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLuint arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLuint)arg_3_tmp;

    glStencilFuncSeparate(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glStencilFuncSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glStencilFuncSeparate_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetIntegervValues_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    ErlNifUInt64 arg_1_count_tmp;
    if (!enif_get_uint64(env, argv[1], &arg_1_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_1_count_tmp == 0 || arg_1_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_count = (GLsizei)arg_1_count_tmp;
    GLint* arg_1_values = enif_alloc(sizeof(GLint) * (size_t)arg_1_count);
    if (!arg_1_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetIntegerv(arg_0, arg_1_values);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_count-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_int(env, arg_1_values[i]), arg_1_ret);
    }
    enif_free(arg_1_values);
    return enif_make_tuple(env, 1,
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetIntegervValues(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetIntegervValues_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetActiveUniformBlockiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    ErlNifUInt64 arg_3_count_tmp;
    if (!enif_get_uint64(env, argv[3], &arg_3_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_3_count_tmp == 0 || arg_3_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3_count = (GLsizei)arg_3_count_tmp;
    GLint* arg_3_values = enif_alloc(sizeof(GLint) * (size_t)arg_3_count);
    if (!arg_3_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetActiveUniformBlockiv(arg_0, arg_1, arg_2, arg_3_values);

    ERL_NIF_TERM arg_3_ret = enif_make_list(env, 0);
    for (int i = arg_3_count-1; i >= 0; i--) {
    arg_3_ret = enif_make_list_cell(env, enif_make_int(env, arg_3_values[i]), arg_3_ret);
    }
    enif_free(arg_3_values);
    return enif_make_tuple(env, 1,
        arg_3_ret
    );
}

static ERL_NIF_TERM nif_glGetActiveUniformBlockiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetActiveUniformBlockiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenVertexArrays_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenVertexArrays(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenVertexArrays(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenVertexArrays_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDepthFunc_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glDepthFunc(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDepthFunc(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDepthFunc_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenFramebuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenFramebuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenFramebuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenFramebuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttribDivisor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glVertexAttribDivisor(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttribDivisor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttribDivisor_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetVertexAttribIiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLint* arg_2_values = enif_alloc(sizeof(GLint) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetVertexAttribIiv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetVertexAttribIiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetVertexAttribIiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetVertexAttribIuiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLuint* arg_2_values = enif_alloc(sizeof(GLuint) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetVertexAttribIuiv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_uint(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetVertexAttribIuiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetVertexAttribIuiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetFloatv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    ErlNifUInt64 arg_1_count_tmp;
    if (!enif_get_uint64(env, argv[1], &arg_1_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_1_count_tmp == 0 || arg_1_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_count = (GLsizei)arg_1_count_tmp;
    GLfloat* arg_1_values = enif_alloc(sizeof(GLfloat) * (size_t)arg_1_count);
    if (!arg_1_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetFloatv(arg_0, arg_1_values);

    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_count-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_double(env, arg_1_values[i]), arg_1_ret);
    }
    enif_free(arg_1_values);
    return enif_make_tuple(env, 1,
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetFloatv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetFloatv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glTexStorage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;

    glTexStorage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glTexStorage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glTexStorage3D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glColorMask_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLboolean arg_0;
    if (enif_compare(argv[0], enif_make_atom(env, "true")) == 0) {
        arg_0 = GL_TRUE;
    } else if (enif_compare(argv[0], enif_make_atom(env, "false")) == 0) {
        arg_0 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    GLboolean arg_1;
    if (enif_compare(argv[1], enif_make_atom(env, "true")) == 0) {
        arg_1 = GL_TRUE;
    } else if (enif_compare(argv[1], enif_make_atom(env, "false")) == 0) {
        arg_1 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    GLboolean arg_2;
    if (enif_compare(argv[2], enif_make_atom(env, "true")) == 0) {
        arg_2 = GL_TRUE;
    } else if (enif_compare(argv[2], enif_make_atom(env, "false")) == 0) {
        arg_2 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }
    GLboolean arg_3;
    if (enif_compare(argv[3], enif_make_atom(env, "true")) == 0) {
        arg_3 = GL_TRUE;
    } else if (enif_compare(argv[3], enif_make_atom(env, "false")) == 0) {
        arg_3 = GL_FALSE;
    } else {
        return enif_make_badarg(env);
    }

    glColorMask(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glColorMask(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glColorMask_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetAttachedShaders_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_max_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_max_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_1_max_tmp > (unsigned int)INT32_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_1_max = (GLsizei)arg_1_max_tmp;
    GLsizei arg_1_count = 0;
    GLuint* arg_1 = NULL;
    if (arg_1_max > 0) {
        arg_1 = enif_alloc(sizeof(GLuint) * arg_1_max);
        if (!arg_1) {
            return enif_make_tuple2(env,
                enif_make_atom(env, "error"),
                enif_make_atom(env, "out_of_memory")
            );
        }
    }

    glGetAttachedShaders(arg_0, arg_1_max, &arg_1_count, arg_1);

    if (arg_1_count < 0) {
        arg_1_count = 0;
    }
    if (arg_1_count > arg_1_max) {
        arg_1_count = arg_1_max;
    }
    ERL_NIF_TERM arg_1_ret = enif_make_list(env, 0);
    for (int i = arg_1_count-1; i >= 0; i--) {
    arg_1_ret = enif_make_list_cell(env, enif_make_uint(env, arg_1[i]), arg_1_ret);
    }
    if (arg_1) {
        enif_free(arg_1);
    }
    return enif_make_tuple(env, 1,
        arg_1_ret
    );
}

static ERL_NIF_TERM nif_glGetAttachedShaders(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetAttachedShaders_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glRenderbufferStorageMultisample_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLsizei arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLsizei)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;

    glRenderbufferStorageMultisample(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glRenderbufferStorageMultisample(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glRenderbufferStorageMultisample_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsTexture(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsTexture_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCompressedTexImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;
    GLint arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLint)arg_6_tmp;
    GLsizei arg_7;
    int arg_7_tmp;
    if (!enif_get_int(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLsizei)arg_7_tmp;
    ErlNifBinary arg_8;
    if (!enif_inspect_binary(env, argv[8], &arg_8)) {
        return enif_make_badarg(env);
    }

    glCompressedTexImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, (void*)arg_8.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCompressedTexImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTexImage3D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsFramebuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsFramebuffer(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsFramebuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsFramebuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenSamplers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenSamplers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenSamplers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenSamplers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenTransformFeedbacks_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenTransformFeedbacks(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenTransformFeedbacks(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenTransformFeedbacks_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsSampler_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsSampler(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsSampler(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsSampler_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glFrontFace_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glFrontFace(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glFrontFace(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFrontFace_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlendEquation_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glBlendEquation(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlendEquation(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendEquation_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetString_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    const GLubyte* ret = glGetString(arg_0);

    size_t ret_len = ret ? strlen((const char*)ret) : 0;
    ErlNifBinary ret_tmp;
    if (!enif_alloc_binary(ret_len, &ret_tmp)) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    if (ret_len > 0) {
        memcpy(ret_tmp.data, ret, ret_len);
    }
    ERL_NIF_TERM ret_0 = enif_make_binary(env, &ret_tmp);

    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetString(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetString_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetShaderInfoLog_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    unsigned int arg_1_max_length_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_max_length_tmp)) {
        return enif_make_badarg(env);
    }

    if (arg_1_max_length_tmp == 0) {
        return enif_make_badarg(env);
    }

    GLsizei arg_1_max_length = (GLsizei)arg_1_max_length_tmp;
    GLchar* arg_1_info_log = (GLchar*)enif_alloc(arg_1_max_length_tmp);
    if (!arg_1_info_log) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_1_length = 0;

    glGetShaderInfoLog(arg_0, arg_1_max_length, &arg_1_length, arg_1_info_log);

    ERL_NIF_TERM arg_1_result;
    unsigned char* arg_1_bin = enif_make_new_binary(env, arg_1_length, &arg_1_result);
    if (arg_1_bin && arg_1_length > 0) {
        memcpy(arg_1_bin, arg_1_info_log, arg_1_length);
    }
    enif_free(arg_1_info_log);
    return enif_make_tuple(env, 1,
        arg_1_result
    );
}

static ERL_NIF_TERM nif_glGetShaderInfoLog(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetShaderInfoLog_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteQueries_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteQueries(arg_0, (void*)arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteQueries(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteQueries_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenQueries_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenQueries(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenQueries(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenQueries_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glEnable_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glEnable(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glEnable(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glEnable_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCreateShaderProgramv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    if (!enif_is_list(env, argv[1])) {
        return enif_make_badarg(env);
    }

    ERL_NIF_TERM arg_1_list = argv[1];
    ERL_NIF_TERM arg_1_head;

    unsigned arg_1_count = 0;
    ERL_NIF_TERM arg_1_tmp_list = arg_1_list;
    while (!enif_is_empty_list(env, arg_1_tmp_list)) {
        if (!enif_get_list_cell(env, arg_1_tmp_list, &arg_1_head, &arg_1_tmp_list)) {
            return enif_make_badarg(env);
        }
        if (!enif_is_binary(env, arg_1_head)) {
            return enif_make_badarg(env);
        }
        arg_1_count++;
    }

    if (arg_1_count == 0) {
        return enif_make_badarg(env);
    }

    GLchar** arg_1_strings = enif_alloc(sizeof(GLchar*) * arg_1_count);
    if (!arg_1_strings) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    for (unsigned arg_1_j = 0; arg_1_j < arg_1_count; arg_1_j++) {
        arg_1_strings[arg_1_j] = NULL;
    }

    arg_1_tmp_list = arg_1_list;
    unsigned arg_1_i = 0;
    while (!enif_is_empty_list(env, arg_1_tmp_list)) {
        enif_get_list_cell(env, arg_1_tmp_list, &arg_1_head, &arg_1_tmp_list);
        ErlNifBinary arg_1_binary;
        if (!enif_inspect_binary(env, arg_1_head, &arg_1_binary)) {
            for (unsigned arg_1_j = 0; arg_1_j < arg_1_i; arg_1_j++) {
                enif_free(arg_1_strings[arg_1_j]);
            }
            enif_free(arg_1_strings);
            return enif_make_badarg(env);
        }

        GLchar* arg_1_string = (GLchar*)enif_alloc(arg_1_binary.size + 1);
        if (!arg_1_string) {
            for (unsigned arg_1_j = 0; arg_1_j < arg_1_i; arg_1_j++) {
                enif_free(arg_1_strings[arg_1_j]);
            }
            enif_free(arg_1_strings);
            return enif_make_tuple2(env,
                enif_make_atom(env, "error"),
                enif_make_atom(env, "out_of_memory")
            );
        }
        if (arg_1_binary.size > 0) {
            memcpy(arg_1_string, arg_1_binary.data, arg_1_binary.size);
        }
        arg_1_string[arg_1_binary.size] = '\0';
        arg_1_strings[arg_1_i] = arg_1_string;
        arg_1_i++;
    }

    GLuint ret = glCreateShaderProgramv(arg_0, (GLsizei)arg_1_count, (const GLchar* const*)arg_1_strings);

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    for (unsigned arg_1_j = 0; arg_1_j < arg_1_count; arg_1_j++) {
        enif_free(arg_1_strings[arg_1_j]);
    }
    enif_free(arg_1_strings);

    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glCreateShaderProgramv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateShaderProgramv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteProgramPipelines_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteProgramPipelines(arg_0, (void*)arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteProgramPipelines(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteProgramPipelines_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetTexParameterfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLfloat* arg_2_values = enif_alloc(sizeof(GLfloat) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetTexParameterfv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetTexParameterfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTexParameterfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetTexParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLint* arg_2_values = enif_alloc(sizeof(GLint) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetTexParameteriv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetTexParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetTexParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsBuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    GLboolean ret = glIsBuffer(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsBuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsBuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBlendFuncSeparate_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLenum arg_3;
    unsigned int arg_3_tmp;
    if (!enif_get_uint(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLenum)arg_3_tmp;

    glBlendFuncSeparate(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBlendFuncSeparate(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBlendFuncSeparate_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindFramebuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindFramebuffer(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindFramebuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindFramebuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindRenderbuffer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindRenderbuffer(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindRenderbuffer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindRenderbuffer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glClearColor_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLfloat arg_0;
    double arg_0_tmp;
    if (!enif_get_double(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLfloat)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;

    glClearColor(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glClearColor(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glClearColor_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetUniformBlockIndex_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLchar* arg_1_string = (GLchar*)enif_alloc(arg_1.size + 1);
    if (!arg_1_string) {
        return enif_make_badarg(env);
    }
    if (arg_1.size > 0) {
        memcpy(arg_1_string, arg_1.data, arg_1.size);
    }
    arg_1_string[arg_1.size] = '\0';

    GLuint ret = glGetUniformBlockIndex(arg_0, (const GLchar*)arg_1_string);

    ERL_NIF_TERM ret_0 = enif_make_uint(env, ret);
    enif_free(arg_1_string);
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetUniformBlockIndex(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetUniformBlockIndex_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glIsEnabled_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    GLboolean ret = glIsEnabled(arg_0);

    ERL_NIF_TERM ret_0 = enif_make_atom(env, ret ? "true" : "false");
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glIsEnabled(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glIsEnabled_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteSamplers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteSamplers(arg_0, (void*)arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteSamplers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteSamplers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib1f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;

    glVertexAttrib1f(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib1f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib1f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib2f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;

    glVertexAttrib2f(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib2f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib2f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib3f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;

    glVertexAttrib3f(arg_0, arg_1, arg_2, arg_3);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib3f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib3f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glVertexAttrib4f_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLfloat arg_1;
    double arg_1_tmp;
    if (!enif_get_double(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLfloat)arg_1_tmp;
    GLfloat arg_2;
    double arg_2_tmp;
    if (!enif_get_double(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLfloat)arg_2_tmp;
    GLfloat arg_3;
    double arg_3_tmp;
    if (!enif_get_double(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLfloat)arg_3_tmp;
    GLfloat arg_4;
    double arg_4_tmp;
    if (!enif_get_double(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLfloat)arg_4_tmp;

    glVertexAttrib4f(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glVertexAttrib4f(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glVertexAttrib4f_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDispatchCompute_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;

    glDispatchCompute(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDispatchCompute(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDispatchCompute_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramResourceiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    ErlNifBinary arg_3;
    if (!enif_inspect_binary(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }
    if (arg_3.size == 0 || arg_3.size % sizeof(GLenum) != 0) {
        return enif_make_badarg(env);
    }
    size_t arg_3_count_tmp = arg_3.size / sizeof(GLenum);
    if (arg_3_count_tmp > (size_t)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_3_count = (GLsizei)arg_3_count_tmp;
    ErlNifUInt64 arg_4_count_tmp;
    if (!enif_get_uint64(env, argv[4], &arg_4_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_4_count_tmp == 0 || arg_4_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_4_count = (GLsizei)arg_4_count_tmp;
    GLsizei arg_4_length = 0;
    GLint* arg_4_values = enif_alloc(sizeof(GLint) * (size_t)arg_4_count);
    if (!arg_4_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetProgramResourceiv(arg_0, arg_1, arg_2, arg_3_count, (const GLenum*)arg_3.data, arg_4_count, &arg_4_length, arg_4_values);

    if (arg_4_length < 0) {
        arg_4_length = 0;
    }
    if (arg_4_length > arg_4_count) {
        arg_4_length = arg_4_count;
    }
    ERL_NIF_TERM arg_4_ret = enif_make_list(env, 0);
    for (int i = arg_4_length-1; i >= 0; i--) {
    arg_4_ret = enif_make_list_cell(env, enif_make_int(env, arg_4_values[i]), arg_4_ret);
    }
    enif_free(arg_4_values);
    return enif_make_tuple(env, 1,
        arg_4_ret
    );
}

static ERL_NIF_TERM nif_glGetProgramResourceiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramResourceiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetProgramPipelineiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint out_2;

    glGetProgramPipelineiv(arg_0, arg_1, &out_2);

    ERL_NIF_TERM out_2_ret = enif_make_atom(env, out_2 != 0 ? "true" : "false");
    return enif_make_tuple(env, 1,
        out_2_ret
    );
}

static ERL_NIF_TERM nif_glGetProgramPipelineiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetProgramPipelineiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGenBuffers_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    unsigned int arg_0_n_tmp;
    enif_get_uint(env, argv[0], &arg_0_n_tmp);
    GLsizei arg_0_n = (GLsizei)arg_0_n_tmp;
    GLuint* arg_0 = enif_alloc(sizeof(GLuint) * arg_0_n);

    glGenBuffers(arg_0_n, arg_0);

    ERL_NIF_TERM arg_0_ret = enif_make_list(env, 0);
    for (int i = arg_0_n-1; i >= 0; i--) {
    arg_0_ret = enif_make_list_cell(env, enif_make_uint(env, arg_0[i]), arg_0_ret);
    }
    enif_free(arg_0);
    return enif_make_tuple(env, 1,
        arg_0_ret
    );
}

static ERL_NIF_TERM nif_glGenBuffers(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGenBuffers_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetUniformfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLfloat* arg_2_values = enif_alloc(sizeof(GLfloat) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetUniformfv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetUniformfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetUniformfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetUniformiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLint* arg_2_values = enif_alloc(sizeof(GLint) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetUniformiv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetUniformiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetUniformiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetUniformuiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLuint* arg_2_values = enif_alloc(sizeof(GLuint) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetUniformuiv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_uint(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetUniformuiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetUniformuiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBufferSubData_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLintptr arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLintptr)arg_1_tmp;
    GLsizeiptr arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizeiptr)arg_2_tmp;
    ErlNifBinary arg_3;
    if (!enif_inspect_binary(env, argv[3], &arg_3)) {
        return enif_make_badarg(env);
    }

    glBufferSubData(arg_0, arg_1, arg_2, (void*)arg_3.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBufferSubData(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBufferSubData_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetSamplerParameterfv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLfloat* arg_2_values = enif_alloc(sizeof(GLfloat) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetSamplerParameterfv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_double(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetSamplerParameterfv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetSamplerParameterfv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetSamplerParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLint* arg_2_values = enif_alloc(sizeof(GLint) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetSamplerParameteriv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetSamplerParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetSamplerParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glActiveTexture_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glActiveTexture(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glActiveTexture(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glActiveTexture_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetShaderiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint out_2;

    glGetShaderiv(arg_0, arg_1, &out_2);

    ERL_NIF_TERM out_2_ret = enif_make_atom(env, out_2 != 0 ? "true" : "false");
    return enif_make_tuple(env, 1,
        out_2_ret
    );
}

static ERL_NIF_TERM nif_glGetShaderiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetShaderiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glResumeTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    glResumeTransformFeedback();

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glResumeTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glResumeTransformFeedback_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetInteger64i_v_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLint64* arg_2_values = enif_alloc(sizeof(GLint64) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetInteger64i_v(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int64(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetInteger64i_v(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetInteger64i_v_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glFinish_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    glFinish();

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glFinish(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFinish_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetRenderbufferParameteriv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLint* arg_2_values = enif_alloc(sizeof(GLint) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetRenderbufferParameteriv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_int(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetRenderbufferParameteriv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetRenderbufferParameteriv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteVertexArrays_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLsizei arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLsizei)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }

    glDeleteVertexArrays(arg_0, (void*)arg_1.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteVertexArrays(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteVertexArrays_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCompressedTexSubImage3D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;
    GLsizei arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLsizei)arg_5_tmp;
    GLsizei arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLsizei)arg_6_tmp;
    GLsizei arg_7;
    int arg_7_tmp;
    if (!enif_get_int(env, argv[7], &arg_7_tmp)) {
        return enif_make_badarg(env);
    }
    arg_7 = (GLsizei)arg_7_tmp;
    GLenum arg_8;
    unsigned int arg_8_tmp;
    if (!enif_get_uint(env, argv[8], &arg_8_tmp)) {
        return enif_make_badarg(env);
    }
    arg_8 = (GLenum)arg_8_tmp;
    GLsizei arg_9;
    int arg_9_tmp;
    if (!enif_get_int(env, argv[9], &arg_9_tmp)) {
        return enif_make_badarg(env);
    }
    arg_9 = (GLsizei)arg_9_tmp;
    ErlNifBinary arg_10;
    if (!enif_inspect_binary(env, argv[10], &arg_10)) {
        return enif_make_badarg(env);
    }

    glCompressedTexSubImage3D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, arg_7, arg_8, arg_9, (void*)arg_10.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCompressedTexSubImage3D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTexSubImage3D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetQueryObjectuiv_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2_count_tmp;
    if (!enif_get_uint64(env, argv[2], &arg_2_count_tmp)) {
        return enif_make_badarg(env);
    }
    if (arg_2_count_tmp == 0 || arg_2_count_tmp > (ErlNifUInt64)INT_MAX) {
        return enif_make_badarg(env);
    }
    GLsizei arg_2_count = (GLsizei)arg_2_count_tmp;
    GLuint* arg_2_values = enif_alloc(sizeof(GLuint) * (size_t)arg_2_count);
    if (!arg_2_values) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }

    glGetQueryObjectuiv(arg_0, arg_1, arg_2_values);

    ERL_NIF_TERM arg_2_ret = enif_make_list(env, 0);
    for (int i = arg_2_count-1; i >= 0; i--) {
    arg_2_ret = enif_make_list_cell(env, enif_make_uint(env, arg_2_values[i]), arg_2_ret);
    }
    enif_free(arg_2_values);
    return enif_make_tuple(env, 1,
        arg_2_ret
    );
}

static ERL_NIF_TERM nif_glGetQueryObjectuiv(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetQueryObjectuiv_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindBufferRange_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLintptr arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLintptr)arg_3_tmp;
    GLsizeiptr arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizeiptr)arg_4_tmp;

    glBindBufferRange(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindBufferRange(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindBufferRange_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCreateProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
        (void)argv;

    (void)argc;


    GLuint ret = glCreateProgram();

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glCreateProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCreateProgram_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetActiveUniformBlockName_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;
    unsigned int arg_2_max_length_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_max_length_tmp)) {
        return enif_make_badarg(env);
    }

    if (arg_2_max_length_tmp == 0) {
        return enif_make_badarg(env);
    }

    GLsizei arg_2_max_length = (GLsizei)arg_2_max_length_tmp;
    GLchar* arg_2_info_log = (GLchar*)enif_alloc(arg_2_max_length_tmp);
    if (!arg_2_info_log) {
        return enif_make_tuple2(env,
            enif_make_atom(env, "error"),
            enif_make_atom(env, "out_of_memory")
        );
    }
    GLsizei arg_2_length = 0;

    glGetActiveUniformBlockName(arg_0, arg_1, arg_2_max_length, &arg_2_length, arg_2_info_log);

    ERL_NIF_TERM arg_2_result;
    unsigned char* arg_2_bin = enif_make_new_binary(env, arg_2_length, &arg_2_result);
    if (arg_2_bin && arg_2_length > 0) {
        memcpy(arg_2_bin, arg_2_info_log, arg_2_length);
    }
    enif_free(arg_2_info_log);
    return enif_make_tuple(env, 1,
        arg_2_result
    );
}

static ERL_NIF_TERM nif_glGetActiveUniformBlockName(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetActiveUniformBlockName_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCompressedTexImage2D_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLenum arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLenum)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLsizei arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLsizei)arg_4_tmp;
    GLint arg_5;
    int arg_5_tmp;
    if (!enif_get_int(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLint)arg_5_tmp;
    GLsizei arg_6;
    int arg_6_tmp;
    if (!enif_get_int(env, argv[6], &arg_6_tmp)) {
        return enif_make_badarg(env);
    }
    arg_6 = (GLsizei)arg_6_tmp;
    ErlNifBinary arg_7;
    if (!enif_inspect_binary(env, argv[7], &arg_7)) {
        return enif_make_badarg(env);
    }

    glCompressedTexImage2D(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6, (void*)arg_7.data);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCompressedTexImage2D(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCompressedTexImage2D_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glFramebufferTextureLayer_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLuint arg_2;
    unsigned int arg_2_tmp;
    if (!enif_get_uint(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLuint)arg_2_tmp;
    GLint arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLint)arg_3_tmp;
    GLint arg_4;
    int arg_4_tmp;
    if (!enif_get_int(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLint)arg_4_tmp;

    glFramebufferTextureLayer(arg_0, arg_1, arg_2, arg_3, arg_4);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glFramebufferTextureLayer(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glFramebufferTextureLayer_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDispatchComputeIndirect_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLintptr arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLintptr)arg_0_tmp;

    glDispatchComputeIndirect(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDispatchComputeIndirect(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDispatchComputeIndirect_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glCullFace_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;

    glCullFace(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glCullFace(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glCullFace_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDrawElementsIndirect_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    ErlNifUInt64 arg_2;
    if (!enif_get_uint64(env, argv[2], &arg_2)) {
        return enif_make_badarg(env);
    }

    if (arg_2 > UINTPTR_MAX) {
        return enif_make_badarg(env);
    }


    glDrawElementsIndirect(arg_0, arg_1, (GLvoid*)(uintptr_t)arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDrawElementsIndirect(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDrawElementsIndirect_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glUseProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glUseProgram(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glUseProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glUseProgram_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindSampler_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindSampler(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindSampler(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindSampler_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glReadPixels_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLint arg_0;
    int arg_0_tmp;
    if (!enif_get_int(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLint)arg_0_tmp;
    GLint arg_1;
    int arg_1_tmp;
    if (!enif_get_int(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLint)arg_1_tmp;
    GLsizei arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLsizei)arg_2_tmp;
    GLsizei arg_3;
    int arg_3_tmp;
    if (!enif_get_int(env, argv[3], &arg_3_tmp)) {
        return enif_make_badarg(env);
    }
    arg_3 = (GLsizei)arg_3_tmp;
    GLenum arg_4;
    unsigned int arg_4_tmp;
    if (!enif_get_uint(env, argv[4], &arg_4_tmp)) {
        return enif_make_badarg(env);
    }
    arg_4 = (GLenum)arg_4_tmp;
    GLenum arg_5;
    unsigned int arg_5_tmp;
    if (!enif_get_uint(env, argv[5], &arg_5_tmp)) {
        return enif_make_badarg(env);
    }
    arg_5 = (GLenum)arg_5_tmp;
    ErlNifUInt64 arg_6_size;
    if (!enif_get_uint64(env, argv[6], &arg_6_size)) {
        return enif_make_badarg(env);
    }
    if (arg_6_size > (ErlNifUInt64)PTRDIFF_MAX) {
        return enif_make_badarg(env);
    }
    ERL_NIF_TERM arg_6;
    unsigned char* arg_6_data = enif_make_new_binary(env, arg_6_size, &arg_6);
    if (arg_6_data == NULL && arg_6_size > 0) {
        return enif_make_badarg(env);
    }

    glReadPixels(arg_0, arg_1, arg_2, arg_3, arg_4, arg_5, arg_6_data);

    return enif_make_tuple(env, 1,
        arg_6
    );
}

static ERL_NIF_TERM nif_glReadPixels(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glReadPixels_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glDeleteProgram_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;

    glDeleteProgram(arg_0);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glDeleteProgram(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glDeleteProgram_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetFragDataLocation_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLchar* arg_1_string = (GLchar*)enif_alloc(arg_1.size + 1);
    if (!arg_1_string) {
        return enif_make_badarg(env);
    }
    if (arg_1.size > 0) {
        memcpy(arg_1_string, arg_1.data, arg_1.size);
    }
    arg_1_string[arg_1.size] = '\0';

    GLint ret = glGetFragDataLocation(arg_0, (const GLchar*)arg_1_string);

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    enif_free(arg_1_string);
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetFragDataLocation(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetFragDataLocation_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glGetUniformLocation_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    ErlNifBinary arg_1;
    if (!enif_inspect_binary(env, argv[1], &arg_1)) {
        return enif_make_badarg(env);
    }
    GLchar* arg_1_string = (GLchar*)enif_alloc(arg_1.size + 1);
    if (!arg_1_string) {
        return enif_make_badarg(env);
    }
    if (arg_1.size > 0) {
        memcpy(arg_1_string, arg_1.data, arg_1.size);
    }
    arg_1_string[arg_1.size] = '\0';

    GLint ret = glGetUniformLocation(arg_0, (const GLchar*)arg_1_string);

    ERL_NIF_TERM ret_0 = enif_make_int(env, ret);
    enif_free(arg_1_string);
    return enif_make_tuple(env, 1,
        ret_0
    );
}

static ERL_NIF_TERM nif_glGetUniformLocation(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glGetUniformLocation_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glProgramParameteri_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLuint arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLuint)arg_0_tmp;
    GLenum arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLenum)arg_1_tmp;
    GLint arg_2;
    int arg_2_tmp;
    if (!enif_get_int(env, argv[2], &arg_2_tmp)) {
        return enif_make_badarg(env);
    }
    arg_2 = (GLint)arg_2_tmp;

    glProgramParameteri(arg_0, arg_1, arg_2);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glProgramParameteri(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glProgramParameteri_command, env, argc, (ERL_NIF_TERM *)argv);
}

static ERL_NIF_TERM nif_glBindTransformFeedback_command(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    (void)argc;

    GLenum arg_0;
    unsigned int arg_0_tmp;
    if (!enif_get_uint(env, argv[0], &arg_0_tmp)) {
        return enif_make_badarg(env);
    }
    arg_0 = (GLenum)arg_0_tmp;
    GLuint arg_1;
    unsigned int arg_1_tmp;
    if (!enif_get_uint(env, argv[1], &arg_1_tmp)) {
        return enif_make_badarg(env);
    }
    arg_1 = (GLuint)arg_1_tmp;

    glBindTransformFeedback(arg_0, arg_1);

    return enif_make_tuple(env, 0);
}

static ERL_NIF_TERM nif_glBindTransformFeedback(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    return egl_nif_execute_command(nif_glBindTransformFeedback_command, env, argc, (ERL_NIF_TERM *)argv);
}


static ErlNifFunc nif_functions[] = {
    {"glDisable_raw", 1, nif_glDisable, 0},
    {"glMemoryBarrierByRegion_raw", 1, nif_glMemoryBarrierByRegion, 0},
    {"glSamplerParameterf_raw", 3, nif_glSamplerParameterf, 0},
    {"glSamplerParameterfv_raw", 3, nif_glSamplerParameterfv, 0},
    {"glSamplerParameteri_raw", 3, nif_glSamplerParameteri, 0},
    {"glSamplerParameteriv_raw", 3, nif_glSamplerParameteriv, 0},
    {"glGetIntegervInteger_raw", 1, nif_glGetIntegervInteger, 0},
    {"glGetProgramiv_raw", 2, nif_glGetProgramiv, 0},
    {"glTexSubImage2D_raw", 9, nif_glTexSubImage2D, 0},
    {"glEnableVertexAttribArray_raw", 1, nif_glEnableVertexAttribArray, 0},
    {"glClearStencil_raw", 1, nif_glClearStencil, 0},
    {"glGetProgramivInteger_raw", 2, nif_glGetProgramivInteger, 0},
    {"glBindAttribLocation_raw", 3, nif_glBindAttribLocation, 0},
    {"glVertexAttribBinding_raw", 2, nif_glVertexAttribBinding, 0},
    {"glTransformFeedbackVaryings_raw", 3, nif_glTransformFeedbackVaryings, 0},
    {"glGetProgramInfoLog_raw", 2, nif_glGetProgramInfoLog, 0},
    {"glTexStorage2D_raw", 5, nif_glTexStorage2D, 0},
    {"glGetProgramPipelineInfoLog_raw", 2, nif_glGetProgramPipelineInfoLog, 0},
    {"glGetBooleani_v_raw", 3, nif_glGetBooleani_v, 0},
    {"glGetShaderPrecisionFormat_raw", 2, nif_glGetShaderPrecisionFormat, 0},
    {"glGetTransformFeedbackVarying_raw", 3, nif_glGetTransformFeedbackVarying, 0},
    {"glDeleteRenderbuffers_raw", 2, nif_glDeleteRenderbuffers, 0},
    {"glStencilOp_raw", 3, nif_glStencilOp, 0},
    {"glVertexAttribI4i_raw", 5, nif_glVertexAttribI4i, 0},
    {"glVertexAttribI4ui_raw", 5, nif_glVertexAttribI4ui, 0},
    {"glIsRenderbuffer_raw", 1, nif_glIsRenderbuffer, 0},
    {"glFlush_raw", 0, nif_glFlush, 0},
    {"glPauseTransformFeedback_raw", 0, nif_glPauseTransformFeedback, 0},
    {"glIsQuery_raw", 1, nif_glIsQuery, 0},
    {"glIsTransformFeedback_raw", 1, nif_glIsTransformFeedback, 0},
    {"glReadBuffer_raw", 1, nif_glReadBuffer, 0},
    {"glGetInternalformativ_raw", 4, nif_glGetInternalformativ, 0},
    {"glCreateShader_raw", 1, nif_glCreateShader, 0},
    {"glBindProgramPipeline_raw", 1, nif_glBindProgramPipeline, 0},
    {"glDrawElementsInstanced_raw", 5, nif_glDrawElementsInstanced, 0},
    {"glBindImageTexture_raw", 7, nif_glBindImageTexture, 0},
    {"glVertexAttribPointer_raw", 6, nif_glVertexAttribPointer, 0},
    {"glGetInteger64vValues_raw", 2, nif_glGetInteger64vValues, 0},
    {"glGetInteger64vInteger_raw", 1, nif_glGetInteger64vInteger, 0},
    {"glDrawArraysInstanced_raw", 4, nif_glDrawArraysInstanced, 0},
    {"glDrawElements_raw", 4, nif_glDrawElements, 0},
    {"glPolygonOffset_raw", 2, nif_glPolygonOffset, 0},
    {"glEndTransformFeedback_raw", 0, nif_glEndTransformFeedback, 0},
    {"glDrawRangeElements_raw", 6, nif_glDrawRangeElements, 0},
    {"glActiveShaderProgram_raw", 2, nif_glActiveShaderProgram, 0},
    {"glGetShaderivInteger_raw", 2, nif_glGetShaderivInteger, 0},
    {"glStencilMask_raw", 1, nif_glStencilMask, 0},
    {"glGetProgramInterfaceiv_raw", 4, nif_glGetProgramInterfaceiv, 0},
    {"glGetProgramResourceName_raw", 4, nif_glGetProgramResourceName, 0},
    {"glCopyBufferSubData_raw", 5, nif_glCopyBufferSubData, 0},
    {"glProgramUniform1f_raw", 3, nif_glProgramUniform1f, 0},
    {"glProgramUniform1fv_raw", 4, nif_glProgramUniform1fv, 0},
    {"glProgramUniform1i_raw", 3, nif_glProgramUniform1i, 0},
    {"glProgramUniform1iv_raw", 4, nif_glProgramUniform1iv, 0},
    {"glProgramUniform1ui_raw", 3, nif_glProgramUniform1ui, 0},
    {"glProgramUniform1uiv_raw", 4, nif_glProgramUniform1uiv, 0},
    {"glProgramUniform2f_raw", 4, nif_glProgramUniform2f, 0},
    {"glProgramUniform2fv_raw", 4, nif_glProgramUniform2fv, 0},
    {"glProgramUniform2i_raw", 4, nif_glProgramUniform2i, 0},
    {"glProgramUniform2iv_raw", 4, nif_glProgramUniform2iv, 0},
    {"glProgramUniform2ui_raw", 4, nif_glProgramUniform2ui, 0},
    {"glProgramUniform2uiv_raw", 4, nif_glProgramUniform2uiv, 0},
    {"glProgramUniform3f_raw", 5, nif_glProgramUniform3f, 0},
    {"glProgramUniform3fv_raw", 4, nif_glProgramUniform3fv, 0},
    {"glProgramUniform3i_raw", 5, nif_glProgramUniform3i, 0},
    {"glProgramUniform3iv_raw", 4, nif_glProgramUniform3iv, 0},
    {"glProgramUniform3ui_raw", 5, nif_glProgramUniform3ui, 0},
    {"glProgramUniform3uiv_raw", 4, nif_glProgramUniform3uiv, 0},
    {"glProgramUniform4f_raw", 6, nif_glProgramUniform4f, 0},
    {"glProgramUniform4fv_raw", 4, nif_glProgramUniform4fv, 0},
    {"glProgramUniform4i_raw", 6, nif_glProgramUniform4i, 0},
    {"glProgramUniform4iv_raw", 4, nif_glProgramUniform4iv, 0},
    {"glProgramUniform4ui_raw", 6, nif_glProgramUniform4ui, 0},
    {"glProgramUniform4uiv_raw", 4, nif_glProgramUniform4uiv, 0},
    {"glDisableVertexAttribArray_raw", 1, nif_glDisableVertexAttribArray, 0},
    {"glClearDepthf_raw", 1, nif_glClearDepthf, 0},
    {"glLinkProgram_raw", 1, nif_glLinkProgram, 0},
    {"glCompileShader_raw", 1, nif_glCompileShader, 0},
    {"glDetachShader_raw", 2, nif_glDetachShader, 0},
    {"glBufferData_raw", 4, nif_glBufferData, 0},
    {"glGetUniformIndices_raw", 2, nif_glGetUniformIndices, 0},
    {"glAttachShader_raw", 2, nif_glAttachShader, 0},
    {"glGenerateMipmap_raw", 1, nif_glGenerateMipmap, 0},
    {"glTexParameterf_raw", 3, nif_glTexParameterf, 0},
    {"glTexParameterfv_raw", 3, nif_glTexParameterfv, 0},
    {"glTexParameteriv_raw", 3, nif_glTexParameteriv, 0},
    {"glGetIntegervBoolean_raw", 1, nif_glGetIntegervBoolean, 0},
    {"glDrawBuffers_raw", 2, nif_glDrawBuffers, 0},
    {"glGetFramebufferParameteriv_raw", 3, nif_glGetFramebufferParameteriv, 0},
    {"glBindBufferBase_raw", 3, nif_glBindBufferBase, 0},
    {"glGetIntegerv_raw", 1, nif_glGetIntegerv, 0},
    {"glCheckFramebufferStatus_raw", 1, nif_glCheckFramebufferStatus, 0},
    {"glGetProgramPipelineivValues_raw", 3, nif_glGetProgramPipelineivValues, 0},
    {"glIsProgram_raw", 1, nif_glIsProgram, 0},
    {"glIsShader_raw", 1, nif_glIsShader, 0},
    {"glGenTextures_raw", 1, nif_glGenTextures, 0},
    {"glGenRenderbuffers_raw", 1, nif_glGenRenderbuffers, 0},
    {"glShaderBinary_raw", 4, nif_glShaderBinary, 0},
    {"glGetActiveAttrib_raw", 3, nif_glGetActiveAttrib, 0},
    {"glValidateProgram_raw", 1, nif_glValidateProgram, 0},
    {"glBindVertexBuffer_raw", 4, nif_glBindVertexBuffer, 0},
    {"glGetStringi_raw", 2, nif_glGetStringi, 0},
    {"glTexSubImage3D_raw", 11, nif_glTexSubImage3D, 0},
    {"glMemoryBarrier_raw", 1, nif_glMemoryBarrier, 0},
    {"glCopyTexImage2D_raw", 8, nif_glCopyTexImage2D, 0},
    {"glBindVertexArray_raw", 1, nif_glBindVertexArray, 0},
    {"glFramebufferParameteri_raw", 3, nif_glFramebufferParameteri, 0},
    {"glInvalidateSubFramebuffer_raw", 7, nif_glInvalidateSubFramebuffer, 0},
    {"glGetMultisamplefv_raw", 3, nif_glGetMultisamplefv, 0},
    {"glBlitFramebuffer_raw", 10, nif_glBlitFramebuffer, 0},
    {"glStencilMaskSeparate_raw", 2, nif_glStencilMaskSeparate, 0},
    {"glVertexAttribFormat_raw", 5, nif_glVertexAttribFormat, 0},
    {"glScissor_raw", 4, nif_glScissor, 0},
    {"glTexImage2D_raw", 9, nif_glTexImage2D, 0},
    {"glGetAttribLocation_raw", 2, nif_glGetAttribLocation, 0},
    {"glDeleteTransformFeedbacks_raw", 2, nif_glDeleteTransformFeedbacks, 0},
    {"glGetVertexAttribfv_raw", 3, nif_glGetVertexAttribfv, 0},
    {"glGetVertexAttribiv_raw", 3, nif_glGetVertexAttribiv, 0},
    {"glGetError_raw", 0, nif_glGetError, 0},
    {"glIsVertexArray_raw", 1, nif_glIsVertexArray, 0},
    {"glBindTexture_raw", 2, nif_glBindTexture, 0},
    {"glVertexAttribIPointer_raw", 5, nif_glVertexAttribIPointer, 0},
    {"glDeleteShader_raw", 1, nif_glDeleteShader, 0},
    {"glGetTexLevelParameterfv_raw", 4, nif_glGetTexLevelParameterfv, 0},
    {"glGetTexLevelParameteriv_raw", 4, nif_glGetTexLevelParameteriv, 0},
    {"glDepthRangef_raw", 2, nif_glDepthRangef, 0},
    {"glUniform1f_raw", 2, nif_glUniform1f, 0},
    {"glUniform1fv_raw", 3, nif_glUniform1fv, 0},
    {"glUniform1i_raw", 2, nif_glUniform1i, 0},
    {"glUniform1iv_raw", 3, nif_glUniform1iv, 0},
    {"glUniform1ui_raw", 2, nif_glUniform1ui, 0},
    {"glUniform1uiv_raw", 3, nif_glUniform1uiv, 0},
    {"glUniform2f_raw", 3, nif_glUniform2f, 0},
    {"glUniform2fv_raw", 3, nif_glUniform2fv, 0},
    {"glUniform2i_raw", 3, nif_glUniform2i, 0},
    {"glUniform2iv_raw", 3, nif_glUniform2iv, 0},
    {"glUniform2ui_raw", 3, nif_glUniform2ui, 0},
    {"glUniform2uiv_raw", 3, nif_glUniform2uiv, 0},
    {"glUniform3f_raw", 4, nif_glUniform3f, 0},
    {"glUniform3fv_raw", 3, nif_glUniform3fv, 0},
    {"glUniform3i_raw", 4, nif_glUniform3i, 0},
    {"glUniform3iv_raw", 3, nif_glUniform3iv, 0},
    {"glUniform3ui_raw", 4, nif_glUniform3ui, 0},
    {"glUniform3uiv_raw", 3, nif_glUniform3uiv, 0},
    {"glUniform4f_raw", 5, nif_glUniform4f, 0},
    {"glUniform4fv_raw", 3, nif_glUniform4fv, 0},
    {"glUniform4i_raw", 5, nif_glUniform4i, 0},
    {"glUniform4iv_raw", 3, nif_glUniform4iv, 0},
    {"glUniform4ui_raw", 5, nif_glUniform4ui, 0},
    {"glUniform4uiv_raw", 3, nif_glUniform4uiv, 0},
    {"glGetIntegeri_v_raw", 3, nif_glGetIntegeri_v, 0},
    {"glStencilFunc_raw", 3, nif_glStencilFunc, 0},
    {"glClearBufferfv_raw", 3, nif_glClearBufferfv, 0},
    {"glClearBufferiv_raw", 3, nif_glClearBufferiv, 0},
    {"glClearBufferuiv_raw", 3, nif_glClearBufferuiv, 0},
    {"glGenProgramPipelines_raw", 1, nif_glGenProgramPipelines, 0},
    {"glTexParameteri_raw", 3, nif_glTexParameteri, 0},
    {"glDrawArrays_raw", 3, nif_glDrawArrays, 0},
    {"glFramebufferTexture2D_raw", 5, nif_glFramebufferTexture2D, 0},
    {"glDeleteTextures_raw", 2, nif_glDeleteTextures, 0},
    {"glInvalidateFramebuffer_raw", 3, nif_glInvalidateFramebuffer, 0},
    {"glVertexAttribIFormat_raw", 4, nif_glVertexAttribIFormat, 0},
    {"glLineWidth_raw", 1, nif_glLineWidth, 0},
    {"glSampleMaski_raw", 2, nif_glSampleMaski, 0},
    {"glDepthMask_raw", 1, nif_glDepthMask, 0},
    {"glBlendEquationSeparate_raw", 2, nif_glBlendEquationSeparate, 0},
    {"glGetProgramResourceIndex_raw", 3, nif_glGetProgramResourceIndex, 0},
    {"glCopyTexSubImage3D_raw", 9, nif_glCopyTexSubImage3D, 0},
    {"glViewport_raw", 4, nif_glViewport, 0},
    {"glTexImage3D_raw", 10, nif_glTexImage3D, 0},
    {"glCompressedTexSubImage2D_raw", 9, nif_glCompressedTexSubImage2D, 0},
    {"glGetQueryiv_raw", 3, nif_glGetQueryiv, 0},
    {"glBindBuffer_raw", 2, nif_glBindBuffer, 0},
    {"glUniformBlockBinding_raw", 3, nif_glUniformBlockBinding, 0},
    {"glUniformMatrix2fv_raw", 4, nif_glUniformMatrix2fv, 0},
    {"glUniformMatrix2x3fv_raw", 4, nif_glUniformMatrix2x3fv, 0},
    {"glUniformMatrix2x4fv_raw", 4, nif_glUniformMatrix2x4fv, 0},
    {"glUniformMatrix3fv_raw", 4, nif_glUniformMatrix3fv, 0},
    {"glUniformMatrix3x2fv_raw", 4, nif_glUniformMatrix3x2fv, 0},
    {"glUniformMatrix3x4fv_raw", 4, nif_glUniformMatrix3x4fv, 0},
    {"glUniformMatrix4fv_raw", 4, nif_glUniformMatrix4fv, 0},
    {"glUniformMatrix4x2fv_raw", 4, nif_glUniformMatrix4x2fv, 0},
    {"glUniformMatrix4x3fv_raw", 4, nif_glUniformMatrix4x3fv, 0},
    {"glVertexBindingDivisor_raw", 2, nif_glVertexBindingDivisor, 0},
    {"glGetShaderSource_raw", 2, nif_glGetShaderSource, 0},
    {"glSampleCoverage_raw", 2, nif_glSampleCoverage, 0},
    {"glStencilOpSeparate_raw", 4, nif_glStencilOpSeparate, 0},
    {"glGetProgramPipelineivInteger_raw", 2, nif_glGetProgramPipelineivInteger, 0},
    {"glGetProgramResourceLocation_raw", 3, nif_glGetProgramResourceLocation, 0},
    {"glProgramBinary_raw", 4, nif_glProgramBinary, 0},
    {"glClearBufferfi_raw", 4, nif_glClearBufferfi, 0},
    {"glBlendFunc_raw", 2, nif_glBlendFunc, 0},
    {"glUseProgramStages_raw", 3, nif_glUseProgramStages, 0},
    {"glDeleteFramebuffers_raw", 2, nif_glDeleteFramebuffers, 0},
    {"glHint_raw", 2, nif_glHint, 0},
    {"glGetBooleanv_raw", 2, nif_glGetBooleanv, 0},
    {"glBeginTransformFeedback_raw", 1, nif_glBeginTransformFeedback, 0},
    {"glBlendColor_raw", 4, nif_glBlendColor, 0},
    {"glTexStorage2DMultisample_raw", 6, nif_glTexStorage2DMultisample, 0},
    {"glIsProgramPipeline_raw", 1, nif_glIsProgramPipeline, 0},
    {"glDeleteBuffers_raw", 2, nif_glDeleteBuffers, 0},
    {"glGetFramebufferAttachmentParameteriv_raw", 4, nif_glGetFramebufferAttachmentParameteriv, 0},
    {"glBeginQuery_raw", 2, nif_glBeginQuery, 0},
    {"glProgramUniformMatrix2fv_raw", 5, nif_glProgramUniformMatrix2fv, 0},
    {"glProgramUniformMatrix2x3fv_raw", 5, nif_glProgramUniformMatrix2x3fv, 0},
    {"glProgramUniformMatrix2x4fv_raw", 5, nif_glProgramUniformMatrix2x4fv, 0},
    {"glProgramUniformMatrix3fv_raw", 5, nif_glProgramUniformMatrix3fv, 0},
    {"glProgramUniformMatrix3x2fv_raw", 5, nif_glProgramUniformMatrix3x2fv, 0},
    {"glProgramUniformMatrix3x4fv_raw", 5, nif_glProgramUniformMatrix3x4fv, 0},
    {"glProgramUniformMatrix4fv_raw", 5, nif_glProgramUniformMatrix4fv, 0},
    {"glProgramUniformMatrix4x2fv_raw", 5, nif_glProgramUniformMatrix4x2fv, 0},
    {"glProgramUniformMatrix4x3fv_raw", 5, nif_glProgramUniformMatrix4x3fv, 0},
    {"glReleaseShaderCompiler_raw", 0, nif_glReleaseShaderCompiler, 0},
    {"glPixelStorei_raw", 2, nif_glPixelStorei, 0},
    {"glEndQuery_raw", 1, nif_glEndQuery, 0},
    {"glGetProgramBinary_raw", 2, nif_glGetProgramBinary, 0},
    {"glGetActiveUniformsiv_raw", 3, nif_glGetActiveUniformsiv, 0},
    {"glShaderSource_raw", 2, nif_glShaderSource, 0},
    {"glClear_raw", 1, nif_glClear, 0},
    {"glFramebufferRenderbuffer_raw", 4, nif_glFramebufferRenderbuffer, 0},
    {"glValidateProgramPipeline_raw", 1, nif_glValidateProgramPipeline, 0},
    {"glDrawArraysIndirect_raw", 2, nif_glDrawArraysIndirect, 0},
    {"glGetBufferParameteri64v_raw", 3, nif_glGetBufferParameteri64v, 0},
    {"glGetBufferParameteriv_raw", 3, nif_glGetBufferParameteriv, 0},
    {"glCopyTexSubImage2D_raw", 8, nif_glCopyTexSubImage2D, 0},
    {"glGetActiveUniform_raw", 3, nif_glGetActiveUniform, 0},
    {"glRenderbufferStorage_raw", 4, nif_glRenderbufferStorage, 0},
    {"glStencilFuncSeparate_raw", 4, nif_glStencilFuncSeparate, 0},
    {"glGetIntegervValues_raw", 2, nif_glGetIntegervValues, 0},
    {"glGetActiveUniformBlockiv_raw", 4, nif_glGetActiveUniformBlockiv, 0},
    {"glGenVertexArrays_raw", 1, nif_glGenVertexArrays, 0},
    {"glDepthFunc_raw", 1, nif_glDepthFunc, 0},
    {"glGenFramebuffers_raw", 1, nif_glGenFramebuffers, 0},
    {"glVertexAttribDivisor_raw", 2, nif_glVertexAttribDivisor, 0},
    {"glGetVertexAttribIiv_raw", 3, nif_glGetVertexAttribIiv, 0},
    {"glGetVertexAttribIuiv_raw", 3, nif_glGetVertexAttribIuiv, 0},
    {"glGetFloatv_raw", 2, nif_glGetFloatv, 0},
    {"glTexStorage3D_raw", 6, nif_glTexStorage3D, 0},
    {"glColorMask_raw", 4, nif_glColorMask, 0},
    {"glGetAttachedShaders_raw", 2, nif_glGetAttachedShaders, 0},
    {"glRenderbufferStorageMultisample_raw", 5, nif_glRenderbufferStorageMultisample, 0},
    {"glIsTexture_raw", 1, nif_glIsTexture, 0},
    {"glCompressedTexImage3D_raw", 9, nif_glCompressedTexImage3D, 0},
    {"glIsFramebuffer_raw", 1, nif_glIsFramebuffer, 0},
    {"glGenSamplers_raw", 1, nif_glGenSamplers, 0},
    {"glGenTransformFeedbacks_raw", 1, nif_glGenTransformFeedbacks, 0},
    {"glIsSampler_raw", 1, nif_glIsSampler, 0},
    {"glFrontFace_raw", 1, nif_glFrontFace, 0},
    {"glBlendEquation_raw", 1, nif_glBlendEquation, 0},
    {"glGetString_raw", 1, nif_glGetString, 0},
    {"glGetShaderInfoLog_raw", 2, nif_glGetShaderInfoLog, 0},
    {"glDeleteQueries_raw", 2, nif_glDeleteQueries, 0},
    {"glGenQueries_raw", 1, nif_glGenQueries, 0},
    {"glEnable_raw", 1, nif_glEnable, 0},
    {"glCreateShaderProgramv_raw", 2, nif_glCreateShaderProgramv, 0},
    {"glDeleteProgramPipelines_raw", 2, nif_glDeleteProgramPipelines, 0},
    {"glGetTexParameterfv_raw", 3, nif_glGetTexParameterfv, 0},
    {"glGetTexParameteriv_raw", 3, nif_glGetTexParameteriv, 0},
    {"glIsBuffer_raw", 1, nif_glIsBuffer, 0},
    {"glBlendFuncSeparate_raw", 4, nif_glBlendFuncSeparate, 0},
    {"glBindFramebuffer_raw", 2, nif_glBindFramebuffer, 0},
    {"glBindRenderbuffer_raw", 2, nif_glBindRenderbuffer, 0},
    {"glClearColor_raw", 4, nif_glClearColor, 0},
    {"glGetUniformBlockIndex_raw", 2, nif_glGetUniformBlockIndex, 0},
    {"glIsEnabled_raw", 1, nif_glIsEnabled, 0},
    {"glDeleteSamplers_raw", 2, nif_glDeleteSamplers, 0},
    {"glVertexAttrib1f_raw", 2, nif_glVertexAttrib1f, 0},
    {"glVertexAttrib2f_raw", 3, nif_glVertexAttrib2f, 0},
    {"glVertexAttrib3f_raw", 4, nif_glVertexAttrib3f, 0},
    {"glVertexAttrib4f_raw", 5, nif_glVertexAttrib4f, 0},
    {"glDispatchCompute_raw", 3, nif_glDispatchCompute, 0},
    {"glGetProgramResourceiv_raw", 5, nif_glGetProgramResourceiv, 0},
    {"glGetProgramPipelineiv_raw", 2, nif_glGetProgramPipelineiv, 0},
    {"glGenBuffers_raw", 1, nif_glGenBuffers, 0},
    {"glGetUniformfv_raw", 3, nif_glGetUniformfv, 0},
    {"glGetUniformiv_raw", 3, nif_glGetUniformiv, 0},
    {"glGetUniformuiv_raw", 3, nif_glGetUniformuiv, 0},
    {"glBufferSubData_raw", 4, nif_glBufferSubData, 0},
    {"glGetSamplerParameterfv_raw", 3, nif_glGetSamplerParameterfv, 0},
    {"glGetSamplerParameteriv_raw", 3, nif_glGetSamplerParameteriv, 0},
    {"glActiveTexture_raw", 1, nif_glActiveTexture, 0},
    {"glGetShaderiv_raw", 2, nif_glGetShaderiv, 0},
    {"glResumeTransformFeedback_raw", 0, nif_glResumeTransformFeedback, 0},
    {"glGetInteger64i_v_raw", 3, nif_glGetInteger64i_v, 0},
    {"glFinish_raw", 0, nif_glFinish, 0},
    {"glGetRenderbufferParameteriv_raw", 3, nif_glGetRenderbufferParameteriv, 0},
    {"glDeleteVertexArrays_raw", 2, nif_glDeleteVertexArrays, 0},
    {"glCompressedTexSubImage3D_raw", 11, nif_glCompressedTexSubImage3D, 0},
    {"glGetQueryObjectuiv_raw", 3, nif_glGetQueryObjectuiv, 0},
    {"glBindBufferRange_raw", 5, nif_glBindBufferRange, 0},
    {"glCreateProgram_raw", 0, nif_glCreateProgram, 0},
    {"glGetActiveUniformBlockName_raw", 3, nif_glGetActiveUniformBlockName, 0},
    {"glCompressedTexImage2D_raw", 8, nif_glCompressedTexImage2D, 0},
    {"glFramebufferTextureLayer_raw", 5, nif_glFramebufferTextureLayer, 0},
    {"glDispatchComputeIndirect_raw", 1, nif_glDispatchComputeIndirect, 0},
    {"glCullFace_raw", 1, nif_glCullFace, 0},
    {"glDrawElementsIndirect_raw", 3, nif_glDrawElementsIndirect, 0},
    {"glUseProgram_raw", 1, nif_glUseProgram, 0},
    {"glBindSampler_raw", 2, nif_glBindSampler, 0},
    {"glReadPixels_raw", 7, nif_glReadPixels, 0},
    {"glDeleteProgram_raw", 1, nif_glDeleteProgram, 0},
    {"glGetFragDataLocation_raw", 2, nif_glGetFragDataLocation, 0},
    {"glGetUniformLocation_raw", 2, nif_glGetUniformLocation, 0},
    {"glProgramParameteri_raw", 3, nif_glProgramParameteri, 0},
    {"glBindTransformFeedback_raw", 2, nif_glBindTransformFeedback, 0}
};

ERL_NIF_INIT(
    gl,
    nif_functions,
    nif_module_load,
    NULL,
    NULL,
    nif_module_unload
);
