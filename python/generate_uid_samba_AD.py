import subprocess
import os


def getAllUsers() -> list:
    result_process = subprocess.run(
        ['samba-tool', 'user', 'list'], stdout=subprocess.PIPE)
    result_string = result_process.stdout.decode('utf-8')
    result_list = result_string.split('\n')
    return result_list


def getBiggerID(user_list: list[str]) -> int:
    id_list = []
    for item in user_list:
        if len(item) > 3:
            result_process = subprocess.run(
                ['samba-tool', 'user', 'show', item], stdout=subprocess.PIPE)
            result_string = result_process.stdout.decode('utf-8')
            result_list = result_string.split('\n')

            try:
                for new_data in result_list:
                    if new_data.startswith("uidNumber"):
                        new_data = new_data.removeprefix('uidNumber: ')
                        id_list.append(int(new_data))
            except:
                print("User: " + item + " has no uidNumber attribute")
    return max(id_list)


def generateNewID():
    data = getAllUsers()
    max_id = getBiggerID(data)

    return max_id + 1


if __name__ == '__main__':
    print("O novo ID do usuário será: " + str(generateNewID()))
