.class Lcom/fleapapa/helper/CallTabs$1;
.super Ljava/lang/Object;
.source "CallTabs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallTabs;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallTabs;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallTabs;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallTabs$1;->this$0:Lcom/fleapapa/helper/CallTabs;

    iput-object p2, p0, Lcom/fleapapa/helper/CallTabs$1;->val$handler:Landroid/os/Handler;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1388

    .line 83
    sget-boolean v0, Lcom/fleapapa/helper/CallTabs;->hideTabs:Z

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "talks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-wide v0, Lcom/fleapapa/helper/CallTabs;->tshow:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/fleapapa/helper/CallTabs;->tshow:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/fleapapa/helper/CallTabs$1;->this$0:Lcom/fleapapa/helper/CallTabs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallTabs;->toggleTabs(Z)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/CallTabs$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    return-void
.end method
