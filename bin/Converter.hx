/*
 * MIT License
 *
 * Copyright (c) 2021 itsamedood
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the
 * Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
 * AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH
 * THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

package bin;

import haxe.Exception;
import sys.io.File;

using StringTools;

class Converter
{
	public function new() {}

	/**
	 * Parses binary from another file to a `String`.
	 * 
	 * Use this website to convert text to binary `->` **https://codebeautify.org/text-to-binary?input=hello**,
	 * or use the `parseStringToBinary` function.
	 * @param path Path to `.bin` file.
	 * @return `String` of decoded text.
	 */
	public inline function parseFromFile(path:String):String
	{
		if (!path.endsWith(".bin"))
			throw new Exception("-> Bin-ConverterError -> File is not a binary file (.bin).");

		var content = File.getContent(path);
		var numSplit = content.split(" ");

		var decode:Array<String> = [];

		for (i in numSplit)
		{
			switch (i)
			{
				case "01000001":
					decode.push("A");
				case "01000010":
					decode.push("B");
				case "01000011":
					decode.push("C");
				case "01000100":
					decode.push("D");
				case "01000101":
					decode.push("E");
				case "01000110":
					decode.push("F");
				case "01000111":
					decode.push("G");
				case "01001000":
					decode.push("H");
				case "01001001":
					decode.push("I");
				case "01001010":
					decode.push("J");
				case "01001011":
					decode.push("K");
				case "01001100":
					decode.push("L");
				case "01001101":
					decode.push("M");
				case "01001110":
					decode.push("N");
				case "01001111":
					decode.push("O");
				case "01010000":
					decode.push("P");
				case "01010001":
					decode.push("Q");
				case "01010010":
					decode.push("R");
				case "01010011":
					decode.push("S");
				case "01010100":
					decode.push("T");
				case "01010101":
					decode.push("U");
				case "01010110":
					decode.push("V");
				case "01010111":
					decode.push("W");
				case "01011000":
					decode.push("X");
				case "01011001":
					decode.push("Y");
				case "01011010":
					decode.push("Z");
				case "01100001":
					decode.push("a");
				case "01100010":
					decode.push("b");
				case "01100011":
					decode.push("c");
				case "01100100":
					decode.push("d");
				case "01100101":
					decode.push("e");
				case "01100110":
					decode.push("f");
				case "01100111":
					decode.push("g");
				case "01101000":
					decode.push("h");
				case "01101001":
					decode.push("i");
				case "01101010":
					decode.push("j");
				case "01101011":
					decode.push("k");
				case "01101100":
					decode.push("l");
				case "01101101":
					decode.push("m");
				case "01101110":
					decode.push("n");
				case "01101111":
					decode.push("o");
				case "01110000":
					decode.push("p");
				case "01110001":
					decode.push("q");
				case "01110010":
					decode.push("r");
				case "01110011":
					decode.push("s");
				case "01110100":
					decode.push("t");
				case "01110101":
					decode.push("u");
				case "01110110":
					decode.push("v");
				case "01110111":
					decode.push("w");
				case "01111000":
					decode.push("x");
				case "01111001":
					decode.push("y");
				case "01111010":
					decode.push("z");
				case "00110000":
					decode.push("0");
				case "00110001":
					decode.push("1");
				case "00110010":
					decode.push("2");
				case "00110011":
					decode.push("3");
				case "00110100":
					decode.push("4");
				case "00110101":
					decode.push("5");
				case "00110110":
					decode.push("6");
				case "00110111":
					decode.push("7");
				case "00111000":
					decode.push("8");
				case "00111001":
					decode.push("9");
				case "01100000":
					decode.push("`");
				case "01111110":
					decode.push("~");
				case "00100001":
					decode.push("!");
				case "01000000":
					decode.push("@");
				case "00100011":
					decode.push("#");
				case "00100100":
					decode.push("$");
				case "00100101":
					decode.push("%");
				case "01011110":
					decode.push("^");
				case "00100110":
					decode.push("&");
				case "00101010":
					decode.push("*");
				case "00101000":
					decode.push("(");
				case "00101001":
					decode.push(")");
				case "00101101":
					decode.push("-");
				case "01011111":
					decode.push("_");
				case "00111101":
					decode.push("=");
				case "00101011":
					decode.push("+");
				case "01011011":
					decode.push("[");
				case "01111011":
					decode.push("{");
				case "01011101":
					decode.push("]");
				case "01111101":
					decode.push("}");
				case "01011100":
					decode.push("\\");
				case "01111100":
					decode.push("|");
				case "00111011":
					decode.push(";");
				case "00111010":
					decode.push(":");
				case "00100111":
					decode.push("'");
				case "00100010":
					decode.push("\"");
				case "00101100":
					decode.push(",");
				case "00111100":
					decode.push("<");
				case "00101110":
					decode.push(".");
				case "00111110":
					decode.push(">");
				case "00101111":
					decode.push("/");
				case "00111111":
					decode.push("?");
				case "00100000":
					decode.push(" ");
				case "00001010":
					decode.push("\n");
				default:
					throw new Exception("-> Bin-ConverterError -> Invalid number: '" + i + "'");
			}
		}
		return decode.join("");
	}

	/**
	 * Parses binary from a `String`.
	 * @param string The string to parse.
	 * @return `String` of decoded text.
	 */
	public inline function parseFromString(string:String):String
	{
		var numSplit = string.split(" ");

		var decode:Array<String> = [];

		for (i in numSplit)
		{
			switch (i)
			{
				case "01000001":
					decode.push("A");
				case "01000010":
					decode.push("B");
				case "01000011":
					decode.push("C");
				case "01000100":
					decode.push("D");
				case "01000101":
					decode.push("E");
				case "01000110":
					decode.push("F");
				case "01000111":
					decode.push("G");
				case "01001000":
					decode.push("H");
				case "01001001":
					decode.push("I");
				case "01001010":
					decode.push("J");
				case "01001011":
					decode.push("K");
				case "01001100":
					decode.push("L");
				case "01001101":
					decode.push("M");
				case "01001110":
					decode.push("N");
				case "01001111":
					decode.push("O");
				case "01010000":
					decode.push("P");
				case "01010001":
					decode.push("Q");
				case "01010010":
					decode.push("R");
				case "01010011":
					decode.push("S");
				case "01010100":
					decode.push("T");
				case "01010101":
					decode.push("U");
				case "01010110":
					decode.push("V");
				case "01010111":
					decode.push("W");
				case "01011000":
					decode.push("X");
				case "01011001":
					decode.push("Y");
				case "01011010":
					decode.push("Z");
				case "01100001":
					decode.push("a");
				case "01100010":
					decode.push("b");
				case "01100011":
					decode.push("c");
				case "01100100":
					decode.push("d");
				case "01100101":
					decode.push("e");
				case "01100110":
					decode.push("f");
				case "01100111":
					decode.push("g");
				case "01101000":
					decode.push("h");
				case "01101001":
					decode.push("i");
				case "01101010":
					decode.push("j");
				case "01101011":
					decode.push("k");
				case "01101100":
					decode.push("l");
				case "01101101":
					decode.push("m");
				case "01101110":
					decode.push("n");
				case "01101111":
					decode.push("o");
				case "01110000":
					decode.push("p");
				case "01110001":
					decode.push("q");
				case "01110010":
					decode.push("r");
				case "01110011":
					decode.push("s");
				case "01110100":
					decode.push("t");
				case "01110101":
					decode.push("u");
				case "01110110":
					decode.push("v");
				case "01110111":
					decode.push("w");
				case "01111000":
					decode.push("x");
				case "01111001":
					decode.push("y");
				case "01111010":
					decode.push("z");
				case "00110000":
					decode.push("0");
				case "00110001":
					decode.push("1");
				case "00110010":
					decode.push("2");
				case "00110011":
					decode.push("3");
				case "00110100":
					decode.push("4");
				case "00110101":
					decode.push("5");
				case "00110110":
					decode.push("6");
				case "00110111":
					decode.push("7");
				case "00111000":
					decode.push("8");
				case "00111001":
					decode.push("9");
				case "01100000":
					decode.push("`");
				case "01111110":
					decode.push("~");
				case "00100001":
					decode.push("!");
				case "01000000":
					decode.push("@");
				case "00100011":
					decode.push("#");
				case "00100100":
					decode.push("$");
				case "00100101":
					decode.push("%");
				case "01011110":
					decode.push("^");
				case "00100110":
					decode.push("&");
				case "00101010":
					decode.push("*");
				case "00101000":
					decode.push("(");
				case "00101001":
					decode.push(")");
				case "00101101":
					decode.push("-");
				case "01011111":
					decode.push("_");
				case "00111101":
					decode.push("=");
				case "00101011":
					decode.push("+");
				case "01011011":
					decode.push("[");
				case "01111011":
					decode.push("{");
				case "01011101":
					decode.push("]");
				case "01111101":
					decode.push("}");
				case "01011100":
					decode.push("\\");
				case "01111100":
					decode.push("|");
				case "00111011":
					decode.push(";");
				case "00111010":
					decode.push(":");
				case "00100111":
					decode.push("'");
				case "00100010":
					decode.push("\"");
				case "00101100":
					decode.push(",");
				case "00111100":
					decode.push("<");
				case "00101110":
					decode.push(".");
				case "00111110":
					decode.push(">");
				case "00101111":
					decode.push("/");
				case "00111111":
					decode.push("?");
				case "00100000":
					decode.push(" ");
				case "00001010":
					decode.push("\n");
				default:
					throw new Exception("-> Bin-ConverterError -> Invalid number: '" + i + "'");
			}
		}
		return decode.join("");
	}

	/**
	 * Parses a `String` of text to binary.
	 * @param string The `String` of text to convert.
	 * @return `String` of encoded binary.
	 */
	public inline function parseStringToBinary(string:String, ?fileToWrite:Null<String> = null):String
	{
		var charSplit = string.split("");
		var encode:Array<String> = [];

		for (i in charSplit)
		{
			switch (i)
			{
				case "A":
					encode.push("01000001");
				case "B":
					encode.push("01000010");
				case "C":
					encode.push("01000011");
				case "D":
					encode.push("01000100");
				case "E":
					encode.push("01000101");
				case "F":
					encode.push("01000110");
				case "G":
					encode.push("01000111");
				case "H":
					encode.push("01001000");
				case "I":
					encode.push("01001001");
				case "J":
					encode.push("01001010");
				case "K":
					encode.push("01001011");
				case "L":
					encode.push("01001100");
				case "M":
					encode.push("01001101");
				case "N":
					encode.push("01001110");
				case "O":
					encode.push("01001111");
				case "P":
					encode.push("01010000");
				case "Q":
					encode.push("01010001");
				case "R":
					encode.push("01010010");
				case "S":
					encode.push("01010011");
				case "T":
					encode.push("01010100");
				case "U":
					encode.push("01010101");
				case "V":
					encode.push("01010110");
				case "W":
					encode.push("01010111");
				case "X":
					encode.push("01011000");
				case "Y":
					encode.push("01011001");
				case "Z":
					encode.push("01011010");
				case "a":
					encode.push("01100001");
				case "b":
					encode.push("01100010");
				case "c":
					encode.push("01100011");
				case "d":
					encode.push("01100100");
				case "e":
					encode.push("01100101");
				case "f":
					encode.push("01100110");
				case "g":
					encode.push("01100111");
				case "h":
					encode.push("01101000");
				case "i":
					encode.push("01101001");
				case "j":
					encode.push("01101010");
				case "k":
					encode.push("01101011");
				case "l":
					encode.push("01101100");
				case "m":
					encode.push("01101101");
				case "n":
					encode.push("01101110");
				case "o":
					encode.push("01101111");
				case "p":
					encode.push("01110000");
				case "q":
					encode.push("01110001");
				case "r":
					encode.push("01110010");
				case "s":
					encode.push("01110011");
				case "t":
					encode.push("01110100");
				case "u":
					encode.push("01110101");
				case "v":
					encode.push("01110110");
				case "w":
					encode.push("01110111");
				case "x":
					encode.push("01111000");
				case "y":
					encode.push("01111001");
				case "z":
					encode.push("01111010");
				case "0":
					encode.push("00110000");
				case "1":
					encode.push("00110001");
				case "2":
					encode.push("00110010");
				case "3":
					encode.push("00110011");
				case "4":
					encode.push("00110100");
				case "5":
					encode.push("00110101");
				case "6":
					encode.push("00110110");
				case "7":
					encode.push("00110111");
				case "8":
					encode.push("00111000");
				case "9":
					encode.push("00111001");
				case "`":
					encode.push("01100000");
				case "~":
					encode.push("01111110");
				case "!":
					encode.push("00100001");
				case "@":
					encode.push("01000000");
				case "#":
					encode.push("00100011");
				case "$":
					encode.push("00100100");
				case "%":
					encode.push("00100101");
				case "^":
					encode.push("01011110");
				case "&":
					encode.push("00100110");
				case "*":
					encode.push("00101010");
				case "(":
					encode.push("00101000");
				case ")":
					encode.push("00101001");
				case "-":
					encode.push("00101101");
				case "_":
					encode.push("01011111");
				case "=":
					encode.push("00111101");
				case "+":
					encode.push("00101011");
				case "[":
					encode.push("01011011");
				case "{":
					encode.push("01111011");
				case "]":
					encode.push("01011101");
				case "}":
					encode.push("01111101");
				case "\\":
					encode.push("01011100");
				case "|":
					encode.push("01111100");
				case ";":
					encode.push("00111011");
				case ":":
					encode.push("00111010");
				case "'":
					encode.push("00100111");
				case "\"":
					encode.push("00100010");
				case ",":
					encode.push("00101100");
				case "<":
					encode.push("00111100");
				case ".":
					encode.push("00101110");
				case ">":
					encode.push("00111110");
				case "/":
					encode.push("00101111");
				case "?":
					encode.push("00111111");
				case " ":
					encode.push("00100000");
				case "\n":
					encode.push("00001010");
				default:
					throw new Exception("-> Bin-ConverterError -> Unknown character: '" + i + "'");
			}
		}
		if (fileToWrite != null)
		{
			if (fileToWrite.endsWith(".bin"))
			{
				try
				{
					File.saveContent(fileToWrite, encode.join(" "));
				}
				catch (e:String)
				{
					throw new Exception("-> Bin-ConverterError -> Failed to write binary string to '" + fileToWrite + "'.");
				}
			}
			else
			{
				throw new Exception("-> Bin-ConverterError -> File requested to be written to is not a binary file (.bin).");
			}
		}
		return encode.join(" ");
	}
}
