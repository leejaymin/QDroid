.class Lcom/scoreloop/client/android/ui/manager/Checker$CheckerException;
.super Ljava/lang/RuntimeException;
.source "Checker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/manager/Checker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckerException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/manager/Checker;


# direct methods
.method private constructor <init>(Lcom/scoreloop/client/android/ui/manager/Checker;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerException;->this$0:Lcom/scoreloop/client/android/ui/manager/Checker;

    .line 46
    const-string v0, "Manifest Verification Error! See logcat output!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/scoreloop/client/android/ui/manager/Checker;Lcom/scoreloop/client/android/ui/manager/Checker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerException;-><init>(Lcom/scoreloop/client/android/ui/manager/Checker;)V

    return-void
.end method
