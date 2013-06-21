.class public Lorg/mozilla/javascript/NativeJavaClass;
.super Lorg/mozilla/javascript/NativeJavaObject;
.source "NativeJavaClass.java"

# interfaces
.implements Lorg/mozilla/javascript/Function;


# static fields
.field static final javaClassPropertyName:Ljava/lang/String; = "__javaObject__"

.field static final serialVersionUID:J = -0x59a93e92bdc24ba0L


# instance fields
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/mozilla/javascript/NativeJavaObject;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V
    .locals 0
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
    .line 75
    .local p2, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/mozilla/javascript/NativeJavaObject;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaClass;->parent:Lorg/mozilla/javascript/Scriptable;

    .line 77
    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaClass;->javaObject:Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaClass;->initMembers()V

    .line 79
    return-void
.end method

.method static constructSpecific(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/MemberBox;)Lorg/mozilla/javascript/Scriptable;
    .locals 7
    .parameter "cx"
    .parameter "scope"
    .parameter "args"
    .parameter "ctor"

    .prologue
    .line 229
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    .line 230
    .local v3, topLevel:Lorg/mozilla/javascript/Scriptable;
    iget-object v0, p3, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 232
    .local v0, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    iget-boolean p1, p3, Lorg/mozilla/javascript/MemberBox;->vararg:Z

    .end local p1
    if-eqz p1, :cond_4

    .line 234
    array-length p1, v0

    new-array v2, p1, [Ljava/lang/Object;

    .line 235
    .local v2, newArgs:[Ljava/lang/Object;
    const/4 p1, 0x0

    .local p1, i:I
    :goto_0
    array-length v1, v0

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    if-ge p1, v1, :cond_0

    .line 236
    aget-object v1, p2, p1

    aget-object v4, v0, p1

    invoke-static {v1, v4}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, p1

    .line 235
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 243
    :cond_0
    array-length p1, p2

    .end local p1           #i:I
    array-length v1, v0

    if-ne p1, v1, :cond_3

    array-length p1, p2

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-object p1, p2, p1

    if-eqz p1, :cond_1

    array-length p1, p2

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-object p1, p2, p1

    instance-of p1, p1, Lorg/mozilla/javascript/NativeArray;

    if-nez p1, :cond_1

    array-length p1, p2

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-object p1, p2, p1

    instance-of p1, p1, Lorg/mozilla/javascript/NativeJavaArray;

    if-eqz p1, :cond_3

    .line 249
    :cond_1
    array-length p1, p2

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-object p1, p2, p1

    array-length p2, v0

    .end local p2
    const/4 v1, 0x1

    sub-int/2addr p2, v1

    aget-object p2, v0, p2

    invoke-static {p1, p2}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 265
    .local p1, varArgs:Ljava/lang/Object;
    :goto_1
    array-length p2, v0

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    aput-object p1, v2, p2

    .line 267
    .end local v0           #argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object p2, v2

    .line 282
    .end local v2           #newArgs:[Ljava/lang/Object;
    .end local p1           #varArgs:Ljava/lang/Object;
    .restart local p2
    :cond_2
    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/MemberBox;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 285
    .local p1, instance:Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object p2

    .end local p2
    invoke-virtual {p2, p0, v3, p1}, Lorg/mozilla/javascript/WrapFactory;->wrapNewObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .end local p0
    return-object p0

    .line 253
    .end local p1           #instance:Ljava/lang/Object;
    .restart local v0       #argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v2       #newArgs:[Ljava/lang/Object;
    .restart local p0
    .restart local p2
    :cond_3
    array-length p1, v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 255
    .local p1, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    array-length v1, p2

    array-length v4, v0

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    .line 257
    .local v5, varArgs:Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 258
    array-length v4, v0

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    add-int/2addr v4, v1

    aget-object v4, p2, v4

    invoke-static {v4, p1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 260
    .local v4, value:Ljava/lang/Object;
    invoke-static {v5, v1, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 269
    .end local v1           #i:I
    .end local v2           #newArgs:[Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/Object;
    .end local v5           #varArgs:Ljava/lang/Object;
    .end local p1           #componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    move-object v2, p2

    .line 270
    .local v2, origArgs:[Ljava/lang/Object;
    const/4 p1, 0x0

    .local p1, i:I
    move v1, p1

    .end local p1           #i:I
    .restart local v1       #i:I
    :goto_3
    array-length p1, p2

    if-ge v1, p1, :cond_2

    .line 271
    aget-object p1, p2, v1

    .line 272
    .local p1, arg:Ljava/lang/Object;
    aget-object v4, v0, v1

    invoke-static {p1, v4}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 273
    .local v4, x:Ljava/lang/Object;
    if-eq v4, p1, :cond_6

    .line 274
    if-ne p2, v2, :cond_5

    .line 275
    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, [Ljava/lang/Object;

    .line 277
    .restart local p2
    :cond_5
    aput-object v4, p2, v1

    .line 270
    :cond_6
    add-int/lit8 p1, v1, 0x1

    .end local v1           #i:I
    .local p1, i:I
    move v1, p1

    .end local p1           #i:I
    .restart local v1       #i:I
    goto :goto_3

    .end local v4           #x:Ljava/lang/Object;
    .local v2, newArgs:[Ljava/lang/Object;
    .restart local v5       #varArgs:Ljava/lang/Object;
    .local p1, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_7
    move-object p1, v5

    .end local v5           #varArgs:Ljava/lang/Object;
    .local p1, varArgs:Ljava/lang/Object;
    goto :goto_1
.end method

.method private static findNestedClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, parentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, nestedClassName:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 318
    .local v0, loader:Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 323
    invoke-static {v1}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 325
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1}, Lorg/mozilla/javascript/Kit;->classOrNull(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const/4 v6, 0x0

    .line 169
    array-length v4, p4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    aget-object v4, p4, v6

    instance-of v4, v4, Lorg/mozilla/javascript/Scriptable;

    if-eqz v4, :cond_2

    .line 170
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaClass;->getClassObject()Ljava/lang/Class;

    move-result-object v1

    .line 171
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    aget-object v3, p4, v6

    check-cast v3, Lorg/mozilla/javascript/Scriptable;

    .line 173
    .local v3, p:Lorg/mozilla/javascript/Scriptable;
    :cond_0
    instance-of v4, v3, Lorg/mozilla/javascript/Wrapper;

    if-eqz v4, :cond_1

    .line 174
    move-object v0, v3

    check-cast v0, Lorg/mozilla/javascript/Wrapper;

    move-object v4, v0

    invoke-interface {v4}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v2

    .line 175
    .local v2, o:Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 181
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #p:Lorg/mozilla/javascript/Scriptable;
    :goto_0
    return-object v4

    .line 178
    .restart local v1       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #p:Lorg/mozilla/javascript/Scriptable;
    :cond_1
    invoke-interface {v3}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    .line 179
    if-nez v3, :cond_0

    .line 181
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #p:Lorg/mozilla/javascript/Scriptable;
    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Lorg/mozilla/javascript/NativeJavaClass;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    goto :goto_0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 18
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    .line 186
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/NativeJavaClass;->getClassObject()Ljava/lang/Class;

    move-result-object v5

    .line 187
    .local v5, classObject:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v11

    .line 188
    .local v11, modifiers:I
    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v16

    if-nez v16, :cond_1

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/NativeJavaClass;->members:Lorg/mozilla/javascript/JavaMembers;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/mozilla/javascript/JavaMembers;->ctors:[Lorg/mozilla/javascript/MemberBox;

    move-object v6, v0

    .line 192
    .local v6, ctors:[Lorg/mozilla/javascript/MemberBox;
    move-object/from16 v0, p1

    move-object v1, v6

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeJavaMethod;->findFunction(Lorg/mozilla/javascript/Context;[Lorg/mozilla/javascript/MemberBox;[Ljava/lang/Object;)I

    move-result v9

    .line 193
    .local v9, index:I
    if-gez v9, :cond_0

    .line 194
    invoke-static/range {p3 .. p3}, Lorg/mozilla/javascript/NativeJavaMethod;->scriptSignature([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 195
    .local v13, sig:Ljava/lang/String;
    const-string v16, "msg.no.java.ctor"

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v16

    throw v16

    .line 200
    .end local v13           #sig:Ljava/lang/String;
    :cond_0
    aget-object v16, v6, v9

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeJavaClass;->constructSpecific(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/MemberBox;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v16

    .line 213
    .end local v6           #ctors:[Lorg/mozilla/javascript/MemberBox;
    .end local v9           #index:I
    :goto_0
    return-object v16

    .line 202
    :cond_1
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v14

    .line 203
    .local v14, topLevel:Lorg/mozilla/javascript/Scriptable;
    const-string v12, ""

    .line 208
    .local v12, msg:Ljava/lang/String;
    :try_start_0
    const-string v16, "JavaAdapter"

    move-object v0, v14

    move-object/from16 v1, v16

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v15

    .line 209
    .local v15, v:Ljava/lang/Object;
    sget-object v16, Lorg/mozilla/javascript/NativeJavaClass;->NOT_FOUND:Ljava/lang/Object;

    move-object v0, v15

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_2

    .line 210
    move-object v0, v15

    check-cast v0, Lorg/mozilla/javascript/Function;

    move-object v8, v0

    .line 212
    .local v8, f:Lorg/mozilla/javascript/Function;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object v4, v0

    const/16 v16, 0x0

    aput-object p0, v4, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    aget-object v17, p3, v17

    aput-object v17, v4, v16

    .line 213
    .local v4, adapterArgs:[Ljava/lang/Object;
    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    goto :goto_0

    .line 215
    .end local v4           #adapterArgs:[Ljava/lang/Object;
    .end local v8           #f:Lorg/mozilla/javascript/Function;
    .end local v15           #v:Ljava/lang/Object;
    :catch_0
    move-exception v16

    move-object/from16 v7, v16

    .line 217
    .local v7, ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, m:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 219
    move-object v12, v10

    .line 221
    .end local v7           #ex:Ljava/lang/Exception;
    .end local v10           #m:Ljava/lang/String;
    :cond_2
    const-string v16, "msg.cant.instantiate"

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object v1, v12

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v16

    throw v16
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 8
    .parameter "name"
    .parameter "start"

    .prologue
    const/4 v7, 0x1

    .line 105
    const-string v5, "prototype"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    const/4 v5, 0x0

    .line 132
    :goto_0
    return-object v5

    .line 108
    :cond_0
    iget-object v5, p0, Lorg/mozilla/javascript/NativeJavaClass;->staticFieldAndMethods:Ljava/util/Map;

    if-eqz v5, :cond_1

    .line 109
    iget-object v5, p0, Lorg/mozilla/javascript/NativeJavaClass;->staticFieldAndMethods:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 110
    .local v3, result:Ljava/lang/Object;
    if-eqz v3, :cond_1

    move-object v5, v3

    .line 111
    goto :goto_0

    .line 114
    .end local v3           #result:Ljava/lang/Object;
    :cond_1
    iget-object v5, p0, Lorg/mozilla/javascript/NativeJavaClass;->members:Lorg/mozilla/javascript/JavaMembers;

    invoke-virtual {v5, p1, v7}, Lorg/mozilla/javascript/JavaMembers;->has(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    iget-object v5, p0, Lorg/mozilla/javascript/NativeJavaClass;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v6, p0, Lorg/mozilla/javascript/NativeJavaClass;->javaObject:Ljava/lang/Object;

    invoke-virtual {v5, p0, p1, v6, v7}, Lorg/mozilla/javascript/JavaMembers;->get(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 118
    :cond_2
    const-string v5, "__javaObject__"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 119
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 120
    .local v0, cx:Lorg/mozilla/javascript/Context;
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    .line 121
    .local v4, scope:Lorg/mozilla/javascript/Scriptable;
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v5

    iget-object v6, p0, Lorg/mozilla/javascript/NativeJavaClass;->javaObject:Ljava/lang/Object;

    sget-object v7, Lorg/mozilla/javascript/ScriptRuntime;->ClassClass:Ljava/lang/Class;

    invoke-virtual {v5, v0, v4, v6, v7}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 127
    .end local v0           #cx:Lorg/mozilla/javascript/Context;
    .end local v4           #scope:Lorg/mozilla/javascript/Scriptable;
    :cond_3
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaClass;->getClassObject()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/mozilla/javascript/NativeJavaClass;->findNestedClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 128
    .local v1, nestedClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v1, :cond_4

    .line 129
    new-instance v2, Lorg/mozilla/javascript/NativeJavaClass;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Lorg/mozilla/javascript/NativeJavaClass;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)V

    .line 131
    .local v2, nestedValue:Lorg/mozilla/javascript/NativeJavaClass;
    invoke-virtual {v2, p0}, Lorg/mozilla/javascript/NativeJavaClass;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    move-object v5, v2

    .line 132
    goto :goto_0

    .line 135
    .end local v2           #nestedValue:Lorg/mozilla/javascript/NativeJavaClass;
    :cond_4
    iget-object v5, p0, Lorg/mozilla/javascript/NativeJavaClass;->members:Lorg/mozilla/javascript/JavaMembers;

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/JavaMembers;->reportMemberNotFound(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "JavaClass"

    return-object v0
.end method

.method public getClassObject()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-super {p0}, Lorg/mozilla/javascript/NativeJavaObject;->unwrap()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 155
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaClass;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 156
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 157
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 158
    :cond_2
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 159
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    goto :goto_0

    :cond_3
    move-object v0, p0

    .line 160
    goto :goto_0
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaClass;->members:Lorg/mozilla/javascript/JavaMembers;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/JavaMembers;->getIds(Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2
    .parameter "name"
    .parameter "start"

    .prologue
    const/4 v1, 0x1

    .line 96
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaClass;->members:Lorg/mozilla/javascript/JavaMembers;

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/JavaMembers;->has(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "__javaObject__"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 304
    instance-of v1, p1, Lorg/mozilla/javascript/Wrapper;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/mozilla/javascript/NativeJavaClass;

    if-nez v1, :cond_0

    .line 306
    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    .end local p1
    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v0

    .line 308
    .local v0, instance:Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaClass;->getClassObject()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    .line 312
    .end local v0           #instance:Ljava/lang/Object;
    :goto_0
    return v1

    .restart local p1
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected initMembers()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaClass;->javaObject:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    .line 84
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaClass;->parent:Lorg/mozilla/javascript/Scriptable;

    const/4 v2, 0x0

    invoke-static {v1, v0, v0, v2}, Lorg/mozilla/javascript/JavaMembers;->lookupClass(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;Ljava/lang/Class;Z)Lorg/mozilla/javascript/JavaMembers;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/NativeJavaClass;->members:Lorg/mozilla/javascript/JavaMembers;

    .line 85
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaClass;->members:Lorg/mozilla/javascript/JavaMembers;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lorg/mozilla/javascript/JavaMembers;->getFieldAndMethodsObjects(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/NativeJavaClass;->staticFieldAndMethods:Ljava/util/Map;

    .line 87
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 6
    .parameter "name"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 140
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaClass;->members:Lorg/mozilla/javascript/JavaMembers;

    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaClass;->javaObject:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/JavaMembers;->put(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[JavaClass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaClass;->getClassObject()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
