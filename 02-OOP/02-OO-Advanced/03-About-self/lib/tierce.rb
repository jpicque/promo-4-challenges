module DemoModule
  class DemoClass
    def self.introduce
      # TODO: choose return between 1, 2, 3
      2
    end

    def introduce
      # TODO: choose return between 1, 2, 3
      3
    end
  end

  def self.introduce
    # TODO: choose return between 1, 2, 3
    1
  end
end

def tierce?
  first = DemoModule.introduce # Car il ne fait pas appelle a DemoClass
  second = DemoModule::DemoClass.introduce # Car self est une methode de classe
  third = DemoModule::DemoClass.new.introduce # Car new nous indique que l'on cree une instance
  [first, second, third] == [1, 2, 3]
end