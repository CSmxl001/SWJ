package com.swj.base;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.Version;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.module.SimpleModule;


public class RainJackson {
	private static ObjectMapper mapper = null; 
	
	/**
	 * 取新的
	 * @Methods Name newMapper
	 * @Create In 2011-11-24 By yangwb
	 * @return 
	 * @ReturnType ObjectMapper
	 */
	public static ObjectMapper mapper() {
		ObjectMapper newMapper = new ObjectMapper();
		SimpleModule valueModule = new SimpleModule("RainModule", new Version(1, 0, 0, null));
//		valueModule.addSerializer(Value.class, new ValueSerializer());
//		valueModule.addDeserializer(Value.class, new ValueDeserializer());		
		newMapper.registerModule(valueModule);
		return newMapper;
	}
	
	/**
	 * 取默认的
	 * @Methods Name mapper
	 * @Create In 2011-11-24 By yangwb
	 * @return 
	 * @ReturnType ObjectMapper
	 */
	public static ObjectMapper defaultMapper() {
		return mapper==null?mapper():mapper;
	}
	
	public static String writeValueAsString(Object value){
		try {
			return mapper().writeValueAsString(value);
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
//	public static class ValueDeserializer extends JsonDeserializer<Value>{
//		@SuppressWarnings("unchecked")
//		@Override
//		public Value deserialize(JsonParser jgen, DeserializationContext dc)
//				throws IOException, JsonProcessingException {
////			dc.constructType(null). 
//			jgen.nextToken();	//{
//			jgen.nextToken();	//name
//			jgen.nextToken();	//value
//			String s = jgen.getText();
//			jgen.nextToken();	//text
//			jgen.nextToken();	//value
//			jgen.nextToken();	//}	
//			return (Value)Enum.valueOf(Enum.class, s);
//		}
//	}
	
//	public static class ValueSerializer extends JsonSerializer<Value>{
//		@Override
//		public void serialize(Value value, JsonGenerator jgen, SerializerProvider provider) throws IOException,
//				JsonProcessingException {
//	        jgen.writeStartObject();
//	        jgen.writeStringField("name", value.name());
//	        jgen.writeStringField("text", value.getText());
//	        jgen.writeEndObject();
////			jgen.writeString(value.name());
//		}
//	}
	
//	public static void main(String...str) {
//		try {
//			ObjectMapper mapper =  new ObjectMapper();
//			SimpleModule valueModule = new SimpleModule("ValueModule", new Version(1, 0, 0, null));
////			 valueModule.addDeserializer(Value.class, new ValueDeserializer());
//			valueModule.addSerializer(Value.class,new ValueSerializer());
//			mapper.registerModule(valueModule);
////			ObjectMapper mapper1 = new ObjectMapper();
//			EntityTest et = new EntityTest();
//			et.setC(Course.GL);
//			String st = mapper.writeValueAsString(et);
//			System.out.println(st);
//		} catch (JsonGenerationException e) {
//			e.printStackTrace();
//		} catch (JsonMappingException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//	}
	
	

}
