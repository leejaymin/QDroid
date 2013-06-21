.class public final Lcom/thinkyeah/common/f;
.super Ljavax/mail/Authenticator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljavax/mail/Session;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    iput-object p1, p0, Lcom/thinkyeah/common/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/thinkyeah/common/f;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "mail.transport.protocol"

    const-string v2, "smtp"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "mail.host"

    const-string v2, "smtp.gmail.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "mail.smtp.auth"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.port"

    const-string v2, "465"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.socketFactory.port"

    const-string v2, "465"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.socketFactory.class"

    const-string v2, "javax.net.ssl.SSLSocketFactory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.socketFactory.fallback"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.quitwait"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0, p0}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/common/f;->c:Ljavax/mail/Session;

    iget-object v0, p0, Lcom/thinkyeah/common/f;->c:Ljavax/mail/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->setDebug(Z)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljavax/mail/internet/MimeMessage;

    iget-object v1, p0, Lcom/thinkyeah/common/f;->c:Ljavax/mail/Session;

    invoke-direct {v0, v1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    new-instance v1, Ljavax/activation/DataHandler;

    new-instance v2, Lcom/thinkyeah/common/g;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "text/plain"

    invoke-direct {v2, p0, v3, v4}, Lcom/thinkyeah/common/g;-><init>(Lcom/thinkyeah/common/f;[BLjava/lang/String;)V

    invoke-direct {v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v2, p3}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeMessage;->setSender(Ljavax/mail/Address;)V

    invoke-virtual {v0, p1}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V

    const/16 v1, 0x2c

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-static {p4}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    const/4 v2, 0x0

    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    :cond_0
    :goto_1
    invoke-static {v0}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    new-instance v2, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v2, p4}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    new-instance v2, Ljavax/mail/internet/InternetAddress;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected final getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    new-instance v0, Ljavax/mail/PasswordAuthentication;

    iget-object v1, p0, Lcom/thinkyeah/common/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/thinkyeah/common/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
