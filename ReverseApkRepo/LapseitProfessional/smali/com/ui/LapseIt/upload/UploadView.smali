.class public Lcom/ui/LapseIt/upload/UploadView;
.super Landroid/app/Activity;
.source "UploadView.java"


# static fields
.field static loggedIn:Z


# instance fields
.field private buttonListener:Landroid/view/View$OnClickListener;

.field private descText:Landroid/widget/EditText;

.field private filePath:Ljava/lang/String;

.field private postFace:Landroid/widget/CheckBox;

.field private titleText:Landroid/widget/EditText;

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Lcom/ui/LapseIt/upload/UploadView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/upload/UploadView$1;-><init>(Lcom/ui/LapseIt/upload/UploadView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/upload/UploadView;->buttonListener:Landroid/view/View$OnClickListener;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/upload/UploadView;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadView;->titleText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/upload/UploadView;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadView;->descText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/upload/UploadView;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/ui/LapseIt/upload/UploadView;->userId:I

    return v0
.end method

.method static synthetic access$3(Lcom/ui/LapseIt/upload/UploadView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadView;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ui/LapseIt/upload/UploadView;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadView;->postFace:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/ui/LapseIt/upload/UploadView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "_data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ui/LapseIt/upload/UploadView;->filePath:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/ui/LapseIt/upload/UploadView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "userId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/ui/LapseIt/upload/UploadView;->userId:I

    .line 43
    invoke-virtual {p0}, Lcom/ui/LapseIt/upload/UploadView;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "userType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, userType:Ljava/lang/String;
    iget v3, p0, Lcom/ui/LapseIt/upload/UploadView;->userId:I

    if-gtz v3, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/ui/LapseIt/upload/UploadView;->finish()V

    .line 49
    :cond_0
    const v3, 0x98967f

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/upload/UploadView;->setResult(I)V

    .line 51
    const-string v3, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Uploading with ID "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/ui/LapseIt/upload/UploadView;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const v3, 0x7f03002f

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/upload/UploadView;->setContentView(I)V

    .line 55
    const v3, 0x7f0b00b1

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/upload/UploadView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/ui/LapseIt/upload/UploadView;->titleText:Landroid/widget/EditText;

    .line 56
    const v3, 0x7f0b00b5

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/upload/UploadView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/ui/LapseIt/upload/UploadView;->descText:Landroid/widget/EditText;

    .line 57
    const v3, 0x7f0b00b4

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/upload/UploadView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/ui/LapseIt/upload/UploadView;->postFace:Landroid/widget/CheckBox;

    .line 59
    const-string v3, "normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/ui/LapseIt/upload/UploadView;->postFace:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 61
    iget-object v3, p0, Lcom/ui/LapseIt/upload/UploadView;->postFace:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 64
    :cond_1
    const v3, 0x7f0b00b2

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/upload/UploadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 65
    .local v1, uploadButton:Landroid/widget/Button;
    const v3, 0x7f0b00b3

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/upload/UploadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 66
    .local v0, cancelButton:Landroid/widget/Button;
    iget-object v3, p0, Lcom/ui/LapseIt/upload/UploadView;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v3, p0, Lcom/ui/LapseIt/upload/UploadView;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 33
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 73
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 74
    return-void
.end method
