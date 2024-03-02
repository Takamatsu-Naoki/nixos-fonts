{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "shigotofont";
  version = "1.0.0";
  src = fetchzip {
    url = "https://font.sumomo.ne.jp/fontdata-c2157415/shigoto3.zip";
    hash = "sha256-O9tpl8qXFfZY34OpgVTaXcWzDET393ETsvVoisQ2sjI";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
