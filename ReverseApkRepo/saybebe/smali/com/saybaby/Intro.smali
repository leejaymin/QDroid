.class public Lcom/saybaby/Intro;
.super Landroid/app/Activity;
.source "Intro.java"


# static fields
.field private static isFirstAppOpen:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lcom/saybaby/Intro;->setContentView(I)V

    .line 21
    const-string v0, "saybebe"

    .line 22
    .local v0, hcode:Ljava/lang/String;
    const-class v2, Lcom/saybaby/ultra/VidioPlayer;

    sput-object v2, Lkr/co/medinbiz/helper/WebClientManager;->mVidioPlayer:Ljava/lang/Class;

    .line 23
    new-instance v1, Lkr/co/medinbiz/LibraryIntro;

    invoke-direct {v1, p0}, Lkr/co/medinbiz/LibraryIntro;-><init>(Landroid/content/Context;)V

    .line 25
    .local v1, intro:Lkr/co/medinbiz/LibraryIntro;
    const-string v2, "saybebe_android_v"

    invoke-virtual {v1, v2, v0}, Lkr/co/medinbiz/LibraryIntro;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-class v2, Lcom/saybaby/MainHome;

    invoke-virtual {v1, v2}, Lkr/co/medinbiz/LibraryIntro;->loginStart(Ljava/lang/Class;)V

    .line 53
    return-void
.end method
