.class Lcom/fleapapa/helper/BidList$2;
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
    iput-object p1, p0, Lcom/fleapapa/helper/BidList$2;->this$0:Lcom/fleapapa/helper/BidList;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 84
    if-eqz p2, :cond_0

    .line 90
    .end local p1
    :goto_0
    return-void

    .line 85
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/fleapapa/helper/BidList$2;->this$0:Lcom/fleapapa/helper/BidList;

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

    .line 86
    .local v0, qty:I
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/fleapapa/helper/BidList$2;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v1, v1, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->qty:I

    iget-object v2, p0, Lcom/fleapapa/helper/BidList$2;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v2, v2, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    iget v2, v2, Lcom/fleapapa/helper/Item;->nsold:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/fleapapa/helper/BidList$2;->this$0:Lcom/fleapapa/helper/BidList;

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/BidList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fleapapa/helper/BidList$2;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v5, v5, Lcom/fleapapa/helper/BidList;->item:Lcom/fleapapa/helper/Item;

    invoke-virtual {v5, v0}, Lcom/fleapapa/helper/Item;->nextbid(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_1
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    const-string v1, "1"

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
