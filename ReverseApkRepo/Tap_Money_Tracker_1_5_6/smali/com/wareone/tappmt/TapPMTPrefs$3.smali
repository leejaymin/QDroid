.class Lcom/wareone/tappmt/TapPMTPrefs$3;
.super Ljava/lang/Object;
.source "TapPMTPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMTPrefs;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/TapPMTPrefs;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMTPrefs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMTPrefs$3;->this$0:Lcom/wareone/tappmt/TapPMTPrefs;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMTPrefs$3;->this$0:Lcom/wareone/tappmt/TapPMTPrefs;

    #calls: Lcom/wareone/tappmt/TapPMTPrefs;->_setReminderTime()V
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMTPrefs;->access$1(Lcom/wareone/tappmt/TapPMTPrefs;)V

    .line 67
    const/4 v0, 0x0

    return v0
.end method