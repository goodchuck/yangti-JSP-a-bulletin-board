package test;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Arrays;

import org.json.JSONArray;
import org.json.JSONObject;

import java.net.HttpURLConnection;


public class Main {

	public String[] search(){
		try {
			String htmlUrl = "https://api.neople.co.kr/df/servers/prey/characters?characterName=%ec%9e%98%ed%95%a0%ea%b2%8c%ec%97%ac&apikey=oMDk2YvEtfIzJG8SfXLWDZ3km3J1pKu6";
			HttpURLConnection conn = (HttpURLConnection) new URL(htmlUrl).openConnection();
			conn.setRequestMethod("GET");
			
			BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();
			while((inputLine= in.readLine()) != null){
				response.append(inputLine);
			}
			in.close();
			//String[] test = new String[2];
			//System.out.println("결과물 : " + response.toString());
			JSONObject myResponse = new JSONObject(response.toString());
			JSONArray jArray = myResponse.getJSONArray("rows");
			
			String serverId = jArray.getJSONObject(0).getString("serverId");
			String charactername = jArray.getJSONObject(0).getString("characterName");
			//System.out.println("serverId : " + serverId);
			//System.out.println("characterName : " + charactername);
			return new String[] {serverId, charactername};
		} catch(Exception e) {
			System.out.println("오류 : " + e);
		}
		return new String[] {"-1", "-2"};
	}
}
