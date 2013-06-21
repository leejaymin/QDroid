.class Lcom/ui/LapseIt/upload/UploadLoginView$1;
.super Ljava/lang/Object;
.source "UploadLoginView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/upload/UploadLoginView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/upload/UploadLoginView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadLoginView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$1;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 128
    if-eqz p2, :cond_0

    .line 129
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$1;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    sget-object v1, Lcom/ui/LapseIt/settings/SettingsHelper;->GALLERY_SAVE_LOGIN:Ljava/lang/String;

    sget-object v2, Lcom/ui/LapseIt/settings/SettingsHelper;->VALUES_TRUE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$1;->this$0:Lcom/ui/LapseIt/upload/UploadLoginView;

    sget-object v1, Lcom/ui/LapseIt/settings/SettingsHelper;->GALLERY_SAVE_LOGIN:Ljava/lang/String;

    sget-object v2, Lcom/ui/LapseIt/settings/SettingsHelper;->VALUES_FALSE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
