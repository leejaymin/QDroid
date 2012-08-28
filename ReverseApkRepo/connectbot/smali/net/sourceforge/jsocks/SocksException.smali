.class public Lnet/sourceforge/jsocks/SocksException;
.super Ljava/io/IOException;
.source "SocksException.java"


# static fields
.field static final localErrorMessage:[Ljava/lang/String;

.field static final serverReplyMessage:[Ljava/lang/String;


# instance fields
.field public errCode:I

.field errString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 58
    const-string v1, "Succeeded"

    aput-object v1, v0, v3

    .line 59
    const-string v1, "General SOCKS server failure"

    aput-object v1, v0, v4

    .line 60
    const-string v1, "Connection not allowed by ruleset"

    aput-object v1, v0, v5

    .line 61
    const-string v1, "Network unreachable"

    aput-object v1, v0, v6

    .line 62
    const-string v1, "Host unreachable"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 63
    const-string v2, "Connection refused"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 64
    const-string v2, "TTL expired"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 65
    const-string v2, "Command not supported"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 66
    const-string v2, "Address type not supported"

    aput-object v2, v0, v1

    .line 57
    sput-object v0, Lnet/sourceforge/jsocks/SocksException;->serverReplyMessage:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 69
    const-string v1, "SOCKS server not specified"

    aput-object v1, v0, v3

    .line 70
    const-string v1, "Unable to contact SOCKS server"

    aput-object v1, v0, v4

    .line 71
    const-string v1, "IO error"

    aput-object v1, v0, v5

    .line 72
    const-string v1, "None of Authentication methods are supported"

    aput-object v1, v0, v6

    .line 73
    const-string v1, "Authentication failed"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 74
    const-string v2, "General SOCKS fault"

    aput-object v2, v0, v1

    .line 68
    sput-object v0, Lnet/sourceforge/jsocks/SocksException;->localErrorMessage:[Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "errCode"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 17
    iput p1, p0, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    .line 18
    shr-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_1

    .line 20
    sget-object v0, Lnet/sourceforge/jsocks/SocksException;->serverReplyMessage:[Ljava/lang/String;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 21
    sget-object v0, Lnet/sourceforge/jsocks/SocksException;->serverReplyMessage:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 20
    :goto_0
    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    .line 30
    :goto_1
    return-void

    .line 22
    :cond_0
    const-string v0, "Unknown error message"

    goto :goto_0

    .line 25
    :cond_1
    shr-int/lit8 v0, p1, 0x10

    add-int/lit8 p1, v0, -0x1

    .line 26
    sget-object v0, Lnet/sourceforge/jsocks/SocksException;->localErrorMessage:[Ljava/lang/String;

    array-length v0, v0

    if-gt p1, v0, :cond_2

    .line 27
    sget-object v0, Lnet/sourceforge/jsocks/SocksException;->localErrorMessage:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 26
    :goto_2
    iput-object v0, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    goto :goto_1

    .line 28
    :cond_2
    const-string v0, "Unknown error message"

    goto :goto_2
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errString"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 37
    iput p1, p0, Lnet/sourceforge/jsocks/SocksException;->errCode:I

    .line 38
    iput-object p2, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnet/sourceforge/jsocks/SocksException;->errString:Ljava/lang/String;

    return-object v0
.end method
