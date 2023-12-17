class FerramentsController < ApplicationController
  def conversor
    @valor = params[:valor].to_f
    @unidade_entrada = params[:unidade_entrada].to_s
    @unidade_saida = params[:unidade_saida].to_s

    case [@unidade_entrada, @unidade_saida]
      when ["metro", "centimetro"]
        @valor = @valor * 100
      when ["metro", "milimetro"]
        @valor = @valor * 1000
      when ["centimetro", "metro"]
        @valor = @valor / 100
      when ["centimetro", "milimetro"]
        @valor = @valor * 10
      when ["milimetro", "metro"]
        @valor = @valor / 1000
      when ["milimetro", "centimetro"]
        @valor = @valor / 10
      end
  end

  def geometria
    
  end
end
