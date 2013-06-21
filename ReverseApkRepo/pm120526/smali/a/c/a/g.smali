.class final La/c/a/g;
.super Ljava/net/Authenticator;


# instance fields
.field private final a:La/c/a/f;


# direct methods
.method constructor <init>(La/c/a/f;)V
    .locals 0

    iput-object p1, p0, La/c/a/g;->a:La/c/a/f;

    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 3

    invoke-virtual {p0}, La/c/a/g;->getRequestorType()Ljava/net/Authenticator$RequestorType;

    move-result-object v0

    sget-object v1, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    invoke-virtual {v0, v1}, Ljava/net/Authenticator$RequestorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/PasswordAuthentication;

    iget-object v1, p0, La/c/a/g;->a:La/c/a/f;

    invoke-static {v1}, La/c/a/f;->a(La/c/a/f;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/c/a/g;->a:La/c/a/f;

    invoke-static {v2}, La/c/a/f;->b(La/c/a/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
