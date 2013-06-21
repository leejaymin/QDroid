.class Lorg/mozilla/javascript/PolicySecurityController$Loader;
.super Ljava/security/SecureClassLoader;
.source "PolicySecurityController.java"

# interfaces
.implements Lorg/mozilla/javascript/GeneratedClassLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/PolicySecurityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# instance fields
.field private final codeSource:Ljava/security/CodeSource;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/security/CodeSource;)V
    .locals 0
    .parameter "parent"
    .parameter "codeSource"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Ljava/security/SecureClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 88
    iput-object p2, p0, Lorg/mozilla/javascript/PolicySecurityController$Loader;->codeSource:Ljava/security/CodeSource;

    .line 89
    return-void
.end method


# virtual methods
.method public defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 6
    .parameter "name"
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v3, 0x0

    array-length v4, p2

    iget-object v5, p0, Lorg/mozilla/javascript/PolicySecurityController$Loader;->codeSource:Ljava/security/CodeSource;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/PolicySecurityController$Loader;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public linkClass(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/PolicySecurityController$Loader;->resolveClass(Ljava/lang/Class;)V

    .line 99
    return-void
.end method
