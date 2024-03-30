
CREATE TABLE BloodBanks (
    bank_id INT PRIMARY KEY,
    bank_name VARCHAR(100),
    location VARCHAR(200),
    contact_number VARCHAR(20)
);

CREATE TABLE Donors (
    donor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth DATE,
    blood_type VARCHAR(5),
    contact_number VARCHAR(20),
    email VARCHAR(100),
    last_donation_date DATE,
    can_donate_again BOOLEAN,
    preferred_bank_id INT,
    FOREIGN KEY (preferred_bank_id) REFERENCES BloodBanks(bank_id)
);


CREATE TABLE Donations (
    donation_id INT PRIMARY KEY,
    donor_id INT,
    bank_id INT,
    donation_date DATE,
    donation_type VARCHAR(50),
    FOREIGN KEY (donor_id) REFERENCES Donors(donor_id),
    FOREIGN KEY (bank_id) REFERENCES BloodBanks(bank_id)
);


INSERT INTO BloodBanks (bank_id, bank_name, location, contact_number)
VALUES
    (1, 'City Blood Bank', '123 Main Street, City', '123-456-7890'),
    (2, 'Delhi  BLood Bank ', '456 main Street, Town', '987-654-3210'),
    (3, 'Mumbai Blood Bank', '12 Main Street, City', '123-46-7890'),
    (4, ' Asia  BLood Bank ', '46 main Street, Town', '987-654-3210'),
    (5, 'PritamPura Blood Bank', '676 Main Street, City', '123-456-7890'),
    (6, ' Laxmi Nagar  BLood Bank ', '41412 main Street, Town', '987-654-3210');


INSERT INTO Donors (donor_id, first_name, last_name, gender, date_of_birth, blood_type, contact_number, email, last_donation_date, can_donate_again, preferred_bank_id)
VALUES
    (1, 'Akshit', 'Gupta', 'Male', '2005--8-16', 'A+', '8076019869', 'akshit@gmail.com', '2023-07-01', TRUE, 1),
    (2, 'Kanishka', 'Gupta', 'Female', '2004-02-03', 'B', '9310697993', 'kanishka@gmail.com', '2023-01-10', TRUE, 2),
    (3, 'Rishi', 'Seth', 'Male', '2004-04-22', 'A+', '7011358737', 'Rishi@gmail.com', '2023-01-01', TRUE, 3),
    (4, 'Kanika', 'Gupta', 'Female', '2004-02-03', 'O', '9310697993', 'kanika@gmail.com', '2023-01-10', TRUE, 4), 
    (5, 'Sarthak', 'Shrivastava', 'Male', '2003-05-06', 'AB+', '999923567', 'Sarthak@gmail.com', '2022-01-01', TRUE, 5),
    (6, 'Tisha', 'Gupta', 'Female', '2004-02-02', 'O', '937278161', 'Tishaa@gmail.com', '2022-01-10', TRUE, 6);   

INSERT INTO Donations (donation_id, donor_id, bank_id, donation_date, donation_type)
VALUES
    (1, 1, 1, '2023-07-01', 'Whole Blood'),
    (2, 2, 2, '2023-01-10', 'Platelets'),
     (3, 3, 3, '2023-01-01', 'Red Blood'),
     (4, 4, 4, '2023-01-10', 'White Blood'),
     (5, 5, 5, '2022-01-01', 'Red Blood'),
    (6, 6, 6, '2022-01-10', 'White Blood');


    SELECT * FROM BloodBanks ;
