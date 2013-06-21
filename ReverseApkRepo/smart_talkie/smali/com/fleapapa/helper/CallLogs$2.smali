.class Lcom/fleapapa/helper/CallLogs$2;
.super Ljava/lang/Object;
.source "CallLogs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallLogs;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/fleapapa/helper/CallLogs$2;->this$0:Lcom/fleapapa/helper/CallLogs;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fleapapa/helper/CallLogs$2;->this$0:Lcom/fleapapa/helper/CallLogs;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs$2;->this$0:Lcom/fleapapa/helper/CallLogs;

    const-class v3, Lcom/fleapapa/helper/OfflineMsgs;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallLogs;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
