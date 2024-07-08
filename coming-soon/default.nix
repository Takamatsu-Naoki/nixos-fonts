{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "coming-soon";
  version = "1.0.0";
  src = fetchzip {
    url = "https://www.1001fonts.com/download/coming-soon.zip";
    hash = "sha256-bfjy+HOnYVb2Ungg8P++LurhSLKIJrXlB5q6wFPur64";
    stripRoot = false;
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
