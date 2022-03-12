
# CS 430 Spring 2019 P2 (Ruby 2)
#
# Name: Jacob Zorniak
#

require_relative 'defs.rb'

class EInt
  def eval
    @val
  end

  def count_ops
    return 0
  end

  def postfix
    self.to_s
  end

  def height
    return 1
  end
end

class EAdd
  def eval
    left.eval + right.eval
  end

  def count_ops
    1 + left.count_ops + right.count_ops
  end

  def postfix
    left.postfix + " " + right.postfix + " " + @op
  end

  def height
    [left.height + 1, right.height + 1].max
  end
end

class ESub
  def eval
    left.eval - right.eval
  end

  def count_ops
    1 + left.count_ops + right.count_ops
  end

  def postfix
    left.postfix + " " + right.postfix + " " + @op
  end

  def height
    [left.height + 1, right.height + 1].max
  end
end

class EMul
  def eval
    left.eval * right.eval
  end

  def count_ops
    1 + left.count_ops + right.count_ops
  end

  def postfix
    left.postfix + " " + right.postfix + " " + @op
  end

  def height
    [left.height + 1, right.height + 1].max
  end
end

class Expr
  def uniq_ints
    self.to_s.gsub(/[^0-9]/, '').split("").map!(&:to_i).uniq.sort
  end
end
