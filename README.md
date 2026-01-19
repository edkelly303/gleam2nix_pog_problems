Result of calling `nix build` - ERROR!

```
$ nix build
error: Cannot build '/nix/store/xmspm9q80ib1jvvq425dc5ravhcck9qf-pog-4.1.0.drv'.
       Reason: builder failed with exit code 1.
       Output paths:
         /nix/store/00hdc3m1qa84a4kv9d19whf59lwyachz-pog-4.1.0
       Last 25 log lines:
       >
       > build/_gleam_artefacts/pog_ffi.erl:74:32: variable 'IpVersion' is unbound
       > %   74|         socket_options => case IpVersion of
       > %     |                                ^
       >
       > build/_gleam_artefacts/pog_ffi.erl:79:21: variable 'Password' is unbound
       > %   79|     Options2 = case Password of
       > %     |                     ^
       >
       > build/_gleam_artefacts/pog_ffi.erl:83:25: variable 'PoolName' is unbound, did you mean 'PoolSize'?
       > %   83|     pgo_pool:start_link(PoolName, Options2).
       > %     |                         ^
       >
       > build/_gleam_artefacts/pog_ffi.erl:137:18: record type_info undefined
       > %  137|     type_info := #type_info{name = Expected},
       > %     |                  ^
       >
       > build/_gleam_artefacts/pog_ffi.erl:141:32: variable 'Expected' is unbound
       > %  141|     {unexpected_argument_type, Expected, Got};
       > %     |                                ^
       >
       > error: Shell command failure
       >
       > There was a problem when running the shell command `escript`.
       >
       For full logs, run:
         nix log /nix/store/xmspm9q80ib1jvvq425dc5ravhcck9qf-pog-4.1.0.drv
error: Cannot build '/nix/store/pbnj2vv2339v7nv3m6zjr1jdjwibbkag-pog_problems-1.0.0.drv'.
       Reason: 1 dependency failed.
       Output paths:
         /nix/store/glj8jl9pld9476gflr7qks51ag6i49xi-pog_problems-1.0.0
```

But `gleam build` works fine:
```
$ gleam build
Downloading packages
 Downloaded 11 packages in 0.06s
  Compiling backoff
===> Analyzing applications...
===> Compiling backoff
  Compiling gleam_stdlib
  Compiling exception
  Compiling gleam_erlang
  Compiling gleam_otp
  Compiling gleam_time
  Compiling gleeunit
  Compiling opentelemetry_api
  Compiling pg_types
===> Analyzing applications...
===> Compiling pg_types
  Compiling pgo
===> Analyzing applications...
===> Compiling pgo
  Compiling pog
  Compiling pog_problems
   Compiled in 6.91s
```

Result of `nix log /nix/store/xmspm9q80ib1jvvq425dc5ravhcck9qf-pog-4.1.0.drv | cat`

```
$ nix log /nix/store/xmspm9q80ib1jvvq425dc5ravhcck9qf-pog-4.1.0.drv | cat
Running phase: unpackPhase
@nix { "action": "setPhase", "phase": "unpackPhase" }
unpacking source archive /nix/store/7308xia5n5wly4wdral2jljv35pfhdv2-pog-4.1.0
source root is pog-4.1.0
Running phase: patchPhase
@nix { "action": "setPhase", "phase": "patchPhase" }
Running phase: updateAutotoolsGnuConfigScriptsPhase
@nix { "action": "setPhase", "phase": "updateAutotoolsGnuConfigScriptsPhase" }
Running phase: configurePhase
@nix { "action": "setPhase", "phase": "configurePhase" }
Running phase: buildPhase
@nix { "action": "setPhase", "phase": "buildPhase" }
build/_gleam_artefacts/pog_ffi.erl:5:14: can't find include lib "pog/include/pog_Config.hrl"
%    5| -include_lib("pog/include/pog_Config.hrl").
%     |              ^

build/_gleam_artefacts/pog_ffi.erl:6:14: can't find include lib "pg_types/include/pg_types.hrl"
%    6| -include_lib("pg_types/include/pg_types.hrl").
%     |              ^

build/_gleam_artefacts/pog_ffi.erl:42:5: record config undefined
%   42|     #config{
%     |     ^

build/_gleam_artefacts/pog_ffi.erl:59:54: variable 'Host' is unbound
%   59|     {SslActivated, SslOptions} = default_ssl_options(Host, Ssl),
%     |                                                      ^

build/_gleam_artefacts/pog_ffi.erl:59:60: variable 'Ssl' is unbound
%   59|     {SslActivated, SslOptions} = default_ssl_options(Host, Ssl),
%     |                                                            ^

build/_gleam_artefacts/pog_ffi.erl:62:17: variable 'Port' is unbound, did you mean 'Host'?
%   62|         port => Port,
%     |                 ^

build/_gleam_artefacts/pog_ffi.erl:63:21: variable 'Database' is unbound
%   63|         database => Database,
%     |                     ^

build/_gleam_artefacts/pog_ffi.erl:64:17: variable 'User' is unbound
%   64|         user => User,
%     |                 ^

build/_gleam_artefacts/pog_ffi.erl:67:34: variable 'ConnectionParameters' is unbound
%   67|         connection_parameters => ConnectionParameters,
%     |                                  ^

build/_gleam_artefacts/pog_ffi.erl:68:22: variable 'PoolSize' is unbound
%   68|         pool_size => PoolSize,
%     |                      ^

build/_gleam_artefacts/pog_ffi.erl:69:25: variable 'QueueTarget' is unbound
%   69|         queue_target => QueueTarget,
%     |                         ^

build/_gleam_artefacts/pog_ffi.erl:70:27: variable 'QueueInterval' is unbound
%   70|         queue_interval => QueueInterval,
%     |                           ^

build/_gleam_artefacts/pog_ffi.erl:71:26: variable 'IdleInterval' is unbound
%   71|         idle_interval => IdleInterval,
%     |                          ^

build/_gleam_artefacts/pog_ffi.erl:72:18: variable 'Trace' is unbound
%   72|         trace => Trace,
%     |                  ^

build/_gleam_artefacts/pog_ffi.erl:73:47: variable 'RowsAsMap' is unbound
%   73|         decode_opts => [{return_rows_as_maps, RowsAsMap}],
%     |                                               ^

build/_gleam_artefacts/pog_ffi.erl:74:32: variable 'IpVersion' is unbound
%   74|         socket_options => case IpVersion of
%     |                                ^

build/_gleam_artefacts/pog_ffi.erl:79:21: variable 'Password' is unbound
%   79|     Options2 = case Password of
%     |                     ^

build/_gleam_artefacts/pog_ffi.erl:83:25: variable 'PoolName' is unbound, did you mean 'PoolSize'?
%   83|     pgo_pool:start_link(PoolName, Options2).
%     |                         ^

build/_gleam_artefacts/pog_ffi.erl:137:18: record type_info undefined
%  137|     type_info := #type_info{name = Expected},
%     |                  ^

build/_gleam_artefacts/pog_ffi.erl:141:32: variable 'Expected' is unbound
%  141|     {unexpected_argument_type, Expected, Got};
%     |                                ^

error: Shell command failure

There was a problem when running the shell command `escript`.
```
