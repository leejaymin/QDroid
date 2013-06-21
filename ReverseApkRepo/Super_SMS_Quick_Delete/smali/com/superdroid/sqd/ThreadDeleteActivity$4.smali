.class Lcom/superdroid/sqd/ThreadDeleteActivity$4;
.super Ljava/lang/Object;
.source "ThreadDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/sqd/ThreadDeleteActivity;->showConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;


# direct methods
.method constructor <init>(Lcom/superdroid/sqd/ThreadDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$4;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$4;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    #calls: Lcom/superdroid/sqd/ThreadDeleteActivity;->deleteThreads()V
    invoke-static {v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->access$8(Lcom/superdroid/sqd/ThreadDeleteActivity;)V

    .line 236
    return-void
.end method
