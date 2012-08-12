
class CertificateDrawer

def self.draw(user)
  pdf = PDF::Writer.new
  pdf.text user.name
  pdf.render
end

end#class
