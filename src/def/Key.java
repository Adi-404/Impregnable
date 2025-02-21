package def;   
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;

public class Key {
  public static void main(String[] argv) throws Exception {
    KeyPairGenerator keyGen = KeyPairGenerator.getInstance("RSA");
    keyGen.initialize(513);
    KeyPair keypair = keyGen.genKeyPair();
    PrivateKey privateKey = keypair.getPrivate();
   PublicKey publicKey = keypair.getPublic();
   System.out.println(privateKey);
   System.out.println(publicKey);
 }
}