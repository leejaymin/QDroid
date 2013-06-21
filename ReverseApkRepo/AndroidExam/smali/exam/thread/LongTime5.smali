.class public Lexam/thread/LongTime5;
.super Landroid/app/Activity;
.source "LongTime5.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/thread/LongTime5$AccumulateTask;
    }
.end annotation


# instance fields
.field mProgress:Landroid/app/ProgressDialog;

.field mText:Landroid/widget/TextView;

.field mValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v1, 0x7f03005b

    invoke-virtual {p0, v1}, Lexam/thread/LongTime5;->setContentView(I)V

    .line 19
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lexam/thread/LongTime5;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lexam/thread/LongTime5;->mText:Landroid/widget/TextView;

    .line 20
    const v1, 0x7f0c0017

    invoke-virtual {p0, v1}, Lexam/thread/LongTime5;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, btnUpdate:Landroid/widget/Button;
    new-instance v1, Lexam/thread/LongTime5$1;

    invoke-direct {v1, p0}, Lexam/thread/LongTime5$1;-><init>(Lexam/thread/LongTime5;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method
