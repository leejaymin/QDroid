.class public Lcom/kt/olleh/inapp/dialog/DialogPwdRet;
.super Landroid/app/Dialog;
.source "DialogPwdRet.java"


# instance fields
.field private buttonCount:I

.field private buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

.field private buttonTexts:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mParser:Lcom/kt/olleh/inapp/util/UIParser;

.field private message:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "buttonCount"

    .prologue
    const/4 v1, 0x0

    .line 26
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    .line 19
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->title:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->message:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 28
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mContext:Landroid/content/Context;

    .line 29
    iput p2, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    .line 31
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    if-lez v0, :cond_0

    .line 33
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    .line 34
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    new-array v0, v0, [Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 36
    :cond_0
    return-void
.end method

.method private create()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 89
    const-string v8, "/layout/dialog_cancel.xml"

    invoke-direct {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setContentView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 92
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    const v8, 0x3f333333

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 93
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 94
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 97
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "dialog_Title"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 98
    .local v6, titleLayout:Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "dialogAlertTitleTextView"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 99
    .local v7, titleTextView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->title:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->title:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 102
    :cond_0
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    :cond_1
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "dialog_MessageTextView"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 107
    .local v5, messageTextView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->message:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->message:Ljava/lang/String;

    const-string v9, ""

    if-eq v8, v9, :cond_2

    .line 108
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->message:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_2
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    if-lez v8, :cond_4

    .line 113
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "Button_Layout"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 114
    .local v1, ButtonLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    new-array v2, v8, [Landroid/widget/Button;

    .line 117
    .local v2, DialogButton:[Landroid/widget/Button;
    const/4 v8, 0x3

    new-array v0, v8, [Ljava/lang/String;

    .line 118
    .local v0, ButtonID:[Ljava/lang/String;
    const-string v8, "Button_1"

    aput-object v8, v0, v10

    .line 120
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v2

    if-lt v3, v8, :cond_5

    .line 125
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 127
    const/4 v3, 0x0

    :goto_1
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    if-lt v3, v8, :cond_6

    .line 134
    :cond_3
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v8, :cond_4

    .line 136
    const/4 v3, 0x0

    :goto_2
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonCount:I

    if-lt v3, v8, :cond_7

    .line 142
    .end local v0           #ButtonID:[Ljava/lang/String;
    .end local v1           #ButtonLayout:Landroid/widget/LinearLayout;
    .end local v2           #DialogButton:[Landroid/widget/Button;
    .end local v3           #i:I
    :cond_4
    return-void

    .line 122
    .restart local v0       #ButtonID:[Ljava/lang/String;
    .restart local v1       #ButtonLayout:Landroid/widget/LinearLayout;
    .restart local v2       #DialogButton:[Landroid/widget/Button;
    .restart local v3       #i:I
    :cond_5
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v2, v3

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_6
    aget-object v8, v2, v3

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    aget-object v8, v2, v3

    iget-object v9, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 138
    :cond_7
    aget-object v8, v2, v3

    iget-object v9, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 1
    .parameter "idx"
    .parameter "buttonOCL"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object p2, v0, p1

    .line 166
    :cond_0
    return-void
.end method

.method private setButtonText(ILjava/lang/String;)V
    .locals 1
    .parameter "idx"
    .parameter "buttonText"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 161
    :cond_0
    return-void
.end method

.method private showMy(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .parameter "path"

    .prologue
    .line 83
    new-instance v0, Lcom/kt/olleh/inapp/util/UIParser;

    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    .line 84
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 40
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->unBind()V

    .line 51
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 52
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 53
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 0
    .parameter "idx"
    .parameter "buttonText"
    .parameter "buttonOCL"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setButtonText(ILjava/lang/String;)V

    .line 155
    invoke-direct {p0, p1, p3}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 156
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->message:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 145
    check-cast p1, Ljava/lang/String;

    .end local p1
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->title:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->create()V

    .line 45
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 46
    return-void
.end method

.method public unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 67
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    .line 70
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v1, :cond_1

    .line 72
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 75
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 77
    .end local v0           #i:I
    :cond_1
    return-void

    .line 65
    .restart local v0       #i:I
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonTexts:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPwdRet;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
