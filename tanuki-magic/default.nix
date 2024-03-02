{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "tanuki-magic";
  version = "1.0.0";
  src = fetchzip {
    url = "https://tanukifont.com/download/TanukiMagic_1_22.zip";
    hash = "sha256-qEN68uhHwvDVSRl7ZGf8wiCvLZ0LbXV9AXnJZOY8eak";
    stripRoot = false;
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
