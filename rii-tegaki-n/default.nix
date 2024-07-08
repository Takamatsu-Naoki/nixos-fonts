{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "rii-tegaki-n";
  version = "1.0.0";
  src = fetchzip {
    url = "http://aoirii.babyblue.jp/font/riitn/riitnr.zip";
    hash = "sha256-zhkdMlgbpssk9tJraLCw+iREY4QFiZlay+6WH+/riaE";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.otf -t $out/share/fonts/opentype

    runHook postInstall
  '';
}
