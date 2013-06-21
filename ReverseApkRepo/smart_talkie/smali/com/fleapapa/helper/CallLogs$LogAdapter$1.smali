.class Lcom/fleapapa/helper/CallLogs$LogAdapter$1;
.super Ljava/lang/Object;
.source "CallLogs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallLogs$LogAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/CallLogs$LogAdapter;

.field private final synthetic val$log:Lcom/fleapapa/helper/CallLogs$Clog;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallLogs$LogAdapter;Lcom/fleapapa/helper/CallLogs$Clog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter$1;->this$1:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    iput-object p2, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter$1;->val$log:Lcom/fleapapa/helper/CallLogs$Clog;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 163
    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallPapa;->newCall(Z)Lcom/fleapapa/helper/CallPapa$Call;

    move-result-object v0

    .line 164
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter$1;->val$log:Lcom/fleapapa/helper/CallLogs$Clog;

    iget-object v2, v2, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v2, v0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    .line 165
    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Call;->invite()V

    .line 171
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter$1;->this$1:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    #getter for: Lcom/fleapapa/helper/CallLogs$LogAdapter;->this$0:Lcom/fleapapa/helper/CallLogs;
    invoke-static {v2}, Lcom/fleapapa/helper/CallLogs$LogAdapter;->access$0(Lcom/fleapapa/helper/CallLogs$LogAdapter;)Lcom/fleapapa/helper/CallLogs;

    move-result-object v2

    const-class v3, Lcom/fleapapa/helper/CallMan;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "cid"

    iget v3, v0, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    iget-object v2, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter$1;->this$1:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    #getter for: Lcom/fleapapa/helper/CallLogs$LogAdapter;->this$0:Lcom/fleapapa/helper/CallLogs;
    invoke-static {v2}, Lcom/fleapapa/helper/CallLogs$LogAdapter;->access$0(Lcom/fleapapa/helper/CallLogs$LogAdapter;)Lcom/fleapapa/helper/CallLogs;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fleapapa/helper/CallLogs;->startActivity(Landroid/content/Intent;)V

    .line 174
    return-void
.end method
