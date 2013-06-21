.class public Lcom/wolfram/android/alpha/activity/Activity_modified;
.super Landroid/app/Activity;
.source "Activity_modified.java"


# static fields
.field private static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.wolfram.android.alpha.activity.Activity_modified"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/activity/Activity_modified;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/wolfram/android/alpha/LayoutInflater_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/wolfram/android/alpha/LayoutInflater_modified;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    return-object v0
.end method

.method public setContentView(I)V
    .locals 0
    .parameter "layoutResID"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 24
    return-void
.end method
