.class Lcom/ui/LapseIt/settings/SettingsDetailsView$5;
.super Ljava/lang/Object;
.source "SettingsDetailsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/settings/SettingsDetailsView;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    const-class v2, Lcom/ui/LapseIt/ProVersionView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$5;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    invoke-virtual {v1, v0}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->startActivity(Landroid/content/Intent;)V

    .line 265
    return-void
.end method
