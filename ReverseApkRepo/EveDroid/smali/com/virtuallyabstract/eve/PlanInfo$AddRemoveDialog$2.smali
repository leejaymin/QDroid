.class Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog$2;
.super Ljava/lang/Object;
.source "PlanInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;


# direct methods
.method constructor <init>(Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog$2;->this$1:Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog$2;->this$1:Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;

    invoke-virtual {v0}, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->dismiss()V

    iget-object v0, p0, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog$2;->this$1:Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;

    #calls: Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->showInfo()V
    invoke-static {v0}, Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;->access$1(Lcom/virtuallyabstract/eve/PlanInfo$AddRemoveDialog;)V

    return-void
.end method
