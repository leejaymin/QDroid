.class public Lorg/theb/ssh/Pubkey;
.super Landroid/app/Activity;
.source "Pubkey.java"


# static fields
.field private static final GATHER_ENTROPY:I

.field private static mSecRand:Ljava/security/SecureRandom;


# instance fields
.field protected entropyGathered:Ljava/util/concurrent/Semaphore;

.field protected entropySeed:Ljava/lang/String;

.field protected generateButton:Landroid/widget/Button;

.field private kgThread:Ljava/lang/Thread;

.field mCancelListener:Landroid/view/View$OnClickListener;

.field mCommitListener:Landroid/view/View$OnClickListener;

.field mGenerateListener:Landroid/view/View$OnClickListener;

.field final mKeyGen:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lorg/theb/ssh/Pubkey;->mSecRand:Ljava/security/SecureRandom;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/theb/ssh/Pubkey;->kgThread:Ljava/lang/Thread;

    .line 68
    new-instance v0, Lorg/theb/ssh/Pubkey$1;

    invoke-direct {v0, p0}, Lorg/theb/ssh/Pubkey$1;-><init>(Lorg/theb/ssh/Pubkey;)V

    iput-object v0, p0, Lorg/theb/ssh/Pubkey;->mKeyGen:Ljava/lang/Runnable;

    .line 98
    new-instance v0, Lorg/theb/ssh/Pubkey$2;

    invoke-direct {v0, p0}, Lorg/theb/ssh/Pubkey$2;-><init>(Lorg/theb/ssh/Pubkey;)V

    iput-object v0, p0, Lorg/theb/ssh/Pubkey;->mGenerateListener:Landroid/view/View$OnClickListener;

    .line 119
    new-instance v0, Lorg/theb/ssh/Pubkey$3;

    invoke-direct {v0, p0}, Lorg/theb/ssh/Pubkey$3;-><init>(Lorg/theb/ssh/Pubkey;)V

    iput-object v0, p0, Lorg/theb/ssh/Pubkey;->mCommitListener:Landroid/view/View$OnClickListener;

    .line 127
    new-instance v0, Lorg/theb/ssh/Pubkey$4;

    invoke-direct {v0, p0}, Lorg/theb/ssh/Pubkey$4;-><init>(Lorg/theb/ssh/Pubkey;)V

    iput-object v0, p0, Lorg/theb/ssh/Pubkey;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 39
    return-void
.end method

.method static synthetic access$0(Ljava/security/SecureRandom;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    sput-object p0, Lorg/theb/ssh/Pubkey;->mSecRand:Ljava/security/SecureRandom;

    return-void
.end method

.method static synthetic access$1()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lorg/theb/ssh/Pubkey;->mSecRand:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic access$2(Lorg/theb/ssh/Pubkey;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lorg/theb/ssh/Pubkey;->kgThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$3(Lorg/theb/ssh/Pubkey;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lorg/theb/ssh/Pubkey;->kgThread:Ljava/lang/Thread;

    return-object v0
.end method


# virtual methods
.method protected gatherEntropy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v1, p0, Lorg/theb/ssh/Pubkey;->generateButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/theb/ssh/TouchEntropy;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lorg/theb/ssh/Pubkey;->startActivityForResult(Landroid/content/Intent;I)V

    .line 117
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/theb/ssh/Pubkey;->entropySeed:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lorg/theb/ssh/Pubkey;->entropyGathered:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 111
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lorg/theb/ssh/Pubkey;->setContentView(I)V

    .line 58
    const v2, 0x7f090021

    invoke-virtual {p0, v2}, Lorg/theb/ssh/Pubkey;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lorg/theb/ssh/Pubkey;->generateButton:Landroid/widget/Button;

    .line 59
    iget-object v2, p0, Lorg/theb/ssh/Pubkey;->generateButton:Landroid/widget/Button;

    iget-object v3, p0, Lorg/theb/ssh/Pubkey;->mGenerateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v2, 0x7f090020

    invoke-virtual {p0, v2}, Lorg/theb/ssh/Pubkey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 62
    .local v1, okButton:Landroid/widget/Button;
    iget-object v2, p0, Lorg/theb/ssh/Pubkey;->mCommitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v2, 0x7f090016

    invoke-virtual {p0, v2}, Lorg/theb/ssh/Pubkey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 65
    .local v0, cancelButton:Landroid/widget/Button;
    iget-object v2, p0, Lorg/theb/ssh/Pubkey;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
