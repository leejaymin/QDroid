.class Lexam/thread/BackWork2$2$1;
.super Ljava/lang/Object;
.source "BackWork2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/BackWork2$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/thread/BackWork2$2;


# direct methods
.method constructor <init>(Lexam/thread/BackWork2$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/BackWork2$2$1;->this$1:Lexam/thread/BackWork2$2;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 32
    iget-object v0, p0, Lexam/thread/BackWork2$2$1;->this$1:Lexam/thread/BackWork2$2;

    #getter for: Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;
    invoke-static {v0}, Lexam/thread/BackWork2$2;->access$0(Lexam/thread/BackWork2$2;)Lexam/thread/BackWork2;

    move-result-object v0

    iget-object v0, v0, Lexam/thread/BackWork2;->mThread:Lexam/thread/BackWork2$AccumThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lexam/thread/BackWork2$AccumThread;->mQuit:Z

    .line 33
    iget-object v0, p0, Lexam/thread/BackWork2$2$1;->this$1:Lexam/thread/BackWork2$2;

    #getter for: Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;
    invoke-static {v0}, Lexam/thread/BackWork2$2;->access$0(Lexam/thread/BackWork2$2;)Lexam/thread/BackWork2;

    move-result-object v0

    iget-object v0, v0, Lexam/thread/BackWork2;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 34
    return-void
.end method
