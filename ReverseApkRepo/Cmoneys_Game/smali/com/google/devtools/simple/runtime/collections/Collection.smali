.class public Lcom/google/devtools/simple/runtime/collections/Collection;
.super Ljava/lang/Object;
.source "Collection.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/devtools/simple/runtime/variants/Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/collections/Collection;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public Add(Lcom/google/devtools/simple/runtime/variants/Variant;)V
    .locals 1
    .parameter "item"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/collections/Collection;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public Clear()V
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/collections/Collection;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    return-void
.end method

.method public Contains(Lcom/google/devtools/simple/runtime/variants/Variant;)Z
    .locals 1
    .parameter "item"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/collections/Collection;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Count()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/collections/Collection;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public Item(I)Lcom/google/devtools/simple/runtime/variants/Variant;
    .locals 1
    .parameter "index"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/collections/Collection;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/devtools/simple/runtime/variants/Variant;

    return-object p0
.end method

.method public Remove(Lcom/google/devtools/simple/runtime/variants/Variant;)V
    .locals 1
    .parameter "item"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/collections/Collection;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method
