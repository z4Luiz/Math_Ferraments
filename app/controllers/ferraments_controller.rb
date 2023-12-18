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
    @base = params[:base].to_f
    @altura = params[:altura].to_f
    @lado = params[:lado].to_f

    @area_triangulo = @base * @altura / 2
    @perimetro_triangulo = @base * 3
    @area_quadrado = @lado * @lado
    @perimetro_quadrado = @lado * 4
    @diagonal_quadrado = "#{@lado}√2"
  end
end
