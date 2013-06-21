.class Lexam/thread/LongTime2$2;
.super Ljava/lang/Object;
.source "LongTime2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/LongTime2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/LongTime2;


# direct methods
.method constructor <init>(Lexam/thread/LongTime2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/LongTime2$2;->this$0:Lexam/thread/LongTime2;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 22
    iget-object v0, p0, Lexam/thread/LongTime2$2;->this$0:Lexam/thread/LongTime2;

    iput v1, v0, Lexam/thread/LongTime2;->mValue:I

    .line 23
    iget-object v0, p0, Lexam/thread/LongTime2$2;->this$0:Lexam/thread/LongTime2;

    iget-object v0, v0, Lexam/thread/LongTime2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 24
    return-void
.end method
