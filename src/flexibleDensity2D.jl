function flexibleDensity2D()

    f0 = MvNormal(zeros(2), [1.0 0.0;0.0 1.0])

    G  = Normal()

    function pdfFlex(x, α)

        w = dot([x[1], x[2], x[1]*x[2]^2, x[1]^2*x[2], x[1]^3, x[2]^3], α)

        2*pdf(f0, x)*cdf(G, w)

    end

    function logpdfFlex(x, α)

        w = dot([x[1], x[2], x[1]*x[2]^2, x[1]^2*x[2], x[1]^3, x[2]^3], α)

        log(2.0)+logpdf(f0,x)+logcdf(G,w)

    end


    return pdfFlex, logpdfFlex

end