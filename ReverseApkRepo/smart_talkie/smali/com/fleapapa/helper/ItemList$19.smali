.class Lcom/fleapapa/helper/ItemList$19;
.super Ljava/lang/Object;
.source "ItemList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->sortItems(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fleapapa/helper/Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;

.field private final synthetic val$honorClass:Z


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemList;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$19;->this$0:Lcom/fleapapa/helper/ItemList;

    iput-boolean p2, p0, Lcom/fleapapa/helper/ItemList$19;->val$honorClass:Z

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fleapapa/helper/Item;Lcom/fleapapa/helper/Item;)I
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 377
    iget-boolean v0, p0, Lcom/fleapapa/helper/ItemList$19;->val$honorClass:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/fleapapa/helper/Item;->classx:I

    iget v1, p2, Lcom/fleapapa/helper/Item;->classx:I

    if-eq v0, v1, :cond_0

    .line 378
    iget v0, p2, Lcom/fleapapa/helper/Item;->classx:I

    iget v1, p1, Lcom/fleapapa/helper/Item;->classx:I

    sub-int/2addr v0, v1

    .line 400
    :goto_0
    return v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$19;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-char v0, v0, Lcom/fleapapa/helper/ItemList;->sbop:C

    sparse-switch v0, :sswitch_data_0

    .line 381
    iget v0, p1, Lcom/fleapapa/helper/Item;->dist:I

    iget v1, p2, Lcom/fleapapa/helper/Item;->dist:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 382
    :sswitch_0
    iget v0, p2, Lcom/fleapapa/helper/Item;->dist:I

    iget v1, p1, Lcom/fleapapa/helper/Item;->dist:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 383
    :sswitch_1
    iget v0, p1, Lcom/fleapapa/helper/Item;->nbid:I

    iget v1, p2, Lcom/fleapapa/helper/Item;->nbid:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 384
    :sswitch_2
    iget v0, p2, Lcom/fleapapa/helper/Item;->nbid:I

    iget v1, p1, Lcom/fleapapa/helper/Item;->nbid:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 385
    :sswitch_3
    iget v0, p1, Lcom/fleapapa/helper/Item;->nview:I

    iget v1, p2, Lcom/fleapapa/helper/Item;->nview:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 386
    :sswitch_4
    iget v0, p2, Lcom/fleapapa/helper/Item;->nview:I

    iget v1, p1, Lcom/fleapapa/helper/Item;->nview:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 387
    :sswitch_5
    iget v0, p1, Lcom/fleapapa/helper/Item;->ncomt:I

    iget v1, p2, Lcom/fleapapa/helper/Item;->ncomt:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 388
    :sswitch_6
    iget v0, p2, Lcom/fleapapa/helper/Item;->ncomt:I

    iget v1, p1, Lcom/fleapapa/helper/Item;->ncomt:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 389
    :sswitch_7
    iget-wide v0, p1, Lcom/fleapapa/helper/Item;->usd:D

    iget-wide v2, p2, Lcom/fleapapa/helper/Item;->usd:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lcom/fleapapa/helper/Item;->usd:D

    iget-wide v2, p2, Lcom/fleapapa/helper/Item;->usd:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_0

    .line 390
    :sswitch_8
    iget-wide v0, p1, Lcom/fleapapa/helper/Item;->usd:D

    iget-wide v2, p2, Lcom/fleapapa/helper/Item;->usd:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    iget-wide v0, p1, Lcom/fleapapa/helper/Item;->usd:D

    iget-wide v2, p2, Lcom/fleapapa/helper/Item;->usd:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_0

    .line 391
    :sswitch_9
    iget-object v0, p1, Lcom/fleapapa/helper/Item;->ctime:Ljava/lang/String;

    iget-object v1, p2, Lcom/fleapapa/helper/Item;->ctime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 392
    :sswitch_a
    iget-object v0, p2, Lcom/fleapapa/helper/Item;->ctime:Ljava/lang/String;

    iget-object v1, p1, Lcom/fleapapa/helper/Item;->ctime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 393
    :sswitch_b
    iget-boolean v0, p1, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p2, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    iget-object v1, p2, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_5
    move v0, v4

    goto/16 :goto_0

    :cond_6
    move v0, v5

    goto/16 :goto_0

    .line 394
    :sswitch_c
    iget-boolean v0, p1, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p2, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    iget-object v1, p1, Lcom/fleapapa/helper/Item;->deadline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_7
    move v0, v4

    goto/16 :goto_0

    :cond_8
    move v0, v5

    goto/16 :goto_0

    .line 395
    :sswitch_d
    iget v0, p1, Lcom/fleapapa/helper/Item;->rats:I

    iget v1, p2, Lcom/fleapapa/helper/Item;->rats:I

    sub-int/2addr v0, v1

    goto/16 :goto_0

    .line 396
    :sswitch_e
    iget v0, p2, Lcom/fleapapa/helper/Item;->rats:I

    iget v1, p1, Lcom/fleapapa/helper/Item;->rats:I

    sub-int/2addr v0, v1

    goto/16 :goto_0

    .line 397
    :sswitch_f
    iget v0, p1, Lcom/fleapapa/helper/Item;->nwatch:I

    iget v1, p2, Lcom/fleapapa/helper/Item;->nwatch:I

    sub-int/2addr v0, v1

    goto/16 :goto_0

    .line 398
    :sswitch_10
    iget v0, p2, Lcom/fleapapa/helper/Item;->nwatch:I

    iget v1, p1, Lcom/fleapapa/helper/Item;->nwatch:I

    sub-int/2addr v0, v1

    goto/16 :goto_0

    .line 399
    :sswitch_11
    iget v0, p1, Lcom/fleapapa/helper/Item;->qty:I

    iget v1, p2, Lcom/fleapapa/helper/Item;->qty:I

    sub-int/2addr v0, v1

    goto/16 :goto_0

    .line 400
    :sswitch_12
    iget v0, p2, Lcom/fleapapa/helper/Item;->qty:I

    iget v1, p1, Lcom/fleapapa/helper/Item;->qty:I

    sub-int/2addr v0, v1

    goto/16 :goto_0

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x43 -> :sswitch_6
        0x44 -> :sswitch_0
        0x45 -> :sswitch_c
        0x47 -> :sswitch_12
        0x4f -> :sswitch_a
        0x50 -> :sswitch_8
        0x52 -> :sswitch_e
        0x56 -> :sswitch_4
        0x57 -> :sswitch_10
        0x62 -> :sswitch_1
        0x63 -> :sswitch_5
        0x65 -> :sswitch_b
        0x67 -> :sswitch_11
        0x6f -> :sswitch_9
        0x70 -> :sswitch_7
        0x72 -> :sswitch_d
        0x76 -> :sswitch_3
        0x77 -> :sswitch_f
    .end sparse-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/fleapapa/helper/Item;

    check-cast p2, Lcom/fleapapa/helper/Item;

    invoke-virtual {p0, p1, p2}, Lcom/fleapapa/helper/ItemList$19;->compare(Lcom/fleapapa/helper/Item;Lcom/fleapapa/helper/Item;)I

    move-result v0

    return v0
.end method
