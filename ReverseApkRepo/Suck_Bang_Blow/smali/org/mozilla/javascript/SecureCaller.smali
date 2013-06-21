.class public abstract Lorg/mozilla/javascript/SecureCaller;
.super Ljava/lang/Object;
.source "SecureCaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/SecureCaller$SecureClassLoaderImpl;
    }
.end annotation


# static fields
.field private static final callers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/CodeSource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/mozilla/javascript/SecureCaller;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final secureCallerImplBytecode:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lorg/mozilla/javascript/SecureCaller;->loadBytecode()[B

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/SecureCaller;->secureCallerImplBytecode:[B

    .line 64
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/SecureCaller;->callers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/mozilla/javascript/SecureCaller;->secureCallerImplBytecode:[B

    return-object v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lorg/mozilla/javascript/SecureCaller;->loadBytecodePrivileged()[B

    move-result-object v0

    return-object v0
.end method

.method static callSecurely(Ljava/security/CodeSource;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "codeSource"
    .parameter "callable"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 80
    .local v1, thread:Ljava/lang/Thread;
    new-instance v2, Lorg/mozilla/javascript/SecureCaller$1;

    invoke-direct {v2, v1}, Lorg/mozilla/javascript/SecureCaller$1;-><init>(Ljava/lang/Thread;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ClassLoader;

    .line 87
    .local v2, classLoader:Ljava/lang/ClassLoader;
    sget-object v4, Lorg/mozilla/javascript/SecureCaller;->callers:Ljava/util/Map;

    monitor-enter v4

    .line 89
    :try_start_0
    sget-object v1, Lorg/mozilla/javascript/SecureCaller;->callers:Ljava/util/Map;

    .end local v1           #thread:Ljava/lang/Thread;
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 90
    .local v1, classLoaderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/ClassLoader;Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/SecureCaller;>;>;"
    if-nez v1, :cond_0

    .line 92
    new-instance v1, Ljava/util/WeakHashMap;

    .end local v1           #classLoaderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/ClassLoader;Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/SecureCaller;>;>;"
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 93
    .restart local v1       #classLoaderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/ClassLoader;Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/SecureCaller;>;>;"
    sget-object v3, Lorg/mozilla/javascript/SecureCaller;->callers:Ljava/util/Map;

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v3, v1

    .line 95
    .end local v1           #classLoaderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/ClassLoader;Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/SecureCaller;>;>;"
    .local v3, classLoaderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/ClassLoader;Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/SecureCaller;>;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-enter v3

    .line 99
    :try_start_1
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 100
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/SecureCaller;>;"
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/SecureCaller;>;"
    check-cast v1, Lorg/mozilla/javascript/SecureCaller;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .local v1, caller:Lorg/mozilla/javascript/SecureCaller;
    :goto_0
    if-nez v1, :cond_1

    .line 110
    :try_start_2
    new-instance v4, Lorg/mozilla/javascript/SecureCaller$2;

    invoke-direct {v4, v2, p0}, Lorg/mozilla/javascript/SecureCaller$2;-><init>(Ljava/lang/ClassLoader;Ljava/security/CodeSource;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/mozilla/javascript/SecureCaller;

    move-object v1, v0

    .line 130
    new-instance p0, Ljava/lang/ref/SoftReference;

    .end local p0
    invoke-direct {p0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 138
    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/SecureCaller;->call(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2           #classLoader:Ljava/lang/ClassLoader;
    .end local v3           #classLoaderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/ClassLoader;Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/SecureCaller;>;>;"
    move-result-object p0

    return-object p0

    .line 95
    .end local v1           #caller:Lorg/mozilla/javascript/SecureCaller;
    .restart local v2       #classLoader:Ljava/lang/ClassLoader;
    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    .line 103
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/SecureCaller;>;"
    .restart local v3       #classLoaderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/ClassLoader;Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/SecureCaller;>;>;"
    .restart local p0
    :cond_2
    const/4 v1, 0x0

    .local v1, caller:Lorg/mozilla/javascript/SecureCaller;
    goto :goto_0

    .line 132
    .end local p0
    :catch_0
    move-exception p0

    .line 134
    .local p0, ex:Ljava/security/PrivilegedActionException;
    :try_start_5
    new-instance p1, Ljava/lang/reflect/UndeclaredThrowableException;

    .end local p1
    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .end local p0           #ex:Ljava/security/PrivilegedActionException;
    invoke-direct {p1, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 137
    .end local v1           #caller:Lorg/mozilla/javascript/SecureCaller;
    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method

.method private static loadBytecode()[B
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lorg/mozilla/javascript/SecureCaller$3;

    invoke-direct {v0}, Lorg/mozilla/javascript/SecureCaller$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method private static loadBytecodePrivileged()[B
    .locals 7

    .prologue
    .line 169
    const-class v5, Lorg/mozilla/javascript/SecureCaller;

    const-string v6, "SecureCallerImpl.clazz"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 172
    .local v4, url:Ljava/net/URL;
    :try_start_0
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 175
    .local v2, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 179
    .local v3, r:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    .line 181
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 188
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v5

    .line 183
    :cond_0
    :try_start_3
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 188
    .end local v0           #bout:Ljava/io/ByteArrayOutputStream;
    .end local v3           #r:I
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 191
    .end local v2           #in:Ljava/io/InputStream;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 193
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v5, v1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public abstract call(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
