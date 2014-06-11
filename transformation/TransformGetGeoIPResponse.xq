(:: pragma bea:local-element-parameter parameter="$getGeoIPResult1" type="ns0:GetGeoIPResponse/ns0:GetGeoIPResult" location="../wsdl/GeoIPService.wsdl" ::)
(:: pragma bea:local-element-return type="ns0:GetGeoIPResponse/ns0:GetGeoIPResult" location="../wsdl/GeoIPManagement.wsdl" ::)

declare namespace ns0 = "http://www.webservicex.net/";
declare namespace xf = "http://tempuri.org/OSB%20Project/transformation/TransformGetGeoIPResponse/";

declare function xf:TransformGetGeoIPResponse($getGeoIPResult1 as element())
    as element() {
        <ns0:GetGeoIPResult>
            <ns0:ReturnCode>{ xs:string($getGeoIPResult1/ns0:ReturnCode) }</ns0:ReturnCode>
            <ns0:IP>{ xs:string($getGeoIPResult1/ns0:IP) }</ns0:IP>
            <ns0:ReturnCodeDetails>{ xs:string($getGeoIPResult1/ns0:ReturnCodeDetails) }</ns0:ReturnCodeDetails>
            <ns0:CountryName>{ xs:string($getGeoIPResult1/ns0:CountryName) }</ns0:CountryName>
            <ns0:CountryCode>{ xs:string($getGeoIPResult1/ns0:CountryCode) }</ns0:CountryCode>
        </ns0:GetGeoIPResult>
};

declare variable $getGeoIPResult1 as element() external;

xf:TransformGetGeoIPResponse($getGeoIPResult1)
