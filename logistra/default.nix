{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "logistra";
  version = "1.0.0";
  src = fetchzip {
    url = "https://www.1001fonts.com/download/logistra.zip";
    hash = "sha256-/A4gSC5Kjh8Xzy0+B0zoTGyA/NyEd3nSIvY5EFdnOhw";
    stripRoot = false;
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
