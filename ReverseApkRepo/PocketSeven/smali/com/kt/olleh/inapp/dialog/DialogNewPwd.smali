.class public Lcom/kt/olleh/inapp/dialog/DialogNewPwd;
.super Landroid/app/Dialog;
.source "DialogNewPwd.java"


# static fields
.field public static config:I


# instance fields
.field private buttonCount:I

.field private buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

.field private buttonTexts:[Ljava/lang/String;

.field private isBgChange:Z

.field private mContext:Landroid/content/Context;

.field mParser:Lcom/kt/olleh/inapp/util/UIParser;

.field private message:Ljava/lang/String;

.field private payMoney:Ljava/lang/String;

.field private payName1:Ljava/lang/String;

.field private payName2:Ljava/lang/String;

.field private payType:Ljava/lang/String;

.field private pwd1:Ljava/lang/String;

.field private pwd2:Ljava/lang/String;

.field private pwdEditText1:Landroid/widget/EditText;

.field private pwdEditText2:Landroid/widget/EditText;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->config:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "buttonCount"

    .prologue
    const/4 v1, 0x0

    .line 51
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    .line 21
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->title:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->message:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    .line 26
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwd1:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwd2:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payName1:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payName2:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payMoney:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payType:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->isBgChange:Z

    .line 40
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 53
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mContext:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    .line 56
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    if-lez v0, :cond_0

    .line 58
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    .line 59
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    new-array v0, v0, [Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 61
    :cond_0
    return-void
.end method

.method private create()V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 123
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_6

    .line 124
    const-string v8, "/layout-port/dialog_new_pwd.xml"

    invoke-direct {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setContentView(Landroid/view/View;)V

    .line 128
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    sput v8, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->config:I

    .line 131
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 132
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    const v8, 0x3f333333

    iput v8, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 133
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 134
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 137
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "dialog_Title"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 138
    .local v6, titleLayout:Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "dialogAlertTitleTextView"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 139
    .local v7, titleTextView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->title:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->title:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 142
    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    :cond_2
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "pwdEditText"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    .line 146
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    new-instance v9, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v9}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 148
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwd1:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "pwdEditText2"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    .line 151
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    new-instance v9, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v9}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 153
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwd2:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "dialog_MessageTextView"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 157
    .local v5, messageTextView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->message:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->message:Ljava/lang/String;

    const-string v9, ""

    if-eq v8, v9, :cond_3

    .line 158
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->message:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_3
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    if-lez v8, :cond_5

    .line 163
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v9, "Button_Layout"

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 164
    .local v1, ButtonLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    new-array v2, v8, [Landroid/widget/Button;

    .line 167
    .local v2, DialogButton:[Landroid/widget/Button;
    const/4 v8, 0x3

    new-array v0, v8, [Ljava/lang/String;

    .line 168
    .local v0, ButtonID:[Ljava/lang/String;
    const-string v8, "Button_1"

    aput-object v8, v0, v10

    .line 169
    const-string v8, "Button_2"

    aput-object v8, v0, v11

    .line 172
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v2

    if-lt v3, v8, :cond_7

    .line 177
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 179
    const/4 v3, 0x0

    :goto_2
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    if-lt v3, v8, :cond_8

    .line 186
    :cond_4
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v8, :cond_5

    .line 188
    const/4 v3, 0x0

    :goto_3
    iget v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonCount:I

    if-lt v3, v8, :cond_9

    .line 250
    .end local v0           #ButtonID:[Ljava/lang/String;
    .end local v1           #ButtonLayout:Landroid/widget/LinearLayout;
    .end local v2           #DialogButton:[Landroid/widget/Button;
    .end local v3           #i:I
    :cond_5
    return-void

    .line 125
    .end local v4           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #messageTextView:Landroid/widget/TextView;
    .end local v6           #titleLayout:Landroid/widget/LinearLayout;
    .end local v7           #titleTextView:Landroid/widget/TextView;
    :cond_6
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v9, :cond_0

    .line 126
    const-string v8, "/layout-land/dialog_new_pwd.xml"

    invoke-direct {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 174
    .restart local v0       #ButtonID:[Ljava/lang/String;
    .restart local v1       #ButtonLayout:Landroid/widget/LinearLayout;
    .restart local v2       #DialogButton:[Landroid/widget/Button;
    .restart local v3       #i:I
    .restart local v4       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v5       #messageTextView:Landroid/widget/TextView;
    .restart local v6       #titleLayout:Landroid/widget/LinearLayout;
    .restart local v7       #titleTextView:Landroid/widget/TextView;
    :cond_7
    iget-object v8, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    aput-object v8, v2, v3

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 181
    :cond_8
    aget-object v8, v2, v3

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    aget-object v8, v2, v3

    iget-object v9, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 190
    :cond_9
    aget-object v8, v2, v3

    iget-object v9, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 1
    .parameter "idx"
    .parameter "buttonOCL"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object p2, v0, p1

    .line 290
    :cond_0
    return-void
.end method

.method private setButtonText(ILjava/lang/String;)V
    .locals 1
    .parameter "idx"
    .parameter "buttonText"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 285
    :cond_0
    return-void
.end method

.method private showMy(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .parameter "path"

    .prologue
    .line 108
    new-instance v0, Lcom/kt/olleh/inapp/util/UIParser;

    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    .line 109
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeConfig(I)V
    .locals 1
    .parameter "config"

    .prologue
    .line 43
    sput p1, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->config:I

    .line 44
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwd1:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwd2:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->close()V

    .line 47
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->show()V

    .line 48
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 65
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->unBind()V

    .line 76
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 77
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 78
    return-void
.end method

.method public getPwdEditText1()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    return-object v0
.end method

.method public getPwdEditText2()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public setBgColor(Z)V
    .locals 0
    .parameter "isBgChange"

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->isBgChange:Z

    .line 314
    return-void
.end method

.method public setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 0
    .parameter "idx"
    .parameter "buttonText"
    .parameter "buttonOCL"

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setButtonText(ILjava/lang/String;)V

    .line 279
    invoke-direct {p0, p1, p3}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 280
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->message:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setPayMoneyMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payMoney:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setPayNameMessage(ILjava/lang/String;)V
    .locals 0
    .parameter "line"
    .parameter "itemname"

    .prologue
    .line 293
    packed-switch p1, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payName1:Ljava/lang/String;

    goto :goto_0

    .line 299
    :pswitch_1
    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payName2:Ljava/lang/String;

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPayTypeMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->payType:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setPwdEditText1(Landroid/widget/EditText;)V
    .locals 0
    .parameter "pwdEditText1"

    .prologue
    .line 257
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText1:Landroid/widget/EditText;

    .line 258
    return-void
.end method

.method public setPwdEditText2(Landroid/widget/EditText;)V
    .locals 0
    .parameter "pwdEditText2"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->pwdEditText2:Landroid/widget/EditText;

    .line 266
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 269
    check-cast p1, Ljava/lang/String;

    .end local p1
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->title:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->create()V

    .line 70
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 71
    return-void
.end method

.method public unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 92
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    .line 95
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v1, :cond_1

    .line 97
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 100
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 102
    .end local v0           #i:I
    :cond_1
    return-void

    .line 90
    .restart local v0       #i:I
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonTexts:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogNewPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object v2, v1, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
