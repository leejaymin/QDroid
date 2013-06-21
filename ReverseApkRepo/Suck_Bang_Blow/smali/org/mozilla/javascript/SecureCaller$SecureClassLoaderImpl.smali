.class Lorg/mozilla/javascript/SecureCaller$SecureClassLoaderImpl;
.super Ljava/security/SecureClassLoader;
.source "SecureCaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/SecureCaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecureClassLoaderImpl"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 146
    return-void
.end method


# virtual methods
.method defineAndLinkClass(Ljava/lang/String;[BLjava/security/CodeSource;)Ljava/lang/Class;
    .locals 7
    .parameter "name"
    .parameter "bytes"
    .parameter "cs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 150
    const/4 v3, 0x0

    array-length v4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/SecureCaller$SecureClassLoaderImpl;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v6

    .line 151
    .local v6, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, v6}, Lorg/mozilla/javascript/SecureCaller$SecureClassLoaderImpl;->resolveClass(Ljava/lang/Class;)V

    .line 152
    return-object v6
.end method
