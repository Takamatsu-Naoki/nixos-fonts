{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "azukifont";
  version = "1.0.0";
  src = fetchzip {
    url = "http://azukifont.com/font/azukifont121.zip";
    hash = "sha256-mw2dgvzAX9k2vEmuHtH3enAl3Zs7aLdUcWEczdaaxrw";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
