.class public Lnet/robotmedia/billing/utils/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final TAG:Ljava/lang/String;

.field private static _obfuscator:Lnet/robotmedia/billing/utils/AESObfuscator;

.field private static knownNonces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lnet/robotmedia/billing/utils/Security;->knownNonces:Ljava/util/HashSet;

    .line 30
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lnet/robotmedia/billing/utils/Security;->RANDOM:Ljava/security/SecureRandom;

    .line 31
    const-class v0, Lnet/robotmedia/billing/utils/Security;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/robotmedia/billing/utils/Security;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lnet/robotmedia/billing/utils/Security;->_obfuscator:Lnet/robotmedia/billing/utils/AESObfuscator;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateNonce()J
    .locals 4

    .prologue
    .line 35
    sget-object v2, Lnet/robotmedia/billing/utils/Security;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 36
    .local v0, nonce:J
    sget-object v2, Lnet/robotmedia/billing/utils/Security;->knownNonces:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    return-wide v0
.end method

.method private static getObfuscator(Landroid/content/Context;[B)Lnet/robotmedia/billing/utils/AESObfuscator;
    .locals 5
    .parameter "context"
    .parameter "salt"

    .prologue
    .line 56
    sget-object v3, Lnet/robotmedia/billing/utils/Security;->_obfuscator:Lnet/robotmedia/billing/utils/AESObfuscator;

    if-nez v3, :cond_0

    .line 57
    invoke-static {p0}, Lnet/robotmedia/billing/utils/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, installationId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, deviceId:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, password:Ljava/lang/String;
    new-instance v3, Lnet/robotmedia/billing/utils/AESObfuscator;

    invoke-direct {v3, p1, v2}, Lnet/robotmedia/billing/utils/AESObfuscator;-><init>([BLjava/lang/String;)V

    sput-object v3, Lnet/robotmedia/billing/utils/Security;->_obfuscator:Lnet/robotmedia/billing/utils/AESObfuscator;

    .line 62
    .end local v0           #deviceId:Ljava/lang/String;
    .end local v1           #installationId:Ljava/lang/String;
    .end local v2           #password:Ljava/lang/String;
    :cond_0
    sget-object v3, Lnet/robotmedia/billing/utils/Security;->_obfuscator:Lnet/robotmedia/billing/utils/AESObfuscator;

    return-object v3
.end method

.method public static isNonceKnown(J)Z
    .locals 2
    .parameter "nonce"

    .prologue
    .line 41
    sget-object v0, Lnet/robotmedia/billing/utils/Security;->knownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static obfuscate(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "salt"
    .parameter "original"

    .prologue
    .line 49
    invoke-static {p0, p1}, Lnet/robotmedia/billing/utils/Security;->getObfuscator(Landroid/content/Context;[B)Lnet/robotmedia/billing/utils/AESObfuscator;

    move-result-object v0

    .line 50
    .local v0, obfuscator:Lnet/robotmedia/billing/utils/AESObfuscator;
    invoke-virtual {v0, p2}, Lnet/robotmedia/billing/utils/AESObfuscator;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static removeNonce(J)V
    .locals 2
    .parameter "nonce"

    .prologue
    .line 45
    sget-object v0, Lnet/robotmedia/billing/utils/Security;->knownNonces:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public static unobfuscate(Landroid/content/Context;[BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "salt"
    .parameter "obfuscated"

    .prologue
    .line 66
    invoke-static {p0, p1}, Lnet/robotmedia/billing/utils/Security;->getObfuscator(Landroid/content/Context;[B)Lnet/robotmedia/billing/utils/AESObfuscator;

    move-result-object v1

    .line 68
    .local v1, obfuscator:Lnet/robotmedia/billing/utils/AESObfuscator;
    :try_start_0
    invoke-virtual {v1, p2}, Lnet/robotmedia/billing/utils/AESObfuscator;->unobfuscate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 72
    :goto_0
    return-object v2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Lnet/robotmedia/billing/utils/AESObfuscator$ValidationException;
    sget-object v2, Lnet/robotmedia/billing/utils/Security;->TAG:Ljava/lang/String;

    const-string v3, "Invalid obfuscated data or key"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v2, 0x0

    goto :goto_0
.end method
