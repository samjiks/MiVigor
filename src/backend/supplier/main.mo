import Bool "mo:base/Bool";
import Debug "mo:base/Debug";
import Int "mo:base/Int";
import Iter "mo:base/Iter";
import List "mo:base/List";
import Principal "mo:base/Principal";
import Types "types";
import User "user";


actor  {
    type UserProfile = Types.UserProfile;
    type SubProfile = Types.SubProfile;

    type UserId = Types.UserId;

    var user: User.User = User.User();

    public shared(msg) func addUserProfile(profile: UserProfile) : async (){
        Debug.print(profile.firstName);
        Debug.print(profile.lastName);
        Debug.print(Principal.toText(msg.caller));
        user.create(msg.caller, profile);
    };

    public shared(msg) func addUserSubProfile(profile: SubProfile) : async (){
        Debug.print(profile.firstName);
        Debug.print(profile.lastName);
        Debug.print(Principal.toText(msg.caller));
        user.createSubProfile(msg.caller, profile);
    };

    public query(msg) func getAllUserSubProfile(userId: UserId) : async [SubProfile] {
        var updated : [SubProfile] = [];
        for (s : SubProfile in user.findAllSubProfiles(userId)) {
            updated := Array.append<SubProfile>(updated, [s]);
        };
        updated;
    };

    public func healthcheck(): async Bool { true };

    public shared query(msg) func getOwnId(): async UserId { msg.caller }

};
