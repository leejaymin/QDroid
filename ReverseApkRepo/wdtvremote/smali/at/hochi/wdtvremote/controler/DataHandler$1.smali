.class Lat/hochi/wdtvremote/controler/DataHandler$1;
.super Ljava/net/Authenticator;
.source "DataHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lat/hochi/wdtvremote/controler/DataHandler;->sendRequest(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 3

    .prologue
    const-string v2, "wdlxtv"

    .line 44
    new-instance v0, Ljava/net/PasswordAuthentication;

    const-string v1, "wdlxtv"

    .line 45
    const-string v1, "wdlxtv"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 44
    invoke-direct {v0, v2, v1}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    return-object v0
.end method
