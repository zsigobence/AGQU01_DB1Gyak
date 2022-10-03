
import java.io.*;
import java.util.*;


public class ZsBFileOlvas {
	
	public static int intOlvas(FileReader bs) throws IOException
	{
		StringBuffer sz = new StringBuffer(12);
		int b;
		do {
			b = bs.read();
			if((char)b != ',')
				sz.append((char)b);
			else
				break;
		}while(true);
		return Integer.parseInt(sz.toString());
	}
	

	public static void main(String[] args) throws IOException {
		int db;
		File file = new File("C:\\Users\\Felhasznalo\\Desktop\\AGQU01_DB1Gyak\\AGQU01_0920\\agqu01_2.1\\src\\zsigo.txt");
		FileReader be_stream = new FileReader(file);
		
		db = intOlvas(be_stream);
		System.out.println("Adatok száma = " + db);
		
		int[] x = new int[db];
		for(int i = 0; i < db; i++) {
			x[i] = intOlvas(be_stream);
			System.out.println(i + ".adat = " + x[i]);
		}
		
		be_stream.close();
				
		int osszeg = 0;
		for(int i = 0; i < db; i++) {
			osszeg += x[i];
			
		System.out.println("Összeg: " + osszeg);
		}
		
		
		

	}

}

