.class Lexam/Widget/ProgressBarTest$1;
.super Ljava/lang/Object;
.source "ProgressBarTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Widget/ProgressBarTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Widget/ProgressBarTest;


# direct methods
.method constructor <init>(Lexam/Widget/ProgressBarTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Widget/ProgressBarTest$1;->this$0:Lexam/Widget/ProgressBarTest;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x2

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 31
    :sswitch_0
    iget-object v0, p0, Lexam/Widget/ProgressBarTest$1;->this$0:Lexam/Widget/ProgressBarTest;

    iget-object v0, v0, Lexam/Widget/ProgressBarTest;->mProgBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    goto :goto_0

    .line 34
    :sswitch_1
    iget-object v0, p0, Lexam/Widget/ProgressBarTest$1;->this$0:Lexam/Widget/ProgressBarTest;

    iget-object v0, v0, Lexam/Widget/ProgressBarTest;->mProgBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    goto :goto_0

    .line 37
    :sswitch_2
    iget-object v0, p0, Lexam/Widget/ProgressBarTest$1;->this$0:Lexam/Widget/ProgressBarTest;

    iget-object v0, v0, Lexam/Widget/ProgressBarTest;->mProgBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    goto :goto_0

    .line 40
    :sswitch_3
    iget-object v0, p0, Lexam/Widget/ProgressBarTest$1;->this$0:Lexam/Widget/ProgressBarTest;

    iget-object v0, v0, Lexam/Widget/ProgressBarTest;->mProgBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    goto :goto_0

    .line 43
    :sswitch_4
    iget-object v0, p0, Lexam/Widget/ProgressBarTest$1;->this$0:Lexam/Widget/ProgressBarTest;

    iget-object v0, v0, Lexam/Widget/ProgressBarTest;->mProgCircle:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 46
    :sswitch_5
    iget-object v0, p0, Lexam/Widget/ProgressBarTest$1;->this$0:Lexam/Widget/ProgressBarTest;

    iget-object v0, v0, Lexam/Widget/ProgressBarTest;->mProgCircle:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 29
    :sswitch_data_0
    .sparse-switch
        0x7f0c0029 -> :sswitch_4
        0x7f0c002a -> :sswitch_5
        0x7f0c008b -> :sswitch_0
        0x7f0c008c -> :sswitch_1
        0x7f0c008d -> :sswitch_2
        0x7f0c008e -> :sswitch_3
    .end sparse-switch
.end method
