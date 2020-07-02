
import Foundation
import CoreData
import QMobileAPI
//import QMobileDataStore

extension NSManagedObject {
    public func has(key: String) -> Bool {
        return true
    }
}


/// Error of `DataSync` process.
public enum DataSyncError: Swift.Error {
    /// Data sync object is no more retained in memory
    case retain

    /// Sync delegate request stop of process before starting it
    case delegateRequestStop

    /// Cancel requested
    case cancel

    /// Data store is not ready to perform operation
    case dataStoreNotReady

    /// Data store error, for instance cannot load it
    //case dataStoreError(DataStoreError)

    /// An error occurs when synchronizing
    case apiError(APIError)

    /// Loading tables failed, check your tables structures
    case noTables

    /// Missing tables on remote server to synchronize. App not up to date?
    case missingRemoteTables([Table])

    /// Missing tables attributes on remote server to synchronize. App not up to date?
    case missingRemoteTableAttributes([Table: [Attribute]])

    /// Error with file data cache
    case dataCache(Error)

    /// Unknown error
    case underlying(Error)

}

public class DataSync {
    public typealias SyncResult = Result<Void, DataSyncError>
}
