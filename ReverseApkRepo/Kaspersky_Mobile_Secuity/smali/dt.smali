.class public final Ldt;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    const/high16 v0, 0x7f09

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Ldt;->a:I

    .line 29
    iput p2, p0, Ldt;->a:I

    .line 30
    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 36
    iget v0, p0, Ldt;->a:I

    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Ldt;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 41
    invoke-virtual {v0, v4}, Landroid/view/Window;->setFormat(I)V

    .line 42
    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 44
    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 45
    const v2, 0x7f03001c

    invoke-virtual {p0, v2}, Ldt;->setContentView(I)V

    .line 46
    const/high16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 47
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Ldt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 48
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 49
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {p0}, Ldt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Ldt;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 52
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Ldt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Ldt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Ldt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 57
    new-instance v1, Ldu;

    invoke-direct {v1, p0}, Ldu;-><init>(Ldt;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Ldt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 70
    new-instance v1, Ldv;

    invoke-direct {v1, p0}, Ldv;-><init>(Ldt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 83
    if-eqz p1, :cond_0

    iget v0, p0, Ldt;->a:I

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Ldt;->dismiss()V

    .line 87
    :cond_0
    return-void
.end method
