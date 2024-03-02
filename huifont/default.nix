{ pkgs, stdenv, fetchurl} :

stdenv.mkDerivation {
  pname = "huifont";
  version = "1.0.0";
  src = fetchurl {
    url = "https://ftp.vector.co.jp/43/55/114/HuiFont29.lzh";
    hash = "sha256-sriv+eshDK8wRXrwwA7kVtJ9QHN4Yng1Nwexrdi86AQ";
  };

  nativeBuildInputs = with pkgs; [ p7zip ];

  dontUnpack = true;

  installPhase = ''
    runHook preInstall
    
    7z x $src
    cd HuiFont29
    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
