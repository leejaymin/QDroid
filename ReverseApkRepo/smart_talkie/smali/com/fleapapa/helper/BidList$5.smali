.class Lcom/fleapapa/helper/BidList$5;
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
    iput-object p1, p0, Lcom/fleapapa/helper/BidList$5;->this$0:Lcom/fleapapa/helper/BidList;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/fleapapa/helper/BidList$5;->this$0:Lcom/fleapapa/helper/BidList;

    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 113
    .local v0, qty:I
    iget-object v1, p0, Lcom/fleapapa/helper/BidList$5;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v2, p0, Lcom/fleapapa/helper/BidList$5;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v2, v2, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, p0, Lcom/fleapapa/helper/BidList$5;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v3, v3, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget-wide v3, v3, Lcom/fleapapa/helper/Item;->buynow:D

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/fleapapa/helper/BidList;->bid(Lcom/fleapapa/helper/Item;DI)V

    .line 114
    return-void
.end method
