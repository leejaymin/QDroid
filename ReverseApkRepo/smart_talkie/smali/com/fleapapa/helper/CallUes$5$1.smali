.class Lcom/fleapapa/helper/CallUes$5$1;
.super Ljava/lang/Object;
.source "CallUes.java"

# interfaces
.implements Lcom/fleapapa/helper/CallPapa$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallUes$5;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/CallUes$5;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallUes$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallUes$5$1;->this$1:Lcom/fleapapa/helper/CallUes$5;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public function(Lcom/fleapapa/helper/CallPapa$Call;I)V
    .locals 2
    .parameter "call"
    .parameter "schanges"

    .prologue
    .line 163
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    if-eq p1, v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-boolean v0, p1, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    if-eqz v0, :cond_0

    .line 165
    sget v0, Lcom/fleapapa/helper/CallUes;->changedStatus:I

    or-int/2addr v0, p2

    sput v0, Lcom/fleapapa/helper/CallUes;->changedStatus:I

    .line 166
    sget-object v0, Lcom/fleapapa/helper/CallUes;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/fleapapa/helper/CallUes;->refreshUI:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
