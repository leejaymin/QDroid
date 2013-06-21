.class Lorg/mozilla/javascript/ScriptableObject$Slot;
.super Ljava/lang/Object;
.source "ScriptableObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ScriptableObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Slot"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x548617c41c7a8763L


# instance fields
.field private volatile attributes:S

.field indexOrHash:I

.field name:Ljava/lang/String;

.field volatile transient next:Lorg/mozilla/javascript/ScriptableObject$Slot;

.field volatile transient orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

.field volatile value:Ljava/lang/Object;

.field volatile transient wasDeleted:Z


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "name"
    .parameter "indexOrHash"
    .parameter "attributes"

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    .line 177
    iput p2, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    .line 178
    int-to-short v0, p3

    iput-short v0, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->attributes:S

    .line 179
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 185
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method final checkNotReadonly()V
    .locals 2

    .prologue
    .line 203
    iget-short v1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->attributes:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->name:Ljava/lang/String;

    move-object v0, v1

    .line 206
    .local v0, str:Ljava/lang/String;
    :goto_0
    const-string v1, "msg.modify.readonly"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    throw v1

    .line 204
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->indexOrHash:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 208
    :cond_1
    return-void
.end method

.method final getAttributes()I
    .locals 1

    .prologue
    .line 192
    iget-short v0, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->attributes:S

    return v0
.end method

.method getPropertyDescriptor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 2
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 211
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    :goto_0
    iget-short v1, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->attributes:S

    invoke-static {p2, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->buildDataDescriptor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method final declared-synchronized setAttributes(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->checkValidAttributes(I)V

    .line 198
    int-to-short v0, p1

    iput-short v0, p0, Lorg/mozilla/javascript/ScriptableObject$Slot;->attributes:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
