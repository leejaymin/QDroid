.class public Lcom/feelingk/lguiab/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static StringReplace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 10
    const-string v0, "[^\uac00-\ud7a3xfe0-9a-zA-Z\\s]"

    .line 11
    .local v0, match:Ljava/lang/String;
    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static chageIpToDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "strDomain"

    .prologue
    .line 19
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 20
    .local v0, addr:Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 23
    .local v3, ipAddr:[B
    const-string v4, ""

    .line 24
    .local v4, ipAddrStr:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-lt v2, v5, :cond_0

    .line 34
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #i:I
    .end local v3           #ipAddr:[B
    .end local v4           #ipAddrStr:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 25
    .restart local v0       #addr:Ljava/net/InetAddress;
    .restart local v2       #i:I
    .restart local v3       #ipAddr:[B
    .restart local v4       #ipAddrStr:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v6, v3, v2

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #i:I
    .end local v3           #ipAddr:[B
    .end local v4           #ipAddrStr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 32
    .local v1, e:Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 34
    const/4 v4, 0x0

    goto :goto_1
.end method
