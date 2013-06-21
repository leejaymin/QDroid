.class Lcom/wareone/tappmt/TapPMTPrefs$2;
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
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMTPrefs$2;->this$0:Lcom/wareone/tappmt/TapPMTPrefs;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMTPrefs$2;->this$0:Lcom/wareone/tappmt/TapPMTPrefs;

    const-string v1, "widget_account"

    #calls: Lcom/wareone/tappmt/TapPMTPrefs;->_setAccount(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wareone/tappmt/TapPMTPrefs;->access$0(Lcom/wareone/tappmt/TapPMTPrefs;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    return v0
.end method
