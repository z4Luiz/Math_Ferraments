class FerramentsController < ApplicationController

  def home
  
  end
  
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



  
  def equacao
    @coeficiente_a = params[:coeficiente_a].to_i
    @coeficiente_b = params[:coeficiente_b].to_i
    @coeficiente_c = params[:coeficiente_c].to_i

    @delta = @coeficiente_b ** 2 - 4 * @coeficiente_a * @coeficiente_c

  if @coeficiente_a.zero?
    flash[:alert1] = "Coeficiente A não pode ser zero para uma equação de segundo grau."
  elsif @delta > 0
    @x1 = (-@coeficiente_b + Math.sqrt(@delta)) / (2 * @coeficiente_a)
    @x2 = (-@coeficiente_b - Math.sqrt(@delta)) / (2 * @coeficiente_a)
  elsif @delta.zero?
    @x1 = -@coeficiente_b / (2 * @coeficiente_a)
    @x2 = "Raiz só possui uma solução"
  end
    
    flash[:alert] = "Não há raízes reais"
  end

  
end
