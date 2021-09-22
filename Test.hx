package;

import bin.Converter;

class Test
{
	public static function main():Void
	{
		var bin = new Converter();

		trace(bin.parseFromFile("./test/example.bin"));
	}
}
