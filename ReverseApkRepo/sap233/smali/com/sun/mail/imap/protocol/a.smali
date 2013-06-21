.class final Lcom/sun/mail/imap/protocol/a;
.super Ljavax/mail/internet/InternetAddress;


# instance fields
.field private a:Z

.field private b:[Ljavax/mail/internet/InternetAddress;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 5

    const/16 v4, 0x29

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/a;->a:Z

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    const-string v1, "ADDRESS parse error"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/a;->encodedPersonal:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    if-eq v2, v4, :cond_1

    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    const-string v1, "ADDRESS parse error"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez v1, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/a;->a:Z

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/a;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :goto_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v2

    if-ne v2, v4, :cond_4

    :cond_3
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/a;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/mail/imap/protocol/a;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/a;->b:[Ljavax/mail/internet/InternetAddress;

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/a;->b:[Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/sun/mail/imap/protocol/a;

    invoke-direct {v2, p1}, Lcom/sun/mail/imap/protocol/a;-><init>(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/a;->a()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iput-object v1, p0, Lcom/sun/mail/imap/protocol/a;->address:Ljava/lang/String;

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/a;->address:Ljava/lang/String;

    goto :goto_0

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/a;->address:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/a;->b:[Ljavax/mail/internet/InternetAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/a;->b:[Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, [Ljavax/mail/internet/InternetAddress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/internet/InternetAddress;

    goto :goto_0
.end method

.method public final isGroup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/a;->a:Z

    return v0
.end method
