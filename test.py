# import smtplib
#
# from email.mime.multipart import MIMEMultipart
# from email.mime.text import MIMEText
# from email.mime.image import MIMEImage
#
# addr_from = "Savchuk743@gmail.com"
# addr_to   = "Savchuk017@gmail.com"
# password  = "mqmzjavqreomrjxy"
#
# msg = MIMEMultipart()
# msg['From']    = addr_from
# msg['To']      = addr_to
# msg['Subject'] = 'Тема сообщения'
#
# body = "Привет"
# msg.attach(MIMEText(body, 'plain'))
#
# server = smtplib.SMTP('smtp-server', 587)
# server.set_debuglevel(True)
# server.starttls()
# server.login(addr_from, password)
# server.send_message(msg)
# server.quit()

import psycopg2
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText



def add_review_to_database(user_id, text, rating, publication_date):
    # Установка соединения с базой данных
    conn = psycopg2.connect(
        host="localhost",
        database="postgres",
        user="Director",
        password="23052005"
    )

    # Создание курсора
    cursor = conn.cursor()

    # SQL-запрос для вставки данных в таблицу Reviews
    insert_query = """
    INSERT INTO Reviews (user_id, text, rating, publication_date)
    VALUES (%s, %s, %s, %s)
    """

    # Параметры для вставки
    record_to_insert = (user_id, text, rating, publication_date)

    try:
        # Выполнение SQL-запроса
        cursor.execute(insert_query, record_to_insert)

        # Подтверждение изменений в базе данных
        conn.commit()

        # Закрытие курсора и соединения
        cursor.close()
        conn.close()

        return True  # Возвращаем True в случае успешного добавления
    except (Exception, psycopg2.Error) as error:
        print("Ошибка при добавлении строки в таблицу Reviews:", error)
        conn.rollback()  # Откат изменений в случае ошибки
        cursor.close()
        conn.close()

        return False  # Возвращаем False в случае ошибки


# Заполните значениями для добавления в таблицу Reviews
user_id = 1
text = "Some review text"
rating = 4
publication_date = "2024-05-08"

# Добавление строки в таблицу
if add_review_to_database(user_id, text, rating, publication_date):
    # Если добавление прошло успешно, отправляем письмо

    message = MIMEMultipart()
    message["To"] = 'To line here.'
    message["From"] = 'From line here.'
    message["Subject"] = 'Subject line here.'

    title = '<b> Title line here. </b>'
    messageText = MIMEText('''Добавлен новый отзыв''', 'html')
    message.attach(messageText)

    email = 'Savchuk743@gmail.com'
    password = 'mqmzjavqreomrjxy'

    server = smtplib.SMTP('smtp.gmail.com:587')
    server.ehlo('Gmail')
    server.starttls()
    server.login(email, password)
    fromaddr = 'Savchuk743@gmail.com'
    toaddrs = 'Savchuk017@gmail.com'
    server.sendmail(fromaddr, toaddrs, message.as_string())

    server.quit()
else:
    print("Не удалось добавить отзыв в базу данных.")