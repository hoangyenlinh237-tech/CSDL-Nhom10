CREATE TABLE Service_Permission (

    employeeID INT,
    serviceID INT,
    grantDate DATE NOT NULL,

    CONSTRAINT PK_ServicePermission
        PRIMARY KEY (employeeID, serviceID),

    CONSTRAINT FK_SP_Employee
        FOREIGN KEY (employeeID)
        REFERENCES Employee(employeeID),

    CONSTRAINT FK_SP_Service
        FOREIGN KEY (serviceID)
        REFERENCES Service(serviceID)
);
