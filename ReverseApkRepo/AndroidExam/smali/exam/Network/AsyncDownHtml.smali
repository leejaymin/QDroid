.class public Lexam/Network/AsyncDownHtml;
.super Landroid/app/Activity;
.source "AsyncDownHtml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Network/AsyncDownHtml$DownThread;
    }
.end annotation


# instance fields
.field mAfterDown:Landroid/os/Handler;

.field mProgress:Landroid/app/ProgressDialog;

.field mThread:Lexam/Network/AsyncDownHtml$DownThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    new-instance v0, Lexam/Network/AsyncDownHtml$1;

    invoke-direct {v0, p0}, Lexam/Network/AsyncDownHtml$1;-><init>(Lexam/Network/AsyncDownHtml;)V

    iput-object v0, p0, Lexam/Network/AsyncDownHtml;->mAfterDown:Landroid/os/Handler;

    .line 13
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v1, 0x7f030047

    invoke-virtual {p0, v1}, Lexam/Network/AsyncDownHtml;->setContentView(I)V

    .line 21
    const v1, 0x7f0c0052

    invoke-virtual {p0, v1}, Lexam/Network/AsyncDownHtml;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 22
    .local v0, btn:Landroid/widget/Button;
    new-instance v1, Lexam/Network/AsyncDownHtml$2;

    invoke-direct {v1, p0}, Lexam/Network/AsyncDownHtml$2;-><init>(Lexam/Network/AsyncDownHtml;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method
