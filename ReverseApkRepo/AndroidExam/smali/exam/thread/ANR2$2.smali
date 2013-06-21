.class Lexam/thread/ANR2$2;
.super Ljava/lang/Thread;
.source "ANR2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/ANR2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/ANR2;


# direct methods
.method constructor <init>(Lexam/thread/ANR2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/ANR2$2;->this$0:Lexam/thread/ANR2;

    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lexam/thread/ANR2$2;->this$0:Lexam/thread/ANR2;

    invoke-virtual {v0}, Lexam/thread/ANR2;->doUpload()V

    .line 27
    iget-object v0, p0, Lexam/thread/ANR2$2;->this$0:Lexam/thread/ANR2;

    iget-object v0, v0, Lexam/thread/ANR2;->mCompleteHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 28
    return-void
.end method
