use aiken/crypto.{VerificationKeyHash}
use aiken/primitive/string
// Import necessary types from Cardano libraries
use cardano/transaction.{Transaction}

// Define Datum type, containing the owner's public key hash
pub type Datum {
  owner: VerificationKeyHash,
}

// Define Redeemer type, containing a message
pub type Redeemer {
  msg: ByteArray,
}
