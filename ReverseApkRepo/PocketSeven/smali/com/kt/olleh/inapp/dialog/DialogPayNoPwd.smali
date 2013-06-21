.class public Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;
.super Landroid/app/Dialog;
.source "DialogPayNoPwd.java"


# static fields
.field public static config:I


# instance fields
.field private buttonCount:I

.field private buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

.field private buttonTexts:[Ljava/lang/String;

.field private isBgChange:Z

.field private isPayInformation:Z

.field private mContext:Landroid/content/Context;

.field mParser:Lcom/kt/olleh/inapp/util/UIParser;

.field private message:Ljava/lang/String;

.field private payMoney:Ljava/lang/String;

.field private payName1:Ljava/lang/String;

.field private payName2:Ljava/lang/String;

.field private payType:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->config:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "buttonCount"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    .line 20
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->title:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->message:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName1:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName2:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payMoney:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payType:Ljava/lang/String;

    .line 29
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->isBgChange:Z

    .line 32
    iput-boolean v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->isPayInformation:Z

    .line 34
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 45
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mContext:Landroid/content/Context;

    .line 46
    iput p2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    .line 48
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    if-lez v0, :cond_0

    .line 50
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    .line 51
    iget v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    new-array v0, v0, [Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 53
    :cond_0
    return-void
.end method

.method private create()V
    .locals 17

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 116
    const-string v15, "/layout-port/dialog_pay_no_pwd.xml"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setContentView(Landroid/view/View;)V

    .line 120
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    sput v15, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->config:I

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 124
    .local v11, lp:Landroid/view/WindowManager$LayoutParams;
    const v15, 0x3f333333

    iput v15, v11, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v16, "dialog_Title"

    invoke-virtual/range {v15 .. v16}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 130
    .local v13, titleLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v16, "dialogAlertTitleTextView"

    invoke-virtual/range {v15 .. v16}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 131
    .local v14, titleTextView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->title:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->title:Ljava/lang/String;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->title:Ljava/lang/String;

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 134
    :cond_1
    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v16, "dialog_MessageTextView"

    invoke-virtual/range {v15 .. v16}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 139
    .local v12, messageTextView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->message:Ljava/lang/String;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->message:Ljava/lang/String;

    const-string v16, ""

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 140
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->message:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    if-lez v15, :cond_5

    .line 145
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v16, "Button_Layout"

    invoke-virtual/range {v15 .. v16}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 146
    .local v2, ButtonLayout:Landroid/widget/LinearLayout;
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    move-object/from16 v0, p0

    iget v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    new-array v3, v15, [Landroid/widget/Button;

    .line 149
    .local v3, DialogButton:[Landroid/widget/Button;
    const/4 v15, 0x3

    new-array v1, v15, [Ljava/lang/String;

    .line 150
    .local v1, ButtonID:[Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "Button_1"

    aput-object v16, v1, v15

    .line 151
    const/4 v15, 0x1

    const-string v16, "Button_2"

    aput-object v16, v1, v15

    .line 152
    const/4 v15, 0x2

    const-string v16, "Button_3"

    aput-object v16, v1, v15

    .line 154
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v15, v3

    if-lt v10, v15, :cond_7

    .line 159
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    if-eqz v15, :cond_4

    .line 161
    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    if-lt v10, v15, :cond_8

    .line 168
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v15, :cond_5

    .line 170
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonCount:I

    if-lt v10, v15, :cond_9

    .line 177
    .end local v1           #ButtonID:[Ljava/lang/String;
    .end local v2           #ButtonLayout:Landroid/widget/LinearLayout;
    .end local v3           #DialogButton:[Landroid/widget/Button;
    .end local v10           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v16, "dialog_PayNameTitle"

    invoke-virtual/range {v15 .. v16}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 178
    .local v8, dialog_PayNameTitleTextView:Landroid/widget/TextView;
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v16, "dialog_PayName1"

    invoke-virtual/range {v15 .. v16}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 181
    .local v6, dialog_PayNameTextView1:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName1:Ljava/lang/String;

    if-eqz v15, :cond_a

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName1:Ljava/lang/String;

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v16, "dialog_PayName2"

    invoke-virtual/range {v15 .. v16}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 191
    .local v7, dialog_PayNameTextView2:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName2:Ljava/lang/String;

    if-eqz v15, :cond_b

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName2:Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v16, "dialog_PayMoney"

    invoke-virtual/range {v15 .. v16}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 201
    .local v5, dialog_PayMoneyTextView1:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payMoney:Ljava/lang/String;

    if-eqz v15, :cond_c

    .line 203
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payMoney:Ljava/lang/String;

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v16, "dialog_PayType"

    invoke-virtual/range {v15 .. v16}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 211
    .local v9, dialog_PayTypeTextView1:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payType:Ljava/lang/String;

    if-eqz v15, :cond_d

    .line 213
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payType:Ljava/lang/String;

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v16, "dialog_PayInformation"

    invoke-virtual/range {v15 .. v16}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 222
    .local v4, dialog_PayInformation:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->isPayInformation:Z

    if-eqz v15, :cond_e

    .line 224
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    :goto_8
    return-void

    .line 117
    .end local v4           #dialog_PayInformation:Landroid/widget/LinearLayout;
    .end local v5           #dialog_PayMoneyTextView1:Landroid/widget/TextView;
    .end local v6           #dialog_PayNameTextView1:Landroid/widget/TextView;
    .end local v7           #dialog_PayNameTextView2:Landroid/widget/TextView;
    .end local v8           #dialog_PayNameTitleTextView:Landroid/widget/TextView;
    .end local v9           #dialog_PayTypeTextView1:Landroid/widget/TextView;
    .end local v11           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v12           #messageTextView:Landroid/widget/TextView;
    .end local v13           #titleLayout:Landroid/widget/LinearLayout;
    .end local v14           #titleTextView:Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 118
    const-string v15, "/layout-land/dialog_pay_no_pwd.xml"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 156
    .restart local v1       #ButtonID:[Ljava/lang/String;
    .restart local v2       #ButtonLayout:Landroid/widget/LinearLayout;
    .restart local v3       #DialogButton:[Landroid/widget/Button;
    .restart local v10       #i:I
    .restart local v11       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v12       #messageTextView:Landroid/widget/TextView;
    .restart local v13       #titleLayout:Landroid/widget/LinearLayout;
    .restart local v14       #titleTextView:Landroid/widget/TextView;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    aget-object v16, v1, v10

    invoke-virtual/range {v15 .. v16}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    aput-object v15, v3, v10

    .line 154
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 163
    :cond_8
    aget-object v15, v3, v10

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    aget-object v15, v3, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 161
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 172
    :cond_9
    aget-object v15, v3, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    move-object/from16 v16, v0

    aget-object v16, v16, v10

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 187
    .end local v1           #ButtonID:[Ljava/lang/String;
    .end local v2           #ButtonLayout:Landroid/widget/LinearLayout;
    .end local v3           #DialogButton:[Landroid/widget/Button;
    .end local v10           #i:I
    .restart local v6       #dialog_PayNameTextView1:Landroid/widget/TextView;
    .restart local v8       #dialog_PayNameTitleTextView:Landroid/widget/TextView;
    :cond_a
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 197
    .restart local v7       #dialog_PayNameTextView2:Landroid/widget/TextView;
    :cond_b
    const/16 v15, 0x8

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 207
    .restart local v5       #dialog_PayMoneyTextView1:Landroid/widget/TextView;
    :cond_c
    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 217
    .restart local v9       #dialog_PayTypeTextView1:Landroid/widget/TextView;
    :cond_d
    const/16 v15, 0x8

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 228
    .restart local v4       #dialog_PayInformation:Landroid/widget/LinearLayout;
    :cond_e
    const/16 v15, 0x8

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method private setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 1
    .parameter "idx"
    .parameter "buttonOCL"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object p2, v0, p1

    .line 255
    :cond_0
    return-void
.end method

.method private setButtonText(ILjava/lang/String;)V
    .locals 1
    .parameter "idx"
    .parameter "buttonText"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 250
    :cond_0
    return-void
.end method

.method private showMy(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .parameter "path"

    .prologue
    .line 100
    new-instance v0, Lcom/kt/olleh/inapp/util/UIParser;

    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    .line 101
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeConfig(I)V
    .locals 0
    .parameter "config"

    .prologue
    .line 37
    sput p1, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->config:I

    .line 38
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->close()V

    .line 39
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->show()V

    .line 40
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 57
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->unBind()V

    .line 68
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 69
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 70
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public setBgColor(Z)V
    .locals 0
    .parameter "isBgChange"

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->isBgChange:Z

    .line 279
    return-void
.end method

.method public setButton(ILjava/lang/String;Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 0
    .parameter "idx"
    .parameter "buttonText"
    .parameter "buttonOCL"

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setButtonText(ILjava/lang/String;)V

    .line 244
    invoke-direct {p0, p1, p3}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->setButtonOCL(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V

    .line 245
    return-void
.end method

.method public setIsPayInformation(Z)V
    .locals 0
    .parameter "isPayInformation"

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->isPayInformation:Z

    .line 283
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->message:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setPayMoneyMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payMoney:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setPayNameMessage(ILjava/lang/String;)V
    .locals 0
    .parameter "line"
    .parameter "itemname"

    .prologue
    .line 258
    packed-switch p1, :pswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 261
    :pswitch_0
    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName1:Ljava/lang/String;

    goto :goto_0

    .line 264
    :pswitch_1
    iput-object p2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payName2:Ljava/lang/String;

    goto :goto_0

    .line 258
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
    .line 274
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->payType:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 234
    check-cast p1, Ljava/lang/String;

    .end local p1
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->title:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->create()V

    .line 62
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 63
    return-void
.end method

.method public unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 84
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    .line 87
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v1, :cond_1

    .line 89
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 92
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 94
    .end local v0           #i:I
    :cond_1
    return-void

    .line 82
    .restart local v0       #i:I
    :cond_2
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonTexts:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->buttonOCLs:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object v2, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
