include_recipe "libgnutls"
include_recipe "libgssapi-krb5"
include_recipe "libxml2"

packages = Array.new

case node[:lsb][:codename]
when "lucid"
  include_recipe "libcomerr"
  include_recipe "libgcrypt"
  include_recipe "libk5crypto"
  include_recipe "libkrb5"
  include_recipe "libtasn"

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
