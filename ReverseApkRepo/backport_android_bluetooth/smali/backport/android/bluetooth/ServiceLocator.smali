.class abstract Lbackport/android/bluetooth/ServiceLocator;
.super Ljava/lang/Object;
.source "ServiceLocator.java"


# static fields
.field private static final AS_INTERFACE:Ljava/lang/String; = "asInterface"

.field private static final GET_SERVICE_METHOD:Ljava/lang/String; = "getService"

.field private static final SERVICE_MANAGER:Ljava/lang/String; = "android.os.ServiceManager"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getAsInterfaceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 115
    .local p0, stub:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v0, "asInterface"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lbackport/android/bluetooth/ServiceLocator;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lbackport/android/bluetooth/ServiceLocator;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static final varargs getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .parameter
    .parameter "methodName"
    .parameter "parameterTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 79
    .local p0, owner:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 81
    .local v0, m:Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 86
    :cond_0
    return-object v0
.end method

.method private static final getGetServiceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, serviceManager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v0, "getService"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 93
    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 92
    invoke-static {p0, v0, v1}, Lbackport/android/bluetooth/ServiceLocator;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static final getServiceManager()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 121
    invoke-static {}, Lbackport/android/bluetooth/ServiceLocator;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.os.ServiceManager"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static final getServiceStub(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter "binder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 101
    .local p1, stub:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1}, Lbackport/android/bluetooth/ServiceLocator;->getAsInterfaceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 103
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final declared-synchronized getServiceStub(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "serviceName"
    .parameter "binderType"

    .prologue
    .line 62
    const-class v1, Lbackport/android/bluetooth/ServiceLocator;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Lbackport/android/bluetooth/ServiceLocator;->getServiceStubInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 66
    :goto_0
    monitor-exit v1

    return-object v2

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "ServiceLocator"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    const/4 v2, 0x0

    goto :goto_0

    .line 62
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private static final getServiceStubClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "binderType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    .line 109
    invoke-static {}, Lbackport/android/bluetooth/ServiceLocator;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static final getServiceStubInternal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "serviceName"
    .parameter "binderType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 127
    invoke-static {}, Lbackport/android/bluetooth/ServiceLocator;->getServiceManager()Ljava/lang/Class;

    move-result-object v3

    .line 128
    .local v3, serviceManager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v3}, Lbackport/android/bluetooth/ServiceLocator;->getGetServiceMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 129
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .line 133
    .local v0, binder:Ljava/lang/Object;
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    if-nez v0, :cond_1

    move-object v5, v8

    .line 146
    .end local v0           #binder:Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 134
    .restart local v0       #binder:Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 137
    if-nez v0, :cond_1

    move-object v5, v8

    .line 139
    goto :goto_0

    .line 135
    :catchall_0
    move-exception v5

    .line 137
    if-nez v0, :cond_0

    move-object v5, v8

    .line 139
    goto :goto_0

    .line 141
    :cond_0
    throw v5

    .line 143
    .end local v0           #binder:Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Lbackport/android/bluetooth/ServiceLocator;->getServiceStubClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 144
    .local v4, stub:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0, v4}, Lbackport/android/bluetooth/ServiceLocator;->getServiceStub(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .local v2, service:Ljava/lang/Object;
    move-object v5, v2

    .line 146
    goto :goto_0
.end method
