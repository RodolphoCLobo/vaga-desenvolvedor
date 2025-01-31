class Validadores
  def self.data(data)
    /\A(?:\d{2}-(0[1-9]|1[0-2])-\d{4}|(0[1-9]|1[0-2])-\d{4}|(0[1-9]|1[0-2])\/\d{4}|(0[1-9]|1[0-2])\/\d{4}|\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])|\d{4}-(0[1-9]|1[0-2])|\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])|\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])|\d{4}-(0[1-9]|1[0-2])|\d{4}-(0[1-9]|1[0-2])|\d{4}\/(0[1-9]|1[0-2])|(\d{2}\/(0[1-9]|1[0-2])\/\d{4})|((0[1-9]|[12]\d|3[01])\/(0[1-9]|1[0-2])\/\d{4})|(\d{4}\/(0[1-9]|1[0-2])\/(0[1-9]|[12]\d|3[01])))\z/.match?(data)
  end

  def self.valor(valor)
    /([+-]?((\d+|\d{1,3}(\.\d{3})+)(\,\d*)?|\,\d+))/.match?(valor)
  end

  def self.email(email)
    /([A-Za-z0-9]*((_*[\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,}))/.match?(email)
  end
end
