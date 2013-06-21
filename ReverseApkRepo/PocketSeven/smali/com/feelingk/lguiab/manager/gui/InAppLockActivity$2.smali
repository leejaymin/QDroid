.class Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$2;
.super Ljava/lang/Object;
.source "InAppLockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;


# direct methods
.method constructor <init>(Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$2;->this$0:Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 241
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$2;->this$0:Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;

    invoke-virtual {v0}, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->finish()V

    .line 243
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgPurchaseCancel()V

    .line 244
    return-void
.end method
