# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails

  def initialize(emails_string)
    @emails = emails_string
  end

  def parse
    email_array = @emails.split(" ")
    email_array.each do |email|
      email[-1] = "" if email.include?(",")
    end
    email_array.uniq
  end

end
