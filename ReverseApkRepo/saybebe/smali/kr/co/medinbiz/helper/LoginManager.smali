.class public Lkr/co/medinbiz/helper/LoginManager;
.super Ljava/lang/Object;
.source "LoginManager.java"


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;

.field private roots:Lkr/co/medinbiz/dto/Roots;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lkr/co/medinbiz/helper/LoginManager;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lkr/co/medinbiz/helper/LoginManager;->handler:Landroid/os/Handler;

    .line 23
    new-instance v0, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v0, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "dialog"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lkr/co/medinbiz/helper/LoginManager;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lkr/co/medinbiz/helper/LoginManager;->handler:Landroid/os/Handler;

    .line 29
    iput-object p3, p0, Lkr/co/medinbiz/helper/LoginManager;->dialog:Landroid/app/ProgressDialog;

    .line 30
    new-instance v0, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v0, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lkr/co/medinbiz/helper/LoginManager;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/helper/LoginManager;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Lkr/co/medinbiz/helper/LoginManager;->noticePopup()V

    return-void
.end method

.method static synthetic access$2(Lkr/co/medinbiz/helper/LoginManager;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private noticePopup()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lkr/co/medinbiz/helper/LoginManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getNotice()Lkr/co/medinbiz/dto/Notice;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Notice;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 105
    iget-object v1, p0, Lkr/co/medinbiz/helper/LoginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    new-instance v2, Lkr/co/medinbiz/helper/LoginManager$2;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/helper/LoginManager$2;-><init>(Lkr/co/medinbiz/helper/LoginManager;)V

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 114
    return-void
.end method


# virtual methods
.method public memberLogin(Lkr/co/medinbiz/dto/Roots;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "root"
    .parameter "id"
    .parameter "pw"

    .prologue
    const/4 v2, 0x1

    .line 34
    iput-object p1, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    .line 35
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v0, p2}, Lkr/co/medinbiz/helper/PreferencesManager;->setID(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v0, p3}, Lkr/co/medinbiz/helper/PreferencesManager;->setPW(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v0, v2}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsAutoLogin(Z)V

    .line 40
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v0, v2}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsLogin(Z)V

    .line 41
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    iget-object v1, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getMember()Lkr/co/medinbiz/dto/Member;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Member;->getBabydue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/helper/PreferencesManager;->setBabydue(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    iget-object v1, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getMember()Lkr/co/medinbiz/dto/Member;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Member;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/helper/PreferencesManager;->setName(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    const-string v1, "saybebe"

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/helper/PreferencesManager;->setLoginType(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    iget-object v1, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getCdtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/helper/PreferencesManager;->setCdtype(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    iget-object v1, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getBarcode_reg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/helper/PreferencesManager;->setBarcode_reg(Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noticeData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v2, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    invoke-virtual {v2}, Lkr/co/medinbiz/dto/Roots;->getNotice()Lkr/co/medinbiz/dto/Notice;

    move-result-object v1

    .line 75
    .local v1, notice:Lkr/co/medinbiz/dto/Notice;
    const/4 v0, 0x0

    .line 76
    .local v0, id:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Notice;->getId()Ljava/lang/String;

    move-result-object v0

    .line 79
    :cond_0
    if-eqz v0, :cond_2

    .line 80
    new-instance v2, Lkr/co/medinbiz/helper/PreferencesManager;

    iget-object v3, p0, Lkr/co/medinbiz/helper/LoginManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lkr/co/medinbiz/helper/PreferencesManager;->getNoticeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    new-instance v2, Lkr/co/medinbiz/helper/PreferencesManager;

    iget-object v3, p0, Lkr/co/medinbiz/helper/LoginManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lkr/co/medinbiz/helper/PreferencesManager;->setNoticeId(Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lkr/co/medinbiz/helper/LoginManager;->handler:Landroid/os/Handler;

    new-instance v3, Lkr/co/medinbiz/helper/LoginManager$1;

    invoke-direct {v3, p0}, Lkr/co/medinbiz/helper/LoginManager$1;-><init>(Lkr/co/medinbiz/helper/LoginManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v2, p0, Lkr/co/medinbiz/helper/LoginManager;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 97
    :cond_2
    iget-object v2, p0, Lkr/co/medinbiz/helper/LoginManager;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public phoneLogin(Lkr/co/medinbiz/dto/Roots;)Ljava/lang/String;
    .locals 4
    .parameter "root"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 55
    iput-object p1, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    .line 56
    iget-object v1, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1, v3}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsAutoLogin(Z)V

    .line 59
    iget-object v1, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1, v3}, Lkr/co/medinbiz/helper/PreferencesManager;->setIsLogin(Z)V

    .line 60
    iget-object v1, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v1, v0}, Lkr/co/medinbiz/helper/PreferencesManager;->setBabydue(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    iget-object v1, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Roots;->getMember()Lkr/co/medinbiz/dto/Member;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Member;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/helper/PreferencesManager;->setName(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    const-string v1, "invite"

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/helper/PreferencesManager;->setLoginType(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    const-string v1, "N"

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/helper/PreferencesManager;->setCdtype(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/helper/PreferencesManager;->setBarcode_reg(Ljava/lang/String;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager;->roots:Lkr/co/medinbiz/dto/Roots;

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_1
    return-object v0
.end method
