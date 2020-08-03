# Autogenerated wrapper script for Opus_jll for i686-w64-mingw32
export libopus

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"
LIBPATH_default = ""

# Relative path to `libopus`
const libopus_splitpath = ["bin", "libopus-0.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libopus_path = ""

# libopus-specific global declaration
# This will be filled out by __init__()
libopus_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libopus = "libopus-0.dll"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Opus")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libopus_path = normpath(joinpath(artifact_dir, libopus_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libopus_handle = dlopen(libopus_path)
    push!(LIBPATH_list, dirname(libopus_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(vcat(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ';')

    
end  # __init__()

