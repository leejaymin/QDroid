.class Lcom/spritefish/fastburstcamera/activities/Preferences$4;
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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/Preferences$4;->this$0:Lcom/spritefish/fastburstcamera/activities/Preferences;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 123
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/Preferences$4;->this$0:Lcom/spritefish/fastburstcamera/activities/Preferences;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/activities/Preferences;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/platform/FastBurstCameraApplication;->initResolutions(Z)V

    .line 124
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/Preferences$4;->this$0:Lcom/spritefish/fastburstcamera/activities/Preferences;

    #calls: Lcom/spritefish/fastburstcamera/activities/Preferences;->initResolutionList()V
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/Preferences;->access$0(Lcom/spritefish/fastburstcamera/activities/Preferences;)V

    .line 126
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/Preferences$4;->this$0:Lcom/spritefish/fastburstcamera/activities/Preferences;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f07008d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 131
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 132
    const v3, 0x7f07008e

    new-instance v4, Lcom/spritefish/fastburstcamera/activities/Preferences$4$1;

    invoke-direct {v4, p0}, Lcom/spritefish/fastburstcamera/activities/Preferences$4$1;-><init>(Lcom/spritefish/fastburstcamera/activities/Preferences$4;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 138
    .local v0, alert2:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 140
    .end local v0           #alert2:Landroid/app/AlertDialog;
    .end local v1           #builder2:Landroid/app/AlertDialog$Builder;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
