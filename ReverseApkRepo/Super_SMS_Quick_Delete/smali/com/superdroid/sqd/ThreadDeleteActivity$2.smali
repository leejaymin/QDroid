.class Lcom/superdroid/sqd/ThreadDeleteActivity$2;
.super Ljava/lang/Thread;
.source "ThreadDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/sqd/ThreadDeleteActivity;->initialInBakcground()V
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
    iput-object p1, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$2;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$2;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    #calls: Lcom/superdroid/sqd/ThreadDeleteActivity;->fetchData()V
    invoke-static {v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->access$4(Lcom/superdroid/sqd/ThreadDeleteActivity;)V

    .line 83
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$2;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    const/4 v1, 0x4

    #calls: Lcom/superdroid/sqd/ThreadDeleteActivity;->sendMessage(I)V
    invoke-static {v0, v1}, Lcom/superdroid/sqd/ThreadDeleteActivity;->access$5(Lcom/superdroid/sqd/ThreadDeleteActivity;I)V

    .line 84
    return-void
.end method
