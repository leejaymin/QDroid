.class public Lcom/kt/olleh/inapp/dialog/DialogCheck;
.super Landroid/app/Dialog;
.source "DialogCheck.java"


# static fields
.field public static check:Z

.field public static config:I


# instance fields
.field private buttonCount:I

.field private buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

.field private buttonTexts:[Ljava/lang/String;

.field private checkBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field mParser:Lcom/kt/olleh/inapp/util/UIParser;

.field private message:Ljava/lang/String;

.field private message2:Ljava/lang/String;

.field private message3:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->config:I

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->check:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "buttonCount"

    .prologue
    const/4 v1, 0x0

    .line 46
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    .line 23
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->title:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message2:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message3:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 32
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->checkBox:Landroid/widget/CheckBox;

    .line 48
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mContext:Landroid/content/Context;

    .line 49
    iput p2, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    .line 51
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    if-lez v0, :cond_0

    .line 53
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    .line 54
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    new-array v0, v0, [Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 56
    :cond_0
    return-void
.end method

.method private create()V
    .locals 13

    .prologue
    .line 119
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 120
    const-string v11, "/layout-port/dialog_check.xml"

    invoke-direct {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setContentView(Landroid/view/View;)V

    .line 124
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    sput v11, Lcom/kt/olleh/inapp/dialog/DialogCheck;->config:I

    .line 127
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 128
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    const v11, 0x3f333333

    iput v11, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 129
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 130
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 133
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v12, "dialog_Title"

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 134
    .local v9, titleLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v12, "dialogCheckTitleTextView"

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 135
    .local v10, titleTextView:Landroid/widget/TextView;
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->title:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->title:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 138
    :cond_1
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    :cond_2
    sget v11, Lcom/kt/olleh/inapp/dialog/DialogCheck;->config:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 143
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v12, "dialog_MessageTextView"

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 144
    .local v5, messageTextView:Landroid/widget/TextView;
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message:Ljava/lang/String;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message:Ljava/lang/String;

    const-string v12, ""

    if-eq v11, v12, :cond_3

    .line 145
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    .end local v5           #messageTextView:Landroid/widget/TextView;
    :cond_3
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v12, "dialog_MessageTextView2"

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 149
    .local v6, messageTextView2:Landroid/widget/TextView;
    sget v11, Lcom/kt/olleh/inapp/dialog/DialogCheck;->config:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 152
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message2:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_1
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v12, "dialog_MessageTextView3"

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 159
    .local v7, messageTextView3:Landroid/widget/TextView;
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message3:Ljava/lang/String;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message3:Ljava/lang/String;

    const-string v12, ""

    if-eq v11, v12, :cond_4

    .line 160
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message3:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_4
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v12, "dialog_check"

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->checkBox:Landroid/widget/CheckBox;

    .line 163
    sget-boolean v11, Lcom/kt/olleh/inapp/dialog/DialogCheck;->check:Z

    if-eqz v11, :cond_5

    .line 164
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->checkBox:Landroid/widget/CheckBox;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 167
    :cond_5
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->checkBox:Landroid/widget/CheckBox;

    new-instance v12, Lcom/kt/olleh/inapp/dialog/DialogCheck$1;

    invoke-direct {v12, p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck$1;-><init>(Lcom/kt/olleh/inapp/dialog/DialogCheck;)V

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    iget v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    if-lez v11, :cond_7

    .line 182
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v12, "Button_Layout"

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 183
    .local v1, ButtonLayout:Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    new-array v2, v11, [Landroid/widget/Button;

    .line 186
    .local v2, DialogButton:[Landroid/widget/Button;
    const/4 v11, 0x3

    new-array v0, v11, [Ljava/lang/String;

    .line 187
    .local v0, ButtonID:[Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "Button_1"

    aput-object v12, v0, v11

    .line 188
    const/4 v11, 0x1

    const-string v12, "Button_2"

    aput-object v12, v0, v11

    .line 189
    const/4 v11, 0x2

    const-string v12, "Button_3"

    aput-object v12, v0, v11

    .line 191
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v11, v2

    if-lt v3, v11, :cond_a

    .line 196
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 198
    const/4 v3, 0x0

    :goto_3
    iget v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    if-lt v3, v11, :cond_b

    .line 205
    :cond_6
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v11, :cond_7

    .line 207
    const/4 v3, 0x0

    :goto_4
    iget v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonCount:I

    if-lt v3, v11, :cond_c

    .line 213
    .end local v0           #ButtonID:[Ljava/lang/String;
    .end local v1           #ButtonLayout:Landroid/widget/LinearLayout;
    .end local v2           #DialogButton:[Landroid/widget/Button;
    .end local v3           #i:I
    :cond_7
    return-void

    .line 121
    .end local v4           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v6           #messageTextView2:Landroid/widget/TextView;
    .end local v7           #messageTextView3:Landroid/widget/TextView;
    .end local v9           #titleLayout:Landroid/widget/LinearLayout;
    .end local v10           #titleTextView:Landroid/widget/TextView;
    :cond_8
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 122
    const-string v11, "/layout-land/dialog_check.xml"

    invoke-direct {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 154
    .restart local v4       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v6       #messageTextView2:Landroid/widget/TextView;
    .restart local v9       #titleLayout:Landroid/widget/LinearLayout;
    .restart local v10       #titleTextView:Landroid/widget/TextView;
    :cond_9
    const-string v8, "olleh \ub9c8\ucf13\uc5d0\uc11c\ub294 \uc548\uc804\ud55c \uc720\ub8cc \uc544\uc774\ud15c \uacb0\uc81c\ub97c \uc704\ud574\n\ubcf4\uc548\ubc88\ud638 \uc124\uc815\uc744 \uad8c\uc7a5\ud569\ub2c8\ub2e4."

    .line 155
    .local v8, str:Ljava/lang/String;
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 193
    .end local v8           #str:Ljava/lang/String;
    .restart local v0       #ButtonID:[Ljava/lang/String;
    .restart local v1       #ButtonLayout:Landroid/widget/LinearLayout;
    .restart local v2       #DialogButton:[Landroid/widget/Button;
    .restart local v3       #i:I
    .restart local v7       #messageTextView3:Landroid/widget/TextView;
    :cond_a
    iget-object v11, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    aget-object v12, v0, v3

    invoke-virtual {v11, v12}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    aput-object v11, v2, v3

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 200
    :cond_b
    aget-object v11, v2, v3

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 201
    aget-object v11, v2, v3

    iget-object v12, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    aget-object v12, v12, v3

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 209
    :cond_c
    aget-object v11, v2, v3

    iget-object v12, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aget-object v12, v12, v3

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method public static isCheck()Z
    .locals 1

    .prologue
    .line 248
    sget-boolean v0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->check:Z

    return v0
.end method

.method private setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 1
    .parameter "idx"
    .parameter "buttonOCL"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object p2, v0, p1

    .line 245
    :cond_0
    return-void
.end method

.method private setButtonText(ILjava/lang/String;)V
    .locals 1
    .parameter "idx"
    .parameter "buttonText"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 240
    :cond_0
    return-void
.end method

.method public static setCheck(Z)V
    .locals 0
    .parameter "check"

    .prologue
    .line 252
    sput-boolean p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->check:Z

    .line 253
    return-void
.end method

.method private showMy(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .parameter "path"

    .prologue
    .line 104
    new-instance v0, Lcom/kt/olleh/inapp/util/UIParser;

    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    .line 105
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeConfig(I)V
    .locals 1
    .parameter "config"

    .prologue
    .line 37
    sput p1, Lcom/kt/olleh/inapp/dialog/DialogCheck;->config:I

    .line 38
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->check:Z

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->close()V

    .line 42
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->show()V

    .line 43
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 60
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->unBind()V

    .line 71
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->check:Z

    .line 73
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 74
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 0
    .parameter "idx"
    .parameter "buttonText"
    .parameter "buttonOCL"

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setButtonText(ILjava/lang/String;)V

    .line 234
    invoke-direct {p0, p1, p3}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 235
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setMessage2(Ljava/lang/String;)V
    .locals 0
    .parameter "message2"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message2:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setMessage3(Ljava/lang/String;)V
    .locals 0
    .parameter "message3"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->message3:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 216
    check-cast p1, Ljava/lang/String;

    .end local p1
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->title:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogCheck;->create()V

    .line 65
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 66
    return-void
.end method

.method public unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 85
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 88
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    .line 91
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v1, :cond_1

    .line 93
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 96
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 98
    .end local v0           #i:I
    :cond_1
    return-void

    .line 86
    .restart local v0       #i:I
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonTexts:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogCheck;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
