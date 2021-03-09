#!/usr/bin/ruby

require './stack.rb'
require './team.rb'
require './player.rb'

selection = 99
equipos = Stack.new

until selection.to_i == 0 do
  puts 'Seleccione la opción que desea realizar'
  puts '1) Ingresar equipos'
  puts '2) Ingresar jugadores'
  puts '3) Listar equipos y jugadores'
  puts '0) Salir'
  selection = gets
  case selection.to_i
  when 1 then
    puts 'Ingresa el nombre del equipo:'
    value = gets
    equipos.push(Team.new(value))
  when 2 then
    puts 'Equipos disponibles'
    equipos.pront
    puts 'Ingresa el nombre del equipo'
    equipo = gets
    node = equipos.searcho(equipo)
    puts 'Ingresa el nombre del jugador:'
    value = gets
    node.players.push(Player.new(value))
  when 3 then
    equipos.pront
  else
    puts '****No es una opción valida****' unless selection.to_i == 0
  end
end

puts 'Hasta luego!'