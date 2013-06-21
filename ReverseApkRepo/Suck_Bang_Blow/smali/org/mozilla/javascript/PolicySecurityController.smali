.class public Lorg/mozilla/javascript/PolicySecurityController;
.super Lorg/mozilla/javascript/SecurityController;
.source "PolicySecurityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;,
        Lorg/mozilla/javascript/PolicySecurityController$Loader;
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
            "Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final secureCallerImplBytecode:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lorg/mozilla/javascript/PolicySecurityController;->loadBytecode()[B

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/PolicySecurityController;->secureCallerImplBytecode:[B

    .line 72
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/PolicySecurityController;->callers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/mozilla/javascript/SecurityController;-><init>()V

    .line 184
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/mozilla/javascript/PolicySecurityController;->secureCallerImplBytecode:[B

    return-object v0
.end method

.method private static loadBytecode()[B
    .locals 11

    .prologue
    const/4 v8, 0x6

    const/4 v6, 0x1

    const-string v10, "call"

    const-string v9, "<init>"

    const-string v7, "()V"

    .line 193
    const-class v4, Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, secureCallerClassName:Ljava/lang/String;
    new-instance v1, Lorg/mozilla/classfile/ClassFileWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Impl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "<generated>"

    invoke-direct {v1, v4, v3, v5}, Lorg/mozilla/classfile/ClassFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v1, cfw:Lorg/mozilla/classfile/ClassFileWriter;
    const-string v4, "<init>"

    const-string v4, "()V"

    invoke-virtual {v1, v9, v7, v6}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 198
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 199
    const/16 v4, 0xb7

    const-string v5, "<init>"

    const-string v5, "()V"

    invoke-virtual {v1, v4, v3, v9, v7}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/16 v4, 0xb1

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 202
    invoke-virtual {v1, v6}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    .line 203
    const-string v0, "Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;"

    .line 209
    .local v0, callableCallSig:Ljava/lang/String;
    const-string v4, "call"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(Lorg/mozilla/javascript/Callable;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v1, v10, v4, v5}, Lorg/mozilla/classfile/ClassFileWriter;->startMethod(Ljava/lang/String;Ljava/lang/String;S)V

    .line 213
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 214
    invoke-virtual {v1, v2}, Lorg/mozilla/classfile/ClassFileWriter;->addALoad(I)V

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_0
    const/16 v4, 0xb9

    const-string v5, "org/mozilla/javascript/Callable"

    const-string v6, "call"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v10, v6}, Lorg/mozilla/classfile/ClassFileWriter;->addInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/16 v4, 0xb0

    invoke-virtual {v1, v4}, Lorg/mozilla/classfile/ClassFileWriter;->add(I)V

    .line 220
    invoke-virtual {v1, v8}, Lorg/mozilla/classfile/ClassFileWriter;->stopMethod(S)V

    .line 221
    invoke-virtual {v1}, Lorg/mozilla/classfile/ClassFileWriter;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "securityDomain"
    .parameter "cx"
    .parameter "callable"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 131
    new-instance v2, Lorg/mozilla/javascript/PolicySecurityController$2;

    invoke-direct {v2, p0, p2}, Lorg/mozilla/javascript/PolicySecurityController$2;-><init>(Lorg/mozilla/javascript/PolicySecurityController;Lorg/mozilla/javascript/Context;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ClassLoader;

    .line 137
    .local v7, classLoader:Ljava/lang/ClassLoader;
    move-object v0, p1

    check-cast v0, Ljava/security/CodeSource;

    move-object v9, v0

    .line 139
    .local v9, codeSource:Ljava/security/CodeSource;
    sget-object v2, Lorg/mozilla/javascript/PolicySecurityController;->callers:Ljava/util/Map;

    monitor-enter v2

    .line 140
    :try_start_0
    sget-object v3, Lorg/mozilla/javascript/PolicySecurityController;->callers:Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 141
    .local v8, classLoaderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/ClassLoader;Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;>;>;"
    if-nez v8, :cond_0

    .line 142
    new-instance v8, Ljava/util/WeakHashMap;

    .end local v8           #classLoaderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/ClassLoader;Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;>;>;"
    invoke-direct {v8}, Ljava/util/WeakHashMap;-><init>()V

    .line 143
    .restart local v8       #classLoaderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/ClassLoader;Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;>;>;"
    sget-object v3, Lorg/mozilla/javascript/PolicySecurityController;->callers:Ljava/util/Map;

    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-enter v8

    .line 148
    :try_start_1
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ref/SoftReference;

    .line 149
    .local v11, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;>;"
    if-eqz v11, :cond_2

    .line 150
    invoke-virtual {v11}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    .local v1, caller:Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;
    :goto_0
    if-nez v1, :cond_1

    .line 160
    :try_start_2
    new-instance v2, Lorg/mozilla/javascript/PolicySecurityController$3;

    invoke-direct {v2, p0, v7, v9}, Lorg/mozilla/javascript/PolicySecurityController$3;-><init>(Lorg/mozilla/javascript/PolicySecurityController;Ljava/lang/ClassLoader;Ljava/security/CodeSource;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;

    move-object v1, v0

    .line 173
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v8, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 180
    :cond_1
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, p3

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 181
    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;->call(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 145
    .end local v1           #caller:Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;
    .end local v8           #classLoaderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/ClassLoader;Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;>;>;"
    .end local v11           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;>;"
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 152
    .restart local v8       #classLoaderMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/ClassLoader;Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;>;>;"
    .restart local v11       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;>;"
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #caller:Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;
    goto :goto_0

    .line 175
    :catch_0
    move-exception v2

    move-object v10, v2

    .line 177
    .local v10, ex:Ljava/security/PrivilegedActionException;
    :try_start_5
    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-virtual {v10}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 180
    .end local v1           #caller:Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;
    .end local v10           #ex:Ljava/security/PrivilegedActionException;
    .end local v11           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/mozilla/javascript/PolicySecurityController$SecureCaller;>;"
    :catchall_1
    move-exception v2

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method

.method public createClassLoader(Ljava/lang/ClassLoader;Ljava/lang/Object;)Lorg/mozilla/javascript/GeneratedClassLoader;
    .locals 1
    .parameter "parent"
    .parameter "securityDomain"

    .prologue
    .line 106
    new-instance v0, Lorg/mozilla/javascript/PolicySecurityController$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/PolicySecurityController$1;-><init>(Lorg/mozilla/javascript/PolicySecurityController;Ljava/lang/ClassLoader;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/PolicySecurityController$Loader;

    return-object p0
.end method

.method public getDynamicSecurityDomain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "securityDomain"

    .prologue
    .line 121
    return-object p1
.end method

.method public getStaticSecurityDomainClassInternal()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 77
    const-class v0, Ljava/security/CodeSource;

    return-object v0
.end method
