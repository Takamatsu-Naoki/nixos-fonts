{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "rii-tegaki-fude";
  version = "1.0.0";
  src = fetchzip {
    url = "http://aoirii.babyblue.jp/font/riitf/riitf.zip";
    hash = "sha256-X0dFSCM9i6eS5t3+WOsB/d0Hdaiw/bnQ9014MBgI2a8";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.otf -t $out/share/fonts/opentype

    runHook postInstall
  '';
}
