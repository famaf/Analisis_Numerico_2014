function [Lt1, Lt2, Lt3, Ls1, Ls2, Ls3] = ejercicio1

    

    Lt1 = trapecio(@f1, 0, 1, 10);

    Lt2 = trapecio(@f2, 0, pi./4, 10);

    Lt3 = trapecio(@f3, 0, 1, 10);

    Ls1 = simpson(@f1, 0, 1, 15);

    Ls2 = simpson(@f2, 0, pi./4, 15);

    Ls3 = simpson(@f3, 0, 1, 15);

end
