{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "uzurafont";
  version = "1.0.0";
  src = fetchzip {
    url = "http://azukifont.com/font/uzurafont100.zip";
    hash = "sha256-oicfYODG9q/te4Z135UBTO4C+SfCz5KcO31flbkuoSc";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
