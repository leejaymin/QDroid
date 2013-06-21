.class Lexam/thread/LongTime5$AccumulateTask$1;
.super Ljava/lang/Object;
.source "LongTime5.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/LongTime5$AccumulateTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/thread/LongTime5$AccumulateTask;


# direct methods
.method constructor <init>(Lexam/thread/LongTime5$AccumulateTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/LongTime5$AccumulateTask$1;->this$1:Lexam/thread/LongTime5$AccumulateTask;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 39
    iget-object v0, p0, Lexam/thread/LongTime5$AccumulateTask$1;->this$1:Lexam/thread/LongTime5$AccumulateTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lexam/thread/LongTime5$AccumulateTask;->cancel(Z)Z

    .line 40
    return-void
.end method
