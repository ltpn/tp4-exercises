% Times are returned as datetime objects
function varargout = stopWatch(tStart,msg)
    tEnd = datetime('now');
    if nargout >= 1
        varargout{1} = tEnd;
    end
    if nargin < 2
        return
    end
    if ( exist('OCTAVE_VERSION', 'builtin') == 0 )
        disp([msg,char(datetime(posixtime(tEnd)-posixtime(tStart),'ConvertFrom','posixtime','Format','HH:mm:ss.SSS'))]);
    else
        disp([msg,char(tEnd-tStart)]);
    end
end