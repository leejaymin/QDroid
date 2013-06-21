.class public Lcom/kt/olleh/inapp/InApp;
.super Ljava/lang/Object;
.source "InApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kt/olleh/inapp/InApp$NetworkTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InApp"


# instance fields
.field private final RS_URL:Ljava/lang/String;

.field private final TB_URL:Ljava/lang/String;

.field private final crypto_param:Ljava/lang/String;

.field private mAES_URL:Ljava/lang/String;

.field private mAPI:Ljava/lang/String;

.field private mAPINext:Ljava/lang/String;

.field private final mApp_id:Ljava/lang/String;

.field private final mAppid:Ljava/lang/String;

.field private final mAuthen:Ljava/lang/String;

.field private final mBuy_pwd:Ljava/lang/String;

.field private final mBuy_type:Ljava/lang/String;

.field private final mCert_key:Ljava/lang/String;

.field private final mDi_id:Ljava/lang/String;

.field private final mFile_name:Ljava/lang/String;

.field private final mId_type:Ljava/lang/String;

.field private final mIid:Ljava/lang/String;

.field private final mMime_type:Ljava/lang/String;

.field private mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;

.field private final mOpcode:Ljava/lang/String;

.field private final mPage:Ljava/lang/String;

.field private final mPage_size:Ljava/lang/String;

.field private final mPhone:Ljava/lang/String;

.field private final mPin:Ljava/lang/String;

.field private final mPwd:Ljava/lang/String;

.field private final mRecipients:Ljava/lang/String;

.field private volatile mRun:Z

.field private mRunningTask:Lcom/kt/olleh/inapp/InApp$NetworkTask;

.field private mSeq_key:Ljava/lang/String;

.field private final mShow_id:Ljava/lang/String;

.field private mSymmetric_key:Ljava/lang/String;

.field private final mTr_id:Ljava/lang/String;

.field private final mUser_id:Ljava/lang/String;

.field private final mUser_info:Ljava/lang/String;

.field private final seq_key:Ljava/lang/String;

.field private tr_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kt/olleh/inapp/InApp;->mRun:Z

    .line 46
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;

    .line 55
    const-string v0, "http://221.148.247.203:8888/INAP_GW/inap_gw/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->TB_URL:Ljava/lang/String;

    .line 56
    const-string v0, "http://inapppurchase.ollehmarket.com/INAP_GW/inap_gw/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->RS_URL:Ljava/lang/String;

    .line 58
    const-string v0, "crypto_param/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->crypto_param:Ljava/lang/String;

    .line 59
    const-string v0, "/seq_key/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->seq_key:Ljava/lang/String;

    .line 60
    const-string v0, "/app_id/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mApp_id:Ljava/lang/String;

    .line 61
    const-string v0, "/user_info/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mUser_info:Ljava/lang/String;

    .line 62
    const-string v0, "/authen/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mAuthen:Ljava/lang/String;

    .line 63
    const-string v0, "/page_size/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mPage_size:Ljava/lang/String;

    .line 64
    const-string v0, "/page/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mPage:Ljava/lang/String;

    .line 65
    const-string v0, "/recipients/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mRecipients:Ljava/lang/String;

    .line 66
    const-string v0, "/di_id/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mDi_id:Ljava/lang/String;

    .line 67
    const-string v0, "/buy_type/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mBuy_type:Ljava/lang/String;

    .line 68
    const-string v0, "/tr_id/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mTr_id:Ljava/lang/String;

    .line 69
    const-string v0, "/file_name/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mFile_name:Ljava/lang/String;

    .line 70
    const-string v0, "/mime_type/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mMime_type:Ljava/lang/String;

    .line 71
    const-string v0, "/show_id/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mShow_id:Ljava/lang/String;

    .line 72
    const-string v0, "/pwd/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mPwd:Ljava/lang/String;

    .line 73
    const-string v0, "/buy_pwd/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mBuy_pwd:Ljava/lang/String;

    .line 75
    const-string v0, "opcode="

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mOpcode:Ljava/lang/String;

    .line 76
    const-string v0, "&iid="

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mIid:Ljava/lang/String;

    .line 77
    const-string v0, "&appid="

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mAppid:Ljava/lang/String;

    .line 78
    const-string v0, "&phone="

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mPhone:Ljava/lang/String;

    .line 79
    const-string v0, "/pin/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mPin:Ljava/lang/String;

    .line 81
    const-string v0, "/cert_key/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mCert_key:Ljava/lang/String;

    .line 83
    const-string v0, "/user_id/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mUser_id:Ljava/lang/String;

    .line 84
    const-string v0, "/id_type/"

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mId_type:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->tr_id:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mSymmetric_key:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mSeq_key:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mRunningTask:Lcom/kt/olleh/inapp/InApp$NetworkTask;

    .line 96
    return-void
.end method

.method static synthetic access$0(Lcom/kt/olleh/inapp/InApp;Lcom/kt/olleh/inapp/net/NetworkManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;

    return-void
.end method

.method static synthetic access$1(Lcom/kt/olleh/inapp/InApp;)Lcom/kt/olleh/inapp/net/NetworkManager;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mNetManager:Lcom/kt/olleh/inapp/net/NetworkManager;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/kt/olleh/inapp/InApp;Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->tr_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kt/olleh/inapp/InApp;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/kt/olleh/inapp/InApp;->mRun:Z

    return-void
.end method

.method static synthetic access$2(Lcom/kt/olleh/inapp/InApp;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/kt/olleh/inapp/InApp;->mRun:Z

    return v0
.end method

.method static synthetic access$3(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->mSymmetric_key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->mSeq_key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->tr_id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/kt/olleh/inapp/InApp;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kt/olleh/inapp/InApp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    return-void
.end method

.method private networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "listener"
    .parameter "url"
    .parameter "api"

    .prologue
    const/4 v3, 0x1

    .line 118
    new-instance v0, Lcom/kt/olleh/inapp/InApp$NetworkTask;

    invoke-direct {v0, p0, p1}, Lcom/kt/olleh/inapp/InApp$NetworkTask;-><init>(Lcom/kt/olleh/inapp/InApp;Lcom/kt/olleh/inapp/OnInAppListener;)V

    .line 119
    .local v0, task:Lcom/kt/olleh/inapp/InApp$NetworkTask;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mRunningTask:Lcom/kt/olleh/inapp/InApp$NetworkTask;

    .line 121
    iput-boolean v3, p0, Lcom/kt/olleh/inapp/InApp;->mRun:Z

    .line 122
    const/4 v0, 0x0

    .line 123
    return-void
.end method


# virtual methods
.method public CheckPin(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 919
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 920
    const-string v1, "CheckPin"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: user_info = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 927
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 928
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 926
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 930
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p3, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method public SetPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "user_info"
    .parameter "authen"
    .parameter "pin"
    .parameter "listener"

    .prologue
    .line 944
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 945
    const-string v1, "SetPin"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: user_info = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 952
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 953
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 954
    const-string v2, "/pin/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 951
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 956
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p4, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method public checkUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "user_id"
    .parameter "pwd"
    .parameter "id_type"
    .parameter "listener"

    .prologue
    .line 893
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 894
    const-string v1, "checkUserId"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: user_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pwd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 901
    const-string v2, "/user_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 902
    const-string v2, "/pwd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 903
    const-string v2, "/id_type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 900
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 905
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p4, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    return-void
.end method

.method public check_balance(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 869
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 870
    const-string v1, "check_balance"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: user_info = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 877
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 878
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 876
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 880
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p3, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method public downSucProc(Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "cert_key"
    .parameter "listener"

    .prologue
    .line 734
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 735
    const-string v1, "downSucProc"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: cert_key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 742
    const-string v2, "/cert_key/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 741
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 744
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method public getDIAllList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "page_size"
    .parameter "page"
    .parameter "listener"

    .prologue
    .line 190
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 191
    const-string v1, "getAllDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", page_size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", page = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    const-string v2, "/page_size/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
    const-string v2, "/page/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p6, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public getDIAllList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 218
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 219
    const-string v1, "getAllDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p4, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public getDIDownloadableList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 354
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 355
    const-string v1, "getDownloadDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 366
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p4, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public getDIGiftList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 274
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 275
    const-string v1, "getGiftDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 286
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p4, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public getDIGiftList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "recipients"
    .parameter "listener"

    .prologue
    .line 247
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 248
    const-string v1, "getGiftDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", recipients = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 257
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    const-string v2, "/recipients/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p5, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public getDIInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "di_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 327
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 328
    const-string v1, "getDiDetail"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 336
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 340
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p5, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public getDIPurchaseList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 162
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 163
    const-string v1, "getBuyDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p4, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public getDIReceiveList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 300
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 301
    const-string v1, "getReceiveDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 309
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 312
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p4, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public getDIUsableList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 136
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 137
    const-string v1, "getUseDiList"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p4, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public getDownAuth(Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "cert_key"
    .parameter "listener"

    .prologue
    .line 712
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 713
    const-string v1, "getDownAuth"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: cert_key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    const-string v2, "/cert_key/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 719
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 722
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public getDownUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "di_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 687
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 688
    const-string v1, "getDownUrl"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 696
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 697
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 698
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 700
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p5, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public getItemStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "di_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 380
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 381
    const-string v1, "getItemStatus"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 389
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 390
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 391
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 393
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p5, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public getMainURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->bTBserver:Z

    if-eqz v1, :cond_0

    .line 105
    const-string v0, "http://221.148.247.203:8888/INAP_GW/inap_gw/"

    .line 113
    .local v0, url:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 110
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    const-string v0, "http://inapppurchase.ollehmarket.com/INAP_GW/inap_gw/"

    .restart local v0       #url:Ljava/lang/String;
    goto :goto_0
.end method

.method public requestCancel()V
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mRunningTask:Lcom/kt/olleh/inapp/InApp$NetworkTask;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mRunningTask:Lcom/kt/olleh/inapp/InApp$NetworkTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/InApp$NetworkTask;->cancel(Z)Z

    .line 967
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kt/olleh/inapp/InApp;->mRunningTask:Lcom/kt/olleh/inapp/InApp$NetworkTask;

    .line 968
    return-void
.end method

.method public requestCheckCoin(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 845
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 846
    const-string v1, "checkCoin"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: user_info = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 853
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 854
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 852
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 856
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p3, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method public requestCheckShowId(Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "show_id"
    .parameter "pwd"
    .parameter "listener"

    .prologue
    .line 817
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 818
    const-string v1, "checkShowId"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: show_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pwd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    const-string v2, "/show_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 826
    const-string v2, "/pwd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 824
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 828
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p3, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public requestDIApproveDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "di_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 759
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 760
    const-string v1, "approvedDownDi"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 767
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 768
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 769
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 770
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 766
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 772
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p5, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    return-void
.end method

.method public requestDIApproveUse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "di_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 659
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 660
    const-string v1, "approvedUseDi"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 667
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 668
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 669
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 670
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 672
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p5, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public requestDIBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "di_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "buy_type"
    .parameter "buy_pwd"
    .parameter "pin"
    .parameter "listener"

    .prologue
    .line 410
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 411
    const-string v1, "buyDi"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 416
    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 417
    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 418
    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 419
    const-string v3, ", buy_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 420
    const-string v3, ", buy_pwd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 421
    const-string v3, ", pin\t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 426
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 427
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 428
    const-string v2, "/buy_type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 429
    const-string v2, "/buy_pwd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 430
    const-string v2, "/pin/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 432
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p8, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public requestDIBuyCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "di_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "tr_id"
    .parameter "listener"

    .prologue
    .line 509
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 510
    const-string v1, "buyCancelDi"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tr_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 518
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 519
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 520
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 521
    const-string v2, "/tr_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 523
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p6, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public requestDIGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "app_id"
    .parameter "di_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "buy_type"
    .parameter "buy_pwd"
    .parameter "recipients"
    .parameter "listener"

    .prologue
    .line 569
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 570
    const-string v1, "giftDi"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: app_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    const-string v3, ", di_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 576
    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 577
    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 578
    const-string v3, ", buy_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 579
    const-string v3, ", buy_pwd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 580
    const-string v3, ", recipients = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    const-string v2, "/app_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 584
    const-string v2, "/di_id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 585
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 586
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 587
    const-string v2, "/buy_type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 588
    const-string v2, "/buy_pwd/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 589
    const-string v2, "/recipients/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 591
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p8, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public requestDIReBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 6
    .parameter "app_id"
    .parameter "di_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "buy_type"
    .parameter "buy_pwd"
    .parameter "pin"
    .parameter "listener"

    .prologue
    .line 452
    const-string v3, "buyDi"

    iput-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 453
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 455
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "InApp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Parameter :: app_id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 456
    const-string v5, ", di_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 457
    const-string v5, ", user_info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 458
    const-string v5, ", authen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 459
    const-string v5, ", buy_type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 460
    const-string v5, ", buy_pwd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 461
    const-string v5, ", pin\t = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 455
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    const-string v4, "/app_id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 465
    const-string v4, "/di_id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 466
    const-string v4, "/user_info/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 467
    const-string v4, "/authen/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 468
    const-string v4, "/buy_type/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 469
    const-string v4, "/buy_pwd/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 470
    const-string v4, "/pin/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 463
    iput-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 472
    const/4 v0, 0x0

    .line 476
    .local v0, aesURL:Ljava/lang/String;
    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mSymmetric_key:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 478
    :cond_1
    const-string v3, "0000"

    const-string v4, "\uc774\uc804 \uad6c\ub9e4 \ub0b4\uc5ed \uc5c6\uc74c"

    invoke-interface {p8, v3, v4}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 482
    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mSymmetric_key:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/crypt/AESCrypt;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 488
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "crypto_param/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/seq_key/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kt/olleh/inapp/InApp;->mSeq_key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p8, v2, v3}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void

    .line 484
    .end local v2           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 485
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "InApp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AESCrypter ::"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestDIReGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 6
    .parameter "app_id"
    .parameter "di_id"
    .parameter "user_info"
    .parameter "authen"
    .parameter "buy_type"
    .parameter "buy_pwd"
    .parameter "recipients"
    .parameter "listener"

    .prologue
    .line 609
    const-string v3, "reGiftDi"

    iput-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 610
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 613
    sget-boolean v3, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "InApp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Parameter :: app_id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 614
    const-string v5, ", di_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 615
    const-string v5, ", user_info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 616
    const-string v5, ", authen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 617
    const-string v5, ", buy_type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 618
    const-string v5, ", buy_pwd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 619
    const-string v5, ", recipients = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 613
    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    const-string v4, "/app_id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 623
    const-string v4, "/di_id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 624
    const-string v4, "/user_info/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 625
    const-string v4, "/authen/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 626
    const-string v4, "/buy_type/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 627
    const-string v4, "/buy_pwd/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 628
    const-string v4, "/recipients/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 621
    iput-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, aesURL:Ljava/lang/String;
    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mSymmetric_key:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 633
    :cond_1
    const-string v3, "0000"

    const-string v4, "\uc774\uc804 \uc120\ubb3c \uad6c\ub9e4 \ub0b4\uc5ed \uc5c6\uc74c"

    invoke-interface {p8, v3, v4}, Lcom/kt/olleh/inapp/OnInAppListener;->OnError(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 637
    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mSymmetric_key:Ljava/lang/String;

    iget-object v4, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/crypt/AESCrypt;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 643
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "crypto_param/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/seq_key/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kt/olleh/inapp/InApp;->mSeq_key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 644
    .local v2, url:Ljava/lang/String;
    iget-object v3, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p8, v2, v3}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    return-void

    .line 639
    .end local v2           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 640
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "InApp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AESCrypter ::"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kt/olleh/inapp/Config/Config;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestDIesBuy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "iid"
    .parameter "appid"
    .parameter "phone"
    .parameter "listener"

    .prologue
    .line 536
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 537
    const-string v1, "esBuyDi"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 540
    const-string v2, "opcode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 541
    const-string v2, "&iid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 542
    const-string v2, "&appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 543
    const-string v2, "&phone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 545
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: iid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 546
    const-string v3, ", appid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 547
    const-string v3, ", phone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 545
    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-direct {p0, p4, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public requestDIgetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kt/olleh/inapp/OnInAppListener;)V
    .locals 4
    .parameter "file_name"
    .parameter "mime_type"
    .parameter "user_info"
    .parameter "authen"
    .parameter "listener"

    .prologue
    .line 789
    const-string v1, "getSymKeyGen"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    .line 790
    const-string v1, "getFile"

    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/kt/olleh/inapp/InApp;->getMainURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, url:Ljava/lang/String;
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter :: file_name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mime_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", user_info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", authen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kt/olleh/inapp/Config/Config;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kt/olleh/inapp/InApp;->mAPINext:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 797
    const-string v2, "/file_name/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 798
    const-string v2, "/mime_type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 799
    const-string v2, "/user_info/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 800
    const-string v2, "/authen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 796
    iput-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAES_URL:Ljava/lang/String;

    .line 802
    iget-object v1, p0, Lcom/kt/olleh/inapp/InApp;->mAPI:Ljava/lang/String;

    invoke-direct {p0, p5, v0, v1}, Lcom/kt/olleh/inapp/InApp;->networkTaskStart(Lcom/kt/olleh/inapp/OnInAppListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    return-void
.end method
