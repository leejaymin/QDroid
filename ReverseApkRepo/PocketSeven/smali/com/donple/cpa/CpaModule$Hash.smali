.class Lcom/donple/cpa/CpaModule$Hash;
.super Ljava/lang/Object;
.source "CpaModule.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Hash"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2cc1e8b340e4e72cL


# instance fields
.field private hstr:Ljava/lang/String;

.field private mid:Ljava/lang/String;

.field private proxy:I

.field private rdate:Ljava/lang/String;

.field final synthetic this$0:Lcom/donple/cpa/CpaModule;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/donple/cpa/CpaModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter "masterKey"
    .parameter "uid"
    .parameter "mid"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2095
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$Hash;->this$0:Lcom/donple/cpa/CpaModule;

    .line 2094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2096
    invoke-virtual {p0}, Lcom/donple/cpa/CpaModule$Hash;->getEncDays()Ljava/lang/String;

    move-result-object v0

    .line 2097
    .local v0, encDays:Ljava/lang/String;
    invoke-direct {p0, p2, v0, p4, p3}, Lcom/donple/cpa/CpaModule$Hash;->makeCypher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2099
    .local v1, hashCypher:Ljava/lang/String;
    iput-object p3, p0, Lcom/donple/cpa/CpaModule$Hash;->uid:Ljava/lang/String;

    .line 2100
    iput-object p4, p0, Lcom/donple/cpa/CpaModule$Hash;->mid:Ljava/lang/String;

    .line 2101
    iput p5, p0, Lcom/donple/cpa/CpaModule$Hash;->proxy:I

    .line 2102
    iput-object v0, p0, Lcom/donple/cpa/CpaModule$Hash;->rdate:Ljava/lang/String;

    .line 2103
    iput-object v1, p0, Lcom/donple/cpa/CpaModule$Hash;->hstr:Ljava/lang/String;

    .line 2104
    return-void
.end method

.method private computeHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "input"

    .prologue
    .line 2136
    const/4 v4, 0x0

    .line 2139
    .local v4, ret:Ljava/lang/String;
    :try_start_0
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 2140
    .local v3, md:Ljava/security/MessageDigest;
    const-string v6, "US-ASCII"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 2142
    .local v1, bs:[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2143
    .local v5, sb:Ljava/lang/StringBuffer;
    array-length v7, v1

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_0

    .line 2152
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2157
    .end local v1           #bs:[B
    .end local v3           #md:Ljava/security/MessageDigest;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    :goto_1
    return-object v4

    .line 2143
    .restart local v1       #bs:[B
    .restart local v3       #md:Ljava/security/MessageDigest;
    .restart local v5       #sb:Ljava/lang/StringBuffer;
    :cond_0
    aget-byte v0, v1, v6

    .line 2145
    .local v0, b:B
    and-int/lit16 v8, v0, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 2146
    .local v2, bt:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 2148
    const-string v8, "0"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2150
    :cond_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2143
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2154
    .end local v0           #b:B
    .end local v1           #bs:[B
    .end local v2           #bt:Ljava/lang/String;
    .end local v3           #md:Ljava/security/MessageDigest;
    .end local v5           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private makeCypher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "allianceKey"
    .parameter "rdate"
    .parameter "mid"
    .parameter "uid"

    .prologue
    .line 2116
    const/4 v4, 0x2

    const/16 v5, 0x17

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 2118
    .local v2, tKey:[C
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2119
    .local v1, sb:Ljava/lang/StringBuffer;
    array-length v4, v2

    add-int/lit8 v3, v4, -0x1

    .line 2120
    .local v3, tKeyLength:I
    move v0, v3

    .local v0, i:I
    :goto_0
    if-gtz v0, :cond_0

    .line 2131
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/donple/cpa/CpaModule$Hash;->computeHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2122
    :cond_0
    array-length v4, v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 2124
    aget-char v4, v2, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2120
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2128
    :cond_1
    aget-char v4, v2, v0

    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public getEncDays()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2108
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmm"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2109
    .local v2, sdfHHmmss:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2110
    .local v0, lToday:J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 2111
    .local v3, today:Ljava/util/Date;
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getHstr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$Hash;->hstr:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$Hash;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public getProxy()I
    .locals 1

    .prologue
    .line 2182
    iget v0, p0, Lcom/donple/cpa/CpaModule$Hash;->proxy:I

    return v0
.end method

.method public getRdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$Hash;->rdate:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$Hash;->uid:Ljava/lang/String;

    return-object v0
.end method
