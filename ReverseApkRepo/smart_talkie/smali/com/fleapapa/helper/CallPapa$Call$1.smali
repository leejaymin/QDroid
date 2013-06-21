.class Lcom/fleapapa/helper/CallPapa$Call$1;
.super Ljava/lang/Object;
.source "CallPapa.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallPapa$Call;->playBursts(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/CallPapa$Call;

.field private final synthetic val$all:Z

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallPapa$Call;ZLandroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->this$1:Lcom/fleapapa/helper/CallPapa$Call;

    iput-boolean p2, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->val$all:Z

    iput-object p3, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->val$handler:Landroid/os/Handler;

    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1156
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->this$1:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v1}, Lcom/fleapapa/helper/CallPapa$Call;->playerState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1181
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->this$1:Lcom/fleapapa/helper/CallPapa$Call;

    iget v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    if-gez v1, :cond_5

    .line 1184
    :goto_1
    return-void

    .line 1166
    :pswitch_1
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->this$1:Lcom/fleapapa/helper/CallPapa$Call;

    iget v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    if-ltz v1, :cond_2

    .line 1167
    iget-boolean v1, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->val$all:Z

    if-eqz v1, :cond_2

    .line 1168
    :cond_1
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->this$1:Lcom/fleapapa/helper/CallPapa$Call;

    iget v2, v1, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->this$1:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_4

    .line 1176
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->val$all:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->this$1:Lcom/fleapapa/helper/CallPapa$Call;

    iget v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->this$1:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1177
    :cond_3
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->this$1:Lcom/fleapapa/helper/CallPapa$Call;

    const/4 v2, -0x1

    iput v2, v1, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    goto :goto_0

    .line 1169
    :cond_4
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->this$1:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->this$1:Lcom/fleapapa/helper/CallPapa$Call;

    iget v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->pburst:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Burst;

    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    if-eqz v0, :cond_1

    .line 1170
    iget-byte v1, v0, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-nez v1, :cond_1

    .line 1171
    iget-boolean v1, v0, Lcom/fleapapa/helper/CallPapa$Burst;->selected:Z

    if-eqz v1, :cond_1

    .line 1172
    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Burst;->play()V

    goto :goto_2

    .line 1183
    .end local v0           #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    :cond_5
    iget-object v1, p0, Lcom/fleapapa/helper/CallPapa$Call$1;->val$handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
