require "gamma_distribution/version"

module GammaDistribution
  class Error < StandardError; end

    #probability density function
    def self.gamma_pdf x alpha beta
      numerator = (beta**alpha)*(x**(alpha-1))*Math.exp(-beta*x)
      denominator = Math.gamma(alpha)
      return numerator/denominator
    end


    #cumulative distribution function
    def self.gamma_cdf x alpha beta
      numerator = ((x**alpha)*Math.exp(-x)-1/alpha)+(x**(alpha-1)/Math.exp(x))-1
      denominator = Math.gamma(alpha)
      return numerator/denominator
    end
end
