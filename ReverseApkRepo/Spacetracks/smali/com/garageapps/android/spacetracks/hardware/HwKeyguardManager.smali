.class public Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;
.super Ljava/lang/Object;
.source "HwKeyguardManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 26
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "Tag_K"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 27
    return-void
.end method


# virtual methods
.method public turnOff()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 37
    return-void
.end method

.method public turnOn()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwKeyguardManager;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 32
    return-void
.end method
