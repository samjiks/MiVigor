import Types "types";
import Database "database";
import Debug "mo:base/Debug";
import Int "mo:base/Int";
import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";


actor  {
    type Profile = Types.Profile;
    type UserId = Types.UserId;
    public type DoctorId = Nat;
    public type VolunteerId = Nat;
    public type SupplierId = Nat;
    
    func isEq(x: UserId, y: UserId): Bool { x == y };

    private stable var hashMap = HashMap.HashMap<UserId, Profile>(1, isEq, Principal.hash);

    var doctorNext : DoctorId = 100000;
    var volunteerNext : VolunteerId = 200000;
    var supplierNext : SupplierId = 300000;

    var db: Database.Database = Database.Database();

    public shared(msg) func addUserProfile(profile: Profile) : async () {
        Debug.print(profile.firstName);
        Debug.print(profile.lastName);
        Debug.print(Principal.toText(msg.caller));
        db.create(hashMap, msg.caller, profile);
    };








};
