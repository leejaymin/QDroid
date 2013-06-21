.class Lkr/co/medinbiz/widget/ultra/UltraMenu$3;
.super Ljava/lang/Object;
.source "UltraMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/UltraMenu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$3;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$3;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$6(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lkr/co/medinbiz/helper/PreferencesManager;->getBarcode_reg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$3;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$6(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lkr/co/medinbiz/helper/PreferencesManager;->getBarcode_reg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$3;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #calls: Lkr/co/medinbiz/widget/ultra/UltraMenu;->showAlertBarcode()V
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$7(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V

    .line 91
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$3;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #calls: Lkr/co/medinbiz/widget/ultra/UltraMenu;->showMovieList()V
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$10(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$3;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #calls: Lkr/co/medinbiz/widget/ultra/UltraMenu;->notSdcardMount()V
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$9(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V

    goto :goto_0
.end method
