import Types "./types"

module  {

    type UserProfile = Types.UserProfile;
    type SubProfile = Types.SubProfile;

    type UserId = Types.UserId;
    
    public func makeProfile(userId: UserId, profile: UserProfile) : UserProfile {
            {
                id = userId;
                account = profile.account;
                lastName = profile.lastName;
                firstName = profile.firstName;
                age = profile.age;
                gender = profile.gender;
                covidStatusFlags = profile.covidStatusFlags;
                srfNumber = profile.srfNumber;
                labNumber = profile.labNumber;
                address = profile.address;
                quarantineLocation = profile.quarantineLocation;
                drInCharge = profile.drInCharge;
                primaryCareTaker = profile.primaryCareTaker;
                preferredLanguages = profile.preferredLanguages;
                subprofiles = profile.subprofiles;
            }
        };

        

    public func makeSubProfile(userId: UserId, profile: SubProfile): SubProfile {
        {
            id = userId;
            lastName = profile.lastName;
            firstName = profile.firstName;
            age = profile.age;
            gender = profile.gender;
            covidStatusFlags = profile.covidStatusFlags;
            srfNumber = profile.srfNumber;
            labNumber = profile.labNumber;
            address = profile.address;
            quarantineLocation = profile.quarantineLocation;
            drInCharge = profile.drInCharge;
            primaryCareTaker = profile.primaryCareTaker;
            preferredLanguages = profile.preferredLanguages;
        }
    };
}