.class Lcom/gameboys/pocket7/OllehChargeActivity$2;
.super Ljava/lang/Object;
.source "OllehChargeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameboys/pocket7/OllehChargeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameboys/pocket7/OllehChargeActivity;


# direct methods
.method constructor <init>(Lcom/gameboys/pocket7/OllehChargeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gameboys/pocket7/OllehChargeActivity$2;->this$0:Lcom/gameboys/pocket7/OllehChargeActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/gameboys/pocket7/OllehChargeActivity$2;->this$0:Lcom/gameboys/pocket7/OllehChargeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameboys/pocket7/OllehChargeActivity;->setResult(I)V

    .line 60
    iget-object v0, p0, Lcom/gameboys/pocket7/OllehChargeActivity$2;->this$0:Lcom/gameboys/pocket7/OllehChargeActivity;

    invoke-virtual {v0}, Lcom/gameboys/pocket7/OllehChargeActivity;->finish()V

    .line 61
    return-void
.end method
