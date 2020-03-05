require "gamma_distribution/version"
require "integration"


class Gamma_distribution

  #probability density function
  def self.gamma_pdf x, alpha, beta
    numerator = (x**(alpha-1))
    denominator = (beta**alpha)*Math.gamma(alpha)*Math.exp(x/beta)

    puts numerator
    puts denominator
    return numerator/denominator
  end


  #cumulative distribution function
  def self.gamma_cdf v, alpha, beta
    numerator = Integration.integrate(0, v/beta, tolerance: 1e-10, method: :simpson) do |x| (x**(alpha-1))/Math.exp(x) end
    denominator = Math.gamma(alpha)
    return numerator/denominator
  end
end
