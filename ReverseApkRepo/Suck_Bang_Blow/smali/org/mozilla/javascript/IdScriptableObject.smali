.class public abstract Lorg/mozilla/javascript/IdScriptableObject;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "IdScriptableObject.java"

# interfaces
.implements Lorg/mozilla/javascript/IdFunctionCall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;
    }
.end annotation


# instance fields
.field private volatile transient prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 335
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter "scope"
    .parameter "prototype"

    .prologue
    .line 339
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    .line 340
    return-void
.end method

.method private getBuiltInDescriptor(Ljava/lang/String;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 6
    .parameter "name"

    .prologue
    .line 767
    const/4 v4, 0x0

    .line 768
    .local v4, value:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 770
    .local v0, attr:I
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdScriptableObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    .line 771
    .local v3, scope:Lorg/mozilla/javascript/Scriptable;
    if-nez v3, :cond_0

    .line 772
    move-object v3, p0

    .line 775
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v2

    .line 776
    .local v2, info:I
    if-eqz v2, :cond_1

    .line 777
    const v5, 0xffff

    and-int v1, v2, v5

    .line 778
    .local v1, id:I
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object v4

    .line 779
    ushr-int/lit8 v0, v2, 0x10

    .line 780
    invoke-static {v3, v4, v0}, Lorg/mozilla/javascript/IdScriptableObject;->buildDataDescriptor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v5

    .line 790
    .end local v1           #id:I
    .end local v4           #value:Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 782
    .restart local v4       #value:Ljava/lang/Object;
    :cond_1
    iget-object v5, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    if-eqz v5, :cond_2

    .line 783
    iget-object v5, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v5, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->findId(Ljava/lang/String;)I

    move-result v1

    .line 784
    .restart local v1       #id:I
    if-eqz v1, :cond_2

    .line 785
    iget-object v5, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 786
    iget-object v5, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v5, v1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->getAttributes(I)I

    move-result v0

    .line 787
    invoke-static {v3, v4, v0}, Lorg/mozilla/javascript/IdScriptableObject;->buildDataDescriptor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v5

    goto :goto_0

    .line 790
    .end local v1           #id:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected static incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;
    .locals 2
    .parameter "f"

    .prologue
    .line 708
    const-string v0, "msg.incompat.call"

    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method

.method protected static instanceIdInfo(II)I
    .locals 1
    .parameter "attributes"
    .parameter "id"

    .prologue
    .line 552
    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    return v0
.end method

.method private newIdFunction(Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/IdFunctionObject;
    .locals 7
    .parameter "tag"
    .parameter "id"
    .parameter "name"
    .parameter "arity"
    .parameter "scope"

    .prologue
    .line 715
    new-instance v0, Lorg/mozilla/javascript/IdFunctionObject;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    .line 717
    .local v0, f:Lorg/mozilla/javascript/IdFunctionObject;
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdScriptableObject;->isSealed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/javascript/IdFunctionObject;->sealObject()V

    .line 718
    :cond_0
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 796
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 797
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 798
    .local v0, maxPrototypeId:I
    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    .line 801
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 807
    const/4 v0, 0x0

    .line 808
    .local v0, maxPrototypeId:I
    iget-object v1, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->getMaxId()I

    move-result v0

    .line 811
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 812
    return-void
.end method


# virtual methods
.method public final activatePrototypeMap(I)V
    .locals 2
    .parameter "maxPrototypeId"

    .prologue
    .line 630
    new-instance v0, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;-><init>(Lorg/mozilla/javascript/IdScriptableObject;I)V

    .line 631
    .local v0, values:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;
    monitor-enter p0

    .line 632
    :try_start_0
    iget-object v1, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    if-eqz v1, :cond_0

    .line 633
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 635
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 634
    :cond_0
    :try_start_1
    iput-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    .line 635
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 636
    return-void
.end method

.method protected addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V
    .locals 7
    .parameter "obj"
    .parameter "tag"
    .parameter "id"
    .parameter "name"
    .parameter "arity"

    .prologue
    .line 680
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    .local v5, scope:Lorg/mozilla/javascript/Scriptable;
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    .line 681
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->newIdFunction(Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/IdFunctionObject;

    move-result-object v6

    .line 682
    .local v6, f:Lorg/mozilla/javascript/IdFunctionObject;
    invoke-virtual {v6, p1}, Lorg/mozilla/javascript/IdFunctionObject;->addAsProperty(Lorg/mozilla/javascript/Scriptable;)V

    .line 683
    return-void
.end method

.method protected final defaultGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 344
    invoke-super {p0, p1, p0}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final defaultPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 349
    invoke-super {p0, p1, p0, p2}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 350
    return-void
.end method

.method public defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 8
    .parameter "cx"
    .parameter "key"
    .parameter "desc"

    .prologue
    const-string v7, "value"

    .line 723
    instance-of v6, p2, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 724
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 725
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v3

    .line 726
    .local v3, info:I
    if-eqz v3, :cond_0

    .line 727
    const v6, 0xffff

    and-int v2, v3, v6

    .line 728
    .local v2, id:I
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/IdScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 729
    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/IdScriptableObject;->delete(I)V

    .line 738
    .end local v2           #id:I
    :cond_0
    iget-object v6, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    if-eqz v6, :cond_1

    .line 739
    iget-object v6, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v6, v4}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->findId(Ljava/lang/String;)I

    move-result v2

    .line 740
    .restart local v2       #id:I
    if-eqz v2, :cond_1

    .line 741
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/IdScriptableObject;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 742
    iget-object v6, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->delete(I)V

    .line 753
    .end local v2           #id:I
    .end local v3           #info:I
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V

    .line 754
    :goto_0
    return-void

    .line 731
    .restart local v2       #id:I
    .restart local v3       #info:I
    .restart local v4       #name:Ljava/lang/String;
    :cond_2
    ushr-int/lit8 v1, v3, 0x10

    .line 732
    .local v1, attr:I
    const-string v6, "value"

    invoke-static {p3, v7}, Lorg/mozilla/javascript/IdScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 733
    .local v5, value:Ljava/lang/Object;
    sget-object v6, Lorg/mozilla/javascript/IdScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-ne v5, v6, :cond_3

    sget-object v6, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p0, v2, v6}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    .line 734
    invoke-virtual {p0, v1, p3}, Lorg/mozilla/javascript/IdScriptableObject;->applyDescriptorToAttributeBitset(ILorg/mozilla/javascript/ScriptableObject;)I

    move-result v6

    invoke-virtual {p0, v2, v6}, Lorg/mozilla/javascript/IdScriptableObject;->setAttributes(II)V

    goto :goto_0

    :cond_3
    move-object v6, v5

    .line 733
    goto :goto_1

    .line 744
    .end local v1           #attr:I
    .end local v5           #value:Ljava/lang/Object;
    :cond_4
    iget-object v6, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->getAttributes(I)I

    move-result v1

    .line 745
    .restart local v1       #attr:I
    const-string v6, "value"

    invoke-static {p3, v7}, Lorg/mozilla/javascript/IdScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 746
    .restart local v5       #value:Ljava/lang/Object;
    iget-object v6, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    sget-object v7, Lorg/mozilla/javascript/IdScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-ne v5, v7, :cond_5

    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_2
    invoke-virtual {v6, v2, p0, v7}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->set(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 747
    iget-object v6, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {p0, v1, p3}, Lorg/mozilla/javascript/IdScriptableObject;->applyDescriptorToAttributeBitset(ILorg/mozilla/javascript/ScriptableObject;)I

    move-result v7

    invoke-virtual {v6, v2, v7}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->setAttributes(II)V

    goto :goto_0

    :cond_5
    move-object v7, v5

    .line 746
    goto :goto_2
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v2

    .line 431
    .local v2, info:I
    if-eqz v2, :cond_1

    .line 433
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdScriptableObject;->isSealed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 434
    ushr-int/lit8 v0, v2, 0x10

    .line 435
    .local v0, attr:I
    and-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_0

    .line 436
    const v3, 0xffff

    and-int v1, v2, v3

    .line 437
    .local v1, id:I
    sget-object v3, Lorg/mozilla/javascript/IdScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    .line 452
    .end local v0           #attr:I
    .end local v1           #id:I
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    if-eqz v3, :cond_2

    .line 443
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->findId(Ljava/lang/String;)I

    move-result v1

    .line 444
    .restart local v1       #id:I
    if-eqz v1, :cond_2

    .line 445
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdScriptableObject;->isSealed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 446
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->delete(I)V

    goto :goto_0

    .line 451
    .end local v1           #id:I
    :cond_2
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->delete(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 597
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->unknown()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;
    .locals 2
    .parameter "maxPrototypeId"
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 605
    if-eq p2, p0, :cond_0

    if-eqz p2, :cond_0

    .line 606
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 607
    invoke-static {p2}, Lorg/mozilla/javascript/IdScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 610
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->activatePrototypeMap(I)V

    .line 611
    iget-object v1, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->createPrecachedConstructor()Lorg/mozilla/javascript/IdFunctionObject;

    move-result-object v0

    .line 612
    .local v0, ctor:Lorg/mozilla/javascript/IdFunctionObject;
    if-eqz p3, :cond_1

    .line 613
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdScriptableObject;->sealObject()V

    .line 615
    :cond_1
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    .line 616
    if-eqz p3, :cond_2

    .line 617
    invoke-virtual {v0}, Lorg/mozilla/javascript/IdFunctionObject;->sealObject()V

    .line 619
    :cond_2
    invoke-virtual {v0}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    .line 620
    return-object v0
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 0
    .parameter "ctor"

    .prologue
    .line 675
    return-void
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 562
    const/4 v0, 0x0

    return v0
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 670
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 4
    .parameter "name"
    .parameter "start"

    .prologue
    .line 376
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v1

    .line 377
    .local v1, info:I
    if-eqz v1, :cond_0

    .line 378
    const v3, 0xffff

    and-int v0, v1, v3

    .line 379
    .local v0, id:I
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object v2

    .line 380
    .local v2, value:Ljava/lang/Object;
    sget-object v3, Lorg/mozilla/javascript/IdScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    move-object v3, v2

    .line 389
    .end local v0           #id:I
    .end local v2           #value:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 382
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    if-eqz v3, :cond_1

    .line 383
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->findId(Ljava/lang/String;)I

    move-result v0

    .line 384
    .restart local v0       #id:I
    if-eqz v0, :cond_1

    .line 385
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v3, v0}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 386
    .restart local v2       #value:Ljava/lang/Object;
    sget-object v3, Lorg/mozilla/javascript/IdScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    move-object v3, v2

    goto :goto_0

    .line 389
    .end local v0           #id:I
    .end local v2           #value:Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public getAttributes(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v2

    .line 458
    .local v2, info:I
    if-eqz v2, :cond_0

    .line 459
    ushr-int/lit8 v0, v2, 0x10

    .local v0, attr:I
    move v3, v0

    .line 468
    .end local v0           #attr:I
    :goto_0
    return v3

    .line 462
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    if-eqz v3, :cond_1

    .line 463
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->findId(Ljava/lang/String;)I

    move-result v1

    .line 464
    .local v1, id:I
    if-eqz v1, :cond_1

    .line 465
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->getAttributes(I)I

    move-result v3

    goto :goto_0

    .line 468
    .end local v1           #id:I
    :cond_1
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getAttributes(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method getIds(Z)[Ljava/lang/Object;
    .locals 13
    .parameter "getAll"

    .prologue
    const/4 v12, 0x0

    .line 497
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getIds(Z)[Ljava/lang/Object;

    move-result-object v8

    .line 499
    .local v8, result:[Ljava/lang/Object;
    iget-object v10, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    if-eqz v10, :cond_0

    .line 500
    iget-object v10, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v10, p1, v8}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->getNames(Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .line 503
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdScriptableObject;->getMaxInstanceId()I

    move-result v6

    .line 504
    .local v6, maxInstanceId:I
    if-eqz v6, :cond_5

    .line 505
    const/4 v4, 0x0

    .line 506
    .local v4, ids:[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 508
    .local v1, count:I
    move v3, v6

    .local v3, id:I
    move v2, v1

    .end local v1           #count:I
    .local v2, count:I
    :goto_0
    if-eqz v3, :cond_4

    .line 509
    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object v7

    .line 510
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v5

    .line 511
    .local v5, info:I
    if-eqz v5, :cond_7

    .line 512
    ushr-int/lit8 v0, v5, 0x10

    .line 513
    .local v0, attr:I
    and-int/lit8 v10, v0, 0x4

    if-nez v10, :cond_1

    .line 514
    sget-object v10, Lorg/mozilla/javascript/IdScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_1

    move v1, v2

    .line 508
    .end local v0           #attr:I
    .end local v2           #count:I
    .restart local v1       #count:I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_0

    .line 518
    .restart local v0       #attr:I
    :cond_1
    if-nez p1, :cond_2

    and-int/lit8 v10, v0, 0x2

    if-nez v10, :cond_7

    .line 519
    :cond_2
    if-nez v2, :cond_3

    .line 521
    new-array v4, v3, [Ljava/lang/Object;

    .line 523
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    aput-object v7, v4, v2

    goto :goto_1

    .line 527
    .end local v0           #attr:I
    .end local v1           #count:I
    .end local v5           #info:I
    .end local v7           #name:Ljava/lang/String;
    .restart local v2       #count:I
    :cond_4
    if-eqz v2, :cond_5

    .line 528
    array-length v10, v8

    if-nez v10, :cond_6

    array-length v10, v4

    if-ne v10, v2, :cond_6

    .line 529
    move-object v8, v4

    .line 539
    .end local v2           #count:I
    .end local v3           #id:I
    .end local v4           #ids:[Ljava/lang/Object;
    :cond_5
    :goto_2
    return-object v8

    .line 532
    .restart local v2       #count:I
    .restart local v3       #id:I
    .restart local v4       #ids:[Ljava/lang/Object;
    :cond_6
    array-length v10, v8

    add-int/2addr v10, v2

    new-array v9, v10, [Ljava/lang/Object;

    .line 533
    .local v9, tmp:[Ljava/lang/Object;
    array-length v10, v8

    invoke-static {v8, v12, v9, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    array-length v10, v8

    invoke-static {v4, v12, v9, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    move-object v8, v9

    goto :goto_2

    .end local v9           #tmp:[Ljava/lang/Object;
    .restart local v5       #info:I
    .restart local v7       #name:Ljava/lang/String;
    :cond_7
    move v1, v2

    .end local v2           #count:I
    .restart local v1       #count:I
    goto :goto_1
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 569
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .locals 2
    .parameter "id"

    .prologue
    .line 580
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getMaxInstanceId()I
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method protected getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 2
    .parameter "cx"
    .parameter "id"

    .prologue
    .line 759
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 760
    .local v0, desc:Lorg/mozilla/javascript/ScriptableObject;
    if-nez v0, :cond_0

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 761
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getBuiltInDescriptor(Ljava/lang/String;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 763
    :cond_0
    return-object v0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 6
    .parameter "name"
    .parameter "start"

    .prologue
    const/4 v5, 0x1

    .line 355
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v2

    .line 356
    .local v2, info:I
    if-eqz v2, :cond_2

    .line 357
    ushr-int/lit8 v0, v2, 0x10

    .line 358
    .local v0, attr:I
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_0

    move v3, v5

    .line 370
    .end local v0           #attr:I
    :goto_0
    return v3

    .line 361
    .restart local v0       #attr:I
    :cond_0
    const v3, 0xffff

    and-int v1, v2, v3

    .line 362
    .local v1, id:I
    sget-object v3, Lorg/mozilla/javascript/IdScriptableObject;->NOT_FOUND:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 364
    .end local v0           #attr:I
    .end local v1           #id:I
    :cond_2
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    if-eqz v3, :cond_3

    .line 365
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->findId(Ljava/lang/String;)I

    move-result v1

    .line 366
    .restart local v1       #id:I
    if-eqz v1, :cond_3

    .line 367
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v3, v1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->has(I)Z

    move-result v3

    goto :goto_0

    .line 370
    .end local v1           #id:I
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v3

    goto :goto_0
.end method

.method public final hasPrototypeMap()Z
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final initPrototypeConstructor(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 4
    .parameter "f"

    .prologue
    .line 648
    iget-object v1, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    iget v0, v1, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->constructorId:I

    .line 649
    .local v0, id:I
    if-nez v0, :cond_0

    .line 650
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 651
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 652
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 653
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdScriptableObject;->isSealed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->sealObject()V

    .line 654
    :cond_2
    iget-object v1, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    const-string v2, "constructor"

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, p1, v3}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->initValue(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 655
    return-void
.end method

.method protected initPrototypeId(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 665
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V
    .locals 7
    .parameter "tag"
    .parameter "id"
    .parameter "name"
    .parameter "arity"

    .prologue
    .line 641
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    .local v5, scope:Lorg/mozilla/javascript/Scriptable;
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 642
    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->newIdFunction(Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/IdFunctionObject;

    move-result-object v6

    .line 643
    .local v6, f:Lorg/mozilla/javascript/IdFunctionObject;
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, p3, v6, v1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->initValue(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 644
    return-void
.end method

.method public final initPrototypeValue(ILjava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .parameter "id"
    .parameter "name"
    .parameter "value"
    .parameter "attributes"

    .prologue
    .line 660
    iget-object v0, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->initValue(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 661
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 5
    .parameter "name"
    .parameter "start"
    .parameter "value"

    .prologue
    const-string v4, "msg.modify.sealed"

    .line 395
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v2

    .line 396
    .local v2, info:I
    if-eqz v2, :cond_3

    .line 397
    if-ne p2, p0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/IdScriptableObject;->isSealed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    const-string v3, "msg.modify.sealed"

    invoke-static {v4, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v3

    throw v3

    .line 401
    :cond_0
    ushr-int/lit8 v0, v2, 0x10

    .line 402
    .local v0, attr:I
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_1

    .line 403
    if-ne p2, p0, :cond_2

    .line 404
    const v3, 0xffff

    and-int v1, v2, v3

    .line 405
    .local v1, id:I
    invoke-virtual {p0, v1, p3}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    .line 425
    .end local v0           #attr:I
    .end local v1           #id:I
    :cond_1
    :goto_0
    return-void

    .line 408
    .restart local v0       #attr:I
    :cond_2
    invoke-interface {p2, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0

    .line 413
    .end local v0           #attr:I
    :cond_3
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    if-eqz v3, :cond_5

    .line 414
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->findId(Ljava/lang/String;)I

    move-result v1

    .line 415
    .restart local v1       #id:I
    if-eqz v1, :cond_5

    .line 416
    if-ne p2, p0, :cond_4

    invoke-virtual {p0}, Lorg/mozilla/javascript/IdScriptableObject;->isSealed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 417
    const-string v3, "msg.modify.sealed"

    invoke-static {v4, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v3

    throw v3

    .line 420
    :cond_4
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v3, v1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->set(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0

    .line 424
    .end local v1           #id:I
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setAttributes(Ljava/lang/String;I)V
    .locals 5
    .parameter "name"
    .parameter "attributes"

    .prologue
    .line 474
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->checkValidAttributes(I)V

    .line 475
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v2

    .line 476
    .local v2, info:I
    if-eqz v2, :cond_0

    .line 477
    ushr-int/lit8 v0, v2, 0x10

    .line 478
    .local v0, currentAttributes:I
    if-eq p2, v0, :cond_1

    .line 479
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Change of attributes for this id is not supported"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 484
    .end local v0           #currentAttributes:I
    :cond_0
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    if-eqz v3, :cond_2

    .line 485
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v3, p1}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->findId(Ljava/lang/String;)I

    move-result v1

    .line 486
    .local v1, id:I
    if-eqz v1, :cond_2

    .line 487
    iget-object v3, p0, Lorg/mozilla/javascript/IdScriptableObject;->prototypeValues:Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;

    invoke-virtual {v3, v1, p2}, Lorg/mozilla/javascript/IdScriptableObject$PrototypeValues;->setAttributes(II)V

    .line 492
    .end local v1           #id:I
    :cond_1
    :goto_0
    return-void

    .line 491
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .locals 2
    .parameter "id"
    .parameter "value"

    .prologue
    .line 589
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
