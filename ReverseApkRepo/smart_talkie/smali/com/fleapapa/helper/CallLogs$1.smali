.class Lcom/fleapapa/helper/CallLogs$1;
.super Ljava/lang/Object;
.source "CallLogs.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallLogs;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallLogs;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallLogs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallLogs$1;->this$0:Lcom/fleapapa/helper/CallLogs;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs$1;->this$0:Lcom/fleapapa/helper/CallLogs;

    iget-object v2, v2, Lcom/fleapapa/helper/CallLogs;->adapter:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    invoke-virtual {v2, p3}, Lcom/fleapapa/helper/CallLogs$LogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/CallLogs$Clog;

    .line 51
    .local v1, log:Lcom/fleapapa/helper/CallLogs$Clog;
    iget-object v2, v1, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 52
    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, v1, Lcom/fleapapa/helper/CallLogs$Clog;->file:Ljava/io/File;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/fleapapa/helper/CallPapa;->readCall(Ljava/io/File;Z)Lcom/fleapapa/helper/CallPapa$Call;

    move-result-object v2

    iput-object v2, v1, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    if-nez v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v2, v1, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, v1, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    sput-object v2, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    .line 57
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs$1;->this$0:Lcom/fleapapa/helper/CallLogs;

    const-class v3, Lcom/fleapapa/helper/CallBursts;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs$1;->this$0:Lcom/fleapapa/helper/CallLogs;

    invoke-virtual {v2, v0}, Lcom/fleapapa/helper/CallLogs;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
