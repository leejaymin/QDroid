.class Lcom/cocmoc/kulinglite/Register$1;
.super Ljava/lang/Object;
.source "Register.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cocmoc/kulinglite/Register;
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
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Register$1;->this$0:Lcom/cocmoc/kulinglite/Register;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Register$1;->this$0:Lcom/cocmoc/kulinglite/Register;

    #calls: Lcom/cocmoc/kulinglite/Register;->updateResultsInUi()V
    invoke-static {v0}, Lcom/cocmoc/kulinglite/Register;->access$0(Lcom/cocmoc/kulinglite/Register;)V

    .line 37
    return-void
.end method
