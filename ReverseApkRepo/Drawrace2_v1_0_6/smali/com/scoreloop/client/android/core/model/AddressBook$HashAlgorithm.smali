.class public final enum Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/AddressBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HashAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MD5:Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

.field public static final enum SHA1:Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

.field private static final synthetic b:[Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    const-string v1, "SHA1"

    const-string v2, "SHA1"

    invoke-direct {v0, v1, v3, v2}, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;->SHA1:Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    new-instance v0, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    const-string v1, "MD5"

    const-string v2, "MD5"

    invoke-direct {v0, v1, v4, v2}, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;->MD5:Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    sget-object v1, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;->SHA1:Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;->MD5:Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;->b:[Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private a()Ljava/security/MessageDigest;
    .locals 3

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to create a MessageDigest"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;)Ljava/security/MessageDigest;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;->a()Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;->b:[Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/AddressBook$HashAlgorithm;

    return-object v0
.end method
