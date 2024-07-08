{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "rii-tegaki-n";
  version = "1.0.0";
  src = fetchzip {
    url = "http://aoirii.babyblue.jp/font/riitn/riitnr.zip";
    hash = "sha256-Z04kp3j+WIzZZ9nURm5ggZcp3BNG/tbv2JhhCvmb5Pc";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.otf -t $out/share/fonts/opentype

    runHook postInstall
  '';
}
