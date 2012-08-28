.class Lorg/connectbot/ConsoleActivity$17;
.super Ljava/lang/Object;
.source "ConsoleActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/ConsoleActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/ConsoleActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/ConsoleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$17;->this$0:Lorg/connectbot/ConsoleActivity;

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 745
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity$17;->this$0:Lorg/connectbot/ConsoleActivity;

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Lorg/connectbot/ConsoleActivity;->findCurrentView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/connectbot/TerminalView;

    .line 747
    .local v1, terminalView:Lorg/connectbot/TerminalView;
    iget-object v2, p0, Lorg/connectbot/ConsoleActivity$17;->this$0:Lorg/connectbot/ConsoleActivity;

    iget-object v2, v2, Lorg/connectbot/ConsoleActivity;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 748
    .local v0, resizeView:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/connectbot/ConsoleActivity$17;->this$0:Lorg/connectbot/ConsoleActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 749
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 750
    const v3, 0x7f080043

    new-instance v4, Lorg/connectbot/ConsoleActivity$17$1;

    invoke-direct {v4, p0, v0, v1}, Lorg/connectbot/ConsoleActivity$17$1;-><init>(Lorg/connectbot/ConsoleActivity$17;Landroid/view/View;Lorg/connectbot/TerminalView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 768
    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 770
    const/4 v2, 0x1

    return v2
.end method
