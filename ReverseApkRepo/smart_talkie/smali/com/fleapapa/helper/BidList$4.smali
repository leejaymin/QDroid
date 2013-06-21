.class Lcom/fleapapa/helper/BidList$4;
.super Ljava/lang/Object;
.source "BidList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/fleapapa/helper/BidList$4;->this$0:Lcom/fleapapa/helper/BidList;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 104
    iget-object v3, p0, Lcom/fleapapa/helper/BidList$4;->this$0:Lcom/fleapapa/helper/BidList;

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

    .line 105
    .local v2, qty:I
    iget-object v3, p0, Lcom/fleapapa/helper/BidList$4;->this$0:Lcom/fleapapa/helper/BidList;

    const v4, 0x7f080004

    invoke-virtual {v3, v4}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 106
    .local v0, bid:D
    iget-object v3, p0, Lcom/fleapapa/helper/BidList$4;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v4, p0, Lcom/fleapapa/helper/BidList$4;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v4, v4, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/fleapapa/helper/BidList;->bid(Lcom/fleapapa/helper/Item;DI)V

    .line 107
    return-void
.end method
