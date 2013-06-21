.class public Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;
.super Ljava/lang/Object;
.source "SdkLevel.java"


# static fields
.field public static final LEVEL_DONUT:I = 0x4

.field public static final LEVEL_ECLAIR:I = 0x7

.field public static final LEVEL_FROYO:I = 0x8


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;->handler:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;->activity:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getLevel()I
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 2
    .parameter "notice"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel$1;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method


# virtual methods
.method public warnNotSupported(Ljava/lang/String;)V
    .locals 2
    .parameter "what"

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warning: This app contains functionality ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") that does not work on this phone."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/util/SdkLevel;->showAlert(Ljava/lang/String;)V

    .line 48
    return-void
.end method
