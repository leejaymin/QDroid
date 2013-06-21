.class Lcom/fleapapa/helper/BidList$3;
.super Ljava/lang/Object;
.source "BidList.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/BidList;->showVariables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/BidList;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/BidList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/BidList$3;->this$0:Lcom/fleapapa/helper/BidList;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 9
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 95
    if-eqz p2, :cond_1

    .line 100
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local p1
    :cond_1
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 97
    .local v0, bid:D
    iget-object v3, p0, Lcom/fleapapa/helper/BidList$3;->this$0:Lcom/fleapapa/helper/BidList;

    const v4, 0x7f080003

    invoke-virtual {v3, v4}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 98
    .local v2, qty:I
    iget-object v3, p0, Lcom/fleapapa/helper/BidList$3;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v3, v3, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    invoke-virtual {v3, v2}, Lcom/fleapapa/helper/Item;->nextbid(I)D

    move-result-wide v3

    cmpg-double v3, v0, v3

    if-gez v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/fleapapa/helper/BidList$3;->this$0:Lcom/fleapapa/helper/BidList;

    const v4, 0x7f080004

    invoke-virtual {v3, v4}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fleapapa/helper/BidList$3;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v7, v7, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    invoke-virtual {v7, v2}, Lcom/fleapapa/helper/Item;->nextbid(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
