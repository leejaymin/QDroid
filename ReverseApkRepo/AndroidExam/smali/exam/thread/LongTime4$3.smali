.class Lexam/thread/LongTime4$3;
.super Ljava/lang/Object;
.source "LongTime4.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/LongTime4;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/LongTime4;


# direct methods
.method constructor <init>(Lexam/thread/LongTime4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/LongTime4$3;->this$0:Lexam/thread/LongTime4;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 44
    iget-object v0, p0, Lexam/thread/LongTime4$3;->this$0:Lexam/thread/LongTime4;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lexam/thread/LongTime4;->mQuit:Z

    .line 45
    iget-object v0, p0, Lexam/thread/LongTime4$3;->this$0:Lexam/thread/LongTime4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lexam/thread/LongTime4;->dismissDialog(I)V

    .line 46
    return-void
.end method
