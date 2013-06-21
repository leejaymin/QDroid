.class final Lorg/mozilla/javascript/MemberBox;
.super Ljava/lang/Object;
.source "MemberBox.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final primitives:[Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x583e1be606e304b5L


# instance fields
.field transient argTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field transient delegateTo:Ljava/lang/Object;

.field private transient memberObject:Ljava/lang/reflect/Member;

.field transient vararg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 313
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/mozilla/javascript/MemberBox;->primitives:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/MemberBox;->init(Ljava/lang/reflect/Constructor;)V

    .line 73
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0
    .parameter "method"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/MemberBox;->init(Ljava/lang/reflect/Method;)V

    .line 68
    return-void
.end method

.method private init(Ljava/lang/reflect/Constructor;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, constructor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    iput-object p1, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    .line 85
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 86
    sget-object v0, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/VMBridge;->isVarArgs(Ljava/lang/reflect/Member;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    .line 87
    return-void
.end method

.method private init(Ljava/lang/reflect/Method;)V
    .locals 1
    .parameter "method"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    .line 78
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 79
    sget-object v0, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/VMBridge;->isVarArgs(Ljava/lang/reflect/Member;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    .line 80
    return-void
.end method

.method private static readMember(Ljava/io/ObjectInputStream;)Ljava/lang/reflect/Member;
    .locals 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    if-nez v5, :cond_0

    .line 297
    const/4 v5, 0x0

    .line 306
    :goto_0
    return-object v5

    .line 298
    :cond_0
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v2

    .line 299
    .local v2, isMethod:Z
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 300
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 301
    .local v0, declaring:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/mozilla/javascript/MemberBox;->readParameters(Ljava/io/ObjectInputStream;)[Ljava/lang/Class;

    move-result-object v4

    .line 303
    .local v4, parms:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1

    .line 304
    :try_start_0
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 308
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 309
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find member: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 248
    invoke-static {p1}, Lorg/mozilla/javascript/MemberBox;->readMember(Ljava/io/ObjectInputStream;)Ljava/lang/reflect/Member;

    move-result-object v0

    .line 249
    .local v0, member:Ljava/lang/reflect/Member;
    instance-of v1, v0, Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 250
    check-cast v0, Ljava/lang/reflect/Method;

    .end local v0           #member:Ljava/lang/reflect/Member;
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/MemberBox;->init(Ljava/lang/reflect/Method;)V

    .line 254
    :goto_0
    return-void

    .line 252
    .restart local v0       #member:Ljava/lang/reflect/Member;
    :cond_0
    check-cast v0, Ljava/lang/reflect/Constructor;

    .end local v0           #member:Ljava/lang/reflect/Member;
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/MemberBox;->init(Ljava/lang/reflect/Constructor;)V

    goto :goto_0
.end method

.method private static readParameters(Ljava/io/ObjectInputStream;)[Ljava/lang/Class;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInputStream;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readShort()S

    move-result v2

    new-array v1, v2, [Ljava/lang/Class;

    .line 362
    .local v1, result:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 363
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v2

    if-nez v2, :cond_0

    .line 364
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    aput-object v2, v1, v0

    .line 362
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_0
    sget-object v2, Lorg/mozilla/javascript/MemberBox;->primitives:[Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v3

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    goto :goto_1

    .line 369
    :cond_1
    return-object v1
.end method

.method private static searchAccessibleMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 10
    .parameter "method"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, params:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    .line 209
    .local v7, modifiers:I
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 210
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 211
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 212
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 214
    .local v4, intfs:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, i:I
    array-length v0, v4

    .local v0, N:I
    :goto_0
    if-eq v2, v0, :cond_1

    .line 215
    aget-object v3, v4, v2

    .line 216
    .local v3, intf:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 218
    :try_start_0
    invoke-virtual {v3, v8, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 241
    .end local v0           #N:I
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #i:I
    .end local v3           #intf:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #intfs:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v8           #name:Ljava/lang/String;
    :goto_1
    return-object v9

    .line 219
    .restart local v0       #N:I
    .restart local v1       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #i:I
    .restart local v3       #intf:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v4       #intfs:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v8       #name:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 214
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v3           #intf:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v9

    .line 224
    :cond_1
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 225
    if-nez v1, :cond_3

    .line 241
    .end local v0           #N:I
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #i:I
    .end local v4           #intfs:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v8           #name:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 226
    .restart local v0       #N:I
    .restart local v1       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #i:I
    .restart local v4       #intfs:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v8       #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 228
    :try_start_1
    invoke-virtual {v1, v8, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 229
    .local v5, m:Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    .line 230
    .local v6, mModifiers:I
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-nez v9, :cond_1

    move-object v9, v5

    .line 233
    goto :goto_1

    .line 220
    .end local v5           #m:Ljava/lang/reflect/Method;
    .end local v6           #mModifiers:I
    .restart local v3       #intf:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_2
    move-exception v9

    goto :goto_2

    .line 235
    .end local v3           #intf:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_3
    move-exception v9

    goto :goto_3
.end method

.method private static writeMember(Ljava/io/ObjectOutputStream;Ljava/lang/reflect/Member;)V
    .locals 2
    .parameter "out"
    .parameter "member"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 288
    .end local p1
    :goto_0
    return-void

    .line 277
    .restart local p1
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 278
    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_1

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not Method or Constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 281
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 282
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 283
    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 284
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/MemberBox;->writeParameters(Ljava/io/ObjectOutputStream;[Ljava/lang/Class;)V

    goto :goto_0

    .line 286
    .restart local p1
    :cond_2
    check-cast p1, Ljava/lang/reflect/Constructor;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mozilla/javascript/MemberBox;->writeParameters(Ljava/io/ObjectOutputStream;[Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 260
    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    invoke-static {p1, v0}, Lorg/mozilla/javascript/MemberBox;->writeMember(Ljava/io/ObjectOutputStream;Ljava/lang/reflect/Member;)V

    .line 261
    return-void
.end method

.method private static writeParameters(Ljava/io/ObjectOutputStream;[Ljava/lang/Class;)V
    .locals 7
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectOutputStream;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    .local p1, parms:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v4, p1

    invoke-virtual {p0, v4}, Ljava/io/ObjectOutputStream;->writeShort(I)V

    .line 336
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 337
    aget-object v2, p1, v0

    .line 338
    .local v2, parm:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    .line 339
    .local v3, primitive:Z
    invoke-virtual {p0, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 340
    if-nez v3, :cond_0

    .line 341
    invoke-virtual {p0, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 336
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    sget-object v4, Lorg/mozilla/javascript/MemberBox;->primitives:[Ljava/lang/Class;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 345
    sget-object v4, Lorg/mozilla/javascript/MemberBox;->primitives:[Ljava/lang/Class;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    invoke-virtual {p0, v1}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    goto :goto_1

    .line 344
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 350
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Primitive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 353
    .end local v1           #j:I
    .end local v2           #parm:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #primitive:Z
    :cond_3
    return-void
.end method


# virtual methods
.method ctor()Ljava/lang/reflect/Constructor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object p0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    .end local p0
    check-cast p0, Ljava/lang/reflect/Constructor;

    return-object p0
.end method

.method getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "target"
    .parameter "args"

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v4

    .line 161
    .local v4, method:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v4, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 173
    :goto_0
    return-object v5

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, ex:Ljava/lang/IllegalAccessException;
    :try_start_1
    iget-object v5, p0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    invoke-static {v4, v5}, Lorg/mozilla/javascript/MemberBox;->searchAccessibleMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 164
    .local v0, accessible:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    .line 165
    iput-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    .line 166
    move-object v4, v0

    .line 173
    :cond_0
    invoke-virtual {v4, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 168
    :cond_1
    sget-object v5, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/VMBridge;->tryToMakeAccessible(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 169
    invoke-static {v2}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 175
    .end local v0           #accessible:Ljava/lang/reflect/Method;
    .end local v2           #ex:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 177
    .local v3, ite:Ljava/lang/reflect/InvocationTargetException;
    move-object v1, v3

    .line 179
    .local v1, e:Ljava/lang/Throwable;
    :cond_2
    check-cast v1, Ljava/lang/reflect/InvocationTargetException;

    .end local v1           #e:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    .line 180
    .restart local v1       #e:Ljava/lang/Throwable;
    instance-of v5, v1, Ljava/lang/reflect/InvocationTargetException;

    if-nez v5, :cond_2

    .line 181
    instance-of v5, v1, Lorg/mozilla/javascript/ContinuationPending;

    if-eqz v5, :cond_3

    .line 182
    check-cast v1, Lorg/mozilla/javascript/ContinuationPending;

    .end local v1           #e:Ljava/lang/Throwable;
    throw v1

    .line 183
    .restart local v1       #e:Ljava/lang/Throwable;
    :cond_3
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 184
    .end local v1           #e:Ljava/lang/Throwable;
    .end local v3           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v5

    move-object v2, v5

    .line 185
    .local v2, ex:Ljava/lang/Exception;
    invoke-static {v2}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method isCtor()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Constructor;

    return v0
.end method

.method isMethod()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Method;

    return v0
.end method

.method isStatic()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method member()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method method()Ljava/lang/reflect/Method;
    .locals 0

    .prologue
    .line 91
    iget-object p0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    .end local p0
    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0
.end method

.method newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "args"

    .prologue
    .line 191
    invoke-virtual {p0}, Lorg/mozilla/javascript/MemberBox;->ctor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 194
    .local v0, ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 200
    :goto_0
    return-object v2

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, ex:Ljava/lang/IllegalAccessException;
    :try_start_1
    sget-object v2, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v2, v0}, Lorg/mozilla/javascript/VMBridge;->tryToMakeAccessible(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    .end local v1           #ex:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 202
    .local v1, ex:Ljava/lang/Exception;
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 200
    .local v1, ex:Ljava/lang/IllegalAccessException;
    :cond_0
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto :goto_0
.end method

.method toJavaDeclaration()Ljava/lang/String;
    .locals 6

    .prologue
    .line 131
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v4, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/mozilla/javascript/MemberBox;->isMethod()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    invoke-virtual {p0}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 134
    .local v2, method:Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 135
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    iget-object v5, p0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    invoke-static {v5}, Lorg/mozilla/javascript/JavaMembers;->liveConnectSignature([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 138
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/MemberBox;->ctor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 139
    .local v0, ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, name:Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 141
    .local v1, lastDot:I
    if-ltz v1, :cond_1

    .line 142
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/mozilla/javascript/MemberBox;->memberObject:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
