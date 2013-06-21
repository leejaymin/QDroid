.class Lkr/co/medinbiz/widget/ultra/UltraMain$1$1;
.super Ljava/lang/Object;
.source "UltraMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/UltraMain$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lkr/co/medinbiz/widget/ultra/UltraMain$1;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/UltraMain$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1$1;->this$1:Lkr/co/medinbiz/widget/ultra/UltraMain$1;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 105
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1$1;->this$1:Lkr/co/medinbiz/widget/ultra/UltraMain$1;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->access$0(Lkr/co/medinbiz/widget/ultra/UltraMain$1;)Lkr/co/medinbiz/widget/ultra/UltraMain;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1$1;->this$1:Lkr/co/medinbiz/widget/ultra/UltraMain$1;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->access$0(Lkr/co/medinbiz/widget/ultra/UltraMain$1;)Lkr/co/medinbiz/widget/ultra/UltraMain;

    move-result-object v1

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lkr/co/medinbiz/helper/PreferencesManager;

    .line 106
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1$1;->this$1:Lkr/co/medinbiz/widget/ultra/UltraMain$1;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;
    invoke-static {v3}, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->access$0(Lkr/co/medinbiz/widget/ultra/UltraMain$1;)Lkr/co/medinbiz/widget/ultra/UltraMain;

    move-result-object v3

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lkr/co/medinbiz/helper/PreferencesManager;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    .line 105
    invoke-virtual {v0, v1, v2, v3}, Lkr/co/medinbiz/widget/ultra/UltraMain;->setMenuView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method
