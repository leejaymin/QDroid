.class Lcom/spritefish/fastburstcamera/activities/Preferences$3;
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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/Preferences$3;->this$0:Lcom/spritefish/fastburstcamera/activities/Preferences;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/Preferences$3;->this$0:Lcom/spritefish/fastburstcamera/activities/Preferences;

    new-instance v1, Lcom/spritefish/fastburstcamera/activities/Preferences$3$1;

    invoke-direct {v1, p0}, Lcom/spritefish/fastburstcamera/activities/Preferences$3$1;-><init>(Lcom/spritefish/fastburstcamera/activities/Preferences$3;)V

    invoke-static {v0, v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->runWhenDoneSaving(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method
