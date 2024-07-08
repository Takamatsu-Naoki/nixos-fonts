{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "rii-tegaki-fude";
  version = "1.0.0";
  src = fetchzip {
    url = "http://aoirii.babyblue.jp/font/riitf/riitf.zip";
    hash = "sha256-iG/duemeYcbjVWY0+3quTMvViBdH56b6A7XMxMIQqk4=";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.otf -t $out/share/fonts/opentype

    runHook postInstall
  '';
}
