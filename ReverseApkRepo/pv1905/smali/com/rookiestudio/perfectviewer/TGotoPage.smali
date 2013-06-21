.class public Lcom/rookiestudio/perfectviewer/TGotoPage;
.super Landroid/app/Dialog;
.source "TGotoPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private CancelButton:Landroid/widget/Button;

.field private OKButton:Landroid/widget/Button;

.field private PageSelector:Lcom/rookiestudio/customize/NumberPicker;

.field private textView1:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TGotoPage;->PageSelector:Lcom/rookiestudio/customize/NumberPicker;

    invoke-virtual {v1}, Lcom/rookiestudio/customize/NumberPicker;->getCurrent()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 54
    .local v0, Index:I
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetIndex()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 55
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/rookiestudio/perfectviewer/TNavigater;->AddImageQueue(II)Z

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TGotoPage;->dismiss()V

    goto :goto_0

    .line 60
    .end local v0           #Index:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TGotoPage;->dismiss()V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x7f0c004d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    .line 31
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TGotoPage;->requestWindowFeature(I)Z

    .line 33
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TGotoPage;->setContentView(I)V

    .line 34
    const v0, 0x7f0a0055

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TGotoPage;->setTitle(I)V

    .line 35
    const v0, 0x108009b

    invoke-virtual {p0, v1, v0}, Lcom/rookiestudio/perfectviewer/TGotoPage;->setFeatureDrawableResource(II)V

    .line 37
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TGotoPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TGotoPage;->textView1:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TGotoPage;->textView1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1 ~ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TGotoPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TGotoPage;->OKButton:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TGotoPage;->OKButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v0, 0x7f0c004e

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TGotoPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TGotoPage;->CancelButton:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TGotoPage;->CancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TGotoPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/customize/NumberPicker;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TGotoPage;->PageSelector:Lcom/rookiestudio/customize/NumberPicker;

    .line 44
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TGotoPage;->PageSelector:Lcom/rookiestudio/customize/NumberPicker;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetCount()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/rookiestudio/customize/NumberPicker;->setRange(II)V

    .line 45
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TGotoPage;->PageSelector:Lcom/rookiestudio/customize/NumberPicker;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/customize/NumberPicker;->setCurrent(I)V

    .line 46
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TGotoPage;->PageSelector:Lcom/rookiestudio/customize/NumberPicker;

    invoke-virtual {v0, v3}, Lcom/rookiestudio/customize/NumberPicker;->setStep(I)V

    .line 47
    return-void
.end method
