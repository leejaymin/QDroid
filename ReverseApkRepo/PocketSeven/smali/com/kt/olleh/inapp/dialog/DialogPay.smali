.class public Lcom/kt/olleh/inapp/dialog/DialogPay;
.super Landroid/app/Dialog;
.source "DialogPay.java"


# static fields
.field public static config:I


# instance fields
.field private buttonCount:I

.field private buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

.field private buttonTexts:[Ljava/lang/String;

.field private isBgChange:Z

.field private isPayInformation:Z

.field private isPayMessage:Z

.field private isPayNameTitle:Z

.field private isPwdOn:Z

.field private mContext:Landroid/content/Context;

.field mParser:Lcom/kt/olleh/inapp/util/UIParser;

.field private mXML:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private modifyTextView:Landroid/widget/TextView;

.field private payMoney:Ljava/lang/String;

.field private payName1:Ljava/lang/String;

.field private payName2:Ljava/lang/String;

.field private payType:Ljava/lang/String;

.field private pin:Ljava/lang/String;

.field private purchase:Lcom/kt/olleh/inapp/Purchase;

.field private pwdEditText:Landroid/widget/EditText;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->config:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/kt/olleh/inapp/Purchase;)V
    .locals 3
    .parameter "context"
    .parameter "buttonCount"
    .parameter "config"
    .parameter "purchase"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    .line 28
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->title:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->message:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 33
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayNameTitle:Z

    .line 34
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName1:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName2:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payMoney:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payType:Ljava/lang/String;

    .line 39
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayInformation:Z

    .line 40
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayMessage:Z

    .line 42
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isBgChange:Z

    .line 46
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pwdEditText:Landroid/widget/EditText;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    .line 48
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPwdOn:Z

    .line 49
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->modifyTextView:Landroid/widget/TextView;

    .line 50
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->purchase:Lcom/kt/olleh/inapp/Purchase;

    .line 80
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mContext:Landroid/content/Context;

    .line 81
    iput p2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    .line 82
    sput p3, Lcom/kt/olleh/inapp/dialog/DialogPay;->config:I

    .line 83
    iput-object p4, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->purchase:Lcom/kt/olleh/inapp/Purchase;

    .line 86
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    if-lez v0, :cond_0

    .line 88
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    .line 89
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    new-array v0, v0, [Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 91
    :cond_0
    return-void
.end method

.method private create()V
    .locals 21

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 156
    const-string v19, "/layout-port/dialog_pay.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    .line 164
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    sput v19, Lcom/kt/olleh/inapp/dialog/DialogPay;->config:I

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->getWindow()Landroid/view/Window;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 175
    .local v13, lp:Landroid/view/WindowManager$LayoutParams;
    const v19, 0x3f333333

    move/from16 v0, v19

    iput v0, v13, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->getWindow()Landroid/view/Window;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->getWindow()Landroid/view/Window;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->addFlags(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "dialog_Title"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 181
    .local v17, titleLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "dialogAlertTitleTextView"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 182
    .local v18, titleTextView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 185
    :cond_1
    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "dialog_MessageTextView"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 190
    .local v14, messageTextView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->message:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->message:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->message:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPwdOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "dialog_ModifyTextView"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kt/olleh/inapp/dialog/DialogPay;->modifyTextView:Landroid/widget/TextView;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->modifyTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "<u>\ubcf4\uc548\ubc88\ud638 \ud574\uc81c/\ubcc0\uacbd</u>"

    invoke-static/range {v20 .. v20}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->modifyTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "pwdLayout1"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 201
    .local v15, pwdLayout:Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "pwdLayout2"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 203
    .local v16, pwdLayout2:Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    new-instance v5, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v5}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 205
    .local v5, PassWtm:Landroid/text/method/PasswordTransformationMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "dialog_pwdEditText"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kt/olleh/inapp/dialog/DialogPay;->pwdEditText:Landroid/widget/EditText;

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pwdEditText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    const-string v19, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pwdEditText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->purchase:Lcom/kt/olleh/inapp/Purchase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/kt/olleh/inapp/Purchase;->setModifyText()V

    .line 217
    .end local v5           #PassWtm:Landroid/text/method/PasswordTransformationMethod;
    .end local v15           #pwdLayout:Landroid/widget/LinearLayout;
    .end local v16           #pwdLayout2:Landroid/widget/LinearLayout;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    move/from16 v19, v0

    if-lez v19, :cond_7

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "Button_Layout"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 220
    .local v3, ButtonLayout:Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v4, v0, [Landroid/widget/Button;

    .line 223
    .local v4, DialogButton:[Landroid/widget/Button;
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v2, v0, [Ljava/lang/String;

    .line 224
    .local v2, ButtonID:[Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "Button_1"

    aput-object v20, v2, v19

    .line 225
    const/16 v19, 0x1

    const-string v20, "Button_2"

    aput-object v20, v2, v19

    .line 226
    const/16 v19, 0x2

    const-string v20, "Button_3"

    aput-object v20, v2, v19

    .line 228
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v12, v0, :cond_a

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 235
    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v12, v0, :cond_b

    .line 242
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 244
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v12, v0, :cond_c

    .line 251
    .end local v2           #ButtonID:[Ljava/lang/String;
    .end local v3           #ButtonLayout:Landroid/widget/LinearLayout;
    .end local v4           #DialogButton:[Landroid/widget/Button;
    .end local v12           #i:I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayMessage:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "dialog_PayNameTitle"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 254
    .local v10, dialog_PayNameTitleTextView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayNameTitle:Z

    move/from16 v19, v0

    if-nez v19, :cond_d

    .line 256
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "dialog_PayName1"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 265
    .local v8, dialog_PayNameTextView1:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName1:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName1:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "dialog_PayName2"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 275
    .local v9, dialog_PayNameTextView2:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName2:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName2:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "dialog_PayMoney"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 285
    .local v7, dialog_PayMoneyTextView1:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payMoney:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payMoney:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "dialog_PayType"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 295
    .local v11, dialog_PayTypeTextView1:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payType:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "dialog_PayMessage"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 305
    .local v6, dialog_PayInformation:Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isBgChange:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 309
    const v19, 0x106000d

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 322
    .end local v7           #dialog_PayMoneyTextView1:Landroid/widget/TextView;
    .end local v8           #dialog_PayNameTextView1:Landroid/widget/TextView;
    .end local v9           #dialog_PayNameTextView2:Landroid/widget/TextView;
    .end local v10           #dialog_PayNameTitleTextView:Landroid/widget/TextView;
    .end local v11           #dialog_PayTypeTextView1:Landroid/widget/TextView;
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayInformation:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "dialog_PayInformation"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #dialog_PayInformation:Landroid/widget/LinearLayout;
    check-cast v6, Landroid/widget/LinearLayout;

    .line 325
    .restart local v6       #dialog_PayInformation:Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    :goto_a
    return-void

    .line 157
    .end local v6           #dialog_PayInformation:Landroid/widget/LinearLayout;
    .end local v13           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v14           #messageTextView:Landroid/widget/TextView;
    .end local v17           #titleLayout:Landroid/widget/LinearLayout;
    .end local v18           #titleTextView:Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPwdOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    .line 159
    const-string v19, "/layout-port/dialog_pay.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 161
    :cond_9
    const-string v19, "/layout-land/dialog_pay.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 230
    .restart local v2       #ButtonID:[Ljava/lang/String;
    .restart local v3       #ButtonLayout:Landroid/widget/LinearLayout;
    .restart local v4       #DialogButton:[Landroid/widget/Button;
    .restart local v12       #i:I
    .restart local v13       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v14       #messageTextView:Landroid/widget/TextView;
    .restart local v17       #titleLayout:Landroid/widget/LinearLayout;
    .restart local v18       #titleTextView:Landroid/widget/TextView;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    aget-object v20, v2, v12

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    aput-object v19, v4, v12

    .line 228
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 237
    :cond_b
    aget-object v19, v4, v12

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    aget-object v19, v4, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 235
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 246
    :cond_c
    aget-object v19, v4, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 260
    .end local v2           #ButtonID:[Ljava/lang/String;
    .end local v3           #ButtonLayout:Landroid/widget/LinearLayout;
    .end local v4           #DialogButton:[Landroid/widget/Button;
    .end local v12           #i:I
    .restart local v10       #dialog_PayNameTitleTextView:Landroid/widget/TextView;
    :cond_d
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 271
    .restart local v8       #dialog_PayNameTextView1:Landroid/widget/TextView;
    :cond_e
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 281
    .restart local v9       #dialog_PayNameTextView2:Landroid/widget/TextView;
    :cond_f
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 291
    .restart local v7       #dialog_PayMoneyTextView1:Landroid/widget/TextView;
    :cond_10
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 301
    .restart local v11       #dialog_PayTypeTextView1:Landroid/widget/TextView;
    :cond_11
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 313
    .restart local v6       #dialog_PayInformation:Landroid/widget/LinearLayout;
    :cond_12
    const v19, 0x106000b

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_9

    .line 318
    .end local v6           #dialog_PayInformation:Landroid/widget/LinearLayout;
    .end local v7           #dialog_PayMoneyTextView1:Landroid/widget/TextView;
    .end local v8           #dialog_PayNameTextView1:Landroid/widget/TextView;
    .end local v9           #dialog_PayNameTextView2:Landroid/widget/TextView;
    .end local v10           #dialog_PayNameTitleTextView:Landroid/widget/TextView;
    .end local v11           #dialog_PayTypeTextView1:Landroid/widget/TextView;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "dialog_PayMessage"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 319
    .restart local v6       #dialog_PayInformation:Landroid/widget/LinearLayout;
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_9

    .line 329
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    move-object/from16 v19, v0

    const-string v20, "dialog_PayInformation"

    invoke-virtual/range {v19 .. v20}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/dialog/DialogPay;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #dialog_PayInformation:Landroid/widget/LinearLayout;
    check-cast v6, Landroid/widget/LinearLayout;

    .line 330
    .restart local v6       #dialog_PayInformation:Landroid/widget/LinearLayout;
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method private setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 1
    .parameter "idx"
    .parameter "buttonOCL"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object p2, v0, p1

    .line 356
    :cond_0
    return-void
.end method

.method private setButtonText(ILjava/lang/String;)V
    .locals 1
    .parameter "idx"
    .parameter "buttonText"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 351
    :cond_0
    return-void
.end method

.method private showMy(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .parameter "path"

    .prologue
    .line 138
    new-instance v0, Lcom/kt/olleh/inapp/util/UIParser;

    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    .line 139
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeConfig(I)V
    .locals 1
    .parameter "config"

    .prologue
    .line 53
    sput p1, Lcom/kt/olleh/inapp/dialog/DialogPay;->config:I

    .line 54
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pwdEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pwdEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->close()V

    .line 58
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->show()V

    .line 59
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 95
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->unBind()V

    .line 106
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 107
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 108
    return-void
.end method

.method public getModifyTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->modifyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pwdEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public setBgColor(Z)V
    .locals 0
    .parameter "isBgChange"

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isBgChange:Z

    .line 392
    return-void
.end method

.method public setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 0
    .parameter "idx"
    .parameter "buttonText"
    .parameter "buttonOCL"

    .prologue
    .line 344
    invoke-direct {p0, p1, p2}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setButtonText(ILjava/lang/String;)V

    .line 345
    invoke-direct {p0, p1, p3}, Lcom/kt/olleh/inapp/dialog/DialogPay;->setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 346
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->message:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setPayInformation(Z)V
    .locals 0
    .parameter "isPayInformation"

    .prologue
    .line 383
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayInformation:Z

    .line 384
    return-void
.end method

.method public setPayMessage(Z)V
    .locals 0
    .parameter "isPayMessage"

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayMessage:Z

    .line 388
    return-void
.end method

.method public setPayMoneyMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payMoney:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setPayNameMessage(ILjava/lang/String;)V
    .locals 0
    .parameter "line"
    .parameter "itemname"

    .prologue
    .line 359
    packed-switch p1, :pswitch_data_0

    .line 368
    :goto_0
    return-void

    .line 362
    :pswitch_0
    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName1:Ljava/lang/String;

    goto :goto_0

    .line 365
    :pswitch_1
    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payName2:Ljava/lang/String;

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPayNameTitle(Z)V
    .locals 0
    .parameter "isPayNameTitle"

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPayNameTitle:Z

    .line 380
    return-void
.end method

.method public setPayTypeMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->payType:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .parameter "pwd"

    .prologue
    .line 404
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->pin:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setPwdOn(Z)V
    .locals 0
    .parameter "isPwdOn"

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->isPwdOn:Z

    .line 396
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 335
    check-cast p1, Ljava/lang/String;

    .end local p1
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->title:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogPay;->create()V

    .line 100
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 101
    return-void
.end method

.method public unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 122
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    .line 125
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v1, :cond_1

    .line 127
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 130
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 132
    .end local v0           #i:I
    :cond_1
    return-void

    .line 120
    .restart local v0       #i:I
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonTexts:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPay;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object v2, v1, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
