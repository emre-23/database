-- sender alanı içindeki phoneNumber'a girmek istersek
CREATE INDEX idx_planning_cargo_tracking_by_sender_phone_number ON `cargo-tracking`(`sender`.`phoneNumber`) WITH { "num_replica":1 }