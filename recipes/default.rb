packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libneon27-gnutls
  /
when "precise"
  packages |= %w/
    libneon27-gnutls
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
