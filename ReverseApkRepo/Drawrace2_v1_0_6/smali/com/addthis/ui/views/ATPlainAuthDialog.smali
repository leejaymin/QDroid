.class public Lcom/addthis/ui/views/ATPlainAuthDialog;
.super Landroid/app/Dialog;
.source "ATPlainAuthDialog.java"


# static fields
.field static final DIMENSIONS_DIFF_LANDSCAPE:[F = null

.field static final DIMENSIONS_DIFF_PORTRAIT:[F = null

.field private static final TAG:Ljava/lang/String; = "Plain dialog"


# instance fields
.field private cancelButtonListener:Landroid/view/View$OnClickListener;

.field private loginButtonListener:Landroid/view/View$OnClickListener;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mListener:Lcom/addthis/ui/views/ATOAuthDialogListener;

.field private mPassword:Landroid/widget/EditText;

.field private mService:Lcom/addthis/models/ATService;

.field private mUserName:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 39
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/addthis/ui/views/ATPlainAuthDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    .line 40
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/addthis/ui/views/ATPlainAuthDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    .line 38
    return-void

    .line 39
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x70t 0x42t
    .end array-data

    .line 40
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x20t 0x42t
        0x0t 0x0t 0x70t 0x42t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/addthis/models/ATService;Lcom/addthis/ui/views/ATOAuthDialogListener;)V
    .locals 1
    .parameter "context"
    .parameter "service"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object v0, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mUserName:Landroid/widget/EditText;

    .line 47
    iput-object v0, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mPassword:Landroid/widget/EditText;

    .line 172
    new-instance v0, Lcom/addthis/ui/views/ATPlainAuthDialog$1;

    invoke-direct {v0, p0}, Lcom/addthis/ui/views/ATPlainAuthDialog$1;-><init>(Lcom/addthis/ui/views/ATPlainAuthDialog;)V

    iput-object v0, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->loginButtonListener:Landroid/view/View$OnClickListener;

    .line 191
    new-instance v0, Lcom/addthis/ui/views/ATPlainAuthDialog$2;

    invoke-direct {v0, p0}, Lcom/addthis/ui/views/ATPlainAuthDialog$2;-><init>(Lcom/addthis/ui/views/ATPlainAuthDialog;)V

    iput-object v0, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->cancelButtonListener:Landroid/view/View$OnClickListener;

    .line 53
    iput-object p2, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mService:Lcom/addthis/models/ATService;

    .line 54
    iput-object p3, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mListener:Lcom/addthis/ui/views/ATOAuthDialogListener;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/addthis/ui/views/ATPlainAuthDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mUserName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/addthis/ui/views/ATPlainAuthDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/addthis/ui/views/ATPlainAuthDialog;)Lcom/addthis/ui/views/ATOAuthDialogListener;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mListener:Lcom/addthis/ui/views/ATOAuthDialogListener;

    return-object v0
.end method

.method private setupViews()V
    .locals 14

    .prologue
    .line 80
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/addthis/ui/views/ATPlainAuthDialog;->requestWindowFeature(I)Z

    .line 81
    invoke-virtual {p0}, Lcom/addthis/ui/views/ATPlainAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 83
    .local v2, context:Landroid/content/Context;
    const/4 v6, 0x0

    .line 84
    .local v6, pageTitle:Landroid/widget/TextView;
    new-instance v6, Landroid/widget/TextView;

    .end local v6           #pageTitle:Landroid/widget/TextView;
    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 85
    .restart local v6       #pageTitle:Landroid/widget/TextView;
    const/high16 v10, -0x100

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 86
    iget-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mService:Lcom/addthis/models/ATService;

    invoke-virtual {v10}, Lcom/addthis/models/ATService;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v10, -0x1

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 90
    iget-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, backgroundLayout:Landroid/widget/LinearLayout;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 94
    const/4 v10, -0x1

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 97
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 99
    .local v9, usernameText:Landroid/widget/TextView;
    const-string v10, "string"

    const-string v11, "username"

    invoke-static {v2, v10, v11}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 98
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 100
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    const/4 v11, -0x1

    .line 102
    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    const/4 v10, 0x3

    const/16 v11, 0xa

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 104
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    new-instance v10, Landroid/widget/EditText;

    invoke-direct {v10, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mUserName:Landroid/widget/EditText;

    .line 107
    iget-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mUserName:Landroid/widget/EditText;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    const/4 v12, -0x1

    .line 109
    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 107
    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    iget-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mUserName:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v7, passwordText:Landroid/widget/TextView;
    const-string v10, "string"

    const-string v11, "password"

    invoke-static {v2, v10, v11}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 115
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    const/4 v11, -0x1

    .line 117
    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 115
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const/4 v10, 0x3

    const/16 v11, 0xa

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 119
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v10, Landroid/widget/EditText;

    invoke-direct {v10, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mPassword:Landroid/widget/EditText;

    .line 122
    iget-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mPassword:Landroid/widget/EditText;

    const/16 v11, 0x80

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 123
    iget-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mPassword:Landroid/widget/EditText;

    const/16 v11, 0xb0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 124
    iget-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mPassword:Landroid/widget/EditText;

    const/high16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 125
    iget-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mPassword:Landroid/widget/EditText;

    new-instance v11, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v11}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 126
    iget-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mPassword:Landroid/widget/EditText;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 127
    const/4 v12, -0x1

    .line 128
    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 133
    .local v3, horizontalButtons:Landroid/widget/LinearLayout;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 134
    const/4 v10, -0x1

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 135
    const/4 v10, 0x0

    const/16 v11, 0x14

    const/4 v12, 0x0

    const/4 v13, 0x5

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 136
    const/high16 v10, 0x4000

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 137
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 138
    const/4 v11, -0x1

    .line 139
    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    invoke-virtual {v0, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 143
    const/4 v10, -0x2

    .line 144
    const/4 v11, -0x2

    .line 142
    invoke-direct {v4, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v4, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 147
    .local v5, loginBtn:Landroid/widget/Button;
    const/high16 v10, 0x3f80

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 148
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    const-string v10, "string"

    const-string v11, "login"

    invoke-static {v2, v10, v11}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(I)V

    .line 150
    iget-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->loginButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 154
    .local v1, cancelBtn:Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    const-string v10, "string"

    const-string v11, "cancel"

    invoke-static {v2, v10, v11}, Lcom/addthis/utils/ATUtil;->getResourseIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setText(I)V

    .line 156
    iget-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->cancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    new-instance v8, Landroid/widget/ScrollView;

    invoke-direct {v8, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 161
    .local v8, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v8, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 162
    iget-object v10, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 163
    const/4 v12, -0x1

    .line 164
    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    invoke-virtual {v10, v8, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mListener:Lcom/addthis/ui/views/ATOAuthDialogListener;

    invoke-interface {v0}, Lcom/addthis/ui/views/ATOAuthDialogListener;->onAuthViewCancel()V

    .line 169
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 170
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v1, "Plain dialog"

    const-string v2, "On create method of plain auth"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/addthis/ui/views/ATPlainAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 64
    iget-object v1, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    iget-object v1, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 66
    iget-object v1, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0xf

    const/16 v3, 0x28

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    invoke-direct {p0}, Lcom/addthis/ui/views/ATPlainAuthDialog;->setupViews()V

    .line 68
    invoke-virtual {p0}, Lcom/addthis/ui/views/ATPlainAuthDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 69
    .local v0, display:Landroid/view/Display;
    iget-object v1, p0, Lcom/addthis/ui/views/ATPlainAuthDialog;->mLinearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 70
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    invoke-virtual {p0, v1, v2}, Lcom/addthis/ui/views/ATPlainAuthDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void
.end method
