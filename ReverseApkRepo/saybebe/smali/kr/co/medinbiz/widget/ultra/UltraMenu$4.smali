.class Lkr/co/medinbiz/widget/ultra/UltraMenu$4;
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
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$4;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 99
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$4;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$4;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$4;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    iget-object v2, v2, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mMNum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->setCelebrationGreetingsView(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    return-void
.end method
