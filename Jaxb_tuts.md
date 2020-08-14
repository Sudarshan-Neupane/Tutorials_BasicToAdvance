XML to object mapper.

## convert String to the object without root element
---
    public void createResponse(String xmlpayload) {
        try {
            JAXBContext context = JAXBContext.newInstance(Test.class);
            Unmarshaller jaxbUnmarshaller = context.createUnmarshaller();
            InputStream is = new ByteArrayInputStream(xmlpayload.getBytes());
            JAXBElement<Test> customer = jaxbUnmarshaller.unmarshal(new StreamSource(is), Test.class);
            Test c = customer.getValue();
            System.out.println(c);
        } catch (JAXBException exc) {
            exc.printStackTrace();
        }

    }
  ---
