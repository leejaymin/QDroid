.class public Lorg/mozilla/javascript/DefiningClassLoader;
.super Ljava/lang/ClassLoader;
.source "DefiningClassLoader.java"

# interfaces
.implements Lorg/mozilla/javascript/GeneratedClassLoader;


# instance fields
.field private final parentLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/DefiningClassLoader;->parentLoader:Ljava/lang/ClassLoader;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "parentLoader"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/mozilla/javascript/DefiningClassLoader;->parentLoader:Ljava/lang/ClassLoader;

    .line 56
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
    .line 62
    const/4 v3, 0x0

    array-length v4, p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/SecurityUtilities;->getProtectionDomain(Ljava/lang/Class;)Ljava/security/ProtectionDomain;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-super/range {v0 .. v5}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

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
    .line 67
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/DefiningClassLoader;->resolveClass(Ljava/lang/Class;)V

    .line 68
    return-void
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 2
    .parameter "name"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/DefiningClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 76
    iget-object v1, p0, Lorg/mozilla/javascript/DefiningClassLoader;->parentLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lorg/mozilla/javascript/DefiningClassLoader;->parentLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 83
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/DefiningClassLoader;->resolveClass(Ljava/lang/Class;)V

    .line 85
    :cond_1
    return-object v0

    .line 79
    :cond_2
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/DefiningClassLoader;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
