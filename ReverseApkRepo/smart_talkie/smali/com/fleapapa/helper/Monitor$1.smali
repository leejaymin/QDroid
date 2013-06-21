.class Lcom/fleapapa/helper/Monitor$1;
.super Landroid/content/BroadcastReceiver;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/Monitor;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Monitor;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/Monitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/Monitor$1;->this$0:Lcom/fleapapa/helper/Monitor;

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 40
    const-string v5, "level"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 41
    .local v2, rawlevel:I
    const-string v5, "scale"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 42
    .local v3, scale:I
    const-string v5, "status"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 43
    .local v4, status:I
    const-string v5, "health"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 44
    .local v0, health:I
    const/4 v1, -0x1

    .line 45
    .local v1, level:I
    if-ltz v2, :cond_0

    if-lez v3, :cond_0

    .line 46
    mul-int/lit8 v5, v2, 0x64

    div-int v1, v5, v3

    .line 47
    :cond_0
    const/4 v5, 0x3

    if-ne v5, v0, :cond_1

    .line 48
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v6, "Monitor: battery feels very hot!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    packed-switch v4, :pswitch_data_0

    .line 64
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v6, "Monitor: battery is indescribable???"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :pswitch_0
    const/4 v5, 0x1

    sput-boolean v5, Lcom/fleapapa/helper/Monitor;->usingBattery:Z

    .line 69
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Monitor: battery discharging...level="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void

    .line 52
    :pswitch_1
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v6, "Monitor: has no battery!!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sput-boolean v7, Lcom/fleapapa/helper/Monitor;->usingBattery:Z

    goto :goto_0

    .line 56
    :pswitch_2
    sput-boolean v7, Lcom/fleapapa/helper/Monitor;->usingBattery:Z

    .line 57
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Monitor: battery charging...level="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :pswitch_3
    sput-boolean v7, Lcom/fleapapa/helper/Monitor;->usingBattery:Z

    .line 61
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Monitor: battery full...level="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
