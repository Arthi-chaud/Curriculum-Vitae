{
  pkgs ? import <nixpkgs> { },
}:
pkgs.mkShell {
  packages = with pkgs; [
    bibtex-tidy

    # Latex
    (texlive.combine {
      inherit (texlive)
        scheme-full

        ;
    })
  ];
}
