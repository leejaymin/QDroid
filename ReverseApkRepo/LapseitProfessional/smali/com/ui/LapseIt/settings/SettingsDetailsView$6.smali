.class Lcom/ui/LapseIt/settings/SettingsDetailsView$6;
.super Ljava/lang/Object;
.source "SettingsDetailsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/settings/SettingsDetailsView;->buildResolutionWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/SettingsDetailsView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$6;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 355
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 356
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$6;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    const-string v1, "resolution"

    const-string v2, "1080p"

    invoke-static {v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$6;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    invoke-virtual {v0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->finish()V

    .line 358
    return-void
.end method
