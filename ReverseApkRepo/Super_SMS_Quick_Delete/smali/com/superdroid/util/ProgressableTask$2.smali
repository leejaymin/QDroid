.class Lcom/superdroid/util/ProgressableTask$2;
.super Ljava/lang/Object;
.source "ProgressableTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/util/ProgressableTask;->showProgressBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/util/ProgressableTask;


# direct methods
.method constructor <init>(Lcom/superdroid/util/ProgressableTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/util/ProgressableTask$2;->this$0:Lcom/superdroid/util/ProgressableTask;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/superdroid/util/ProgressableTask$2;->this$0:Lcom/superdroid/util/ProgressableTask;

    invoke-virtual {v0}, Lcom/superdroid/util/ProgressableTask;->cancel()V

    .line 74
    return-void
.end method