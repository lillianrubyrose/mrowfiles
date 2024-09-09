mrow.install_packages({
   "crun",           -- provides oci-runtime, either crun or runc
   "podman",
   "podman-docker",
   "podman-compose",
   "aardvark-dns",
})

mrow.copy_file("podman/10-unqualified-search-registries.conf", "/etc/containers/registries.conf.d/10-unqualified-search-registries.conf", true)
