.class Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;
.super Ljava/lang/Object;
.source "ScriptableObject.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/ScriptableObject$ValueCollection;->iterator()Ljava/util/Iterator;
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

.field final synthetic this$1:Lorg/mozilla/javascript/ScriptableObject$ValueCollection;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/ScriptableObject$ValueCollection;)V
    .locals 1
    .parameter

    .prologue
    .line 3143
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->this$1:Lorg/mozilla/javascript/ScriptableObject$ValueCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3144
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->this$1:Lorg/mozilla/javascript/ScriptableObject$ValueCollection;

    iget-object v0, v0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection;->this$0:Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->getIds()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->ids:[Ljava/lang/Object;

    .line 3146
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 3149
    iget v0, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->index:I

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->ids:[Ljava/lang/Object;

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
    .locals 4

    .prologue
    .line 3153
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->this$1:Lorg/mozilla/javascript/ScriptableObject$ValueCollection;

    iget-object v0, v0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection;->this$0:Lorg/mozilla/javascript/ScriptableObject;

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->ids:[Ljava/lang/Object;

    iget v2, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->index:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3157
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 3158
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3160
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->this$1:Lorg/mozilla/javascript/ScriptableObject$ValueCollection;

    iget-object v0, v0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection;->this$0:Lorg/mozilla/javascript/ScriptableObject;

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3161
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$ValueCollection$1;->key:Ljava/lang/Object;

    .line 3162
    return-void
.end method
