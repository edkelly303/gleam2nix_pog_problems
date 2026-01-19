Derive([("out",(
)"/nix/store/00hdc3m1qa84a4kv9d19whf59lwyachz-pog-4.1.0",(
)"",(
)"")],(
)[("/nix/store/4sfn3299dvca6szg58ci8nc6qraa83v7-gleam_erlang-1.3.0.drv",(
)["out"]),(
)("/nix/store/cp2kz9k9hqiibxjpddrrjh9nlls0shjs-rust_gleam_tool-0.1.0.drv",(
)["out"]),(
)("/nix/store/cvf33mzcg6x41v8yn5kl3alb6xxanzfh-erlang-28.3.1.drv",(
)["out"]),(
)("/nix/store/h1v6bws8m2nndnhfqc9rd1qabz2vbwc2-pgo-0.20.0.drv",(
)["out"]),(
)("/nix/store/i0lswaixfnfr6j3qr9xrij8nq93rp9b5-bash-5.3p3.drv",(
)["out"]),(
)("/nix/store/i1ydfab2bq2npq6ymvc6n9mrm2r65qac-gleam_otp-1.2.0.drv",(
)["out"]),(
)("/nix/store/i7fqfxhiyx368jc5xzy7bh8cy3k78mqg-gleam-1.14.0.drv",(
)["out"]),(
)("/nix/store/if5f2si9vlqs3mxkdwnnc49plkl98vz9-pog-4.1.0.drv",(
)["out"]),(
)("/nix/store/jzpfqgkzgdhlg8xj62my0982z9yxd3lg-gleam_time-1.7.0.drv",(
)["out"]),(
)("/nix/store/m180q2sndkkmacjcmfb8qwyggpch7s8w-exception-2.1.0.drv",(
)["out"]),(
)("/nix/store/qyk0syp0q2znsv9dpva6krckkcgnxbi1-stdenv-linux.drv",(
)["out"]),(
)("/nix/store/wihv461zpkz97v3yac47j905mc8xpv4m-gleam_stdlib-0.68.1.drv",(
)["out"])],(
)["/nix/store/l622p70vy8k5sh7y5wizi5f2mic6ynpg-source-stdenv.sh",(
)"/nix/store/shkw4qm9qcw5sc5n1k5jznc83ny02r39-default-builder.sh"],(
)"x86_64-linux",(
)"/nix/store/lw117lsr8d585xs63kx5k233impyrq7q-bash-5.3p3/bin/bash",(
)["-e",(
)"/nix/store/l622p70vy8k5sh7y5wizi5f2mic6ynpg-source-stdenv.sh",(
)"/nix/store/shkw4qm9qcw5sc5n1k5jznc83ny02r39-default-builder.sh"],(
)[("__structuredAttrs",(
)""),(
)("beamDeps",(
)"/nix/store/admkl1hiibanvdij6fmr296ai19ps5j2-exception-2.1.0 /nix/store/yhs40qcac30gb1k3419vf2w57i9wwsd9-gleam_erlang-1.3.0 /nix/store/94i1br1cqq59nbbwb05r0ma914wlbqda-gleam_otp-1.2.0 /nix/store/4kblx7irwx5237p7hln28h8bx9jjryvi-gleam_stdlib-0.68.1 /nix/store/v6vs5cknjfv46ra73d03z3gjavl3j43g-gleam_time-1.7.0 /nix/store/3q632c641dxg98g964y1p2ycdy3kb7sh-pgo-0.20.0"),(
)("buildInputs",(
)""),(
)("buildPhase",(
)"runHook preBuild(
)(
)gleam compile-package --target erlang --package . --lib deps --out build (
)(
)gleam-tool appspec build/ebin exception gleam_erlang gleam_otp gleam_stdlib gleam_time pgo(
)(
)runHook postBuild(
)"),(
)("builder",(
)"/nix/store/lw117lsr8d585xs63kx5k233impyrq7q-bash-5.3p3/bin/bash"),(
)("cmakeFlags",(
)""),(
)("configureFlags",(
)""),(
)("configurePhase",(
)"runHook preConfigure(
)(
)mkdir deps(
)ln -s /nix/store/admkl1hiibanvdij6fmr296ai19ps5j2-exception-2.1.0/lib/erlang/lib/* deps/(
)ln -s /nix/store/yhs40qcac30gb1k3419vf2w57i9wwsd9-gleam_erlang-1.3.0/lib/erlang/lib/* deps/(
)ln -s /nix/store/94i1br1cqq59nbbwb05r0ma914wlbqda-gleam_otp-1.2.0/lib/erlang/lib/* deps/(
)ln -s /nix/store/4kblx7irwx5237p7hln28h8bx9jjryvi-gleam_stdlib-0.68.1/lib/erlang/lib/* deps/(
)ln -s /nix/store/v6vs5cknjfv46ra73d03z3gjavl3j43g-gleam_time-1.7.0/lib/erlang/lib/* deps/(
)ln -s /nix/store/3q632c641dxg98g964y1p2ycdy3kb7sh-pgo-0.20.0/lib/erlang/lib/* deps/(
)(
)runHook postConfigure(
)"),(
)("depsBuildBuild",(
)""),(
)("depsBuildBuildPropagated",(
)""),(
)("depsBuildTarget",(
)""),(
)("depsBuildTargetPropagated",(
)""),(
)("depsHostHost",(
)""),(
)("depsHostHostPropagated",(
)""),(
)("depsTargetTarget",(
)""),(
)("depsTargetTargetPropagated",(
)""),(
)("doCheck",(
)""),(
)("doInstallCheck",(
)""),(
)("erlang",(
)"/nix/store/4kh4wjdmgf6n84nxbnd02lyj5ddvbc6v-erlang-28.3.1"),(
)("gleam",(
)"/nix/store/975adic9w8s4ymy88rv0mqsq6n6y2g1g-gleam-1.14.0"),(
)("gleam-tool",(
)"/nix/store/vw0nc0yakwb8gk168d20bc50cy2iykpw-rust_gleam_tool-0.1.0"),(
)("installPhase",(
)"runHook preInstall(
)(
)mkdir -p $out/lib/erlang/lib(
)cp -r build $out/lib/erlang/lib/pog-4.1.0(
)(
)# packages downloaded from hex appear to contain pregenerated erlang source files for gleam modules. the gleam(
)# compiler has a step that copies over \"native files\" (ie. erlang and javascript sources) from the package(
)# source into the compiled output,(
) but it's not aware of what target is being built,(
) so it always copies both(
)# types of sources. this leads to packages compiled for the javascript target having a bunch of erlang source(
)# files in them,(
) which isn't very useful - so we delete them in the derivation output.(
)(
)(
)runHook postInstall(
)"),(
)("mesonFlags",(
)""),(
)("name",(
)"pog-4.1.0"),(
)("nativeBuildInputs",(
)"/nix/store/4kh4wjdmgf6n84nxbnd02lyj5ddvbc6v-erlang-28.3.1 /nix/store/975adic9w8s4ymy88rv0mqsq6n6y2g1g-gleam-1.14.0 /nix/store/vw0nc0yakwb8gk168d20bc50cy2iykpw-rust_gleam_tool-0.1.0"),(
)("otpApplication",(
)"pog"),(
)("out",(
)"/nix/store/00hdc3m1qa84a4kv9d19whf59lwyachz-pog-4.1.0"),(
)("outputs",(
)"out"),(
)("patches",(
)""),(
)("pname",(
)"pog"),(
)("preFixup",(
)"(
)(
)privPath=$out/lib/erlang/lib/pog-4.1.0/priv(
)(
)if [ -h $privPath ]; then(
)  realPath=$(realpath $privPath)(
)  rm $privPath(
)  cp -r $realPath $privPath(
)fi(
)"),(
)("propagatedBuildInputs",(
)""),(
)("propagatedNativeBuildInputs",(
)""),(
)("src",(
)"/nix/store/7308xia5n5wly4wdral2jljv35pfhdv2-pog-4.1.0"),(
)("stdenv",(
)"/nix/store/n1k7lm072r5k3g6v6wb91d2q4sxcxddm-stdenv-linux"),(
)("strictDeps",(
)""),(
)("system",(
)"x86_64-linux"),(
)("target",(
)"erlang"),(
)("version",(
)"4.1.0")])