
CREATE TABLE Trainer_Info(
Trainer_Id VARCHAR(20) PRIMARY KEY,
Salutation VARCHAR(7),
Trainer_Name VARCHAR(30),
Trainer_Location VARCHAR(30),
Trainer_Track VARCHAR(15),
Trainer_Qualification VARCHAR(100),
Trainer_Experience INTEGER,
Trainer_Email VARCHAR(100),
Trainer_Password VARCHAR(20)
);

CREATE TABLE Batch_Info(
Batch_Id VARCHAR(20) PRIMARY KEY,
Batch_Owner VARCHAR(30),
Batch_BU_Name VARCHAR(30)
);

CREATE TABLE Module_Info(
Module_Id VARCHAR(20) PRIMARY KEY,
Moudle_Name VARCHAR(40),
Module_Duration INTEGER
);

CREATE TABLE Associate_Info(
Associate_ID VARCHAR(20) PRIMARY KEY,
Salutation VARCHAR(7),
Associate_Name VARCHAR(30),
Associate_Location VARCHAR(30),
Associate_Track VARCHAR(15),
Associate_Qualification VARCHAR(200),
Associate_Email VARCHAR(100),
Associate_Password VARCHAR(20)
);

CREATE TABLE Questions(
Question_Id VARCHAR(20) PRIMARY KEY,
Module_Id VARCHAR(20),
Question_Text VARCHAR(900)
);


CREATE TABLE Associate_Status(
Associate_Id VARCHAR(20),
Module_Id VARCHAR(20),
Start_Date VARCHAR(20),
End_Date VARCHAR(20),
AFeedbackGiven VARCHAR(20),
TFeedbackGiven VARCHAR(20),
PRIMARY KEY(Associate_Id,Module_Id),
FOREIGN KEY(Associate_Id) REFERENCES Associate_Info(Associate_Id),
FOREIGN KEY(Module_Id) REFERENCES Module_Info(Module_Id)
	);


CREATE TABLE Trainer_Feedback(
Trainer_Id VARCHAR(20),
Question_Id VARCHAR(20),
Batch_Id VARCHAR(20),
Module_Id VARCHAR(20),
Trainer_Rating INTEGER,
PRIMARY KEY(Trainer_Id,Question_Id),
FOREIGN KEY(Trainer_Id) REFERENCES Trainer_Info(Trainer_Id),
FOREIGN KEY(Question_Id) REFERENCES Questions(Question_Id),
FOREIGN KEY(Batch_Id) REFERENCES Batch_Info(Batch_Id),
FOREIGN KEY(Module_Id) REFERENCES Module_info(Module_Id)
	);


CREATE TABLE Associate_Feedback(
	Associate_Id VARCHAR(20),
	Question_Id VARCHAR(20),
	Module_Id VARCHAR(20),
	Associate_Rating INTEGER,
PRIMARY KEY(Associate_Id,Question_Id),
FOREIGN KEY(Associate_Id) REFERENCES Associate_Info(Associate_Id),
FOREIGN KEY(Question_Id) REFERENCES Questions(Question_Id),
FOREIGN KEY(Module_Id)	REFERENCES Module_Info(Module_Id)
);


CREATE TABLE Login_Details(
User_Id VARCHAR(20) PRIMARY KEY,
User_Password VARCHAR(20)
);

