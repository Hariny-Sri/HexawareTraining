CREATE DATABASE SmartHomeEnergy;
USE SmartHomeEnergy;

CREATE TABLE rooms(
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_name VARCHAR(50)
);

CREATE TABLE devices(
    device_id INT PRIMARY KEY AUTO_INCREMENT,
    device_name VARCHAR(100),
    device_type VARCHAR(50),
    room_id INT,
    status VARCHAR(20),
    FOREIGN KEY(room_id) REFERENCES rooms(room_id)
);

CREATE TABLE energy_logs(
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    device_id INT,
    energy_kwh DECIMAL(10,2),
    log_time DATETIME,
    FOREIGN KEY(device_id) REFERENCES devices(device_id)
);


INSERT INTO rooms(room_name)
VALUES
('Living Room'),
('Kitchen'),
('Bedroom');

INSERT INTO devices(device_name,device_type,room_id,status)
VALUES
('Smart TV','Electronics',1,'ON'),
('Refrigerator','Appliance',2,'ON'),
('Air Conditioner','Appliance',3,'OFF');

INSERT INTO energy_logs(device_id,energy_kwh,log_time)
VALUES
(1,2.5,'2026-06-01 10:00:00'),
(2,4.0,'2026-06-01 11:00:00'),
(3,6.5,'2026-06-01 12:00:00');

INSERT INTO devices(device_name,device_type,room_id,status)
VALUES('Washing Machine','Appliance',2,'OFF');

SELECT * FROM devices;

UPDATE devices
SET status='ON'
WHERE device_id=4;

DELETE FROM devices
WHERE device_id=4;

DELIMITER $$

CREATE PROCEDURE RoomEnergyUsage(
    IN usage_date DATE
)
BEGIN
    SELECT
        r.room_name,
        SUM(e.energy_kwh) AS total_energy
    FROM energy_logs e
    JOIN devices d
        ON e.device_id=d.device_id
    JOIN rooms r
        ON d.room_id=r.room_id
    WHERE DATE(e.log_time)=usage_date
    GROUP BY r.room_name;
END$$

DELIMITER ;
CALL RoomEnergyUsage('2026-06-01');