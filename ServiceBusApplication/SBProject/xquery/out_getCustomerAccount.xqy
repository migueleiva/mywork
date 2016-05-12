xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://xmlns.oracle.com/ServiceBusApplication/SBProject/e";
(:: import schema at "../wsdl/CustomerAccount.wsdl" ::)

declare variable $input as element() (:: schema-element(ns1:CreateCustomrReq) ::) external;

declare function local:getCustomerAccount($input as element() (:: schema-element(ns1:CreateCustomrReq) ::)) as element() (:: element(*, ns1:CustomerAccountType) ::) {
    <ns1:CustomerAccountType>
        <ns1:MSISDN>{fn:data($input/ns1:MSISDN)}</ns1:MSISDN>
        <ns1:nombre>{'Miguel'}</ns1:nombre>
        <ns1:apellido>{'Leiva'}</ns1:apellido>
        <ns1:planTarifario>{'PREPAGO'}</ns1:planTarifario>
    </ns1:CustomerAccountType>
};

local:getCustomerAccount($input)
