---
  public static String toUnicodeString(String in) {
        if (in == null)
            return null;
        char[] chars = in.toCharArray();
        StringBuffer out = new StringBuffer();
        int intArrayLength = chars.length;
        for (int i = 0; i < intArrayLength; i++) {
            out.append(convertCharToUnicodeString(chars[i]));
        }
        return out.toString();
    }
  ---
  
  ---
   public static String convertCharToUnicodeString(char c) {
        return String.format("\\u%04x", (int) c);
    }
  ---
