{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "honyaji-re";
  version = "1.0.0";
  src = fetchzip {
    url = "http://honya.nyanta.jp/2311/font_honyajire.zip";
    hash = "sha256-rpGDLna+gVFB/ZUp3CMAeY+S8j3ScnYeflm+yrMM+s0";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
