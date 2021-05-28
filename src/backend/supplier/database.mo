
import Array "mo:base/Array";
import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";
import Types "types";

module {
    type UserId = Types.UserId;
    type Profile = Types.Profile;


    public class Database() {

        public func create(hashMap: HashMap.HashMap<UserId, Profile>, userId: UserId, profile: Profile) {
            hashMap.put(userId, makeProfile(userId, profile));
        };

        public func findOne(hashMap: HashMap.HashMap<UserId, Profile>, userId: UserId): ?Profile {
            hashMap.get(userId)
        };

        func makeProfile(userId: UserId, profile: Profile): Profile {
            {
                id = userId;
                firstName = profile.firstName;
                lastName = profile.lastName;
                contactNo = profile.contactNo;
                title = profile.title;
                licenseNo = profile.licenseNo;
                speacialities = profile.speacialities;
                company = profile.company;
                experience = profile.experience;
                education = profile.education;
                imgUrl = profile.imgUrl;
                languagesKnown = profile.languagesKnown;
                userRequests = profile.userRequests;
                email = profile.email;
                country = profile.country;
                userType = profile.userType;
            }
        };
    };
}