{
  lib,
  newScope,
  beamPackages,
  buildGleam,
  fetchgit,
}:

let
  inherit (beamPackages) buildMix buildRebar3 fetchHex;
in

lib.makeScope newScope (self: {
  backoff = buildRebar3 {
    name = "backoff";
    version = "1.1.6";
    otpApplication = "backoff";

    src = fetchHex {
      pkg = "backoff";
      version = "1.1.6";
      sha256 = "sha256-zwz/+JlfsgVi+CLlzEfYzPZkxezcJqaEy+hcIl+dfDk=";
    };
  };

  exception = buildGleam {
    name = "exception";
    version = "2.1.0";
    otpApplication = "exception";

    src = fetchHex {
      pkg = "exception";
      version = "2.1.0";
      sha256 = "sha256-Mp0mnVwqMU9zZL0nETcrbyxY+m85mBVy5cpoYk0pH4w=";
    };

    beamDeps = with self; [
      gleam_stdlib
    ];
  };

  gleam_erlang = buildGleam {
    name = "gleam_erlang";
    version = "1.3.0";
    otpApplication = "gleam_erlang";

    src = fetchHex {
      pkg = "gleam_erlang";
      version = "1.3.0";
      sha256 = "sha256-ESStOqIRQ+WvD8XPPZUp9tuMoD5DpVcRtgtrezh0N1w=";
    };

    beamDeps = with self; [
      gleam_stdlib
    ];
  };

  gleam_otp = buildGleam {
    name = "gleam_otp";
    version = "1.2.0";
    otpApplication = "gleam_otp";

    src = fetchHex {
      pkg = "gleam_otp";
      version = "1.2.0";
      sha256 = "sha256-umopTileQo7BVi3BwR6nUw3LmB6DWRNL6ryEk7eyJY4=";
    };

    beamDeps = with self; [
      gleam_erlang
      gleam_stdlib
    ];
  };

  gleam_stdlib = buildGleam {
    name = "gleam_stdlib";
    version = "0.68.1";
    otpApplication = "gleam_stdlib";

    src = fetchHex {
      pkg = "gleam_stdlib";
      version = "0.68.1";
      sha256 = "sha256-9/rr2O8mBmToakbI26I1CNHRG7O8xu4bibO8PlyD/x4=";
    };
  };

  gleam_time = buildGleam {
    name = "gleam_time";
    version = "1.7.0";
    otpApplication = "gleam_time";

    src = fetchHex {
      pkg = "gleam_time";
      version = "1.7.0";
      sha256 = "sha256-VtsO+UM4JtO5nbC0r3or/tE9CXVexksdqrRvgEqa1H0=";
    };

    beamDeps = with self; [
      gleam_stdlib
    ];
  };

  gleeunit = buildGleam {
    name = "gleeunit";
    version = "1.9.0";
    otpApplication = "gleeunit";

    src = fetchHex {
      pkg = "gleeunit";
      version = "1.9.0";
      sha256 = "sha256-2pVTzli2eSSzxjH5b+M3DEnrbW3Gs4TsSGLMSqpxjzw=";
    };

    beamDeps = with self; [
      gleam_stdlib
    ];
  };

  opentelemetry_api = buildRebar3 {
    name = "opentelemetry_api";
    version = "1.5.0";
    otpApplication = "opentelemetry_api";

    src = fetchHex {
      pkg = "opentelemetry_api";
      version = "1.5.0";
      sha256 = "sha256-9T7IoTN65KSH1DrInaS9OjyZ3fV2ZV0HHe7YtWotXdo=";
    };
  };

  pg_types = buildRebar3 {
    name = "pg_types";
    version = "0.6.0";
    otpApplication = "pg_types";

    src = fetchHex {
      pkg = "pg_types";
      version = "0.6.0";
      sha256 = "sha256-mUmkhJ3RNAj6JJq3t0Xg0t/blTKu4rlyIybjPNCCp3g=";
    };
  };

  pgo = buildRebar3 {
    name = "pgo";
    version = "0.20.0";
    otpApplication = "pgo";

    src = fetchHex {
      pkg = "pgo";
      version = "0.20.0";
      sha256 = "sha256-LxHmZJzrOOVp71axa+HQSHSuWxGgKGcICigXzkI8aDs=";
    };

    beamDeps = with self; [
      backoff
      opentelemetry_api
      pg_types
    ];
  };

  pog = buildGleam {
    name = "pog";
    version = "4.1.0";
    otpApplication = "pog";

    src = fetchHex {
      pkg = "pog";
      version = "4.1.0";
      sha256 = "sha256-5K+6OaX6oudykYNsloOt6ILmWgarKMp9Ya56OtYeu9U=";
    };

    beamDeps = with self; [
      exception
      gleam_erlang
      gleam_otp
      gleam_stdlib
      gleam_time
      pgo
    ];
  };
})
