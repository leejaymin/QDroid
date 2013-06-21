.class Lorg/mozilla/javascript/ScriptableObject$KeySet$1;
.super Ljava/lang/Object;
.source "ScriptableObject.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/ScriptableObject$KeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field ids:[Ljava/lang/Object;

.field index:I

.field key:Ljava/lang/Object;

.field final synthetic this$1:Lorg/mozilla/javascript/ScriptableObject$KeySet;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/ScriptableObject$KeySet;)V
    .locals 1
    .parameter

    .prologue
    .line 3110
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;->this$1:Lorg/mozilla/javascript/ScriptableObject$KeySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3111
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;->this$1:Lorg/mozilla/javascript/ScriptableObject$KeySet;

    iget-object v0, v0, Lorg/mozilla/javascript/ScriptableObject$KeySet;->this$0:Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->getIds()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;->ids:[Ljava/lang/Object;

    .line 3113
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 3116
    iget v0, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;->index:I

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;->ids:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 3120
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;->ids:[Ljava/lang/Object;

    iget v1, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;->index:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3124
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 3125
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3127
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;->this$1:Lorg/mozilla/javascript/ScriptableObject$KeySet;

    iget-object v0, v0, Lorg/mozilla/javascript/ScriptableObject$KeySet;->this$0:Lorg/mozilla/javascript/ScriptableObject;

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3128
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$KeySet$1;->key:Ljava/lang/Object;

    .line 3129
    return-void
.end method
