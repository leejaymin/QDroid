.class public Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
.super Ljava/lang/Object;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/view/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private message:Ljava/lang/String;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->context:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/wolfram/android/alpha/view/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wolfram/android/alpha/view/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/wolfram/android/alpha/view/CustomDialog;
    .locals 10

    .prologue
    const v9, 0x7f0e0010

    const/16 v8, 0x8

    const v7, 0x7f0e0013

    const v5, 0x7f0e0012

    const/4 v6, -0x2

    .line 167
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 170
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/wolfram/android/alpha/view/CustomDialog;

    iget-object v3, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/wolfram/android/alpha/view/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, dialog:Lcom/wolfram/android/alpha/view/CustomDialog;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/wolfram/android/alpha/view/CustomDialog;->requestWindowFeature(I)Z

    .line 172
    const v3, 0x7f030014

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 173
    .local v2, layout:Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lcom/wolfram/android/alpha/view/CustomDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    const v3, 0x7f0e000f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 179
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_0

    .line 182
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/wolfram/android/alpha/view/CustomDialog$Builder$1;

    invoke-direct {v4, p0, v0}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder$1;-><init>(Lcom/wolfram/android/alpha/view/CustomDialog$Builder;Lcom/wolfram/android/alpha/view/CustomDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 198
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_1

    .line 201
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/wolfram/android/alpha/view/CustomDialog$Builder$2;

    invoke-direct {v4, p0, v0}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder$2;-><init>(Lcom/wolfram/android/alpha/view/CustomDialog$Builder;Lcom/wolfram/android/alpha/view/CustomDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->message:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 217
    const v3, 0x7f0e0011

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_2
    :goto_2
    invoke-virtual {v0, v2}, Lcom/wolfram/android/alpha/view/CustomDialog;->setContentView(Landroid/view/View;)V

    .line 231
    return-object v0

    .line 193
    :cond_3
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 212
    :cond_4
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 219
    :cond_5
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 222
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 224
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->contentView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public setContentView(Landroid/view/View;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    .locals 0
    .parameter "v"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->contentView:Landroid/view/View;

    .line 106
    return-object p0
.end method

.method public setMessage(I)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->message:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    .locals 0
    .parameter "message"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->message:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    .locals 1
    .parameter "negativeButtonText"
    .parameter "listener"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 147
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    .locals 0
    .parameter "negativeButtonText"
    .parameter "listener"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 160
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    .locals 1
    .parameter "positiveButtonText"
    .parameter "listener"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 120
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    .locals 0
    .parameter "positiveButtonText"
    .parameter "listener"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 133
    return-object p0
.end method

.method public setTitle(I)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->title:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->title:Ljava/lang/String;

    .line 94
    return-object p0
.end method
