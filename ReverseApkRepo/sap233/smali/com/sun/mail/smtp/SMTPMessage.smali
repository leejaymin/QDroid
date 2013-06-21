.class public Lcom/sun/mail/smtp/SMTPMessage;
.super Ljavax/mail/internet/MimeMessage;


# static fields
.field public static final NOTIFY_DELAY:I = 0x4

.field public static final NOTIFY_FAILURE:I = 0x2

.field public static final NOTIFY_NEVER:I = -0x1

.field public static final NOTIFY_SUCCESS:I = 0x1

.field public static final RETURN_FULL:I = 0x1

.field public static final RETURN_HDRS:I = 0x2

.field private static final a:[Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "FULL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HDRS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/mail/smtp/SMTPMessage;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->d:I

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->e:I

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->f:Z

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->g:Z

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;)V

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->d:I

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->e:I

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->f:Z

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->g:Z

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/internet/MimeMessage;)V

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->d:I

    iput v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->e:I

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->f:Z

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->g:Z

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2c

    iget v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "NEVER"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    const-string v1, "FAILURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    iget v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->d:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    const-string v1, "DELAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final b()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sun/mail/smtp/SMTPMessage;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/sun/mail/smtp/SMTPMessage;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getAllow8bitMIME()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->g:Z

    return v0
.end method

.method public getEnvelopeFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMailExtension()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyOptions()I
    .locals 1

    iget v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->d:I

    return v0
.end method

.method public getReturnOption()I
    .locals 1

    iget v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->e:I

    return v0
.end method

.method public getSendPartial()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->f:Z

    return v0
.end method

.method public getSubmitter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPMessage;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setAllow8bitMIME(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->g:Z

    return-void
.end method

.method public setEnvelopeFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->c:Ljava/lang/String;

    return-void
.end method

.method public setMailExtension(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->i:Ljava/lang/String;

    return-void
.end method

.method public setNotifyOptions(I)V
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad return option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->d:I

    return-void
.end method

.method public setReturnOption(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad return option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->e:I

    return-void
.end method

.method public setSendPartial(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->f:Z

    return-void
.end method

.method public setSubmitter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPMessage;->h:Ljava/lang/String;

    return-void
.end method
