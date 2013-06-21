.class Lcom/ui/LapseIt/settings/SettingsView$1;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/settings/SettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/settings/SettingsView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/SettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsView$1;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView$1;->this$0:Lcom/ui/LapseIt/settings/SettingsView;

    #calls: Lcom/ui/LapseIt/settings/SettingsView;->createFolderDialog()V
    invoke-static {v0}, Lcom/ui/LapseIt/settings/SettingsView;->access$0(Lcom/ui/LapseIt/settings/SettingsView;)V

    .line 189
    return-void
.end method
