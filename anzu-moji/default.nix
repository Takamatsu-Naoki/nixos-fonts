{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "anzu-moji";
  version = "1.0.0";
  src = fetchzip {
    url = "http://www8.plala.or.jp/p_dolce/font/ap1.zip";
    hash = "sha256-8ykYTXfxP9SzCrah1glYixu030NOKknOOzGsBgQzOZ4";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
