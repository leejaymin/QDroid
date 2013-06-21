.class public Lexam/activity/CallOther;
.super Landroid/app/Activity;
.source "CallOther.java"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    new-instance v0, Lexam/activity/CallOther$1;

    invoke-direct {v0, p0}, Lexam/activity/CallOther$1;-><init>(Lexam/activity/CallOther;)V

    iput-object v0, p0, Lexam/activity/CallOther;->mClickListener:Landroid/view/View$OnClickListener;

    .line 13
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lexam/activity/CallOther;->setContentView(I)V

    .line 18
    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lexam/activity/CallOther;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/activity/CallOther;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Lexam/activity/CallOther;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/activity/CallOther;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const v0, 0x7f0c0006

    invoke-virtual {p0, v0}, Lexam/activity/CallOther;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/activity/CallOther;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v0, 0x7f0c0007

    invoke-virtual {p0, v0}, Lexam/activity/CallOther;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/activity/CallOther;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method
