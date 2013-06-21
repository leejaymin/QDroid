.class Lcom/cocmoc/kulinglite/Register$2;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocmoc/kulinglite/Register;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocmoc/kulinglite/Register;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/Register;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Register$2;->this$0:Lcom/cocmoc/kulinglite/Register;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Register$2;->this$0:Lcom/cocmoc/kulinglite/Register;

    #calls: Lcom/cocmoc/kulinglite/Register;->showProgressbar()V
    invoke-static {v0}, Lcom/cocmoc/kulinglite/Register;->access$1(Lcom/cocmoc/kulinglite/Register;)V

    .line 68
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Register$2;->this$0:Lcom/cocmoc/kulinglite/Register;

    invoke-virtual {v0}, Lcom/cocmoc/kulinglite/Register;->startPayPalInit()V

    .line 70
    return-void
.end method
