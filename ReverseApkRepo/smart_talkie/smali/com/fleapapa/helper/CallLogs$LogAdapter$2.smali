.class Lcom/fleapapa/helper/CallLogs$LogAdapter$2;
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
    iput-object p1, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter$2;->this$1:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    iput-object p2, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter$2;->val$log:Lcom/fleapapa/helper/CallLogs$Clog;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter$2;->this$1:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    #getter for: Lcom/fleapapa/helper/CallLogs$LogAdapter;->this$0:Lcom/fleapapa/helper/CallLogs;
    invoke-static {v0}, Lcom/fleapapa/helper/CallLogs$LogAdapter;->access$0(Lcom/fleapapa/helper/CallLogs$LogAdapter;)Lcom/fleapapa/helper/CallLogs;

    move-result-object v0

    iget-object v0, v0, Lcom/fleapapa/helper/CallLogs;->adapter:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    iget-object v1, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter$2;->val$log:Lcom/fleapapa/helper/CallLogs$Clog;

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallLogs$LogAdapter;->remove(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter$2;->this$1:Lcom/fleapapa/helper/CallLogs$LogAdapter;

    #getter for: Lcom/fleapapa/helper/CallLogs$LogAdapter;->this$0:Lcom/fleapapa/helper/CallLogs;
    invoke-static {v0}, Lcom/fleapapa/helper/CallLogs$LogAdapter;->access$0(Lcom/fleapapa/helper/CallLogs$LogAdapter;)Lcom/fleapapa/helper/CallLogs;

    move-result-object v0

    iget-object v0, v0, Lcom/fleapapa/helper/CallLogs;->clogs:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter$2;->val$log:Lcom/fleapapa/helper/CallLogs$Clog;

    iget-object v1, v1, Lcom/fleapapa/helper/CallLogs$Clog;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/fleapapa/helper/CallLogs$LogAdapter$2;->val$log:Lcom/fleapapa/helper/CallLogs$Clog;

    iget-object v0, v0, Lcom/fleapapa/helper/CallLogs$Clog;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 182
    return-void
.end method
