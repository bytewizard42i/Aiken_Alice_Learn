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

// Validator function that checks if the redeemer message is "Hello, Aiken!"
validator simple_check {
  spend(datum: Option<Datum>, redeemer: Redeemer, _o: Data, tx: Transaction) {
    // Ensure datum is provided and matches expected structure
    expect Some(Datum { owner }) = datum

    // Check that the redeemer message matches "Hello, Aiken!"
    let valid_message = redeemer.msg == "Hello, Aiken!"

    // Return true if the message matches
    valid_message
  }

  else(_) {
    fail
  }
}
