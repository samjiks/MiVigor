import Principal "mo:base/Principal";

module Types {
    public type UserId = Principal;
 
    public type Profile = {
        id: UserId;
        title: Text;
        lastName: Text;
        firstName: Text;
        contactNo: Nat32;
        licenseNo: Text;
        speacialities: Text;
        company: Text;
        experience: Nat32;
        education: Text;     
        imgUrl: Text;
        languagesKnown: Text;
        userRequests: [Text];
        email: Text;
        country: Text;
        userType: Text;
    };

    public type UserType = {
        #doctor;
        #volunteer;
        #user;
        #supplier;
    };

    public type AccountUserType = {
        #patient;
        #caretaker;
        #contactPerson;
    };

    public type Address = {
        address1: Text;
        address2: Text;
        zipCode: Text;
        city: Text;
        StateCounty: Text;
        Country: Text;
    };

    public type QuarantineLocation = {
        address: Address;
        contactNo: Text;
        ward: Text;
        BedNumber: Text;
    };

    public type DrInCharge = {
        address: Address;
        contact: Text;
        ward: Text;
        BedNumber: Nat;
    };

    public type Languages = {
        #hindi;
        #english;
        #marathi;
        #gujarathi;
        #telegu;
        #tamil;
        #kannada;
        #malayalam;
        #oriya;
    };

    public type SubProfile = {
        lastName: Text;
        firstName: Text;
        age: Nat32;
        gender: Text;
        covidStatusFlags: Text;
        srfNumber: Text;
        labNumber: Text;
        address: Address;
        quarantineLocation: QuarantineLocation;
        drInCharge: DrInCharge;
        primaryCareTaker: Text;
        preferredLanguages: [Languages];
    };

    public type UserProfile = {
        id: UserId;
        account: AccountUserType;
        lastName: Text;
        firstName: Text;
        age: Nat32;
        gender: Text;
        covidStatusFlags: Text;
        srfNumber: Text;
        labNumber: Text;
        address: Address;
        quarantineLocation: QuarantineLocation;
        drInCharge: DrInCharge;
        primaryCareTaker: Text;
        preferredLanguages: [Languages];
        subprofiles: ?[SubProfile];
    };
};