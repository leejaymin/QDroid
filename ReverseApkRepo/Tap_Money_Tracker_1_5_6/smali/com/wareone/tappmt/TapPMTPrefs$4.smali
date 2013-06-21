.class Lcom/wareone/tappmt/TapPMTPrefs$4;
.super Ljava/lang/Object;
.source "TapPMTPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMTPrefs$4;->this$0:Lcom/wareone/tappmt/TapPMTPrefs;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMTPrefs$4;->this$0:Lcom/wareone/tappmt/TapPMTPrefs;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    #calls: Lcom/wareone/tappmt/TapPMTPrefs;->_toggleReminder(Z)V
    invoke-static {v0, v1}, Lcom/wareone/tappmt/TapPMTPrefs;->access$2(Lcom/wareone/tappmt/TapPMTPrefs;Z)V

    .line 80
    const/4 v0, 0x1

    return v0
.end method
