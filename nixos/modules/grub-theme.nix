{ pkgs }:

pkgs.stdenv.mkDerivation {
  name = "distro-grub-themes";
  version = "3.2";
  src = pkgs.fetchFromGitHub {
    owner = "AdisonCavani";
    repo = "distro-grub-themes";
    rev = "ebbd17419890059e371a6f2dbf2a7e76190327d4";
    hash = "sha256-FWkDtoLMTTk2Lz4d4LkFjtV/xYyIlpwZlX5Np1QhXls=";
  };
  installPhase = ''
    mkdir -p nixos
    tar -xvf themes/nixos.tar -C nixos
    cp -r nixos $out
  '';
}
