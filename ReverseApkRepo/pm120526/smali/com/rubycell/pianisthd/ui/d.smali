.class public final Lcom/rubycell/pianisthd/ui/d;
.super Landroid/app/AlertDialog;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/rubycell/pianisthd/ui/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/ui/d;->setContentView(I)V

    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/ui/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/pianisthd/ui/e;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/ui/e;-><init>(Lcom/rubycell/pianisthd/ui/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/ui/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/pianisthd/ui/f;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/ui/f;-><init>(Lcom/rubycell/pianisthd/ui/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
