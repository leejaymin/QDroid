.class Lcom/spritefish/fastburstcamera/activities/Preferences$1;
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

.field private final synthetic val$customLocation:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/Preferences;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/Preferences$1;->this$0:Lcom/spritefish/fastburstcamera/activities/Preferences;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/Preferences$1;->val$customLocation:Landroid/preference/Preference;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    .line 65
    const-string v0, "custom"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/Preferences$1;->val$customLocation:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 73
    :goto_0
    return v2

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/Preferences$1;->val$customLocation:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
