.class public Lgnu/bytecode/ArrayClassLoader;
.super Ljava/lang/ClassLoader;
.source "ArrayClassLoader.java"


# instance fields
.field context:Ljava/net/URL;

.field map:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 12
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    .line 24
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[[B)V
    .locals 3
    .parameter "classNames"
    .parameter "classBytes"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 12
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    .line 42
    array-length v0, p2

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 43
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/String;[B)V

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public constructor <init>([[B)V
    .locals 3
    .parameter "classBytes"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    .line 12
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v1, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    .line 36
    array-length v0, p1

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lambda"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/String;[B)V

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public static getContextPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 2
    .parameter "cname"

    .prologue
    .line 135
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 136
    .local v0, loader:Ljava/lang/ClassLoader;
    instance-of v1, v0, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v1, :cond_0

    .line 137
    check-cast v0, Lgnu/bytecode/ArrayClassLoader;

    .end local v0           #loader:Ljava/lang/ClassLoader;
    invoke-virtual {v0, p0}, Lgnu/bytecode/ArrayClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 142
    :goto_0
    return-object v1

    .line 139
    :catch_0
    move-exception v1

    .line 142
    :cond_0
    invoke-static {p0}, Ljava/lang/Package;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public addClass(Lgnu/bytecode/ClassType;)V
    .locals 2
    .parameter "ctype"

    .prologue
    .line 58
    iget-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public addClass(Ljava/lang/Class;)V
    .locals 2
    .parameter "clas"

    .prologue
    .line 48
    iget-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public addClass(Ljava/lang/String;[B)V
    .locals 1
    .parameter "name"
    .parameter "bytes"

    .prologue
    .line 53
    iget-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .parameter "name"

    .prologue
    .line 63
    iget-object v1, p0, Lgnu/bytecode/ArrayClassLoader;->context:Ljava/net/URL;

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lgnu/bytecode/ArrayClassLoader;->context:Ljava/net/URL;

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 68
    .local v0, url:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 76
    .end local v0           #url:Ljava/net/URL;
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v1

    .line 76
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    goto :goto_0
.end method

.method public getResourceContext()Ljava/net/URL;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lgnu/bytecode/ArrayClassLoader;->context:Ljava/net/URL;

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v5, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 97
    .local v4, r:Ljava/lang/Object;
    instance-of v5, v4, Lgnu/bytecode/ClassType;

    if-eqz v5, :cond_0

    .line 99
    move-object v0, v4

    check-cast v0, Lgnu/bytecode/ClassType;

    move-object v3, v0

    .line 100
    .local v3, ctype:Lgnu/bytecode/ClassType;
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    iget-object v4, v3, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    .line 106
    .end local v3           #ctype:Lgnu/bytecode/ClassType;
    .end local v4           #r:Ljava/lang/Object;
    :cond_0
    :goto_0
    instance-of v5, v4, [B

    if-eqz v5, :cond_3

    .line 109
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v5, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 112
    .restart local v4       #r:Ljava/lang/Object;
    instance-of v5, v4, [B

    if-eqz v5, :cond_2

    .line 114
    check-cast v4, [B

    .end local v4           #r:Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, [B

    move-object v1, v0

    .line 115
    .local v1, bytes:[B
    const/4 v5, 0x0

    array-length v6, v1

    invoke-virtual {p0, p1, v1, v5, v6}, Lgnu/bytecode/ArrayClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v2

    .line 116
    .local v2, clas:Ljava/lang/Class;
    iget-object v5, p0, Lgnu/bytecode/ArrayClassLoader;->map:Ljava/util/Hashtable;

    invoke-virtual {v5, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v1           #bytes:[B
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_2
    return-object v2

    .line 103
    .end local v2           #clas:Ljava/lang/Class;
    .restart local v3       #ctype:Lgnu/bytecode/ClassType;
    .restart local v4       #r:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v4

    .local v4, r:[B
    goto :goto_0

    .line 119
    .end local v3           #ctype:Lgnu/bytecode/ClassType;
    .local v4, r:Ljava/lang/Object;
    :cond_2
    :try_start_1
    move-object v0, v4

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    .restart local v2       #clas:Ljava/lang/Class;
    goto :goto_1

    .line 120
    .end local v2           #clas:Ljava/lang/Class;
    .end local v4           #r:Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 122
    :cond_3
    if-nez v4, :cond_4

    .line 123
    invoke-virtual {p0}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .restart local v2       #clas:Ljava/lang/Class;
    goto :goto_2

    .line 125
    .end local v2           #clas:Ljava/lang/Class;
    :cond_4
    move-object v0, v4

    check-cast v0, Ljava/lang/Class;

    move-object v2, v0

    .restart local v2       #clas:Ljava/lang/Class;
    goto :goto_2
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .parameter "name"
    .parameter "resolve"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 83
    .local v0, clas:Ljava/lang/Class;
    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p0, v0}, Lgnu/bytecode/ArrayClassLoader;->resolveClass(Ljava/lang/Class;)V

    .line 85
    :cond_0
    return-object v0
.end method

.method public setResourceContext(Ljava/net/URL;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    iput-object p1, p0, Lgnu/bytecode/ArrayClassLoader;->context:Ljava/net/URL;

    return-void
.end method
