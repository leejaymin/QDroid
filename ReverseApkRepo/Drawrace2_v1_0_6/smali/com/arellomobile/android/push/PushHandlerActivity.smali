.class public Lcom/arellomobile/android/push/PushHandlerActivity;
.super Landroid/app/Activity;
.source "PushHandlerActivity.java"


# static fields
.field public static final CLASS_TO_START:Ljava/lang/String; = "CLASS_TO_START"


# instance fields
.field private mPushManager:Lcom/arellomobile/android/push/PushManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handlePush()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/arellomobile/android/push/PushHandlerActivity;->mPushManager:Lcom/arellomobile/android/push/PushManager;

    invoke-virtual {v0, p0}, Lcom/arellomobile/android/push/PushManager;->onHandlePush(Landroid/app/Activity;)Z

    .line 26
    invoke-virtual {p0}, Lcom/arellomobile/android/push/PushHandlerActivity;->finish()V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v0, Lcom/arellomobile/android/push/PushManager;

    invoke-direct {v0, p0}, Lcom/arellomobile/android/push/PushManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/arellomobile/android/push/PushHandlerActivity;->mPushManager:Lcom/arellomobile/android/push/PushManager;

    .line 20
    invoke-direct {p0}, Lcom/arellomobile/android/push/PushHandlerActivity;->handlePush()V

    .line 21
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/arellomobile/android/push/PushHandlerActivity;->setIntent(Landroid/content/Intent;)V

    .line 35
    invoke-direct {p0}, Lcom/arellomobile/android/push/PushHandlerActivity;->handlePush()V

    .line 36
    return-void
.end method
