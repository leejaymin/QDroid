.class Lcom/fleapapa/helper/CallLogs$3;
.super Ljava/lang/Object;
.source "CallLogs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallLogs;->getCallLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallLogs;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallLogs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallLogs$3;->this$0:Lcom/fleapapa/helper/CallLogs;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fleapapa/helper/CallLogs$3;->this$0:Lcom/fleapapa/helper/CallLogs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyUtil;->progress(Landroid/app/Activity;Z)V

    .line 104
    iget-object v0, p0, Lcom/fleapapa/helper/CallLogs$3;->this$0:Lcom/fleapapa/helper/CallLogs;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallLogs;->layoutCallLogs()V

    .line 105
    return-void
.end method
