{ mkDerivation, base, diagrams-lib, diagrams-rasterific, iterm-show, stdenv, svg-builder }:
mkDerivation {
  pname = "iterm-show-diagrams";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ base diagrams-lib diagrams-rasterific iterm-show svg-builder ];
  homepage = "https://github.com/luke-clifton/iterm-show-diagrams";
  description = "Orphan Show instances for diagrams package that render inline in some terminals";
  license = stdenv.lib.licenses.bsd3;
}
