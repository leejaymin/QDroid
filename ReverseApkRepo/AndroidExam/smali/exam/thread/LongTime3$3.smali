.class Lexam/thread/LongTime3$3;
.super Ljava/lang/Object;
.source "LongTime3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/LongTime3;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/LongTime3;


# direct methods
.method constructor <init>(Lexam/thread/LongTime3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/LongTime3$3;->this$0:Lexam/thread/LongTime3;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 42
    iget-object v0, p0, Lexam/thread/LongTime3$3;->this$0:Lexam/thread/LongTime3;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lexam/thread/LongTime3;->mQuit:Z

    .line 43
    iget-object v0, p0, Lexam/thread/LongTime3$3;->this$0:Lexam/thread/LongTime3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lexam/thread/LongTime3;->dismissDialog(I)V

    .line 44
    return-void
.end method
