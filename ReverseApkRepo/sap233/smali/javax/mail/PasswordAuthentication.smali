.class public final Ljavax/mail/PasswordAuthentication;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/mail/PasswordAuthentication;->a:Ljava/lang/String;

    iput-object p2, p0, Ljavax/mail/PasswordAuthentication;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/mail/PasswordAuthentication;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/mail/PasswordAuthentication;->a:Ljava/lang/String;

    return-object v0
.end method
