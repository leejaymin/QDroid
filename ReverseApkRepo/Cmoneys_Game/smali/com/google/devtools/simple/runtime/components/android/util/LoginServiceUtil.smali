.class public Lcom/google/devtools/simple/runtime/components/android/util/LoginServiceUtil;
.super Ljava/lang/Object;
.source "LoginServiceUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LoginServiceUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getPhoneEmailAddress(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4
    .parameter "activityContext"

    .prologue
    .line 34
    const-string v2, ""

    .line 37
    .local v2, userEmail:Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    invoke-direct {v1, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 39
    .local v1, googleLoginService:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v1}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1           #googleLoginService:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :goto_0
    return-object v2

    .line 41
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 45
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LoginServiceUtil"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
