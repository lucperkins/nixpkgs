{
  buildDunePackage,
  camlp-streams,
  xenstore_transport,
  xenstore,
  lwt,
}:

buildDunePackage {
  pname = "xenstore-tool";

  inherit (xenstore_transport) src version;

  buildInputs = [
    camlp-streams
    xenstore_transport
    xenstore
    lwt
  ];

  meta = xenstore_transport.meta // {
    description = "Command line tool for interfacing with xenstore";
  };
}
