.class public abstract Ljavax/mail/Authenticator;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/net/InetAddress;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/Authenticator;->a:Ljava/net/InetAddress;

    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/Authenticator;->b:I

    iput-object v1, p0, Ljavax/mail/Authenticator;->c:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/Authenticator;->d:Ljava/lang/String;

    iput-object v1, p0, Ljavax/mail/Authenticator;->e:Ljava/lang/String;

    iput-object p1, p0, Ljavax/mail/Authenticator;->a:Ljava/net/InetAddress;

    iput p2, p0, Ljavax/mail/Authenticator;->b:I

    iput-object p3, p0, Ljavax/mail/Authenticator;->c:Ljava/lang/String;

    iput-object p4, p0, Ljavax/mail/Authenticator;->d:Ljava/lang/String;

    iput-object p5, p0, Ljavax/mail/Authenticator;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljavax/mail/Authenticator;->getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;

    move-result-object v0

    return-object v0
.end method

.method protected final getDefaultUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/mail/Authenticator;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getRequestingPort()I
    .locals 1

    iget v0, p0, Ljavax/mail/Authenticator;->b:I

    return v0
.end method

.method protected final getRequestingPrompt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/mail/Authenticator;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/mail/Authenticator;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRequestingSite()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ljavax/mail/Authenticator;->a:Ljava/net/InetAddress;

    return-object v0
.end method
