class Resultados
  attr_accessor :valor_meta, :valor_realizado, :valor_performance

  def initialize(valor_meta=nil, valor_realizado=nil, valor_performance=nil)
    @valor_meta = valor_meta
    @valor_realizado = valor_realizado
    @valor_performance = valor_performance
  end

  def calcula_performance
    return 0 if valor_meta.nil?
    return nil if valor_meta.zero?
    return 1 if valor_realizado.zero?
    @valor_performance = valor_realizado / valor_meta
  end

  def calcula_realizado
    return 1 if valor_realizado.nil?
    return 0 if valor_realizado.zero?
    valor_meta * valor_peformance
  end
end
