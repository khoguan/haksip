" Capture Lazy diagnostics output
function! CaptureLazyDiagnostics()
    " Redirect output to register
    redir => lazy_profile
    silent Lazy profile
    redir END
    
    redir => lazy_log
    silent Lazy log
    redir END
    
    redir => lazy_doctor
    silent Lazy doctor
    redir END
    
    " Write to files
    call writefile(split(lazy_profile, '\n'), '/tmp/lazy_profile.txt')
    call writefile(split(lazy_log, '\n'), '/tmp/lazy_log.txt')
    call writefile(split(lazy_doctor, '\n'), '/tmp/lazy_doctor.txt')
    
    echo "Diagnostics saved to /tmp/lazy_*.txt"
endfunction

call CaptureLazyDiagnostics()
quit
