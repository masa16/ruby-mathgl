module MathGL

  # QT Window class
  class MglQT
    # Constructor for MglQT. Drawing block must be provided.
    # If the number of block argument is one, the argument is an MglGraph object.
    # If the number of block argument is zero, the block is executed in the context of an MglGraph object.
    def initialize(&block)
    end

    # Start MglQT window.
    def run
    end
  end

  # FLTK Window class
  class MglFLTK
    # Constructor for MglFLTK. Drawing block must be provided.
    # If the number of block argument is one, the argument is an MglGraph object.
    # If the number of block argument is zero, the block is executed in the context of an MglGraph object.
    def initialize(&block)
    end

    # Start MglFLTK window.
    def run
    end
  end

  # GLUT Window class
  class MglGLUT
    # Constructor for MglGLUT. Drawing block must be provided.
    # If the number of block argument is one, the argument is an MglGraph object.
    # If the number of block argument is zero, the block is executed in the context of an MglGraph object.
    def initialize(&block)
    end
  end

end
