.class public Lcom/falmarri/futures/QuoteList;
.super Ljava/util/ArrayList;
.source "QuoteList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/falmarri/futures/Quote;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x14c9eb44f1ffa149L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public take(Ljava/lang/String;)Lcom/falmarri/futures/Quote;
    .locals 4
    .parameter "index"

    .prologue
    .line 18
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    invoke-virtual {p0}, Lcom/falmarri/futures/QuoteList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 27
    const-string v1, "Falmarri"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Taking quote "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t find "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/falmarri/futures/QuoteList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/falmarri/futures/Quote;

    invoke-virtual {v1}, Lcom/falmarri/futures/Quote;->getIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {p0, v0}, Lcom/falmarri/futures/QuoteList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/falmarri/futures/Quote;

    return-object v1

    .line 18
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
