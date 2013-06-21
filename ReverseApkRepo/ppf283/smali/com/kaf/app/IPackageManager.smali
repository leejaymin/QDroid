.class public abstract Lcom/kaf/app/IPackageManager;
.super Ljava/lang/Object;
.source "IPackageManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public installPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 1
    .parameter "packagePath"
    .parameter "packageName"
    .parameter "installFlag"
    .parameter "nPackage"
    .parameter "nClass"
    .parameter "nExtras"
    .parameter "mode"
    .parameter "appName"

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public installPackage(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .parameter "packagePath"
    .parameter "packageName"
    .parameter "mode"

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public installPackage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 1
    .parameter "packagePath"
    .parameter "packageName"
    .parameter "mode"
    .parameter "appName"

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method public uninstallPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    .locals 1
    .parameter "packageName"
    .parameter "installFlag"
    .parameter "nPackage"
    .parameter "nClass"
    .parameter "nExtras"
    .parameter "mode"
    .parameter "appName"

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public uninstallPackage(Ljava/lang/String;Z)I
    .locals 1
    .parameter "packageName"
    .parameter "mode"

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public uninstallPackage(Ljava/lang/String;ZLjava/lang/String;)I
    .locals 1
    .parameter "packageName"
    .parameter "mode"
    .parameter "appName"

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method
