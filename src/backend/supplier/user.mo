import Array "mo:base/Array";
import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";
import TrieMap "mo:base/TrieMap";
import AssocList "mo:base/AssocList";
import List "mo:base/List";
import Text "mo:base/Text";

import Types "types";
import Utils "utils";


module {
    type UserId = Types.UserId;
    type UserProfile = Types.UserProfile;
    type SubProfile = Types.SubProfile;

    public class User() {

        func isEq(x: UserId, y: UserId): Bool { x == y };

        let userProfileMap = TrieMap.TrieMap<UserId, UserProfile>(isEq, Principal.hash);
        type subProfileMaps = AssocList.AssocList<UserId, SubProfile>;
        var subProfile: subProfileMaps = List.nil<(UserId, SubProfile)>();

        var sp : [SubProfile] = [];

        public func create(user: UserId, profile: UserProfile): ()  {
            userProfileMap.put(user, Utils.makeProfile(user, profile));
        };

        public func createSubProfile(userId: UserId, profile: SubProfile): () {
            let p = Utils.makeSubProfile(userId, profile);

            subProfile := AssocList.replace<UserId, SubProfile>(
                subProfile,
                userId,
                isEq,
                ?p
                ).0;
        };

        public func getUser(userId: UserId): ?UserProfile {
            return userProfileMap.get(userId);
        };

        public func findAllSubProfiles(userId: UserId): async ?SubProfile {
            return AssocList.find<UserId, SubProfile>(subProfile, userId, isEq);
        };
    }
}