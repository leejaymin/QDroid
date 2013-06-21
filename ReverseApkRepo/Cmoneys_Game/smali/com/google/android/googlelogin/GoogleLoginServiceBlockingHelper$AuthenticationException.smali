.class public Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;
.super Ljava/lang/Exception;
.source "GoogleLoginServiceBlockingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthenticationException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    .line 81
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "message"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    .line 84
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    .line 87
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter "cause"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;->this$0:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    .line 90
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 91
    return-void
.end method
