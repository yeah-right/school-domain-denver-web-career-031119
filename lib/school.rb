# code here!
require 'pry'

class School
  attr_reader :name, :roster

  def initialize(name)
    @roster = {}
    @name = name
  end

  def roster
    # attr_reader :roster
    @roster
  end

  def add_student(name, class_num)

    if self.roster[class_num] == nil
      self.roster[class_num] = []
      self.roster[class_num] << name
    else
      self.roster[class_num] << name
    end
  end

  def grade(class_number)
    roster[class_number]
  end

  def sort
    @roster.each { |grade, name| @roster[grade] = name.sort }
  end
end
