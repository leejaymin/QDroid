.class public Lexam/Output/MessageBeep;
.super Landroid/app/Activity;
.source "MessageBeep.java"


# instance fields
.field Ddock:Lexam/Output/Beeper;

.field DingDong:Lexam/Output/Beeper;

.field mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    new-instance v0, Lexam/Output/MessageBeep$1;

    invoke-direct {v0, p0}, Lexam/Output/MessageBeep$1;-><init>(Lexam/Output/MessageBeep;)V

    iput-object v0, p0, Lexam/Output/MessageBeep;->mClickListener:Landroid/view/View$OnClickListener;

    .line 11
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
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lexam/Output/MessageBeep;->setContentView(I)V

    .line 19
    new-instance v0, Lexam/Output/Beeper;

    const v1, 0x7f050003

    invoke-direct {v0, p0, v1}, Lexam/Output/Beeper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lexam/Output/MessageBeep;->DingDong:Lexam/Output/Beeper;

    .line 20
    new-instance v0, Lexam/Output/Beeper;

    const v1, 0x7f050002

    invoke-direct {v0, p0, v1}, Lexam/Output/Beeper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lexam/Output/MessageBeep;->Ddock:Lexam/Output/Beeper;

    .line 22
    const v0, 0x7f0c0056

    invoke-virtual {p0, v0}, Lexam/Output/MessageBeep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Output/MessageBeep;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lexam/Output/MessageBeep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Output/MessageBeep;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lexam/Output/MessageBeep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Output/MessageBeep;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v0, 0x7f0c0059

    invoke-virtual {p0, v0}, Lexam/Output/MessageBeep;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Output/MessageBeep;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method
