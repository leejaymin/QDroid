.class Lcom/wareone/tappmt/TapPMT$6;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/TapPMT;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$6;->this$0:Lcom/wareone/tappmt/TapPMT;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 366
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT$6;->this$0:Lcom/wareone/tappmt/TapPMT;

    const v3, 0x7f0c005f

    invoke-virtual {v2, v3}, Lcom/wareone/tappmt/TapPMT;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 368
    .local v1, spn_type:Landroid/widget/Spinner;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT$6;->this$0:Lcom/wareone/tappmt/TapPMT;

    const-class v3, Lcom/wareone/tappmt/Transaction;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .local v0, it:Landroid/content/Intent;
    const-string v2, "ACTION"

    const v3, 0x7f09005b

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    const-string v2, "MODE"

    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT$6;->this$0:Lcom/wareone/tappmt/TapPMT;

    #getter for: Lcom/wareone/tappmt/TapPMT;->TRANS_MODE:[I
    invoke-static {v3}, Lcom/wareone/tappmt/TapPMT;->access$15(Lcom/wareone/tappmt/TapPMT;)[I

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    const-string v2, "_id"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 372
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT$6;->this$0:Lcom/wareone/tappmt/TapPMT;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/wareone/tappmt/TapPMT;->startActivityForResult(Landroid/content/Intent;I)V

    .line 375
    return-void
.end method
