% Install missing functionality in Octave
if ( exist('OCTAVE_VERSION', 'builtin') ~= 0 ) && ( exist("datetime") == 0 )
    try
        pkg load tablicious
    catch
        pkg install -forge tablicious
        pkg load tablicious
    end
end