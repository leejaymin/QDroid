.class final Lorg/mozilla/javascript/NativeJSON;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeJSON.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativeJSON$StringifyState;
    }
.end annotation


# static fields
.field private static final Id_parse:I = 0x2

.field private static final Id_stringify:I = 0x3

.field private static final Id_toSource:I = 0x1

.field private static final JSON_TAG:Ljava/lang/Object; = null

.field private static final LAST_METHOD_ID:I = 0x3

.field private static final MAX_ID:I = 0x3

.field private static final MAX_STRINGIFY_GAP_LENGTH:I = 0xa

.field static final serialVersionUID:J = -0x3f635fb98b5ee348L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "JSON"

    sput-object v0, Lorg/mozilla/javascript/NativeJSON;->JSON_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 78
    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 3
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 67
    new-instance v0, Lorg/mozilla/javascript/NativeJSON;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeJSON;-><init>()V

    .line 68
    .local v0, obj:Lorg/mozilla/javascript/NativeJSON;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeJSON;->activatePrototypeMap(I)V

    .line 69
    invoke-static {p0}, Lorg/mozilla/javascript/NativeJSON;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeJSON;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 70
    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/NativeJSON;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeJSON;->sealObject()V

    .line 72
    :cond_0
    const-string v1, "JSON"

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 74
    return-void
.end method

.method private static ja(Lorg/mozilla/javascript/NativeArray;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/String;
    .locals 11
    .parameter "value"
    .parameter "state"

    .prologue
    const/16 v10, 0x5d

    .line 415
    iget-object v8, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    invoke-virtual {v8, p0}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 416
    const-string v8, "msg.cyclic.value"

    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v8

    throw v8

    .line 418
    :cond_0
    iget-object v8, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    invoke-virtual {v8, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v6, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 421
    .local v6, stepback:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 422
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 424
    .local v3, partial:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v8

    long-to-int v2, v8

    .line 425
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 426
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8, p0, p1}, Lorg/mozilla/javascript/NativeJSON;->str(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/Object;

    move-result-object v7

    .line 427
    .local v7, strP:Ljava/lang/Object;
    sget-object v8, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v7, v8, :cond_1

    .line 428
    const-string v8, "null"

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    :cond_1
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 436
    .end local v7           #strP:Ljava/lang/Object;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 437
    const-string v0, "[]"

    .line 448
    .local v0, finalValue:Ljava/lang/String;
    :goto_2
    iget-object v8, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 449
    iput-object v6, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 450
    return-object v0

    .line 439
    .end local v0           #finalValue:Ljava/lang/String;
    :cond_3
    iget-object v8, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 440
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x5b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-static {v3, v9}, Lorg/mozilla/javascript/NativeJSON;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #finalValue:Ljava/lang/String;
    goto :goto_2

    .line 442
    .end local v0           #finalValue:Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ",\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 443
    .local v5, separator:Ljava/lang/String;
    invoke-static {v3, v5}, Lorg/mozilla/javascript/NativeJSON;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, properties:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #finalValue:Ljava/lang/String;
    goto :goto_2
.end method

.method private static jo(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/String;
    .locals 8
    .parameter "value"
    .parameter "state"

    .prologue
    .line 366
    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 367
    const-string p0, "msg.cyclic.value"

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0

    .line 369
    .restart local p0
    :cond_0
    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v5, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 372
    .local v5, stepback:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, k:[Ljava/lang/Object;
    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->propertyList:Ljava/util/List;

    .end local v0           #k:[Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->propertyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 380
    .restart local v0       #k:[Ljava/lang/Object;
    :goto_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 382
    .local v4, partial:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    move-object v0, v0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 383
    .local v3, p:Ljava/lang/Object;
    invoke-static {v3, p0, p1}, Lorg/mozilla/javascript/NativeJSON;->str(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/Object;

    move-result-object v6

    .line 384
    .local v6, strP:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v6, v7, :cond_2

    .line 385
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3           #p:Ljava/lang/Object;
    invoke-static {v3}, Lorg/mozilla/javascript/NativeJSON;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 386
    .local v3, member:Ljava/lang/String;
    iget-object v7, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 387
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #member:Ljava/lang/String;
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    .restart local v3       #member:Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #member:Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    .restart local v3       #member:Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v3           #member:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 377
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #partial:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6           #strP:Ljava/lang/Object;
    :cond_3
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    .local v0, k:[Ljava/lang/Object;
    goto :goto_0

    .line 396
    .local v0, arr$:[Ljava/lang/Object;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #partial:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    .end local p0
    if-eqz p0, :cond_5

    .line 397
    const-string p0, "{}"

    .line 409
    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v1           #i$:I
    .local p0, finalValue:Ljava/lang/String;
    :goto_2
    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 410
    iput-object v5, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    .line 411
    return-object p0

    .line 399
    .end local p0           #finalValue:Ljava/lang/String;
    .restart local v0       #arr$:[Ljava/lang/Object;
    .restart local v1       #i$:I
    :cond_5
    iget-object p0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->gap:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_6

    .line 400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v0           #arr$:[Ljava/lang/Object;
    move-result-object p0

    const-string v0, ","

    invoke-static {v4, v0}, Lorg/mozilla/javascript/NativeJSON;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0       #finalValue:Ljava/lang/String;
    goto :goto_2

    .line 402
    .end local p0           #finalValue:Ljava/lang/String;
    .restart local v0       #arr$:[Ljava/lang/Object;
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ",\n"

    .end local v0           #arr$:[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 403
    .local p0, separator:Ljava/lang/String;
    invoke-static {v4, p0}, Lorg/mozilla/javascript/NativeJSON;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 404
    .local p0, properties:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\n"

    .end local v1           #i$:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/mozilla/javascript/NativeJSON$StringifyState;->indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #properties:Ljava/lang/String;
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, finalValue:Ljava/lang/String;
    goto :goto_2
.end method

.method private static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, objs:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    const-string v3, ""

    .line 353
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    :cond_0
    const-string v2, ""

    move-object v2, v3

    .line 362
    :goto_0
    return-object v2

    .line 356
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 357
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ""

    move-object v2, v3

    goto :goto_0

    .line 358
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, builder:Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 360
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 362
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "cx"
    .parameter "scope"
    .parameter "jtext"

    .prologue
    .line 144
    :try_start_0
    new-instance v1, Lorg/mozilla/javascript/json/JsonParser;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/javascript/json/JsonParser;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    invoke-virtual {v1, p2}, Lorg/mozilla/javascript/json/JsonParser;->parseValue(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/mozilla/javascript/json/JsonParser$ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 145
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 146
    .local v0, ex:Lorg/mozilla/javascript/json/JsonParser$ParseException;
    const-string v1, "SyntaxError"

    invoke-virtual {v0}, Lorg/mozilla/javascript/json/JsonParser$ParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    throw v1
.end method

.method public static parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Callable;)Ljava/lang/Object;
    .locals 4
    .parameter "cx"
    .parameter "scope"
    .parameter "jtext"
    .parameter "reviver"

    .prologue
    const-string v3, ""

    .line 153
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeJSON;->parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    .local v1, unfiltered:Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 155
    .local v0, root:Lorg/mozilla/javascript/Scriptable;
    const-string v2, ""

    invoke-interface {v0, v3, v0, v1}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 156
    const-string v2, ""

    invoke-static {p0, p1, p3, v0, v3}, Lorg/mozilla/javascript/NativeJSON;->walk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "string"

    .prologue
    const/16 v9, 0x22

    .line 454
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 455
    .local v4, product:Ljava/lang/StringBuffer;
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 456
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 457
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 458
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 459
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 482
    const/16 v5, 0x20

    if-ge v0, v5, :cond_0

    .line 483
    const-string v5, "\\u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    const-string v5, "%04x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, hex:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    .end local v1           #hex:Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    :sswitch_0
    const-string v5, "\\\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 464
    :sswitch_1
    const-string v5, "\\\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 467
    :sswitch_2
    const-string v5, "\\b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 470
    :sswitch_3
    const-string v5, "\\f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 473
    :sswitch_4
    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 476
    :sswitch_5
    const-string v5, "\\r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 479
    :sswitch_6
    const-string v5, "\\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 488
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 493
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 494
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 459
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_2
        0x9 -> :sswitch_6
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_5
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private static repeat(CI)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "count"

    .prologue
    .line 204
    new-array v0, p1, [C

    .line 205
    .local v0, chars:[C
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([CC)V

    .line 206
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private static str(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/Object;
    .locals 12
    .parameter "key"
    .parameter "holder"
    .parameter "state"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v7, "toJSON"

    const-string v11, "null"

    .line 294
    const/4 v4, 0x0

    .line 295
    .local v4, value:Ljava/lang/Object;
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 296
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    invoke-static {p1, v5}, Lorg/mozilla/javascript/NativeJSON;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 301
    :goto_0
    instance-of v5, v4, Lorg/mozilla/javascript/Scriptable;

    if-eqz v5, :cond_0

    .line 302
    move-object v0, v4

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    move-object v5, v0

    const-string v6, "toJSON"

    invoke-static {v5, v7}, Lorg/mozilla/javascript/NativeJSON;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 303
    .local v3, toJSON:Ljava/lang/Object;
    instance-of v5, v3, Lorg/mozilla/javascript/Callable;

    if-eqz v5, :cond_0

    .line 304
    iget-object v5, p2, Lorg/mozilla/javascript/NativeJSON$StringifyState;->cx:Lorg/mozilla/javascript/Context;

    check-cast v4, Lorg/mozilla/javascript/Scriptable;

    .end local v4           #value:Ljava/lang/Object;
    const-string v6, "toJSON"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object p0, v6, v9

    invoke-static {v5, v4, v7, v6}, Lorg/mozilla/javascript/NativeJSON;->callMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 309
    .end local v3           #toJSON:Ljava/lang/Object;
    .restart local v4       #value:Ljava/lang/Object;
    :cond_0
    iget-object v5, p2, Lorg/mozilla/javascript/NativeJSON$StringifyState;->replacer:Lorg/mozilla/javascript/Callable;

    if-eqz v5, :cond_1

    .line 310
    iget-object v5, p2, Lorg/mozilla/javascript/NativeJSON$StringifyState;->replacer:Lorg/mozilla/javascript/Callable;

    iget-object v6, p2, Lorg/mozilla/javascript/NativeJSON$StringifyState;->cx:Lorg/mozilla/javascript/Context;

    iget-object v7, p2, Lorg/mozilla/javascript/NativeJSON$StringifyState;->scope:Lorg/mozilla/javascript/Scriptable;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v9

    aput-object v4, v8, v10

    invoke-interface {v5, v6, v7, p1, v8}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 315
    :cond_1
    instance-of v5, v4, Lorg/mozilla/javascript/NativeNumber;

    if-eqz v5, :cond_4

    .line 316
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 323
    .end local v4           #value:Ljava/lang/Object;
    :cond_2
    :goto_1
    if-nez v4, :cond_6

    const-string v5, "null"

    move-object v5, v11

    .line 349
    :goto_2
    return-object v5

    .line 298
    .restart local v4       #value:Ljava/lang/Object;
    :cond_3
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {p1, v5}, Lorg/mozilla/javascript/NativeJSON;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 317
    :cond_4
    instance-of v5, v4, Lorg/mozilla/javascript/NativeString;

    if-eqz v5, :cond_5

    .line 318
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, value:Ljava/lang/String;
    goto :goto_1

    .line 319
    .local v4, value:Ljava/lang/Object;
    :cond_5
    instance-of v5, v4, Lorg/mozilla/javascript/NativeBoolean;

    if-eqz v5, :cond_2

    .line 320
    check-cast v4, Lorg/mozilla/javascript/NativeBoolean;

    .end local v4           #value:Ljava/lang/Object;
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/NativeBoolean;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4       #value:Ljava/lang/Object;
    goto :goto_1

    .line 324
    .end local v4           #value:Ljava/lang/Object;
    :cond_6
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "true"

    goto :goto_2

    .line 325
    :cond_7
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "false"

    goto :goto_2

    .line 327
    :cond_8
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 328
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/mozilla/javascript/NativeJSON;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 331
    :cond_9
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_b

    .line 332
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 333
    .local v1, d:D
    cmpl-double v5, v1, v1

    if-nez v5, :cond_a

    const-wide/high16 v5, 0x7ff0

    cmpl-double v5, v1, v5

    if-eqz v5, :cond_a

    const-wide/high16 v5, -0x10

    cmpl-double v5, v1, v5

    if-eqz v5, :cond_a

    .line 336
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 338
    :cond_a
    const-string v5, "null"

    move-object v5, v11

    goto :goto_2

    .line 342
    .end local v1           #d:D
    :cond_b
    instance-of v5, v4, Lorg/mozilla/javascript/Scriptable;

    if-eqz v5, :cond_d

    instance-of v5, v4, Lorg/mozilla/javascript/Callable;

    if-nez v5, :cond_d

    .line 343
    instance-of v5, v4, Lorg/mozilla/javascript/NativeArray;

    if-eqz v5, :cond_c

    .line 344
    check-cast v4, Lorg/mozilla/javascript/NativeArray;

    invoke-static {v4, p2}, Lorg/mozilla/javascript/NativeJSON;->ja(Lorg/mozilla/javascript/NativeArray;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 346
    :cond_c
    check-cast v4, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v4, p2}, Lorg/mozilla/javascript/NativeJSON;->jo(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 349
    :cond_d
    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method public static stringify(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "cx"
    .parameter "scope"
    .parameter "value"
    .parameter "replacer"
    .parameter "space"

    .prologue
    .line 238
    const-string v4, ""

    .line 239
    .local v4, indent:Ljava/lang/String;
    const-string v5, ""

    .line 241
    .local v5, gap:Ljava/lang/String;
    const/4 v7, 0x0

    .line 242
    .local v7, propertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 244
    .local v6, replacerFunction:Lorg/mozilla/javascript/Callable;
    instance-of v1, p3, Lorg/mozilla/javascript/Callable;

    if-eqz v1, :cond_2

    .line 245
    move-object v0, p3

    check-cast v0, Lorg/mozilla/javascript/Callable;

    move-object v6, v0

    .line 259
    .end local p3
    :cond_0
    instance-of p3, p4, Lorg/mozilla/javascript/NativeNumber;

    if-eqz p3, :cond_7

    .line 260
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    .line 265
    .end local p4
    :cond_1
    :goto_0
    instance-of p3, p4, Ljava/lang/Number;

    if-eqz p3, :cond_9

    .line 266
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide p3

    double-to-int p3, p3

    .line 267
    .local p3, gapLength:I
    const/16 p4, 0xa

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 268
    if-lez p3, :cond_8

    const/16 p4, 0x20

    invoke-static {p4, p3}, Lorg/mozilla/javascript/NativeJSON;->repeat(CI)Ljava/lang/String;

    move-result-object p4

    move-object v5, p4

    .line 269
    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .local p4, space:Ljava/lang/Integer;
    move-object v8, p4

    .line 277
    .end local p3           #gapLength:I
    .end local p4           #space:Ljava/lang/Integer;
    :goto_2
    new-instance v1, Lorg/mozilla/javascript/NativeJSON$StringifyState;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lorg/mozilla/javascript/NativeJSON$StringifyState;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Callable;Ljava/util/List;Ljava/lang/Object;)V

    .line 284
    .local v1, state:Lorg/mozilla/javascript/NativeJSON$StringifyState;
    new-instance p0, Lorg/mozilla/javascript/NativeObject;

    .end local p0
    invoke-direct {p0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 285
    .local p0, wrapper:Lorg/mozilla/javascript/ScriptableObject;
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 286
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 287
    const-string p1, ""

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 288
    const-string p1, ""

    invoke-static {p1, p0, v1}, Lorg/mozilla/javascript/NativeJSON;->str(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeJSON$StringifyState;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #wrapper:Lorg/mozilla/javascript/ScriptableObject;
    return-object p0

    .line 246
    .end local v1           #state:Lorg/mozilla/javascript/NativeJSON$StringifyState;
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .restart local p1
    .local p3, replacer:Ljava/lang/Object;
    .local p4, space:Ljava/lang/Object;
    :cond_2
    instance-of v1, p3, Lorg/mozilla/javascript/NativeArray;

    if-eqz v1, :cond_0

    .line 247
    new-instance v7, Ljava/util/LinkedList;

    .end local v7           #propertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 248
    .restart local v7       #propertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    move-object v0, p3

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    move-object v8, v0

    .line 249
    .local v8, replacerArray:Lorg/mozilla/javascript/NativeArray;
    invoke-virtual {v8}, Lorg/mozilla/javascript/NativeArray;->getIndexIds()[Ljava/lang/Integer;

    move-result-object p3

    .local p3, arr$:[Ljava/lang/Integer;
    array-length v3, p3

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_0

    aget-object v1, p3, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 250
    .local v1, i:I
    invoke-virtual {v8, v1, v8}, Lorg/mozilla/javascript/NativeArray;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    .line 251
    .local v1, v:Ljava/lang/Object;
    instance-of v9, v1, Ljava/lang/String;

    if-nez v9, :cond_3

    instance-of v9, v1, Ljava/lang/Number;

    if-eqz v9, :cond_5

    .line 252
    :cond_3
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v1           #v:Ljava/lang/Object;
    :cond_4
    :goto_4
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i$:I
    .local v1, i$:I
    move v2, v1

    .end local v1           #i$:I
    .restart local v2       #i$:I
    goto :goto_3

    .line 253
    .local v1, v:Ljava/lang/Object;
    :cond_5
    instance-of v9, v1, Lorg/mozilla/javascript/NativeString;

    if-nez v9, :cond_6

    instance-of v9, v1, Lorg/mozilla/javascript/NativeNumber;

    if-eqz v9, :cond_4

    .line 254
    :cond_6
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1           #v:Ljava/lang/Object;
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 261
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v8           #replacerArray:Lorg/mozilla/javascript/NativeArray;
    .end local p3           #arr$:[Ljava/lang/Integer;
    :cond_7
    instance-of p3, p4, Lorg/mozilla/javascript/NativeString;

    if-eqz p3, :cond_1

    .line 262
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .local p4, space:Ljava/lang/String;
    goto/16 :goto_0

    .line 268
    .end local p4           #space:Ljava/lang/String;
    .local p3, gapLength:I
    :cond_8
    const-string p4, ""

    move-object v5, p4

    goto :goto_1

    .line 270
    .end local p3           #gapLength:I
    :cond_9
    instance-of p3, p4, Ljava/lang/String;

    if-eqz p3, :cond_a

    .line 271
    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 272
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v1, 0xa

    if-le p3, v1, :cond_a

    .line 273
    const/4 p3, 0x0

    const/16 v1, 0xa

    invoke-virtual {v5, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v8, p4

    goto/16 :goto_2

    :cond_a
    move-object v8, p4

    goto/16 :goto_2
.end method

.method private static walk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "cx"
    .parameter "scope"
    .parameter "reviver"
    .parameter "holder"
    .parameter "name"

    .prologue
    .line 163
    instance-of v1, p4, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 164
    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p3, v1, p3}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    .local v1, property:Ljava/lang/Object;
    move-object v6, v1

    .line 169
    .end local v1           #property:Ljava/lang/Object;
    .local v6, property:Ljava/lang/Object;
    :goto_0
    instance-of v1, v6, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_6

    .line 170
    move-object v0, v6

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    move-object v7, v0

    .line 171
    .local v7, val:Lorg/mozilla/javascript/Scriptable;
    instance-of v1, v7, Lorg/mozilla/javascript/NativeArray;

    if-eqz v1, :cond_2

    .line 172
    move-object v0, v7

    check-cast v0, Lorg/mozilla/javascript/NativeArray;

    move-object v8, v0

    invoke-virtual {v8}, Lorg/mozilla/javascript/NativeArray;->getLength()J

    move-result-wide v1

    long-to-int v2, v1

    .line 173
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, p1, p2, v7, v3}, Lorg/mozilla/javascript/NativeJSON;->walk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 175
    .local v3, newElement:Ljava/lang/Object;
    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    .line 176
    invoke-interface {v7, v1}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    .line 173
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #newElement:Ljava/lang/Object;
    .end local v6           #property:Ljava/lang/Object;
    .end local v7           #val:Lorg/mozilla/javascript/Scriptable;
    :cond_0
    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-interface {p3, v1, p3}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    .local v1, property:Ljava/lang/Object;
    move-object v6, v1

    .end local v1           #property:Ljava/lang/Object;
    .restart local v6       #property:Ljava/lang/Object;
    goto :goto_0

    .line 178
    .local v1, i:I
    .restart local v2       #len:I
    .restart local v3       #newElement:Ljava/lang/Object;
    .restart local v7       #val:Lorg/mozilla/javascript/Scriptable;
    :cond_1
    invoke-interface {v7, v1, v7, v3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_2

    .line 182
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #newElement:Ljava/lang/Object;
    :cond_2
    invoke-interface {v7}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v1

    .line 183
    .local v1, keys:[Ljava/lang/Object;
    move-object v1, v1

    .local v1, arr$:[Ljava/lang/Object;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_6

    aget-object v5, v1, v2

    .line 184
    .local v5, p:Ljava/lang/Object;
    invoke-static {p0, p1, p2, v7, v5}, Lorg/mozilla/javascript/NativeJSON;->walk(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 185
    .local v4, newElement:Ljava/lang/Object;
    sget-object v8, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v4, v8, :cond_4

    .line 186
    instance-of v4, v5, Ljava/lang/Number;

    .end local v4           #newElement:Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 187
    check-cast v5, Ljava/lang/Number;

    .end local v5           #p:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v7, v4}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    .line 183
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 189
    .restart local v5       #p:Ljava/lang/Object;
    :cond_3
    check-cast v5, Ljava/lang/String;

    .end local v5           #p:Ljava/lang/Object;
    invoke-interface {v7, v5}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    goto :goto_4

    .line 191
    .restart local v4       #newElement:Ljava/lang/Object;
    .restart local v5       #p:Ljava/lang/Object;
    :cond_4
    instance-of v8, v5, Ljava/lang/Number;

    if-eqz v8, :cond_5

    .line 192
    check-cast v5, Ljava/lang/Number;

    .end local v5           #p:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v7, v5, v7, v4}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_4

    .line 194
    .restart local v5       #p:Ljava/lang/Object;
    :cond_5
    check-cast v5, Ljava/lang/String;

    .end local v5           #p:Ljava/lang/Object;
    invoke-interface {v7, v5, v7, v4}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_4

    .line 200
    .end local v1           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #newElement:Ljava/lang/Object;
    .end local v7           #val:Lorg/mozilla/javascript/Scriptable;
    :cond_6
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 p4, 0x1

    aput-object v6, v1, p4

    .end local p4
    invoke-interface {p2, p0, p1, p3, v1}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    return-object p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 105
    sget-object v6, Lorg/mozilla/javascript/NativeJSON;->JSON_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 106
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 135
    :goto_0
    return-object v6

    .line 108
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v1

    .line 109
    .local v1, methodId:I
    packed-switch v1, :pswitch_data_0

    .line 138
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 111
    :pswitch_0
    const-string v6, "JSON"

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, jtext:Ljava/lang/String;
    const/4 v3, 0x0

    .line 116
    .local v3, reviver:Ljava/lang/Object;
    array-length v6, p5

    if-le v6, v7, :cond_1

    .line 117
    aget-object v3, p5, v7

    .line 119
    .end local v3           #reviver:Ljava/lang/Object;
    :cond_1
    instance-of v6, v3, Lorg/mozilla/javascript/Callable;

    if-eqz v6, :cond_2

    .line 120
    check-cast v3, Lorg/mozilla/javascript/Callable;

    invoke-static {p2, p3, v0, v3}, Lorg/mozilla/javascript/NativeJSON;->parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Callable;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {p2, p3, v0}, Lorg/mozilla/javascript/NativeJSON;->parse(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 127
    .end local v0           #jtext:Ljava/lang/String;
    :pswitch_2
    const/4 v5, 0x0

    .local v5, value:Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, replacer:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 128
    .local v4, space:Ljava/lang/Object;
    array-length v6, p5

    packed-switch v6, :pswitch_data_1

    .line 130
    const/4 v6, 0x2

    aget-object v4, p5, v6

    .line 131
    .end local v4           #space:Ljava/lang/Object;
    :pswitch_3
    aget-object v2, p5, v7

    move-object v6, v4

    .line 132
    .end local v2           #replacer:Ljava/lang/Object;
    :goto_1
    aget-object v5, p5, v8

    move-object v7, v2

    .line 135
    .end local v5           #value:Ljava/lang/Object;
    :goto_2
    invoke-static {p2, p3, v5, v7, v6}, Lorg/mozilla/javascript/NativeJSON;->stringify(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .restart local v2       #replacer:Ljava/lang/Object;
    .restart local v4       #space:Ljava/lang/Object;
    .restart local v5       #value:Ljava/lang/Object;
    :pswitch_4
    move-object v6, v4

    goto :goto_1

    :pswitch_5
    move-object v6, v4

    move-object v7, v2

    goto :goto_2

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 128
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 3
    .parameter "s"

    .prologue
    .line 504
    const/4 v1, 0x0

    .local v1, id:I
    const/4 v0, 0x0

    .line 505
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 510
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 513
    :cond_0
    return v1

    .line 506
    :pswitch_1
    const-string v0, "parse"

    const/4 v1, 0x2

    goto :goto_0

    .line 507
    :pswitch_2
    const-string v0, "toSource"

    const/4 v1, 0x1

    goto :goto_0

    .line 508
    :pswitch_3
    const-string v0, "stringify"

    const/4 v1, 0x3

    goto :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "JSON"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 86
    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    .line 89
    packed-switch p1, :pswitch_data_0

    .line 93
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :pswitch_0
    const/4 v0, 0x0

    .local v0, arity:I
    const-string v1, "toSource"

    .line 95
    .local v1, name:Ljava/lang/String;
    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeJSON;->JSON_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeJSON;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 99
    return-void

    .line 91
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "parse"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 92
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x3

    .restart local v0       #arity:I
    const-string v1, "stringify"

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0

    .line 97
    .end local v0           #arity:I
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
