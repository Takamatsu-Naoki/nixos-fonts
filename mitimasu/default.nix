{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "mitimasu";
  version = "1.0.0";
  src = fetchzip {
    url = "http://www.masuseki.com/works/mitimasu.zip";
    hash = "sha256-aNt6HkxPWgty/fmjvoftsJDy2qV7HEWdINgcOdIfozY";
    stripRoot = false;
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
