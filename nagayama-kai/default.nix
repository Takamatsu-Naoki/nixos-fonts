{stdenv, fetchzip} :

stdenv.mkDerivation {
  pname = "nagayama-kai";
  version = "1.0.0";
  src = fetchzip {
    url = "https://www.freekanjifonts.com/wp-content/uploads/nagayama_kai08.otf.zip";
    hash = "sha256-BX6nKVyDtCx9EMMlqEmkuj7nKZlKin7WwjxoBBpPzzw";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.otf -t $out/share/fonts/opentype

    runHook postInstall
  '';
}
