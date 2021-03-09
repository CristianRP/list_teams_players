require './node.rb'

class Stack

  def push(e)
		@top = Node.new(e, @top)
  end

	def print(node)
		unless node.nil?
			if node.element.is_a?(Player)
				puts "-#{node.element.name}"
			else
				puts "Equipo #{node.element.name}"
			end
			if node.element.is_a?(Team)
				puts 'Jugadores'
				node.element.players.pront
			end
			print(node.next_node)
		end
	end

	def search(node, query)
		unless node.nil?
			if node.element.name == query
				node.element
			else
				search(node.next_node, query)
			end
		else
			puts 'not_found'
		end
	end

	def pront
		print(@top)
	end

	def searcho(query)
		search(@top, query)
	end
end