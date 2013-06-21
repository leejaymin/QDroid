.class public Lcom/fleapapa/helper/Bid;
.super Ljava/lang/Object;
.source "Bid.java"


# instance fields
.field bid:D

.field email:Ljava/lang/String;

.field item:Lcom/fleapapa/helper/Item;

.field lati:I

.field loni:I

.field phone:Ljava/lang/String;

.field qty:I

.field ratn:I

.field ratp:I

.field sid:I

.field time:Ljava/lang/String;

.field uid:I

.field user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/Item;IDLjava/lang/String;)V
    .locals 1
    .parameter "item"
    .parameter "uid"
    .parameter "bid"
    .parameter "time"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/fleapapa/helper/Bid;->item:Lcom/fleapapa/helper/Item;

    .line 16
    iput-wide p3, p0, Lcom/fleapapa/helper/Bid;->bid:D

    .line 17
    iput-object p5, p0, Lcom/fleapapa/helper/Bid;->time:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/fleapapa/helper/Bid;->uid:I

    .line 19
    iget-object v0, p1, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method


# virtual methods
.method public p2win()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 23
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, ns:I
    :goto_0
    iget-object v3, p0, Lcom/fleapapa/helper/Bid;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, v3, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/fleapapa/helper/Bid;->item:Lcom/fleapapa/helper/Item;

    iget v3, v3, Lcom/fleapapa/helper/Item;->qty:I

    if-lt v2, v3, :cond_1

    :cond_0
    move v3, v7

    .line 31
    :goto_1
    return v3

    .line 24
    :cond_1
    iget-object v3, p0, Lcom/fleapapa/helper/Bid;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, v3, Lcom/fleapapa/helper/Item;->bids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Bid;

    .line 25
    .local v0, b:Lcom/fleapapa/helper/Bid;
    iget-object v3, p0, Lcom/fleapapa/helper/Bid;->item:Lcom/fleapapa/helper/Item;

    iget-wide v3, v3, Lcom/fleapapa/helper/Item;->buynow:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    iget-wide v3, v0, Lcom/fleapapa/helper/Bid;->bid:D

    iget-object v5, p0, Lcom/fleapapa/helper/Bid;->item:Lcom/fleapapa/helper/Item;

    iget-wide v5, v5, Lcom/fleapapa/helper/Item;->buynow:D

    cmpl-double v3, v3, v5

    if-gez v3, :cond_3

    .line 26
    :cond_2
    iget-wide v3, v0, Lcom/fleapapa/helper/Bid;->bid:D

    iget-object v5, p0, Lcom/fleapapa/helper/Bid;->item:Lcom/fleapapa/helper/Item;

    iget-wide v5, v5, Lcom/fleapapa/helper/Item;->reserve:D

    cmpl-double v3, v3, v5

    if-gez v3, :cond_3

    move v3, v7

    .line 27
    goto :goto_1

    .line 28
    :cond_3
    iget v3, v0, Lcom/fleapapa/helper/Bid;->sid:I

    iget v4, p0, Lcom/fleapapa/helper/Bid;->sid:I

    if-ne v3, v4, :cond_5

    .line 29
    iget v3, v0, Lcom/fleapapa/helper/Bid;->qty:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/fleapapa/helper/Bid;->item:Lcom/fleapapa/helper/Item;

    iget v4, v4, Lcom/fleapapa/helper/Item;->qty:I

    if-ge v3, v4, :cond_4

    iget v3, v0, Lcom/fleapapa/helper/Bid;->qty:I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/fleapapa/helper/Bid;->item:Lcom/fleapapa/helper/Item;

    iget v3, v3, Lcom/fleapapa/helper/Item;->qty:I

    sub-int/2addr v3, v2

    goto :goto_1

    .line 23
    :cond_5
    add-int/lit8 v1, v1, 0x1

    iget v3, v0, Lcom/fleapapa/helper/Bid;->qty:I

    add-int/2addr v2, v3

    goto :goto_0
.end method
