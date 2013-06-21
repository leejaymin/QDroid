.class Lcom/ui/LapseIt/settings/SettingsDetailsView$7;
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
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$7;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->setRequestedOrientation(I)V

    .line 364
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 365
    return-void
.end method
