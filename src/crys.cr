require "Crystal2Day"

alias CD = Crystal2Day

# Just create a customized Scene class
class MyOwnScene < CD::Scene
  def init()
    
  end
  # Any events are passed to this method
  def handle_event(event)
    # DO NOT REMOVE LEST YOU GET GHOST WINDOWS
    if event.is_quit_event?
      CD.next_scene = nil
    end
  end
end

# All setup for the framework is done in this block
CD.run do
  CD::Window.new(title: "Hello World", w: 800, h: 600)
  CD.scene = MyOwnScene.new
  
  CD.main_routine
end