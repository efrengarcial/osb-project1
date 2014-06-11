(:: pragma bea:global-element-parameter parameter="$getGeoIP1" element="ns0:GetGeoIP" location="../wsdl/GeoIPManagement.wsdl" ::)
(:: pragma bea:global-element-return element="ns0:GetGeoIP" location="../wsdl/GeoIPService.wsdl" ::)

declare namespace ns0 = "http://www.webservicex.net/";
declare namespace xf = "http://tempuri.org/OSB%20Project/transformation/TransformGetGeoIP/";

declare function xf:TransformGetGeoIP($getGeoIP1 as element(ns0:GetGeoIP))
    as element(ns0:GetGeoIP) {
        <ns0:GetGeoIP>
            <ns0:IPAddress>{ xs:string($getGeoIP1/ns0:IPAddress) }</ns0:IPAddress>
        </ns0:GetGeoIP>
};

declare variable $getGeoIP1 as element(ns0:GetGeoIP) external;

xf:TransformGetGeoIP($getGeoIP1)
