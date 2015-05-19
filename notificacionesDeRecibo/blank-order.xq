xquery version "3.0";

declare namespace cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2";
declare namespace cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2";

<o:ReceiptAdvice xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:o="urn:oasis:names:specification:ubl:schema:xsd:ReceiptAdvice-2" >

    <cbc:UBLVersionID>2.0</cbc:UBLVersionID>
    <cbc:CustomizationID>urn:oasis:names:specification:ubl:xpath:ReceiptAdvice-2.0:sbs-1.0-draft</cbc:CustomizationID>
    <cbc:ProfileID>bpid:urn:oasis:names:draft:bpss:ubl-2-sbs-receipt-advice-notification-draft</cbc:ProfileID>
    <cbc:ID>111111</cbc:ID>
    <cbc:CopyIndicator>true</cbc:CopyIndicator>
    <cbc:UUID>{ util:uuid() }</cbc:UUID>
    <cbc:IssueDate>{ current-date() }</cbc:IssueDate>
    <cbc:Note>sample</cbc:Note>
    <cac:OrderReference>
        <cbc:ID>DJL264904</cbc:ID>
        <cbc:SalesOrderID>WAR0748216</cbc:SalesOrderID>
        <cbc:UUID>{ util:uuid() }</cbc:UUID>
        <cbc:IssueDate>{ current-date() }</cbc:IssueDate>
    </cac:OrderReference>
    <cac:DespatchDocumentReference>
        <cbc:ID>565899</cbc:ID>
        <cbc:UUID>{ util:uuid() }</cbc:UUID>
        <cbc:IssueDate>{ current-date() }</cbc:IssueDate>
    </cac:DespatchDocumentReference>
    <cac:DeliveryCustomerParty>
        <cbc:CustomerAssignedAccountID>UTB89</cbc:CustomerAssignedAccountID>
        <cbc:SupplierAssignedAccountID>RS94783565</cbc:SupplierAssignedAccountID>
        <cac:Party>
            <cac:PartyName>
                <cbc:Name></cbc:Name>
            </cac:PartyName>
            <cac:PostalAddress>
                <cbc:StreetName></cbc:StreetName>
                <cbc:BuildingName></cbc:BuildingName>
                <cbc:BuildingNumber></cbc:BuildingNumber>
                <cbc:CityName></cbc:CityName>
                <cbc:PostalZone>WW66 5TT</cbc:PostalZone>
                <cbc:CountrySubentity></cbc:CountrySubentity>
                <cac:AddressLine>
                    <cbc:Line></cbc:Line>
                </cac:AddressLine>
                <cac:Country>
                    <cbc:IdentificationCode></cbc:IdentificationCode>
                </cac:Country>
            </cac:PostalAddress>
            <cac:PartyTaxScheme>
                <cbc:RegistrationName></cbc:RegistrationName>
                <cbc:CompanyID></cbc:CompanyID>
                <cbc:ExemptionReason>Local Authority</cbc:ExemptionReason>
                <cac:TaxScheme>
                    <cbc:ID>UK VAT</cbc:ID>
                    <cbc:TaxTypeCode>VAT</cbc:TaxTypeCode>
                </cac:TaxScheme>
            </cac:PartyTaxScheme>
            <cac:Contact>
                <cbc:Name></cbc:Name>
                <cbc:Telephone></cbc:Telephone>
                <cbc:Telefax></cbc:Telefax>
                <cbc:ElectronicMail></cbc:ElectronicMail>
            </cac:Contact>
        </cac:Party>
    </cac:DeliveryCustomerParty>
    <cac:DespatchSupplierParty>
        <cbc:CustomerAssignedAccountID></cbc:CustomerAssignedAccountID>
        <cac:Party>
            <cac:PartyName>
                <cbc:Name></cbc:Name>
            </cac:PartyName>
            <cac:PostalAddress>
                <cbc:StreetName></cbc:StreetName>
                <cbc:BuildingName></cbc:BuildingName>
                <cbc:BuildingNumber></cbc:BuildingNumber>
                <cbc:CityName></cbc:CityName>
                <cbc:PostalZone></cbc:PostalZone>
                <cbc:CountrySubentity></cbc:CountrySubentity>
                <cac:AddressLine>
                    <cbc:Line>The Roundabout</cbc:Line>
                </cac:AddressLine>
                <cac:Country>
                    <cbc:IdentificationCode>BJ</cbc:IdentificationCode>
                </cac:Country>
            </cac:PostalAddress>
            <cac:PartyTaxScheme>
                <cbc:RegistrationName></cbc:RegistrationName>
                <cbc:CompanyID></cbc:CompanyID>
                <cbc:ExemptionReason></cbc:ExemptionReason>
                <cac:TaxScheme>
                    <cbc:ID>VAT</cbc:ID>
                    <cbc:TaxTypeCode>VAT</cbc:TaxTypeCode>
                </cac:TaxScheme>
            </cac:PartyTaxScheme>
            <cac:Contact>
                <cbc:Name></cbc:Name>
                <cbc:Telephone></cbc:Telephone>
                <cbc:Telefax></cbc:Telefax>
                <cbc:ElectronicMail></cbc:ElectronicMail>
            </cac:Contact>
        </cac:Party>
    </cac:DespatchSupplierParty>
    <cac:Shipment>
        <cbc:ID>1</cbc:ID>
        <cac:Consignment>
            <cbc:ID>1</cbc:ID>
        </cac:Consignment>
        <cac:Delivery>
            <cbc:ID>1</cbc:ID>
            <cbc:Quantity unitCode="KGM"></cbc:Quantity>
            <cbc:ActualDeliveryDate>{ current-date() }</cbc:ActualDeliveryDate>
            <cbc:ActualDeliveryTime>07:40:00.0Z</cbc:ActualDeliveryTime>
            <cac:RequestedDeliveryPeriod>
                <cbc:StartDate>{ current-date() }</cbc:StartDate>
                <cbc:StartTime>06:20:00.0Z</cbc:StartTime>
                <cbc:EndDate>{ current-date() }</cbc:EndDate>
                <cbc:EndTime>06:20:00.0Z</cbc:EndTime>
            </cac:RequestedDeliveryPeriod>
        </cac:Delivery>
    </cac:Shipment>
    <cac:ReceiptLine>
        <cbc:ID>1</cbc:ID>
        <cbc:Note>SAMPLE</cbc:Note>
        <cbc:ReceivedQuantity unitCode="KGM"></cbc:ReceivedQuantity>
        <cbc:ShortQuantity unitCode="KGM"></cbc:ShortQuantity>
        <cac:Item>
            <cbc:Description>Acme beeswax</cbc:Description>
            <cbc:Name>beeswax</cbc:Name>
            <cac:BuyersItemIdentification>
                <cbc:ID></cbc:ID>
            </cac:BuyersItemIdentification>
            <cac:SellersItemIdentification>
                <cbc:ID></cbc:ID>
            </cac:SellersItemIdentification>
            <cac:ItemInstance>
                <cac:LotIdentification>
                    <cbc:LotNumberID></cbc:LotNumberID>
                    <cbc:ExpiryDate>{ current-date() }</cbc:ExpiryDate>
                </cac:LotIdentification>
            </cac:ItemInstance>
        </cac:Item>
    </cac:ReceiptLine>
</o:ReceiptAdvice>