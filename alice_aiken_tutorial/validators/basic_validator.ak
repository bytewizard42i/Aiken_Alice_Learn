// Import the Transaction type from the standard Cardano library
use cardano/transaction.{Transaction}

// Define the validator function
validator simple_check {
  // The function takes four parameters: datum (_d), redeemer (_r), output (_o), and transaction context (tx)
  spend(_d: Data, _r: Data, _o: Data, tx: Transaction) {
    True
    // Just a placeholder returning `True`
  }

  else(_) {
    fail
  }
}
