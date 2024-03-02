{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "asobifont";
  version = "1.0.0";
  src = fetchzip {
    url = "https://font.sumomo.ne.jp/fontdata-c2157415/asobi3.zip";
    hash = "sha256-YKu8L54hHJx1ujSrBHzoQrApw70yw+aNKkZF1DfK1go";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
