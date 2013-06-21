.class Lcom/fleapapa/helper/CallPapa$Burst$1;
.super Ljava/lang/Thread;
.source "CallPapa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallPapa$Burst;->collided()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/CallPapa$Burst;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallPapa$Burst;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$Burst$1;->this$1:Lcom/fleapapa/helper/CallPapa$Burst;

    .line 1510
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1512
    :goto_0
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst$1;->this$1:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Call;->talkable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst$1;->this$1:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa$Burst;->call:Lcom/fleapapa/helper/CallPapa$Call;

    const v1, 0x7700af00

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallPapa$Call;->setTalkState(I)V

    .line 1515
    iget-object v0, p0, Lcom/fleapapa/helper/CallPapa$Burst$1;->this$1:Lcom/fleapapa/helper/CallPapa$Burst;

    #getter for: Lcom/fleapapa/helper/CallPapa$Burst;->this$0:Lcom/fleapapa/helper/CallPapa;
    invoke-static {v0}, Lcom/fleapapa/helper/CallPapa$Burst;->access$2(Lcom/fleapapa/helper/CallPapa$Burst;)Lcom/fleapapa/helper/CallPapa;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fleapapa/helper/CallPapa;->nopusher:Ljava/lang/Thread;

    .line 1516
    return-void

    .line 1513
    :cond_0
    const-wide/16 v0, 0x2d0

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyUtil;->nap(J)Z

    goto :goto_0
.end method
