/* Quartus Prime Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Cfg)
		Device PartName(5CSXFC6D6F31) Path("/home/gabriel/Documents/mult_8/output_files/") File("reg16.sof") MfrSpec(OpMask(1));
	P ActionCode(Ign)
		Device PartName(SOCVHPS) MfrSpec(OpMask(0));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;