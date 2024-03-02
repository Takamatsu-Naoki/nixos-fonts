{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "rii-tegaki-n";
  version = "1.0.0";
  src = fetchzip {
    url = "http://aoirii.babyblue.jp/font/riitn/riitnr.zip";
    hash = "sha256-AvFXdxPxSWLftgH0bT1KMF30USy+UdFpV4awTj+545E";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.otf -t $out/share/fonts/opentype

    runHook postInstall
  '';
}
