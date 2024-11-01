//     *** Datum Custom Types ***


import aiken/stdlib/crypto.{VerificationKeyHash}
// Import statements for the required modules


pub type my_datum {
  owner: VerificationKeyHash,
}
// Defines Datum type, containing the owner's public key hash