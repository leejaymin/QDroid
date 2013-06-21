.class public Lcom/kt/olleh/inapp/dialog/DialogLogin;
.super Landroid/app/Dialog;
.source "DialogLogin.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

.field mParser:Lcom/kt/olleh/inapp/util/UIParser;

.field private radioBtn1:Landroid/widget/RadioButton;

.field private radioBtn2:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 28
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 23
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn1:Landroid/widget/RadioButton;

    .line 24
    iput-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn2:Landroid/widget/RadioButton;

    .line 30
    iput-object p1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mContext:Landroid/content/Context;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/kt/olleh/inapp/dialog/DialogLogin;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kt/olleh/inapp/dialog/DialogLogin;)Landroid/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn2:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private create()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 77
    const-string v6, "/layout/dialog_login.xml"

    invoke-direct {p0, v6}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->showMy(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->setContentView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 80
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    const v6, 0x3f333333

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 81
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 82
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/Window;->addFlags(I)V

    .line 85
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v7, "login_id"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 86
    .local v3, idEdit:Landroid/widget/EditText;
    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v7, "login_password"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 89
    .local v5, passEdit:Landroid/widget/EditText;
    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v7, "showRadio"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn1:Landroid/widget/RadioButton;

    .line 92
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v7, "ollehRadio"

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn2:Landroid/widget/RadioButton;

    .line 94
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v6, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 95
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn1:Landroid/widget/RadioButton;

    new-instance v7, Lcom/kt/olleh/inapp/dialog/DialogLogin$1;

    invoke-direct {v7, p0}, Lcom/kt/olleh/inapp/dialog/DialogLogin$1;-><init>(Lcom/kt/olleh/inapp/dialog/DialogLogin;)V

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn2:Landroid/widget/RadioButton;

    new-instance v7, Lcom/kt/olleh/inapp/dialog/DialogLogin$2;

    invoke-direct {v7, p0}, Lcom/kt/olleh/inapp/dialog/DialogLogin$2;-><init>(Lcom/kt/olleh/inapp/dialog/DialogLogin;)V

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    new-array v1, v9, [Landroid/widget/Button;

    .line 120
    .local v1, DialogButton:[Landroid/widget/Button;
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    .line 121
    .local v0, ButtonID:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "Button_1"

    aput-object v7, v0, v6

    .line 122
    const-string v6, "Button_2"

    aput-object v6, v0, v8

    .line 124
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-lt v2, v6, :cond_1

    .line 129
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v6, :cond_0

    .line 131
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v6, v6

    if-lt v2, v6, :cond_2

    .line 136
    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v6, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    aput-object v6, v1, v2

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_2
    aget-object v6, v1, v2

    iget-object v7, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private showMy(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .parameter "path"

    .prologue
    .line 71
    new-instance v0, Lcom/kt/olleh/inapp/util/UIParser;

    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kt/olleh/inapp/util/UIParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    .line 72
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    invoke-virtual {v0, p1}, Lcom/kt/olleh/inapp/util/UIParser;->Start(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 36
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->unBind()V

    .line 47
    const/4 v0, -0x1

    sput v0, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 48
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 49
    return-void
.end method

.method public getID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v2, "login_id"

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 163
    .local v0, idEdit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIdType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    const-string v0, ""

    .line 140
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn1:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v0, "01"

    .line 145
    :goto_0
    return-object v0

    .line 143
    :cond_0
    const-string v0, "02"

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mParser:Lcom/kt/olleh/inapp/util/UIParser;

    const-string v2, "login_password"

    invoke-virtual {v1, v2}, Lcom/kt/olleh/inapp/util/UIParser;->getID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 168
    .local v0, pwEdit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRadioBtn1()Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn1:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getRadioBtn2()Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->radioBtn2:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public setButton(ILcom/kt/olleh/inapp/dialog/DialogOnClickListener;)V
    .locals 1
    .parameter "idx"
    .parameter "listener"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object p2, v0, p1

    .line 159
    :cond_0
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kt/olleh/inapp/dialog/DialogLogin;->create()V

    .line 41
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 42
    return-void
.end method

.method public unBind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    if-eqz v1, :cond_0

    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 63
    iput-object v2, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    .line 65
    .end local v0           #i:I
    :cond_0
    return-void

    .line 61
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/kt/olleh/inapp/dialog/DialogLogin;->mListener:[Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;

    aput-object v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
