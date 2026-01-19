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
