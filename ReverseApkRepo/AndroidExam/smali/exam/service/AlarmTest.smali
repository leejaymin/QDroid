.class public Lexam/service/AlarmTest;
.super Landroid/app/Activity;
.source "AlarmTest.java"


# instance fields
.field mClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    new-instance v0, Lexam/service/AlarmTest$1;

    invoke-direct {v0, p0}, Lexam/service/AlarmTest$1;-><init>(Lexam/service/AlarmTest;)V

    iput-object v0, p0, Lexam/service/AlarmTest;->mClick:Landroid/view/View$OnClickListener;

    .line 12
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v1, 0x7f03004f

    invoke-virtual {p0, v1}, Lexam/service/AlarmTest;->setContentView(I)V

    .line 18
    const v1, 0x7f0c0064

    invoke-virtual {p0, v1}, Lexam/service/AlarmTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 19
    .local v0, btn:Landroid/widget/Button;
    iget-object v1, p0, Lexam/service/AlarmTest;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const v1, 0x7f0c0065

    invoke-virtual {p0, v1}, Lexam/service/AlarmTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 21
    .restart local v0       #btn:Landroid/widget/Button;
    iget-object v1, p0, Lexam/service/AlarmTest;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v1, 0x7f0c002a

    invoke-virtual {p0, v1}, Lexam/service/AlarmTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 23
    .restart local v0       #btn:Landroid/widget/Button;
    iget-object v1, p0, Lexam/service/AlarmTest;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    return-void
.end method
