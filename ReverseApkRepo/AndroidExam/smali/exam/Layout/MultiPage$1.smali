.class Lexam/Layout/MultiPage$1;
.super Ljava/lang/Object;
.source "MultiPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Layout/MultiPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Layout/MultiPage;


# direct methods
.method constructor <init>(Lexam/Layout/MultiPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Layout/MultiPage$1;->this$0:Lexam/Layout/MultiPage;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lexam/Layout/MultiPage$1;->this$0:Lexam/Layout/MultiPage;

    iget-object v0, v0, Lexam/Layout/MultiPage;->mPage1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lexam/Layout/MultiPage$1;->this$0:Lexam/Layout/MultiPage;

    iget-object v0, v0, Lexam/Layout/MultiPage;->mPage2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lexam/Layout/MultiPage$1;->this$0:Lexam/Layout/MultiPage;

    iget-object v0, v0, Lexam/Layout/MultiPage;->mPage3:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 42
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lexam/Layout/MultiPage$1;->this$0:Lexam/Layout/MultiPage;

    iget-object v0, v0, Lexam/Layout/MultiPage;->mPage1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 36
    :pswitch_1
    iget-object v0, p0, Lexam/Layout/MultiPage$1;->this$0:Lexam/Layout/MultiPage;

    iget-object v0, v0, Lexam/Layout/MultiPage;->mPage2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 39
    :pswitch_2
    iget-object v0, p0, Lexam/Layout/MultiPage$1;->this$0:Lexam/Layout/MultiPage;

    iget-object v0, v0, Lexam/Layout/MultiPage;->mPage3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0044
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
