.class Lcom/fleapapa/helper/CallUes$6;
.super Ljava/lang/Object;
.source "CallUes.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallUes;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallUes;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallUes;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallUes$6;->this$0:Lcom/fleapapa/helper/CallUes;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes$6;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-boolean v0, v0, Lcom/fleapapa/helper/CallUes;->longClicking:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallUes$6;->this$0:Lcom/fleapapa/helper/CallUes;

    #getter for: Lcom/fleapapa/helper/CallUes;->WHO:Ljava/lang/String;
    invoke-static {v2}, Lcom/fleapapa/helper/CallUes;->access$0(Lcom/fleapapa/helper/CallUes;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " stop long click"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes$6;->this$0:Lcom/fleapapa/helper/CallUes;

    iput-boolean v3, v0, Lcom/fleapapa/helper/CallUes;->longClicking:Z

    .line 193
    iget-object v0, p0, Lcom/fleapapa/helper/CallUes$6;->this$0:Lcom/fleapapa/helper/CallUes;

    iget-object v0, v0, Lcom/fleapapa/helper/CallUes;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Call;->stopRecorder()Lcom/fleapapa/helper/CallPapa$Burst;

    .line 195
    :cond_0
    return v3
.end method
