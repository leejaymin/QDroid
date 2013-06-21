.class abstract Lbackport/android/bluetooth/DelegateFactory;
.super Ljava/lang/Object;
.source "DelegateFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbackport/android/bluetooth/DelegateFactory$InvocationHandlerImpl;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final canInvoke(ZLjava/lang/Object;)Z
    .locals 2
    .parameter "staticMethod"
    .parameter "receiver"

    .prologue
    const/4 v1, 0x1

    .line 71
    if-eqz p0, :cond_0

    .line 76
    :goto_0
    return v1

    .line 75
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    .local v0, b:Z
    :goto_1
    move v1, v0

    .line 76
    goto :goto_0

    .line 75
    .end local v0           #b:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method

.method static final create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .parameter "delegateInstance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p1, delegateClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 82
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "type must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    :cond_0
    if-nez p1, :cond_1

    .line 86
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "delegateClass must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_1
    new-instance v1, Lbackport/android/bluetooth/DelegateFactory$InvocationHandlerImpl;

    invoke-direct {v1, p0, p1, p2}, Lbackport/android/bluetooth/DelegateFactory$InvocationHandlerImpl;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 91
    .local v1, handler:Ljava/lang/reflect/InvocationHandler;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 92
    .local v0, classLoader:Ljava/lang/ClassLoader;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 93
    .local v4, types:[Ljava/lang/Class;
    invoke-static {v0, v4, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, proxy:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 95
    .local v3, t:Ljava/lang/Object;,"TT;"
    return-object v3
.end method

.method static final create(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter "delegate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "delegate must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lbackport/android/bluetooth/DelegateFactory;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, t:Ljava/lang/Object;,"TT;"
    return-object v0
.end method

.method static final create(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter "delegateClassName"
    .parameter "delegate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 109
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 110
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 111
    const-string v4, "delegateClassName must not be null"

    .line 110
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 115
    .local v0, classLoader:Ljava/lang/ClassLoader;
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 116
    .local v1, delegateClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, v1, p2}, Lbackport/android/bluetooth/DelegateFactory;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 117
    .local v2, t:Ljava/lang/Object;,"TT;"
    return-object v2
.end method

.method static final getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .parameter
    .parameter "name"
    .parameter "params"
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

    .prologue
    .line 122
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v1, p0

    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-nez v1, :cond_0

    .line 133
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 124
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 125
    .local v3, methods:[Ljava/lang/reflect/Method;
    invoke-static {p1, p2, v3}, Lbackport/android/bluetooth/DelegateFactory;->getMostMatchMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 126
    .local v2, m:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    const/4 v4, 0x1

    move v0, v4

    .line 128
    .local v0, b:Z
    :goto_2
    if-eqz v0, :cond_2

    move-object v4, v2

    .line 129
    goto :goto_1

    .line 126
    .end local v0           #b:Z
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_2

    .line 122
    .restart local v0       #b:Z
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method static final getDelegateMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .parameter "method"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 138
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 143
    .local v3, params:[Ljava/lang/Class;
    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, delegateMethod:Ljava/lang/reflect/Method;
    move-object v1, v0

    .line 149
    .end local v0           #delegateMethod:Ljava/lang/reflect/Method;
    .local v1, delegateMethod:Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 145
    .end local v1           #delegateMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 148
    invoke-static {p1, v2, v3}, Lbackport/android/bluetooth/DelegateFactory;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .restart local v0       #delegateMethod:Ljava/lang/reflect/Method;
    move-object v1, v0

    .line 149
    .end local v0           #delegateMethod:Ljava/lang/reflect/Method;
    .restart local v1       #delegateMethod:Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method static final getMostMatchMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 4
    .parameter "name"
    .parameter "params"
    .parameter "methods"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 154
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 162
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 154
    :cond_0
    aget-object v1, p2, v3

    .line 155
    .local v1, m:Ljava/lang/reflect/Method;
    invoke-static {v1, p0, p1}, Lbackport/android/bluetooth/DelegateFactory;->isSignatureMatches(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    .line 157
    .local v0, b:Z
    if-eqz v0, :cond_1

    move-object v2, v1

    .line 158
    goto :goto_1

    .line 154
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static final hasDelegateMethod(Ljava/lang/reflect/Method;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 166
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final isMethodStatic(Ljava/lang/reflect/Method;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    .line 171
    .local v1, modifiers:I
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    .line 172
    .local v0, b:Z
    return v0
.end method

.method static final isSignatureMatches(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 4
    .parameter "m"
    .parameter "name"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, n:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 181
    .local v0, b:Z
    if-nez v0, :cond_0

    .line 182
    const/4 v3, 0x0

    .line 187
    :goto_0
    return v3

    .line 185
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 186
    .local v2, p:[Ljava/lang/Class;
    invoke-static {v2, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    move v3, v0

    .line 187
    goto :goto_0
.end method

.method static final makeAccessible(Ljava/lang/reflect/Method;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 191
    if-nez p0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_0
.end method
