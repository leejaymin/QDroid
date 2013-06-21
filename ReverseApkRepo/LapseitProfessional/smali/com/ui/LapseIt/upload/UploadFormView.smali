.class public Lcom/ui/LapseIt/upload/UploadFormView;
.super Landroid/app/Activity;
.source "UploadFormView.java"


# instance fields
.field private agreeCheck:Landroid/widget/CheckBox;

.field private buttonListener:Landroid/view/View$OnClickListener;

.field private confirmPassText:Landroid/widget/EditText;

.field private dataIsValid:Z

.field private emailText:Landroid/widget/EditText;

.field private errorHandler:Ljava/lang/Runnable;

.field private passText:Landroid/widget/EditText;

.field private textWatcher:Landroid/text/TextWatcher;

.field private userText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Lcom/ui/LapseIt/upload/UploadFormView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/upload/UploadFormView$1;-><init>(Lcom/ui/LapseIt/upload/UploadFormView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView;->textWatcher:Landroid/text/TextWatcher;

    .line 99
    new-instance v0, Lcom/ui/LapseIt/upload/UploadFormView$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/upload/UploadFormView$2;-><init>(Lcom/ui/LapseIt/upload/UploadFormView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView;->buttonListener:Landroid/view/View$OnClickListener;

    .line 247
    new-instance v0, Lcom/ui/LapseIt/upload/UploadFormView$3;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/upload/UploadFormView$3;-><init>(Lcom/ui/LapseIt/upload/UploadFormView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView;->errorHandler:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView;->userText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView;->passText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView;->confirmPassText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView;->emailText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ui/LapseIt/upload/UploadFormView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/ui/LapseIt/upload/UploadFormView;->dataIsValid:Z

    return-void
.end method

.method static synthetic access$5(Lcom/ui/LapseIt/upload/UploadFormView;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/ui/LapseIt/upload/UploadFormView;->dataIsValid:Z

    return v0
.end method

.method static synthetic access$6(Lcom/ui/LapseIt/upload/UploadFormView;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView;->agreeCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ui/LapseIt/upload/UploadFormView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/ui/LapseIt/upload/UploadFormView;->subscribeUserHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/ui/LapseIt/upload/UploadFormView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadFormView;->errorHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method private subscribeUserHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "username"
    .parameter "password"
    .parameter "email"

    .prologue
    .line 125
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 126
    .local v5, dialog:Landroid/app/ProgressDialog;
    const-string v0, "Signing you in ..."

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    const-string v0, "Please wait a moment ..."

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 128
    const v0, 0x1080027

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 129
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 130
    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 132
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/ui/LapseIt/upload/UploadFormView$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ui/LapseIt/upload/UploadFormView$4;-><init>(Lcom/ui/LapseIt/upload/UploadFormView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 244
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 245
    return-void
.end method


# virtual methods
.method checkEmail(Ljava/lang/String;)Z
    .locals 2
    .parameter "inputMail"

    .prologue
    .line 95
    const-string v1, "^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\\.([a-zA-Z])+([a-zA-Z])+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 96
    .local v0, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f03002d

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/upload/UploadFormView;->setContentView(I)V

    .line 60
    const v1, 0x7f0b00a4

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/upload/UploadFormView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView;->userText:Landroid/widget/EditText;

    .line 61
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView;->userText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadFormView;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    const v1, 0x7f0b00a5

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/upload/UploadFormView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView;->passText:Landroid/widget/EditText;

    .line 63
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView;->passText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadFormView;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    const v1, 0x7f0b00a6

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/upload/UploadFormView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView;->confirmPassText:Landroid/widget/EditText;

    .line 65
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView;->confirmPassText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadFormView;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    const v1, 0x7f0b00a7

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/upload/UploadFormView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView;->emailText:Landroid/widget/EditText;

    .line 67
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView;->emailText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ui/LapseIt/upload/UploadFormView;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    const v1, 0x7f0b00a9

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/upload/UploadFormView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView;->agreeCheck:Landroid/widget/CheckBox;

    .line 71
    const v1, 0x7f0b00aa

    invoke-virtual {p0, v1}, Lcom/ui/LapseIt/upload/UploadFormView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 72
    .local v0, confirmButton:Landroid/widget/Button;
    iget-object v1, p0, Lcom/ui/LapseIt/upload/UploadFormView;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 51
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 120
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 121
    return-void
.end method
