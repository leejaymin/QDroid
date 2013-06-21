.class Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;
.super Ljava/lang/Object;
.source "ScriptableObject.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/ScriptableObject$EntrySet;->iterator()Ljava/util/Iterator;
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
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field ids:[Ljava/lang/Object;

.field index:I

.field key:Ljava/lang/Object;

.field final synthetic this$1:Lorg/mozilla/javascript/ScriptableObject$EntrySet;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/ScriptableObject$EntrySet;)V
    .locals 1
    .parameter

    .prologue
    .line 3040
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->this$1:Lorg/mozilla/javascript/ScriptableObject$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3041
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->this$1:Lorg/mozilla/javascript/ScriptableObject$EntrySet;

    iget-object v0, v0, Lorg/mozilla/javascript/ScriptableObject$EntrySet;->this$0:Lorg/mozilla/javascript/ScriptableObject;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->getIds()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->ids:[Ljava/lang/Object;

    .line 3042
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->key:Ljava/lang/Object;

    .line 3043
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 3046
    iget v0, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->index:I

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->ids:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3040
    invoke-virtual {p0}, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3050
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->ids:[Ljava/lang/Object;

    iget v3, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->index:I

    aget-object v0, v2, v3

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->key:Ljava/lang/Object;

    .line 3051
    .local v0, ekey:Ljava/lang/Object;
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->this$1:Lorg/mozilla/javascript/ScriptableObject$EntrySet;

    iget-object v2, v2, Lorg/mozilla/javascript/ScriptableObject$EntrySet;->this$0:Lorg/mozilla/javascript/ScriptableObject;

    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3052
    .local v1, value:Ljava/lang/Object;
    new-instance v2, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1$1;-><init>(Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3086
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 3087
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3089
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->this$1:Lorg/mozilla/javascript/ScriptableObject$EntrySet;

    iget-object v0, v0, Lorg/mozilla/javascript/ScriptableObject$EntrySet;->this$0:Lorg/mozilla/javascript/ScriptableObject;

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3090
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$EntrySet$1;->key:Ljava/lang/Object;

    .line 3091
    return-void
.end method
