.class Lcom/cocmoc/kulinglite/Register$4;
.super Ljava/lang/Thread;
.source "Register.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocmoc/kulinglite/Register;->startPayPalInit()V
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
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Register$4;->this$0:Lcom/cocmoc/kulinglite/Register;

    .line 129
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Register$4;->this$0:Lcom/cocmoc/kulinglite/Register;

    invoke-virtual {v0}, Lcom/cocmoc/kulinglite/Register;->initPayPal()V

    .line 132
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Register$4;->this$0:Lcom/cocmoc/kulinglite/Register;

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Register;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cocmoc/kulinglite/Register$4;->this$0:Lcom/cocmoc/kulinglite/Register;

    iget-object v1, v1, Lcom/cocmoc/kulinglite/Register;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method
