.class Lcom/superdroid/util/AsyncProgressableTask$1;
.super Ljava/lang/Object;
.source "AsyncProgressableTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/util/AsyncProgressableTask;->showProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/util/AsyncProgressableTask;


# direct methods
.method constructor <init>(Lcom/superdroid/util/AsyncProgressableTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/util/AsyncProgressableTask$1;->this$0:Lcom/superdroid/util/AsyncProgressableTask;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/superdroid/util/AsyncProgressableTask$1;->this$0:Lcom/superdroid/util/AsyncProgressableTask;

    invoke-virtual {v0}, Lcom/superdroid/util/AsyncProgressableTask;->cancel()V

    .line 78
    return-void
.end method
