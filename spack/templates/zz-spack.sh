{% for line in spack_prefix_lines %}
{{line}}
{%endfor%}
export SPACK_ROOT={{spack_root}}
if [ -f $SPACK_ROOT/share/spack/setup-env.sh ]; then
    . $SPACK_ROOT/share/spack/setup-env.sh
    {% for unuse_module in spack_unuse_module_paths %}
    module unuse {{ unuse_module }}
    {% endfor %}
    {% for default_module_path in spack_default_module_paths %}
    module use {{ default_module_path }}
    {% endfor %}

    {% for default_module in spack_default_modules %}
    module load {{ default_module }}
    {% endfor %}
fi

if [ -z "$__Init_Default_Modules" ]; then
   export __Init_Default_Modules=1;

   ## ability to predefine elsewhere the default list
   LMOD_SYSTEM_DEFAULT_MODULES=${LMOD_SYSTEM_DEFAULT_MODULES:-"StdEnv"}
   export LMOD_SYSTEM_DEFAULT_MODULES
   module --initial_load --no_redirect restore
else
   module refresh
fi
