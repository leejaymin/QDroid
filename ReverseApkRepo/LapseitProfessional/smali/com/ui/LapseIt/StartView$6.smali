.class Lcom/ui/LapseIt/StartView$6;
.super Ljava/lang/Object;
.source "StartView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/StartView;->buildPromoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/StartView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/StartView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/StartView$6;->this$0:Lcom/ui/LapseIt/StartView;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/ui/LapseIt/StartView$6;->this$0:Lcom/ui/LapseIt/StartView;

    const-string v1, "birthweek"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 252
    return-void
.end method
