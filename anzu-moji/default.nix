{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "anzu-moji";
  version = "1.0.0";
  src = fetchzip {
    url = "https://apricot.ciao.jp/font/ap1.zip";
    hash = "sha256-FMe/seWkZ4Ni+mGzknpfmb+51HAJNUihPt2K2BpedaU";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
