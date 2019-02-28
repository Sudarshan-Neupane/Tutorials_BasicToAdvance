1. Open yml/properties file I am using .yml
---
    server:
      port: 8443
      ssl:
        key-store: classpath:https-example.jks
        key-password: sudarshan
        key-store-type: JKS
        key-alias: https-example
---
2.  Open your terminal and generate certificate
---
    keytool -genkey -alias https-example -storetype JKS -keyalg RSA -keysize 2048 -validity 365 -keystore https-example.jks
---

3. Copy your certificate inside your resources(classpath)
4. run your project and check in browser 
