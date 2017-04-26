// Création du serveur
instance_create(x, y, obj_server);

// Creation du client local au serveur
global.IPAddress = "127.0.0.1"
global.port = obj_server.port;
instance_create(x, y, obj_client);

