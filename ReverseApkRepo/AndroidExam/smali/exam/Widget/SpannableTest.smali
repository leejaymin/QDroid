.class public Lexam/Widget/SpannableTest;
.super Landroid/app/Activity;
.source "SpannableTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v8, 0x7f030085

    invoke-virtual {p0, v8}, Lexam/Widget/SpannableTest;->setContentView(I)V

    .line 18
    const v8, 0x7f0c0009

    invoke-virtual {p0, v8}, Lexam/Widget/SpannableTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 19
    .local v0, Edit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 20
    .local v3, espan:Landroid/text/Spannable;
    new-instance v8, Landroid/text/style/StyleSpan;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v9, 0x1

    const/4 v10, 0x7

    .line 21
    const/16 v11, 0x21

    .line 20
    invoke-interface {v3, v8, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 22
    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    const/high16 v9, -0x1

    invoke-direct {v8, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v9, 0x8

    const/16 v10, 0xb

    .line 23
    const/16 v11, 0x12

    .line 22
    invoke-interface {v3, v8, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 24
    new-instance v8, Landroid/text/style/UnderlineSpan;

    invoke-direct {v8}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v9, 0xc

    const/16 v10, 0x11

    .line 25
    const/16 v11, 0x22

    .line 24
    invoke-interface {v3, v8, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 27
    const v8, 0x7f0c0008

    invoke-virtual {p0, v8}, Lexam/Widget/SpannableTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 28
    .local v1, Text:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    .line 29
    .local v7, tspan:Landroid/text/Spannable;
    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    const/high16 v9, 0x3f00

    invoke-direct {v8, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/4 v9, 0x0

    const/4 v10, 0x5

    .line 30
    const/16 v11, 0x21

    .line 29
    invoke-interface {v7, v8, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 31
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const v9, -0xffff01

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v9, 0x5

    const/16 v10, 0x9

    .line 32
    const/16 v11, 0x21

    .line 31
    invoke-interface {v7, v8, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 33
    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    const/high16 v9, 0x3fc0

    invoke-direct {v8, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v9, 0x9

    const/16 v10, 0xc

    .line 34
    const/16 v11, 0x21

    .line 33
    invoke-interface {v7, v8, v9, v10, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 36
    const v8, 0x7f0c009c

    invoke-virtual {p0, v8}, Lexam/Widget/SpannableTest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 37
    .local v4, link:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    .line 39
    .local v5, lspan:Landroid/text/Spannable;
    new-instance v6, Lexam/Widget/SpannableTest$1;

    const-string v8, ""

    invoke-direct {v6, p0, v8}, Lexam/Widget/SpannableTest$1;-><init>(Lexam/Widget/SpannableTest;Ljava/lang/String;)V

    .line 44
    .local v6, profile:Landroid/text/style/URLSpan;
    const/16 v8, 0xa

    const/16 v9, 0xd

    const/16 v10, 0x21

    invoke-interface {v5, v6, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 46
    new-instance v2, Lexam/Widget/SpannableTest$2;

    const-string v8, ""

    invoke-direct {v2, p0, v8}, Lexam/Widget/SpannableTest$2;-><init>(Lexam/Widget/SpannableTest;Ljava/lang/String;)V

    .line 51
    .local v2, call:Landroid/text/style/URLSpan;
    const/16 v8, 0x12

    const/16 v9, 0x15

    const/16 v10, 0x21

    invoke-interface {v5, v2, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 52
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 53
    return-void
.end method
