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

    type UserType = {
        #doctor;
        #volunteer;
        #user;
        #supplier;
    };
};