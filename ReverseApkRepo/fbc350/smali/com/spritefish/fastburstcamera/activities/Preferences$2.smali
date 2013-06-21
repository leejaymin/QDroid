.class Lcom/spritefish/fastburstcamera/activities/Preferences$2;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/Preferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/Preferences;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/Preferences;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/Preferences$2;->this$0:Lcom/spritefish/fastburstcamera/activities/Preferences;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Focus and Zoom"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/Preferences$2;->this$0:Lcom/spritefish/fastburstcamera/activities/Preferences;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/activities/Preferences;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isLiteVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->isTrialEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/Preferences$2;->this$0:Lcom/spritefish/fastburstcamera/activities/Preferences;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, builder2:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07008f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 89
    const-string v3, "Ok"

    new-instance v4, Lcom/spritefish/fastburstcamera/activities/Preferences$2$1;

    invoke-direct {v4, p0}, Lcom/spritefish/fastburstcamera/activities/Preferences$2$1;-><init>(Lcom/spritefish/fastburstcamera/activities/Preferences$2;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v1, v2

    .line 98
    .end local v0           #builder2:Landroid/app/AlertDialog$Builder;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
