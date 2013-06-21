.class Lorg/mozilla/javascript/JavaMembers;
.super Ljava/lang/Object;
.source "JavaMembers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/JavaMembers$MethodSignature;
    }
.end annotation


# instance fields
.field private cl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field ctors:[Lorg/mozilla/javascript/MemberBox;

.field private fieldAndMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/FieldAndMethods;",
            ">;"
        }
    .end annotation
.end field

.field private includePrivate:Z

.field private members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private staticFieldAndMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/FieldAndMethods;",
            ">;"
        }
    .end annotation
.end field

.field private staticMembers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V
    .locals 1
    .parameter "scope"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/JavaMembers;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V

    .line 60
    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V
    .locals 4
    .parameter "scope"
    .parameter
    .parameter "includeProtected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    :try_start_0
    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/ContextFactory;->enterContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 66
    .local v0, cx:Lorg/mozilla/javascript/Context;
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getClassShutter()Lorg/mozilla/javascript/ClassShutter;

    move-result-object v1

    .line 67
    .local v1, shutter:Lorg/mozilla/javascript/ClassShutter;
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mozilla/javascript/ClassShutter;->visibleToScripts(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    const-string v2, "msg.access.prohibited"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v0           #cx:Lorg/mozilla/javascript/Context;
    .end local v1           #shutter:Lorg/mozilla/javascript/ClassShutter;
    :catchall_0
    move-exception v2

    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    throw v2

    .line 71
    .restart local v0       #cx:Lorg/mozilla/javascript/Context;
    .restart local v1       #shutter:Lorg/mozilla/javascript/ClassShutter;
    :cond_0
    const/16 v2, 0xd

    :try_start_1
    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v2

    iput-boolean v2, p0, Lorg/mozilla/javascript/JavaMembers;->includePrivate:Z

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    .line 75
    iput-object p2, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    .line 76
    invoke-direct {p0, p1, p3}, Lorg/mozilla/javascript/JavaMembers;->reflect(Lorg/mozilla/javascript/Scriptable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-static {}, Lorg/mozilla/javascript/Context;->exit()V

    .line 80
    return-void
.end method

.method private static discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;ZZ)V
    .locals 10
    .parameter
    .parameter
    .parameter "includeProtected"
    .parameter "includePrivate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Lorg/mozilla/javascript/JavaMembers$MethodSignature;",
            "Ljava/lang/reflect/Method;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Lorg/mozilla/javascript/JavaMembers$MethodSignature;Ljava/lang/reflect/Method;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz p3, :cond_9

    .line 345
    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_7

    .line 346
    :cond_1
    :goto_0
    if-eqz p0, :cond_b

    .line 348
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 349
    .local v4, methods:[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, v4

    if-ge v1, v8, :cond_5

    .line 350
    aget-object v3, v4, v1

    .line 351
    .local v3, method:Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    .line 353
    .local v5, mods:I
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz p3, :cond_4

    .line 357
    :cond_2
    new-instance v6, Lorg/mozilla/javascript/JavaMembers$MethodSignature;

    invoke-direct {v6, v3}, Lorg/mozilla/javascript/JavaMembers$MethodSignature;-><init>(Ljava/lang/reflect/Method;)V

    .line 358
    .local v6, sig:Lorg/mozilla/javascript/JavaMembers$MethodSignature;
    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 359
    if-eqz p3, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v8

    if-nez v8, :cond_3

    .line 360
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 361
    :cond_3
    invoke-interface {p1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .end local v6           #sig:Lorg/mozilla/javascript/JavaMembers$MethodSignature;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 365
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v5           #mods:I
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 366
    .end local v1           #i:I
    .end local v4           #methods:[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 370
    .local v0, e:Ljava/lang/SecurityException;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 371
    .restart local v4       #methods:[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v8, v4

    if-ge v1, v8, :cond_b

    .line 372
    aget-object v3, v4, v1

    .line 373
    .restart local v3       #method:Ljava/lang/reflect/Method;
    new-instance v6, Lorg/mozilla/javascript/JavaMembers$MethodSignature;

    invoke-direct {v6, v3}, Lorg/mozilla/javascript/JavaMembers$MethodSignature;-><init>(Ljava/lang/reflect/Method;)V

    .line 375
    .restart local v6       #sig:Lorg/mozilla/javascript/JavaMembers$MethodSignature;
    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 376
    invoke-interface {p1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 383
    .end local v0           #e:Ljava/lang/SecurityException;
    .end local v1           #i:I
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #methods:[Ljava/lang/reflect/Method;
    .end local v6           #sig:Lorg/mozilla/javascript/JavaMembers$MethodSignature;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 384
    .restart local v4       #methods:[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    array-length v8, v4

    if-ge v1, v8, :cond_b

    .line 385
    aget-object v3, v4, v1

    .line 386
    .restart local v3       #method:Ljava/lang/reflect/Method;
    new-instance v6, Lorg/mozilla/javascript/JavaMembers$MethodSignature;

    invoke-direct {v6, v3}, Lorg/mozilla/javascript/JavaMembers$MethodSignature;-><init>(Ljava/lang/reflect/Method;)V

    .line 388
    .restart local v6       #sig:Lorg/mozilla/javascript/JavaMembers$MethodSignature;
    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 389
    invoke-interface {p1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 384
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 393
    .end local v1           #i:I
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #methods:[Ljava/lang/reflect/Method;
    .end local v6           #sig:Lorg/mozilla/javascript/JavaMembers$MethodSignature;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 394
    .restart local v0       #e:Ljava/lang/SecurityException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not discover accessible methods of class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " due to lack of privileges, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "attemping superclasses/interfaces."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    .line 403
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 404
    .local v2, interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    array-length v8, v2

    if-ge v1, v8, :cond_a

    .line 405
    aget-object v8, v2, v1

    invoke-static {v8, p1, p2, p3}, Lorg/mozilla/javascript/JavaMembers;->discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 408
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    .line 409
    .local v7, superclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v7, :cond_b

    .line 410
    invoke-static {v7, p1, p2, p3}, Lorg/mozilla/javascript/JavaMembers;->discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    .line 413
    .end local v1           #i:I
    .end local v2           #interfaces:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v7           #superclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_b
    return-void
.end method

.method private static discoverAccessibleMethods(Ljava/lang/Class;ZZ)[Ljava/lang/reflect/Method;
    .locals 3
    .parameter
    .parameter "includeProtected"
    .parameter "includePrivate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;ZZ)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 335
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Lorg/mozilla/javascript/JavaMembers$MethodSignature;Ljava/lang/reflect/Method;>;"
    invoke-static {p0, v0, p1, p2}, Lorg/mozilla/javascript/JavaMembers;->discoverAccessibleMethods(Ljava/lang/Class;Ljava/util/Map;ZZ)V

    .line 336
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Method;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private static extractGetMethod([Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;
    .locals 4
    .parameter "methods"
    .parameter "isStatic"

    .prologue
    .line 743
    const/4 v1, 0x0

    .local v1, methodIdx:I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 744
    aget-object v0, p0, v1

    .line 747
    .local v0, method:Lorg/mozilla/javascript/MemberBox;
    iget-object v3, v0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    array-length v3, v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 750
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 751
    .local v2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_2

    move-object v3, v0

    .line 757
    .end local v0           #method:Lorg/mozilla/javascript/MemberBox;
    .end local v2           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    return-object v3

    .line 743
    .restart local v0       #method:Lorg/mozilla/javascript/MemberBox;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 757
    .end local v0           #method:Lorg/mozilla/javascript/MemberBox;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static extractSetMethod(Ljava/lang/Class;[Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;
    .locals 8
    .parameter
    .parameter "methods"
    .parameter "isStatic"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lorg/mozilla/javascript/MemberBox;",
            "Z)",
            "Lorg/mozilla/javascript/MemberBox;"
        }
    .end annotation

    .prologue
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 771
    const/4 v3, 0x1

    .local v3, pass:I
    :goto_0
    if-gt v3, v7, :cond_5

    .line 772
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_4

    .line 773
    aget-object v1, p1, v0

    .line 774
    .local v1, method:Lorg/mozilla/javascript/MemberBox;
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 775
    :cond_0
    iget-object v2, v1, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 776
    .local v2, params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v4, v2

    if-ne v4, v6, :cond_3

    .line 777
    if-ne v3, v6, :cond_1

    .line 778
    aget-object v4, v2, v5

    if-ne v4, p0, :cond_3

    move-object v4, v1

    .line 791
    .end local v0           #i:I
    .end local v1           #method:Lorg/mozilla/javascript/MemberBox;
    .end local v2           #params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :goto_2
    return-object v4

    .line 782
    .restart local v0       #i:I
    .restart local v1       #method:Lorg/mozilla/javascript/MemberBox;
    .restart local v2       #params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_1
    if-eq v3, v7, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 783
    :cond_2
    aget-object v4, v2, v5

    invoke-virtual {v4, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v1

    .line 784
    goto :goto_2

    .line 772
    .end local v2           #params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 771
    .end local v1           #method:Lorg/mozilla/javascript/MemberBox;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 791
    .end local v0           #i:I
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private static extractSetMethod([Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;
    .locals 4
    .parameter "methods"
    .parameter "isStatic"

    .prologue
    .line 798
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 799
    aget-object v1, p0, v0

    .line 800
    .local v1, method:Lorg/mozilla/javascript/MemberBox;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 801
    :cond_0
    invoke-virtual {v1}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    .line 802
    iget-object v2, v1, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object v2, v1

    .line 808
    .end local v1           #method:Lorg/mozilla/javascript/MemberBox;
    :goto_1
    return-object v2

    .line 798
    .restart local v1       #method:Lorg/mozilla/javascript/MemberBox;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 808
    .end local v1           #method:Lorg/mozilla/javascript/MemberBox;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findExplicitFunction(Ljava/lang/String;Z)Lorg/mozilla/javascript/MemberBox;
    .locals 13
    .parameter "name"
    .parameter "isStatic"

    .prologue
    .line 249
    const/16 v11, 0x28

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 250
    .local v8, sigStart:I
    if-gez v8, :cond_0

    const/4 v11, 0x0

    .line 285
    :goto_0
    return-object v11

    .line 252
    :cond_0
    if-eqz p2, :cond_2

    iget-object v11, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    move-object v1, v11

    .line 253
    .local v1, ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    const/4 v4, 0x0

    .line 254
    .local v4, methodsOrCtors:[Lorg/mozilla/javascript/MemberBox;
    if-eqz p2, :cond_3

    if-nez v8, :cond_3

    const/4 v11, 0x1

    move v3, v11

    .line 256
    .local v3, isCtor:Z
    :goto_2
    if-eqz v3, :cond_4

    .line 258
    iget-object v4, p0, Lorg/mozilla/javascript/JavaMembers;->ctors:[Lorg/mozilla/javascript/MemberBox;

    .line 273
    :cond_1
    :goto_3
    if-eqz v4, :cond_7

    .line 274
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    array-length v11, v4

    if-ge v2, v11, :cond_7

    .line 275
    aget-object v11, v4, v2

    iget-object v10, v11, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 276
    .local v10, type:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-static {v10}, Lorg/mozilla/javascript/JavaMembers;->liveConnectSignature([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, sig:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v11, v12, :cond_6

    const/4 v11, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p1, v8, v7, v11, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 280
    aget-object v11, v4, v2

    goto :goto_0

    .line 252
    .end local v1           #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #i:I
    .end local v3           #isCtor:Z
    .end local v4           #methodsOrCtors:[Lorg/mozilla/javascript/MemberBox;
    .end local v7           #sig:Ljava/lang/String;
    .end local v10           #type:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_2
    iget-object v11, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    move-object v1, v11

    goto :goto_1

    .line 254
    .restart local v1       #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4       #methodsOrCtors:[Lorg/mozilla/javascript/MemberBox;
    :cond_3
    const/4 v11, 0x0

    move v3, v11

    goto :goto_2

    .line 261
    .restart local v3       #isCtor:Z
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 262
    .local v9, trueName:Ljava/lang/String;
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 263
    .local v6, obj:Ljava/lang/Object;
    if-nez p2, :cond_5

    if-nez v6, :cond_5

    .line 265
    iget-object v11, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 267
    :cond_5
    instance-of v11, v6, Lorg/mozilla/javascript/NativeJavaMethod;

    if-eqz v11, :cond_1

    .line 268
    move-object v0, v6

    check-cast v0, Lorg/mozilla/javascript/NativeJavaMethod;

    move-object v5, v0

    .line 269
    .local v5, njm:Lorg/mozilla/javascript/NativeJavaMethod;
    iget-object v4, v5, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    goto :goto_3

    .line 274
    .end local v5           #njm:Lorg/mozilla/javascript/NativeJavaMethod;
    .end local v6           #obj:Ljava/lang/Object;
    .end local v9           #trueName:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v7       #sig:Ljava/lang/String;
    .restart local v10       #type:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 285
    .end local v2           #i:I
    .end local v7           #sig:Ljava/lang/String;
    .end local v10           #type:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_7
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private findGetter(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/MemberBox;
    .locals 5
    .parameter "isStatic"
    .parameter
    .parameter "prefix"
    .parameter "propertyName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/mozilla/javascript/MemberBox;"
        }
    .end annotation

    .prologue
    .line 726
    .local p2, ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, getterName:Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 729
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 730
    .local v2, member:Ljava/lang/Object;
    instance-of v4, v2, Lorg/mozilla/javascript/NativeJavaMethod;

    if-eqz v4, :cond_0

    .line 731
    move-object v0, v2

    check-cast v0, Lorg/mozilla/javascript/NativeJavaMethod;

    move-object v3, v0

    .line 732
    .local v3, njmGet:Lorg/mozilla/javascript/NativeJavaMethod;
    iget-object v4, v3, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    invoke-static {v4, p1}, Lorg/mozilla/javascript/JavaMembers;->extractGetMethod([Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;

    move-result-object v4

    .line 735
    .end local v2           #member:Ljava/lang/Object;
    .end local v3           #njmGet:Lorg/mozilla/javascript/NativeJavaMethod;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getAccessibleConstructors()[Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 680
    iget-boolean v2, p0, Lorg/mozilla/javascript/JavaMembers;->includePrivate:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->ClassClass:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    .line 682
    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 683
    .local v0, cons:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 693
    .end local v0           #cons:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v2

    .line 686
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 688
    .local v1, e:Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not access constructor  of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " due to lack of privileges."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    .line 693
    .end local v1           #e:Ljava/lang/SecurityException;
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0
.end method

.method private getAccessibleFields()[Ljava/lang/reflect/Field;
    .locals 7

    .prologue
    .line 697
    iget-boolean v5, p0, Lorg/mozilla/javascript/JavaMembers;->includePrivate:Z

    if-eqz v5, :cond_2

    .line 699
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v3, fieldsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Field;>;"
    iget-object v1, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    .line 702
    .local v1, currentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 705
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 706
    .local v2, declared:[Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 707
    aget-object v5, v2, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 708
    aget-object v5, v2, v4

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 712
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 713
    goto :goto_0

    .line 715
    .end local v2           #declared:[Ljava/lang/reflect/Field;
    .end local v4           #i:I
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/reflect/Field;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [Ljava/lang/reflect/Field;

    move-object p0, v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0
    move-object v5, p0

    .line 720
    .end local v1           #currentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #fieldsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :goto_2
    return-object v5

    .line 716
    .restart local p0
    :catch_0
    move-exception v5

    .line 720
    :cond_2
    iget-object v5, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    goto :goto_2
.end method

.method private getExplicitFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 9
    .parameter "scope"
    .parameter "name"
    .parameter "javaObject"
    .parameter "isStatic"

    .prologue
    .line 291
    if-eqz p4, :cond_1

    iget-object v7, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    move-object v2, v7

    .line 292
    .local v2, ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    const/4 v3, 0x0

    .line 293
    .local v3, member:Ljava/lang/Object;
    invoke-direct {p0, p2, p4}, Lorg/mozilla/javascript/JavaMembers;->findExplicitFunction(Ljava/lang/String;Z)Lorg/mozilla/javascript/MemberBox;

    move-result-object v4

    .line 295
    .local v4, methodOrCtor:Lorg/mozilla/javascript/MemberBox;
    if-eqz v4, :cond_0

    .line 296
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    .line 299
    .local v5, prototype:Lorg/mozilla/javascript/Scriptable;
    invoke-virtual {v4}, Lorg/mozilla/javascript/MemberBox;->isCtor()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 300
    new-instance v1, Lorg/mozilla/javascript/NativeJavaConstructor;

    invoke-direct {v1, v4}, Lorg/mozilla/javascript/NativeJavaConstructor;-><init>(Lorg/mozilla/javascript/MemberBox;)V

    .line 302
    .local v1, fun:Lorg/mozilla/javascript/NativeJavaConstructor;
    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/NativeJavaConstructor;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 303
    move-object v3, v1

    .line 304
    .local v3, member:Lorg/mozilla/javascript/NativeJavaConstructor;
    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .end local v1           #fun:Lorg/mozilla/javascript/NativeJavaConstructor;
    .end local v3           #member:Lorg/mozilla/javascript/NativeJavaConstructor;
    .end local v5           #prototype:Lorg/mozilla/javascript/Scriptable;
    :cond_0
    :goto_1
    return-object v3

    .line 291
    .end local v2           #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #methodOrCtor:Lorg/mozilla/javascript/MemberBox;
    :cond_1
    iget-object v7, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    move-object v2, v7

    goto :goto_0

    .line 306
    .restart local v2       #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v3, member:Ljava/lang/Object;
    .restart local v4       #methodOrCtor:Lorg/mozilla/javascript/MemberBox;
    .restart local v5       #prototype:Lorg/mozilla/javascript/Scriptable;
    :cond_2
    invoke-virtual {v4}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, trueName:Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 309
    instance-of v7, v3, Lorg/mozilla/javascript/NativeJavaMethod;

    if-eqz v7, :cond_0

    move-object v0, v3

    check-cast v0, Lorg/mozilla/javascript/NativeJavaMethod;

    move-object v7, v0

    iget-object v7, v7, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    array-length v7, v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 311
    new-instance v1, Lorg/mozilla/javascript/NativeJavaMethod;

    invoke-direct {v1, v4, p2}, Lorg/mozilla/javascript/NativeJavaMethod;-><init>(Lorg/mozilla/javascript/MemberBox;Ljava/lang/String;)V

    .line 313
    .local v1, fun:Lorg/mozilla/javascript/NativeJavaMethod;
    invoke-virtual {v1, v5}, Lorg/mozilla/javascript/NativeJavaMethod;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 314
    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    move-object v3, v1

    .local v3, member:Lorg/mozilla/javascript/NativeJavaMethod;
    goto :goto_1
.end method

.method static javaSignature(Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 226
    :goto_0
    return-object v5

    .line 209
    :cond_0
    const/4 v0, 0x0

    .line 211
    .local v0, arrayDimension:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 212
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-nez v5, :cond_1

    .line 214
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, name:Ljava/lang/String;
    const-string v4, "[]"

    .line 216
    .local v4, suffix:Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    .line 217
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/2addr v6, v0

    add-int v1, v5, v6

    .line 220
    .local v1, length:I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 221
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    :goto_1
    if-eqz v0, :cond_3

    .line 223
    add-int/lit8 v0, v0, -0x1

    .line 224
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 226
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method static liveConnectSignature([Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v0, p0

    .line 234
    .local v0, N:I
    if-nez v0, :cond_0

    const-string v3, "()"

    .line 244
    :goto_0
    return-object v3

    .line 235
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    .local v2, sb:Ljava/lang/StringBuffer;
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-eq v1, v0, :cond_2

    .line 238
    if-eqz v1, :cond_1

    .line 239
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 241
    :cond_1
    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/mozilla/javascript/JavaMembers;->javaSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    :cond_2
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static lookupClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Ljava/lang/Class;Z)Lorg/mozilla/javascript/JavaMembers;
    .locals 8
    .parameter "scope"
    .parameter
    .parameter
    .parameter "includeProtected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Lorg/mozilla/javascript/JavaMembers;"
        }
    .end annotation

    .prologue
    .line 832
    .local p1, dynamicType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, staticType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/mozilla/javascript/ClassCache;->get(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ClassCache;

    move-result-object v0

    .line 833
    .local v0, cache:Lorg/mozilla/javascript/ClassCache;
    invoke-virtual {v0}, Lorg/mozilla/javascript/ClassCache;->getClassCacheMap()Ljava/util/Map;

    move-result-object v2

    .line 835
    .local v2, ct:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Class<*>;Lorg/mozilla/javascript/JavaMembers;>;"
    move-object v1, p1

    .line 837
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/JavaMembers;

    .line 838
    .local v4, members:Lorg/mozilla/javascript/JavaMembers;
    if-eqz v4, :cond_1

    .line 839
    if-eq v1, p1, :cond_0

    .line 842
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v5, v4

    .line 881
    .end local v4           #members:Lorg/mozilla/javascript/JavaMembers;
    .local v5, members:Ljava/lang/Object;
    :goto_1
    return-object v5

    .line 847
    .end local v5           #members:Ljava/lang/Object;
    .restart local v4       #members:Lorg/mozilla/javascript/JavaMembers;
    :cond_1
    :try_start_0
    new-instance v4, Lorg/mozilla/javascript/JavaMembers;

    .end local v4           #members:Lorg/mozilla/javascript/JavaMembers;
    invoke-virtual {v0}, Lorg/mozilla/javascript/ClassCache;->getAssociatedScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    invoke-direct {v4, v7, v1, p3}, Lorg/mozilla/javascript/JavaMembers;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    .restart local v4       #members:Lorg/mozilla/javascript/JavaMembers;
    invoke-virtual {v0}, Lorg/mozilla/javascript/ClassCache;->isCachingEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 874
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    if-eq v1, p1, :cond_2

    .line 878
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v5, v4

    .line 881
    .restart local v5       #members:Ljava/lang/Object;
    goto :goto_1

    .line 850
    .end local v4           #members:Lorg/mozilla/javascript/JavaMembers;
    .end local v5           #members:Ljava/lang/Object;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 855
    .local v3, e:Ljava/lang/SecurityException;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 856
    move-object v1, p2

    .line 857
    const/4 p2, 0x0

    goto :goto_0

    .line 859
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    .line 860
    .local v6, parent:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v6, :cond_4

    .line 861
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 863
    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    .line 868
    :cond_4
    move-object v1, v6

    goto :goto_0

    .line 865
    :cond_5
    throw v3
.end method

.method private reflect(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 48
    .parameter "scope"
    .parameter "includeProtected"

    .prologue
    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/JavaMembers;->includePrivate:Z

    move/from16 v46, v0

    move-object/from16 v0, v45

    move/from16 v1, p2

    move/from16 v2, v46

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/JavaMembers;->discoverAccessibleMethods(Ljava/lang/Class;ZZ)[Ljava/lang/reflect/Method;

    move-result-object v30

    .line 457
    .local v30, methods:[Ljava/lang/reflect/Method;
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v45, v0

    move/from16 v0, v20

    move/from16 v1, v45

    if-ge v0, v1, :cond_4

    .line 458
    aget-object v28, v30, v20

    .line 459
    .local v28, method:Ljava/lang/reflect/Method;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v31

    .line 460
    .local v31, mods:I
    invoke-static/range {v31 .. v31}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v22

    .line 461
    .local v22, isStatic:Z
    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    move-object/from16 v45, v0

    move-object/from16 v19, v45

    .line 462
    .local v19, ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v32

    .line 463
    .local v32, name:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .line 464
    .local v44, value:Ljava/lang/Object;
    if-nez v44, :cond_1

    .line 465
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 461
    .end local v19           #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v32           #name:Ljava/lang/String;
    .end local v44           #value:Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    move-object/from16 v45, v0

    move-object/from16 v19, v45

    goto :goto_1

    .line 468
    .restart local v19       #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v32       #name:Ljava/lang/String;
    .restart local v44       #value:Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, v44

    instance-of v0, v0, Lorg/mozilla/javascript/ObjArray;

    move/from16 v45, v0

    if-eqz v45, :cond_2

    .line 469
    move-object/from16 v0, v44

    check-cast v0, Lorg/mozilla/javascript/ObjArray;

    move-object/from16 v36, v0

    .line 478
    .local v36, overloadedMethods:Lorg/mozilla/javascript/ObjArray;
    :goto_3
    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 471
    .end local v36           #overloadedMethods:Lorg/mozilla/javascript/ObjArray;
    :cond_2
    move-object/from16 v0, v44

    instance-of v0, v0, Ljava/lang/reflect/Method;

    move/from16 v45, v0

    if-nez v45, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 474
    :cond_3
    new-instance v36, Lorg/mozilla/javascript/ObjArray;

    invoke-direct/range {v36 .. v36}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    .line 475
    .restart local v36       #overloadedMethods:Lorg/mozilla/javascript/ObjArray;
    move-object/from16 v0, v36

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 476
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 484
    .end local v19           #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v22           #isStatic:Z
    .end local v28           #method:Ljava/lang/reflect/Method;
    .end local v31           #mods:I
    .end local v32           #name:Ljava/lang/String;
    .end local v36           #overloadedMethods:Lorg/mozilla/javascript/ObjArray;
    .end local v44           #value:Ljava/lang/Object;
    :cond_4
    const/16 v40, 0x0

    .local v40, tableCursor:I
    :goto_4
    const/16 v45, 0x2

    move/from16 v0, v40

    move/from16 v1, v45

    if-eq v0, v1, :cond_c

    .line 485
    if-nez v40, :cond_7

    const/16 v45, 0x1

    move/from16 v22, v45

    .line 486
    .restart local v22       #isStatic:Z
    :goto_5
    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    move-object/from16 v45, v0

    move-object/from16 v19, v45

    .line 487
    .restart local v19       #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 489
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v44

    .line 490
    .restart local v44       #value:Ljava/lang/Object;
    move-object/from16 v0, v44

    instance-of v0, v0, Ljava/lang/reflect/Method;

    move/from16 v45, v0

    if-eqz v45, :cond_9

    .line 491
    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v29, v0

    .line 492
    .local v29, methodBoxes:[Lorg/mozilla/javascript/MemberBox;
    const/16 v45, 0x0

    new-instance v46, Lorg/mozilla/javascript/MemberBox;

    check-cast v44, Ljava/lang/reflect/Method;

    .end local v44           #value:Ljava/lang/Object;
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v46, v29, v45

    .line 503
    :cond_5
    new-instance v17, Lorg/mozilla/javascript/NativeJavaMethod;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeJavaMethod;-><init>([Lorg/mozilla/javascript/MemberBox;)V

    .line 504
    .local v17, fun:Lorg/mozilla/javascript/NativeJavaMethod;
    if-eqz p1, :cond_6

    .line 505
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V

    .line 507
    :cond_6
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 485
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17           #fun:Lorg/mozilla/javascript/NativeJavaMethod;
    .end local v19           #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v22           #isStatic:Z
    .end local v29           #methodBoxes:[Lorg/mozilla/javascript/MemberBox;
    :cond_7
    const/16 v45, 0x0

    move/from16 v22, v45

    goto :goto_5

    .line 486
    .restart local v22       #isStatic:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    move-object/from16 v45, v0

    move-object/from16 v19, v45

    goto :goto_6

    .line 494
    .restart local v12       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19       #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v44       #value:Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, v44

    check-cast v0, Lorg/mozilla/javascript/ObjArray;

    move-object/from16 v36, v0

    .line 495
    .restart local v36       #overloadedMethods:Lorg/mozilla/javascript/ObjArray;
    invoke-virtual/range {v36 .. v36}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v5

    .line 496
    .local v5, N:I
    const/16 v45, 0x2

    move v0, v5

    move/from16 v1, v45

    if-ge v0, v1, :cond_a

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 497
    :cond_a
    move v0, v5

    new-array v0, v0, [Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v29, v0

    .line 498
    .restart local v29       #methodBoxes:[Lorg/mozilla/javascript/MemberBox;
    const/16 v20, 0x0

    :goto_8
    move/from16 v0, v20

    move v1, v5

    if-eq v0, v1, :cond_5

    .line 499
    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjArray;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/reflect/Method;

    .line 500
    .restart local v28       #method:Ljava/lang/reflect/Method;
    new-instance v45, Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v45, v29, v20

    .line 498
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 484
    .end local v5           #N:I
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v28           #method:Ljava/lang/reflect/Method;
    .end local v29           #methodBoxes:[Lorg/mozilla/javascript/MemberBox;
    .end local v36           #overloadedMethods:Lorg/mozilla/javascript/ObjArray;
    .end local v44           #value:Ljava/lang/Object;
    :cond_b
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_4

    .line 512
    .end local v19           #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v22           #isStatic:Z
    :cond_c
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/JavaMembers;->getAccessibleFields()[Ljava/lang/reflect/Field;

    move-result-object v15

    .line 513
    .local v15, fields:[Ljava/lang/reflect/Field;
    const/16 v20, 0x0

    :goto_9
    move-object v0, v15

    array-length v0, v0

    move/from16 v45, v0

    move/from16 v0, v20

    move/from16 v1, v45

    if-ge v0, v1, :cond_16

    .line 514
    aget-object v14, v15, v20

    .line 515
    .local v14, field:Ljava/lang/reflect/Field;
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v32

    .line 516
    .restart local v32       #name:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v31

    .line 517
    .restart local v31       #mods:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/JavaMembers;->includePrivate:Z

    move/from16 v45, v0

    if-nez v45, :cond_e

    invoke-static/range {v31 .. v31}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v45

    if-nez v45, :cond_e

    .line 513
    :cond_d
    :goto_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 521
    :cond_e
    :try_start_0
    invoke-static/range {v31 .. v31}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v22

    .line 522
    .restart local v22       #isStatic:Z
    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    move-object/from16 v45, v0

    move-object/from16 v19, v45

    .line 523
    .restart local v19       #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_b
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 524
    .local v24, member:Ljava/lang/Object;
    if-nez v24, :cond_10

    .line 525
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 559
    .end local v19           #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v22           #isStatic:Z
    .end local v24           #member:Ljava/lang/Object;
    :catch_0
    move-exception v45

    move-object/from16 v11, v45

    .line 561
    .local v11, e:Ljava/lang/SecurityException;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "Could not access field "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " of class "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " due to lack of privileges."

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    goto :goto_a

    .line 522
    .end local v11           #e:Ljava/lang/SecurityException;
    .restart local v22       #isStatic:Z
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    move-object/from16 v45, v0

    move-object/from16 v19, v45

    goto :goto_b

    .line 526
    .restart local v19       #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v24       #member:Ljava/lang/Object;
    :cond_10
    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/mozilla/javascript/NativeJavaMethod;

    move/from16 v45, v0

    if-eqz v45, :cond_14

    .line 527
    move-object/from16 v0, v24

    check-cast v0, Lorg/mozilla/javascript/NativeJavaMethod;

    move-object/from16 v28, v0

    .line 528
    .local v28, method:Lorg/mozilla/javascript/NativeJavaMethod;
    new-instance v13, Lorg/mozilla/javascript/FieldAndMethods;

    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v45, v0

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/FieldAndMethods;-><init>(Lorg/mozilla/javascript/Scriptable;[Lorg/mozilla/javascript/MemberBox;Ljava/lang/reflect/Field;)V

    .line 530
    .local v13, fam:Lorg/mozilla/javascript/FieldAndMethods;
    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->staticFieldAndMethods:Ljava/util/Map;

    move-object/from16 v45, v0

    move-object/from16 v16, v45

    .line 532
    .local v16, fmht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/FieldAndMethods;>;"
    :goto_c
    if-nez v16, :cond_11

    .line 533
    new-instance v16, Ljava/util/HashMap;

    .end local v16           #fmht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/FieldAndMethods;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 534
    .restart local v16       #fmht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/FieldAndMethods;>;"
    if-eqz v22, :cond_13

    .line 535
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/JavaMembers;->staticFieldAndMethods:Ljava/util/Map;

    .line 540
    :cond_11
    :goto_d
    move-object/from16 v0, v16

    move-object/from16 v1, v32

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 530
    .end local v16           #fmht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/FieldAndMethods;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->fieldAndMethods:Ljava/util/Map;

    move-object/from16 v45, v0

    move-object/from16 v16, v45

    goto :goto_c

    .line 537
    .restart local v16       #fmht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/FieldAndMethods;>;"
    :cond_13
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/JavaMembers;->fieldAndMethods:Ljava/util/Map;

    goto :goto_d

    .line 542
    .end local v13           #fam:Lorg/mozilla/javascript/FieldAndMethods;
    .end local v16           #fmht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/FieldAndMethods;>;"
    .end local v28           #method:Lorg/mozilla/javascript/NativeJavaMethod;
    :cond_14
    move-object/from16 v0, v24

    instance-of v0, v0, Ljava/lang/reflect/Field;

    move/from16 v45, v0

    if-eqz v45, :cond_15

    .line 543
    move-object/from16 v0, v24

    check-cast v0, Ljava/lang/reflect/Field;

    move-object/from16 v35, v0

    .line 550
    .local v35, oldField:Ljava/lang/reflect/Field;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v45

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v45

    if-eqz v45, :cond_d

    .line 553
    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 557
    .end local v35           #oldField:Ljava/lang/reflect/Field;
    :cond_15
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a

    .line 569
    .end local v14           #field:Ljava/lang/reflect/Field;
    .end local v19           #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v22           #isStatic:Z
    .end local v24           #member:Ljava/lang/Object;
    .end local v31           #mods:I
    .end local v32           #name:Ljava/lang/String;
    :cond_16
    const/16 v40, 0x0

    :goto_e
    const/16 v45, 0x2

    move/from16 v0, v40

    move/from16 v1, v45

    if-eq v0, v1, :cond_24

    .line 570
    if-nez v40, :cond_1d

    const/16 v45, 0x1

    move/from16 v22, v45

    .line 571
    .restart local v22       #isStatic:Z
    :goto_f
    if-eqz v22, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    move-object/from16 v45, v0

    move-object/from16 v19, v45

    .line 573
    .restart local v19       #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_10
    new-instance v41, Ljava/util/HashMap;

    invoke-direct/range {v41 .. v41}, Ljava/util/HashMap;-><init>()V

    .line 576
    .local v41, toAdd:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/BeanProperty;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_17
    :goto_11
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_22

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 578
    .restart local v32       #name:Ljava/lang/String;
    const-string v45, "get"

    move-object/from16 v0, v32

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    .line 579
    .local v25, memberIsGetMethod:Z
    const-string v45, "set"

    move-object/from16 v0, v32

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    .line 580
    .local v27, memberIsSetMethod:Z
    const-string v45, "is"

    move-object/from16 v0, v32

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    .line 581
    .local v26, memberIsIsMethod:Z
    if-nez v25, :cond_18

    if-nez v26, :cond_18

    if-eqz v27, :cond_17

    .line 584
    :cond_18
    if-eqz v26, :cond_1f

    const/16 v45, 0x2

    :goto_12
    move-object/from16 v0, v32

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    .line 586
    .local v33, nameComponent:Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v45

    if-eqz v45, :cond_17

    .line 590
    move-object/from16 v6, v33

    .line 591
    .local v6, beanPropertyName:Ljava/lang/String;
    const/16 v45, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 592
    .local v8, ch0:C
    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v45

    if-eqz v45, :cond_19

    .line 593
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v45

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_20

    .line 594
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 606
    :cond_19
    :goto_13
    move-object/from16 v0, v41

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v45

    if-nez v45, :cond_17

    .line 608
    move-object/from16 v0, v19

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .line 609
    .local v43, v:Ljava/lang/Object;
    if-eqz v43, :cond_1a

    .line 611
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/JavaMembers;->includePrivate:Z

    move/from16 v45, v0

    if-eqz v45, :cond_17

    move-object/from16 v0, v43

    instance-of v0, v0, Ljava/lang/reflect/Member;

    move/from16 v45, v0

    if-eqz v45, :cond_17

    check-cast v43, Ljava/lang/reflect/Member;

    .end local v43           #v:Ljava/lang/Object;
    invoke-interface/range {v43 .. v43}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v45

    if-eqz v45, :cond_17

    .line 621
    :cond_1a
    const/16 v18, 0x0

    .line 622
    .local v18, getter:Lorg/mozilla/javascript/MemberBox;
    const-string v45, "get"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, v45

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/JavaMembers;->findGetter(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/MemberBox;

    move-result-object v18

    .line 624
    if-nez v18, :cond_1b

    .line 625
    const-string v45, "is"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, v45

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/JavaMembers;->findGetter(ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/MemberBox;

    move-result-object v18

    .line 629
    :cond_1b
    const/16 v37, 0x0

    .line 630
    .local v37, setter:Lorg/mozilla/javascript/MemberBox;
    const/16 v39, 0x0

    .line 631
    .local v39, setters:Lorg/mozilla/javascript/NativeJavaMethod;
    const-string v45, "set"

    move-object/from16 v0, v45

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 633
    .local v38, setterName:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_1c

    .line 635
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 636
    .restart local v24       #member:Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/mozilla/javascript/NativeJavaMethod;

    move/from16 v45, v0

    if-eqz v45, :cond_1c

    .line 637
    move-object/from16 v0, v24

    check-cast v0, Lorg/mozilla/javascript/NativeJavaMethod;

    move-object/from16 v34, v0

    .line 638
    .local v34, njmSet:Lorg/mozilla/javascript/NativeJavaMethod;
    if-eqz v18, :cond_21

    .line 641
    invoke-virtual/range {v18 .. v18}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v42

    .line 642
    .local v42, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v45, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v45

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/JavaMembers;->extractSetMethod(Ljava/lang/Class;[Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;

    move-result-object v37

    .line 649
    .end local v42           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_14
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    const/16 v46, 0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-le v0, v1, :cond_1c

    .line 650
    move-object/from16 v39, v34

    .line 655
    .end local v24           #member:Ljava/lang/Object;
    .end local v34           #njmSet:Lorg/mozilla/javascript/NativeJavaMethod;
    :cond_1c
    new-instance v7, Lorg/mozilla/javascript/BeanProperty;

    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v37

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/BeanProperty;-><init>(Lorg/mozilla/javascript/MemberBox;Lorg/mozilla/javascript/MemberBox;Lorg/mozilla/javascript/NativeJavaMethod;)V

    .line 657
    .local v7, bp:Lorg/mozilla/javascript/BeanProperty;
    move-object/from16 v0, v41

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 570
    .end local v6           #beanPropertyName:Ljava/lang/String;
    .end local v7           #bp:Lorg/mozilla/javascript/BeanProperty;
    .end local v8           #ch0:C
    .end local v18           #getter:Lorg/mozilla/javascript/MemberBox;
    .end local v19           #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v22           #isStatic:Z
    .end local v25           #memberIsGetMethod:Z
    .end local v26           #memberIsIsMethod:Z
    .end local v27           #memberIsSetMethod:Z
    .end local v32           #name:Ljava/lang/String;
    .end local v33           #nameComponent:Ljava/lang/String;
    .end local v37           #setter:Lorg/mozilla/javascript/MemberBox;
    .end local v38           #setterName:Ljava/lang/String;
    .end local v39           #setters:Lorg/mozilla/javascript/NativeJavaMethod;
    .end local v41           #toAdd:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/BeanProperty;>;"
    :cond_1d
    const/16 v45, 0x0

    move/from16 v22, v45

    goto/16 :goto_f

    .line 571
    .restart local v22       #isStatic:Z
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    move-object/from16 v45, v0

    move-object/from16 v19, v45

    goto/16 :goto_10

    .line 584
    .restart local v19       #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v25       #memberIsGetMethod:Z
    .restart local v26       #memberIsIsMethod:Z
    .restart local v27       #memberIsSetMethod:Z
    .restart local v32       #name:Ljava/lang/String;
    .restart local v41       #toAdd:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/BeanProperty;>;"
    :cond_1f
    const/16 v45, 0x3

    goto/16 :goto_12

    .line 596
    .restart local v6       #beanPropertyName:Ljava/lang/String;
    .restart local v8       #ch0:C
    .restart local v33       #nameComponent:Ljava/lang/String;
    :cond_20
    const/16 v45, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 597
    .local v9, ch1:C
    invoke-static {v9}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v45

    if-nez v45, :cond_19

    .line 598
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v45

    const/16 v46, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_13

    .line 646
    .end local v9           #ch1:C
    .restart local v18       #getter:Lorg/mozilla/javascript/MemberBox;
    .restart local v24       #member:Ljava/lang/Object;
    .restart local v34       #njmSet:Lorg/mozilla/javascript/NativeJavaMethod;
    .restart local v37       #setter:Lorg/mozilla/javascript/MemberBox;
    .restart local v38       #setterName:Ljava/lang/String;
    .restart local v39       #setters:Lorg/mozilla/javascript/NativeJavaMethod;
    :cond_21
    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/mozilla/javascript/NativeJavaMethod;->methods:[Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/mozilla/javascript/JavaMembers;->extractSetMethod([Lorg/mozilla/javascript/MemberBox;Z)Lorg/mozilla/javascript/MemberBox;

    move-result-object v37

    goto :goto_14

    .line 662
    .end local v6           #beanPropertyName:Ljava/lang/String;
    .end local v8           #ch0:C
    .end local v18           #getter:Lorg/mozilla/javascript/MemberBox;
    .end local v24           #member:Ljava/lang/Object;
    .end local v25           #memberIsGetMethod:Z
    .end local v26           #memberIsIsMethod:Z
    .end local v27           #memberIsSetMethod:Z
    .end local v32           #name:Ljava/lang/String;
    .end local v33           #nameComponent:Ljava/lang/String;
    .end local v34           #njmSet:Lorg/mozilla/javascript/NativeJavaMethod;
    .end local v37           #setter:Lorg/mozilla/javascript/MemberBox;
    .end local v38           #setterName:Ljava/lang/String;
    .end local v39           #setters:Lorg/mozilla/javascript/NativeJavaMethod;
    :cond_22
    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v45

    invoke-interface/range {v45 .. v45}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_15
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_23

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 663
    .local v23, key:Ljava/lang/String;
    move-object/from16 v0, v41

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .line 664
    .restart local v44       #value:Ljava/lang/Object;
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 569
    .end local v23           #key:Ljava/lang/String;
    .end local v44           #value:Ljava/lang/Object;
    :cond_23
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_e

    .line 669
    .end local v19           #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v22           #isStatic:Z
    .end local v41           #toAdd:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/BeanProperty;>;"
    :cond_24
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/JavaMembers;->getAccessibleConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 670
    .local v10, constructors:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    move-object v0, v10

    array-length v0, v0

    move/from16 v45, v0

    move/from16 v0, v45

    new-array v0, v0, [Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/JavaMembers;->ctors:[Lorg/mozilla/javascript/MemberBox;

    .line 671
    const/16 v20, 0x0

    :goto_16
    move-object v0, v10

    array-length v0, v0

    move/from16 v45, v0

    move/from16 v0, v20

    move/from16 v1, v45

    if-eq v0, v1, :cond_25

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->ctors:[Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v45, v0

    new-instance v46, Lorg/mozilla/javascript/MemberBox;

    aget-object v47, v10, v20

    invoke-direct/range {v46 .. v47}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v46, v45, v20

    .line 671
    add-int/lit8 v20, v20, 0x1

    goto :goto_16

    .line 674
    :cond_25
    return-void
.end method


# virtual methods
.method get(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .parameter "scope"
    .parameter "name"
    .parameter "javaObject"
    .parameter "isStatic"

    .prologue
    .line 95
    if-eqz p4, :cond_1

    iget-object v9, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    move-object v5, v9

    .line 96
    .local v5, ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 97
    .local v6, member:Ljava/lang/Object;
    if-nez p4, :cond_0

    if-nez v6, :cond_0

    .line 99
    iget-object v9, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 101
    :cond_0
    if-nez v6, :cond_2

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/JavaMembers;->getExplicitFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    .line 104
    if-nez v6, :cond_2

    .line 105
    sget-object v9, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    .line 130
    :goto_1
    return-object v9

    .line 95
    .end local v5           #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #member:Ljava/lang/Object;
    :cond_1
    iget-object v9, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    move-object v5, v9

    goto :goto_0

    .line 107
    .restart local v5       #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6       #member:Ljava/lang/Object;
    :cond_2
    instance-of v9, v6, Lorg/mozilla/javascript/Scriptable;

    if-eqz v9, :cond_3

    move-object v9, v6

    .line 108
    goto :goto_1

    .line 110
    :cond_3
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v2

    .line 114
    .local v2, cx:Lorg/mozilla/javascript/Context;
    :try_start_0
    instance-of v9, v6, Lorg/mozilla/javascript/BeanProperty;

    if-eqz v9, :cond_5

    .line 115
    move-object v0, v6

    check-cast v0, Lorg/mozilla/javascript/BeanProperty;

    move-object v1, v0

    .line 116
    .local v1, bp:Lorg/mozilla/javascript/BeanProperty;
    iget-object v9, v1, Lorg/mozilla/javascript/BeanProperty;->getter:Lorg/mozilla/javascript/MemberBox;

    if-nez v9, :cond_4

    .line 117
    sget-object v9, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    goto :goto_1

    .line 118
    :cond_4
    iget-object v9, v1, Lorg/mozilla/javascript/BeanProperty;->getter:Lorg/mozilla/javascript/MemberBox;

    sget-object v10, Lorg/mozilla/javascript/Context;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {v9, p3, v10}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 119
    .local v7, rval:Ljava/lang/Object;
    iget-object v9, v1, Lorg/mozilla/javascript/BeanProperty;->getter:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v9}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 129
    .end local v1           #bp:Lorg/mozilla/javascript/BeanProperty;
    .local v8, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 130
    invoke-virtual {v2}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v9

    invoke-virtual {v9, v2, p1, v7, v8}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_1

    .line 121
    .end local v7           #rval:Ljava/lang/Object;
    .end local v8           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_5
    :try_start_1
    move-object v0, v6

    check-cast v0, Ljava/lang/reflect/Field;

    move-object v4, v0

    .line 122
    .local v4, field:Ljava/lang/reflect/Field;
    if-eqz p4, :cond_6

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 123
    .restart local v7       #rval:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .restart local v8       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    goto :goto_2

    .end local v7           #rval:Ljava/lang/Object;
    .end local v8           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_6
    move-object v9, p3

    .line 122
    goto :goto_3

    .line 125
    .end local v4           #field:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 126
    .local v3, ex:Ljava/lang/Exception;
    invoke-static {v3}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v9

    throw v9
.end method

.method getFieldAndMethodsObjects(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Ljava/util/Map;
    .locals 8
    .parameter "scope"
    .parameter "javaObject"
    .parameter "isStatic"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/FieldAndMethods;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    if-eqz p3, :cond_0

    iget-object v6, p0, Lorg/mozilla/javascript/JavaMembers;->staticFieldAndMethods:Ljava/util/Map;

    move-object v2, v6

    .line 815
    .local v2, ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/FieldAndMethods;>;"
    :goto_0
    if-nez v2, :cond_1

    .line 816
    const/4 v6, 0x0

    .line 825
    :goto_1
    return-object v6

    .line 814
    .end local v2           #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/FieldAndMethods;>;"
    :cond_0
    iget-object v6, p0, Lorg/mozilla/javascript/JavaMembers;->fieldAndMethods:Ljava/util/Map;

    move-object v2, v6

    goto :goto_0

    .line 817
    .restart local v2       #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/FieldAndMethods;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    .line 818
    .local v4, len:I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 819
    .local v5, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/mozilla/javascript/FieldAndMethods;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/FieldAndMethods;

    .line 820
    .local v0, fam:Lorg/mozilla/javascript/FieldAndMethods;
    new-instance v1, Lorg/mozilla/javascript/FieldAndMethods;

    iget-object v6, v0, Lorg/mozilla/javascript/FieldAndMethods;->methods:[Lorg/mozilla/javascript/MemberBox;

    iget-object v7, v0, Lorg/mozilla/javascript/FieldAndMethods;->field:Ljava/lang/reflect/Field;

    invoke-direct {v1, p1, v6, v7}, Lorg/mozilla/javascript/FieldAndMethods;-><init>(Lorg/mozilla/javascript/Scriptable;[Lorg/mozilla/javascript/MemberBox;Ljava/lang/reflect/Field;)V

    .line 822
    .local v1, famNew:Lorg/mozilla/javascript/FieldAndMethods;
    iput-object p2, v1, Lorg/mozilla/javascript/FieldAndMethods;->javaObject:Ljava/lang/Object;

    .line 823
    iget-object v6, v0, Lorg/mozilla/javascript/FieldAndMethods;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v0           #fam:Lorg/mozilla/javascript/FieldAndMethods;
    .end local v1           #famNew:Lorg/mozilla/javascript/FieldAndMethods;
    :cond_2
    move-object v6, v5

    .line 825
    goto :goto_1
.end method

.method getIds(Z)[Ljava/lang/Object;
    .locals 3
    .parameter "isStatic"

    .prologue
    .line 200
    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    move-object v0, v1

    .line 201
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 200
    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    move-object v0, v1

    goto :goto_0
.end method

.method has(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "name"
    .parameter "isStatic"

    .prologue
    const/4 v3, 0x1

    .line 84
    if-eqz p2, :cond_0

    iget-object v2, p0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    move-object v0, v2

    .line 85
    .local v0, ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 86
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_1

    move v2, v3

    .line 89
    :goto_1
    return v2

    .line 84
    .end local v0           #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #obj:Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    move-object v0, v2

    goto :goto_0

    .line 89
    .restart local v0       #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/JavaMembers;->findExplicitFunction(Ljava/lang/String;Z)Lorg/mozilla/javascript/MemberBox;

    move-result-object v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method put(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 20
    .parameter "scope"
    .parameter "name"
    .parameter "javaObject"
    .parameter "value"
    .parameter "isStatic"

    .prologue
    .line 136
    if-eqz p5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v12, v17

    .line 137
    .local v12, ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    move-object v0, v12

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 138
    .local v14, member:Ljava/lang/Object;
    if-nez p5, :cond_0

    if-nez v14, :cond_0

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->staticMembers:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 142
    :cond_0
    if-nez v14, :cond_2

    .line 143
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/JavaMembers;->reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 136
    .end local v12           #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14           #member:Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->members:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v12, v17

    goto :goto_0

    .line 144
    .restart local v12       #ht:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v14       #member:Ljava/lang/Object;
    :cond_2
    move-object v0, v14

    instance-of v0, v0, Lorg/mozilla/javascript/FieldAndMethods;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 145
    move-object v0, v12

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mozilla/javascript/FieldAndMethods;

    .line 146
    .local v10, fam:Lorg/mozilla/javascript/FieldAndMethods;
    iget-object v14, v10, Lorg/mozilla/javascript/FieldAndMethods;->field:Ljava/lang/reflect/Field;

    .line 150
    .end local v10           #fam:Lorg/mozilla/javascript/FieldAndMethods;
    .end local v14           #member:Ljava/lang/Object;
    :cond_3
    move-object v0, v14

    instance-of v0, v0, Lorg/mozilla/javascript/BeanProperty;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 151
    move-object v0, v14

    check-cast v0, Lorg/mozilla/javascript/BeanProperty;

    move-object v8, v0

    .line 152
    .local v8, bp:Lorg/mozilla/javascript/BeanProperty;
    move-object v0, v8

    iget-object v0, v0, Lorg/mozilla/javascript/BeanProperty;->setter:Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/JavaMembers;->reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 158
    :cond_4
    move-object v0, v8

    iget-object v0, v0, Lorg/mozilla/javascript/BeanProperty;->setters:Lorg/mozilla/javascript/NativeJavaMethod;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    if-nez p4, :cond_7

    .line 159
    :cond_5
    move-object v0, v8

    iget-object v0, v0, Lorg/mozilla/javascript/BeanProperty;->setter:Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v15, v17, v18

    .line 160
    .local v15, setType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object v7, v0

    const/16 v17, 0x0

    move-object/from16 v0, p4

    move-object v1, v15

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v7, v17

    .line 162
    .local v7, args:[Ljava/lang/Object;
    :try_start_0
    move-object v0, v8

    iget-object v0, v0, Lorg/mozilla/javascript/BeanProperty;->setter:Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v7           #args:[Ljava/lang/Object;
    .end local v8           #bp:Lorg/mozilla/javascript/BeanProperty;
    .end local v15           #setType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_6
    :goto_1
    return-void

    .line 163
    .restart local v7       #args:[Ljava/lang/Object;
    .restart local v8       #bp:Lorg/mozilla/javascript/BeanProperty;
    .restart local v15       #setType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v17

    move-object/from16 v9, v17

    .line 164
    .local v9, ex:Ljava/lang/Exception;
    invoke-static {v9}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 167
    .end local v7           #args:[Ljava/lang/Object;
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v15           #setType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object v7, v0

    const/16 v17, 0x0

    aput-object p4, v7, v17

    .line 168
    .restart local v7       #args:[Ljava/lang/Object;
    move-object v0, v8

    iget-object v0, v0, Lorg/mozilla/javascript/BeanProperty;->setters:Lorg/mozilla/javascript/NativeJavaMethod;

    move-object/from16 v17, v0

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/NativeJavaMethod;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 174
    .end local v7           #args:[Ljava/lang/Object;
    .end local v8           #bp:Lorg/mozilla/javascript/BeanProperty;
    :cond_8
    move-object v0, v14

    instance-of v0, v0, Ljava/lang/reflect/Field;

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 175
    if-nez v14, :cond_9

    const-string v17, "msg.java.internal.private"

    move-object/from16 v16, v17

    .line 177
    .local v16, str:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v17

    throw v17

    .line 175
    .end local v16           #str:Ljava/lang/String;
    :cond_9
    const-string v17, "msg.java.method.assign"

    move-object/from16 v16, v17

    goto :goto_2

    .line 179
    :cond_a
    move-object v0, v14

    check-cast v0, Ljava/lang/reflect/Field;

    move-object v11, v0

    .line 180
    .local v11, field:Ljava/lang/reflect/Field;
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    .line 182
    .local v13, javaValue:Ljava/lang/Object;
    :try_start_1
    move-object v0, v11

    move-object/from16 v1, p3

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 183
    :catch_1
    move-exception v5

    .line 184
    .local v5, accessEx:Ljava/lang/IllegalAccessException;
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v17

    and-int/lit8 v17, v17, 0x10

    if-nez v17, :cond_6

    .line 188
    invoke-static {v5}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v17

    throw v17

    .line 189
    .end local v5           #accessEx:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v6

    .line 190
    .local v6, argEx:Ljava/lang/IllegalArgumentException;
    const-string v17, "msg.java.internal.field.type"

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v11

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Context;->reportRuntimeError3(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v17

    throw v17
.end method

.method reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 2
    .parameter "memberName"

    .prologue
    .line 886
    const-string v0, "msg.java.member.not.found"

    iget-object v1, p0, Lorg/mozilla/javascript/JavaMembers;->cl:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    return-object v0
.end method
