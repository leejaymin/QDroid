.class Lcom/fleapapa/helper/CallMan$7;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallMan;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$7;->this$0:Lcom/fleapapa/helper/CallMan;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 252
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, p0, Lcom/fleapapa/helper/CallMan$7;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-boolean v2, v2, Lcom/fleapapa/helper/CallMan;->urgency:Z

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallPapa;->newCall(Z)Lcom/fleapapa/helper/CallPapa$Call;

    move-result-object v0

    .line 253
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$7;->this$0:Lcom/fleapapa/helper/CallMan;

    invoke-virtual {v1}, Lcom/fleapapa/helper/CallMan;->layoutCalls()V

    .line 254
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$7;->this$0:Lcom/fleapapa/helper/CallMan;

    invoke-virtual {v1, v0}, Lcom/fleapapa/helper/CallMan;->gotoCall(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 255
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$7;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallMan;->urgency:Z

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$7;->this$0:Lcom/fleapapa/helper/CallMan;

    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallMan;->selectPeers(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 257
    :cond_0
    return-void
.end method
