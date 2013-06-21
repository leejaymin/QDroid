.class Lcom/fleapapa/helper/Flea$1;
.super Ljava/lang/Object;
.source "Flea.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/Flea;->item_bid(Lcom/fleapapa/helper/Item;Ljava/lang/String;DI)Z
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
        "Lcom/fleapapa/helper/Bid;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Flea;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/Flea;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/Flea$1;->this$0:Lcom/fleapapa/helper/Flea;

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fleapapa/helper/Bid;Lcom/fleapapa/helper/Bid;)I
    .locals 4
    .parameter "b1"
    .parameter "b2"

    .prologue
    .line 713
    iget-wide v0, p1, Lcom/fleapapa/helper/Bid;->bid:D

    iget-wide v2, p2, Lcom/fleapapa/helper/Bid;->bid:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    .line 715
    :goto_0
    return v0

    .line 714
    :cond_0
    iget-wide v0, p1, Lcom/fleapapa/helper/Bid;->bid:D

    iget-wide v2, p2, Lcom/fleapapa/helper/Bid;->bid:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 715
    :cond_1
    iget v0, p2, Lcom/fleapapa/helper/Bid;->sid:I

    iget v1, p1, Lcom/fleapapa/helper/Bid;->sid:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/fleapapa/helper/Bid;

    check-cast p2, Lcom/fleapapa/helper/Bid;

    invoke-virtual {p0, p1, p2}, Lcom/fleapapa/helper/Flea$1;->compare(Lcom/fleapapa/helper/Bid;Lcom/fleapapa/helper/Bid;)I

    move-result v0

    return v0
.end method
