.class Lexam/thread/LongTime5$1;
.super Ljava/lang/Object;
.source "LongTime5.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/LongTime5;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/LongTime5;


# direct methods
.method constructor <init>(Lexam/thread/LongTime5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/LongTime5$1;->this$0:Lexam/thread/LongTime5;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 23
    new-instance v0, Lexam/thread/LongTime5$AccumulateTask;

    iget-object v1, p0, Lexam/thread/LongTime5$1;->this$0:Lexam/thread/LongTime5;

    invoke-direct {v0, v1}, Lexam/thread/LongTime5$AccumulateTask;-><init>(Lexam/thread/LongTime5;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lexam/thread/LongTime5$AccumulateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 24
    return-void
.end method
