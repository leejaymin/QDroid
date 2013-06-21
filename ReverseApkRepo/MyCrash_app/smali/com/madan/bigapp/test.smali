.class public Lcom/madan/bigapp/test;
.super Landroid/app/Activity;
.source "test.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/madan/bigapp/test;->setContentView(I)V

    .line 13
    invoke-virtual {p0}, Lcom/madan/bigapp/test;->runalot()V

    .line 14
    return-void
.end method

.method public runalot()V
    .locals 7

    .prologue
    .line 17
    const/16 v0, 0xd

    .line 18
    .local v0, i:I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    .line 19
    .local v2, rawRandomNumber:D
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 21
    .local v4, temp:D
    const/4 v6, 0x5

    div-int/lit8 v1, v6, 0x0

    .line 22
    .local v1, ij:I
    return-void
.end method
