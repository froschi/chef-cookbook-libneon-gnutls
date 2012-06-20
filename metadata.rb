maintainer       "Thorsten Fischer"
maintainer_email "thorsten@froschi.org"
license          "Apache 2.0"
description      "Installs/Configures libneon-gnutls"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

%w/ubuntu/.each { |os| supports os }

depends          "libcomerr", ">= 0.0.1"
depends          "libgcrypt", ">= 0.0.1"
depends          "libgnutls", ">= 0.0.1"
depends          "libgssapi-krb5", ">= 0.0.1"
depends          "libk5crypto", ">= 0.0.1"
depends          "libkrb5", ">= 0.0.1"
depends          "libtasn", ">= 0.0.1"
depends          "libxml2", ">= 0.0.1"
