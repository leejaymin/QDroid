.class public Lcom/schezard/rpgdice/About;
.super Landroid/app/Activity;
.source "About.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/About;->requestWindowFeature(I)Z

    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/About;->setContentView(I)V

    .line 14
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/schezard/rpgdice/About;->finish()V

    .line 19
    const/4 v0, 0x0

    return v0
.end method
